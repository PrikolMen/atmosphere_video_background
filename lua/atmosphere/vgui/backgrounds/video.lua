local string_format = string.format
local table_Random = table.Random
local file_Find = file.Find

local PANEL = {}

function PANEL:Init()
    self:OpenURL( 'asset://garrysmod/html/backgrounds/video.html' )
    self:RunJS( string_format( 'SelectVideo( \'%s\' )', 'asset://garrysmod/html/videos/' .. table_Random( file_Find( 'html/videos/*', 'GAME' ) ) ) )
end

vgui.Register( 'atmosphere.backgrounds.video', PANEL, 'atmosphere.html' )