---------------------------------------------------
-- Test.lua
---------------------------------------------------
-- Players :
--  All
---------------------------------------------------
-- Triggers :
--  # PLAYER_EVENT_ON_LOGIN
--  # PLAYER_EVENT_ON_MAP_CHANGE
---------------------------------------------------
-- Author : Skullbot
---------------------------------------------------

function PlayerWorldAccessControl( _, p_player )

	local m_gm    = p_player:IsGM();
  local m_mapID = p_player:GetMapId();

  if( in_array( m_mapID, LIST_ALLOWED_MAPS ) == false and m_gm == false ) then
    p_player:SendChatMessageToPlayer( 0, 0, PRE_WARNING.."It's a forbidden area. You will be teleported.|r", p_player );
    p_player:Teleport( TOL_BARAD.map, TOL_BARAD.x, TOL_BARAD.y, TOL_BARAD.z, TOL_BARAD.o );
  end

end

RegisterPlayerEvent( PLAYER_EVENT_ON_LOGIN,       PlayerWorldAccessControl );
RegisterPlayerEvent( PLAYER_EVENT_ON_MAP_CHANGE,  PlayerWorldAccessControl );