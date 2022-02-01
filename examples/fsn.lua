-- Getting the frame stage name
local function get_frame_name( stage )
    -- Lua does not have switch statements :(
    if stage == frame_stage.FRAME_UNDEFINED then
        return "undefined"
    elseif stage == frame_stage.FRAME_START then
        return "frame_start"
    elseif stage == frame_stage.FRAME_NET_UPDATE_START then
        return "frame_net_update_start"
    elseif stage == frame_stage.FRAME_NET_UPDATE_POSTDATAUPDATE_START then
        return "frame_net_update_postdataupdate_start"
    elseif stage == frame_stage.FRAME_NET_UPDATE_POSTDATAUPDATE_END then
        return "frame_net_update_postdataupdate_end"
    elseif stage == frame_stage.FRAME_NET_UPDATE_END then
        return "frame_net_update_end"
    elseif stage == frame_stage.FRAME_RENDER_START then
        return "frame_render_start"
    elseif stage == frame_stage.FRAME_RENDER_END then
        return "frame_render_end"
    end
end

-- Adding an inline function inside the cheat.register_callback function

-- The way you do it:
-- cheat.register_callback("callback_name", function(arg) -> pass the argument only when required
--     [your code]
-- end)

cheat.register_callback( "frame_stage", function( stage )
    cheat.print( get_frame_name( stage ) )
end)
