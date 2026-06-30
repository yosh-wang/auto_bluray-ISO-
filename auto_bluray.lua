-- auto_bluray.lua
-- 统一 ISO 自动播放入口：真实 .iso -> bd://，失败时兜底 dvd://。
--
-- 适合本地 ISO 文件。AList/OpenList 远程 ISO 仍建议下载到本地后播放。

local msg = require 'mp.msg'

local function is_iso_file(path)
    return type(path) == 'string' and path ~= '' and path:lower():match('%.iso$') ~= nil
end

local function is_disc_protocol(path)
    return type(path) == 'string' and (path:find('^bd://') ~= nil or path:find('^dvd://') ~= nil)
end

local function short_path(path, max_len)
    max_len = max_len or 50
    if not path or #path <= max_len then return path or '' end
    return '...' .. path:sub(-(max_len - 3))
end

local function set_original_iso(path)
    mp.set_property('user-data/auto-iso-loader/original-path', path or '')
end

local function get_disc_iso_path()
    local bd_device = mp.get_property('bluray-device') or ''
    local dvd_device = mp.get_property('dvd-device') or ''

    if is_iso_file(bd_device) then return bd_device end
    if is_iso_file(dvd_device) then return dvd_device end
    return nil
end

local function clear_iso_state()
    set_original_iso('')
end

mp.add_hook('on_load', 30, function()
    local path = mp.get_property('path') or ''
    local stream = mp.get_property('stream-open-filename') or ''

    if is_iso_file(path) then
        msg.info('ISO detected: ' .. path)
        mp.osd_message('ISO: ' .. short_path(path), 2)

        set_original_iso(path)
        mp.set_property('bluray-device', path)
        mp.set_property('dvd-device', path)
        mp.set_property('stream-open-filename', 'bd://')
        return
    end

    if is_disc_protocol(path) or is_disc_protocol(stream) then
        local original = get_disc_iso_path()
        if original then set_original_iso(original) end
        return
    end

    clear_iso_state()
end)

mp.add_hook('on_load_fail', 45, function()
    local stream = mp.get_property('stream-open-filename') or ''

    if stream == 'bd://' then
        msg.warn('BD failed, trying DVD: ' .. (get_disc_iso_path() or ''))
        mp.set_property('stream-open-filename', 'dvd://')
        return
    end

    if stream == 'dvd://' then
        msg.error('BD/DVD failed: ' .. (get_disc_iso_path() or ''))
        mp.osd_message('ISO 播放失败，请检查镜像类型', 5)
        clear_iso_state()
    end
end)

mp.register_event('end-file', clear_iso_state)

msg.info('auto_bluray ISO loader ready')
