---------------------------------------------------
-- DsiableLFG.lua
---------------------------------------------------
---------------------------------------------------
-- Triggers :
--  # PACKET_EVENT_ON_PACKET_RECEIVE (0x2430)
--  # PACKET_EVENT_ON_PACKET_RECEIVE (0x0531)
---------------------------------------------------
-- Author : Skullbot
---------------------------------------------------

function NotificationDisabledLFG( _, p_player )
  p_player:SendChatMessageToPlayer( 0, 0, PRE_WARNING.."LFG is "..COLOR_RED.."not available"..COLOR_DEFAULT.." on MoltenWyrm !|r", p_player );
end

RegisterPlayerEvent( PLAYER_EVENT_LFG_REQUEST, NotificationDisabledLFG );
