-- auto_bluray.lua
-- 在 mpv 开始处理文件之前拦截，直接替换为蓝光模式

local function switch_to_bluray()
    local path = mp.get_property("path")
    if not path then return false end
    
    -- 检查是否是 ISO 文件
    if not string.lower(path):match("%.iso$") then
        return false
    end
    
    -- 检查是否已经是蓝光模式
    local filename = mp.get_property("stream-open-filename") or ""
    if filename:match("^bd://") then
        return false
    end
    
    mp.msg.info("检测到 ISO 文件，拦截并切换蓝光模式: " .. path)
    mp.osd_message("检测到蓝光ISO，切换播放模式...", 2)
    
    -- 在文件打开之前就替换路径
    mp.set_property("stream-open-filename", "bd://")
    mp.set_property("stream-open-device", "no")
    mp.set_property("bluray-device", path)
    
    return true
end

-- 方法1：在打开文件之前挂钩（关键！）
mp.add_hook("on_load", 1, switch_to_bluray)
