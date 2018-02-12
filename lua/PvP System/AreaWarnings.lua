---------------------------------------------------
-- PlayerDeath.lua
---------------------------------------------------
-- Triggers :
--  # PLAYER_EVENT_ON_KILL_PLAYER
--  # PLAYER_EVENT_ON_KILLED_BY_CREATURE
---------------------------------------------------
-- Author : Skullbot
---------------------------------------------------

local function OnPlayerZoneChange( _, p_player, p_newZone, p_newArea, p_oldZone, p_oldArea )

  local m_newZoneType  = AREA_WILDERNESS;
  local m_oldZoneType  = AREA_WILDERNESS;

  -- Prevent display on death/respawn
  if p_newZone == p_oldZone and p_newArea == p_oldArea then
    return;
  end

  -- Updating new zone flags
  if IsSanctuary( p_newZone ) or IsSanctuary( p_newArea ) then
    m_newZoneType = AREA_SANCTUARY;
  elseif in_array( p_newZone, LIST_SAFEZONES ) or in_array( p_newArea, LIST_SAFEZONES ) then
    m_newZoneType = AREA_SAFEZONE;
  end

  -- Updating old zone flags
  if IsSanctuary( p_oldZone ) or IsSanctuary( p_oldArea ) then
    m_oldZoneType = AREA_SANCTUARY;
  elseif in_array( p_oldZone, LIST_SAFEZONES ) or in_array( p_oldArea, LIST_SAFEZONES ) then
    m_oldZoneType = AREA_SAFEZONE;
  end

  -- Prevent display if flag didn't change
  if m_newZoneType == m_oldZoneType then
    return;
  end

  -- Checking flags
  if m_newZoneType == AREA_SANCTUARY then
    p_player:SetSanctuary( true );
    p_player:SendChatMessageToPlayer( 0, 0, PRE_BULLET.."You're entering a "..TXT_SANCTUARY..".|r", p_player );
    return;
  end

  if m_newZoneType == AREA_SAFEZONE then
    p_player:SetSanctuary( true );
    p_player:SendChatMessageToPlayer( 0, 0, PRE_BULLET.."You're entering a "..TXT_SAFEZONE..".|r", p_player );
    return;
  end

  if m_newZoneType == AREA_WILDERNESS then
    p_player:SetSanctuary( false );
    p_player:SendChatMessageToPlayer( 0, 0, PRE_BULLET.."You're now in the "..TXT_WILDERNESS..".|r", p_player );
    p_player:SendChatMessageToPlayer( 0, 0, PRE_WARNING.."Your items will be "..TXT_DROPPED.." if you die here.|r", p_player );
    return;
  end
end

RegisterPlayerEvent( PLAYER_EVENT_ON_UPDATE_ZONE, OnPlayerZoneChange );
