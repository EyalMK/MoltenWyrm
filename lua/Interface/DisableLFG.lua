---------------------------------------------------
-- DisableLFG.lua
---------------------------------------------------
-- Players :
--  # All
---------------------------------------------------
-- Triggers :
--  # PLAYER_EVENT_LFG_REQUEST
---------------------------------------------------
-- Author : Skullbot
---------------------------------------------------

function NotificationDisabledLFG( _, p_player )
  p_player:SendChatMessageToPlayer( 0, 0, PRE_WARNING.."LFG is "..COLOR_RED.."not available"..COLOR_DEFAULT.." on MoltenWyrm !|r", p_player );
end

RegisterPlayerEvent( PLAYER_EVENT_LFG_REQUEST, NotificationDisabledLFG );
