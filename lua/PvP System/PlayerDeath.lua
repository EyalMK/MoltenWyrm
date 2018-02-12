---------------------------------------------------
-- PlayerDeath.lua
---------------------------------------------------
-- Triggers :
--  # PLAYER_EVENT_ON_KILL_PLAYER
--  # PLAYER_EVENT_ON_KILLED_BY_CREATURE
---------------------------------------------------
-- Author : Skullbot
---------------------------------------------------

local function RemoveItemsOnDeath( p_event, p_killer, p_victim )

	local m_gm  	   = p_victim:IsGM();
	local m_rest     = p_victim:IsRested();

  if m_rest then
    p_victim:SendChatMessageToPlayer( 0, 0, "Rest", p_victim );
  end

  -- Prevent GM from looting their stuff
  if m_gm then
    if DEBUG_MODE == false then
      return;
    else
      p_victim:SendChatMessageToPlayer( 0, 0, PRE_BULLET.."You've been killed as "..COLOR_GAMEMASTER.."GameMaster"..COLOR_DEFAULT..".|r", p_victim );
      p_victim:SendChatMessageToPlayer( 0, 0, "=======================================|r", p_victim );
      p_victim:SendChatMessageToPlayer( 0, 0, PRE_BULLET.."Killer : "   ..PRE_PLAYER..p_killer:GetName().." |r", p_victim );
      p_victim:SendChatMessageToPlayer( 0, 0, PRE_BULLET.."Area : "     ..GetAreaName( p_victim:GetAreaId(), 0 ).." (|r#"..p_victim:GetAreaId()..COLOR_DEFAULT..")|r", p_victim );
      p_victim:SendChatMessageToPlayer( 0, 0, PRE_BULLET.."Sanctuary : "..COLOR_SANCTUARY..tostring( IsSanctuary( p_victim:GetAreaId() ) ).." |r", p_victim );
      p_victim:SendChatMessageToPlayer( 0, 0, PRE_BULLET.."Safezone : " ..COLOR_SAFEZONE..tostring( in_array( p_victim:GetAreaId(), LIST_SAFEZONES ) ).." |r", p_victim );
      p_victim:SendChatMessageToPlayer( 0, 0, "=======================================|r", p_victim );
    end
  end

  -- PvE
  if p_event == PLAYER_EVENT_ON_KILLED_BY_CREATURE then
    if DEBUG_MODE == false then
      return;
    else
      p_victim:SendChatMessageToPlayer( 0, 0, PRE_BULLET.."You've been killed by "..PRE_NPC..p_killer:GetName().."|r", p_victim );
    end
  end

  -- PvP
  if p_event == PLAYER_EVENT_ON_KILL_PLAYER then

    -- Prevent loosing if no killer found / suicide
    if( p_killer == nil and DEBUG_MODE == false ) then
      p_victim:SendChatMessageToPlayer( 0, 0, PRE_BULLET.."You've committed "..TXT_SUICIDE.." !|r", p_victim );
      return;
    end

    -- Prevent loosing in sanctuaries, but should never happen as sanctuaries have PvP disabled
    if( IsSanctuary( p_victim:GetAreaId() ) ) then
      p_victim:SendChatMessageToPlayer( 0, 0, PRE_BULLET.."You've been killed in a "..TXT_SANCTUARY.." by "..PRE_PLAYER..p_killer:GetName().."|r", p_victim );
      return;
    end

    -- Prevent loosing in specific areas
    if( in_array( p_victim:GetAreaId(), LIST_SAFEZONES ) ) then
      p_victim:SendChatMessageToPlayer( 0, 0, PRE_BULLET.."You've been killed in a "..TXT_SAFEZONE.." by "..PRE_PLAYER..p_killer:GetName().."|r", p_victim );
      return;
    end

    -- All checks passed, let's drop items !
    if m_gm == false then
      for slot = 0, 18 do
        local item = p_victim:GetItemByPos( 255, slot );
        if item then
          p_victim:RemoveItem(item, 1);
        end
      end
    end

    p_victim:SendChatMessageToPlayer( 0, 0, PRE_BULLET.."You've been killed by "..PRE_PLAYER..p_killer:GetName().."|r", p_victim );
    p_victim:SendChatMessageToPlayer( 0, 0, PRE_BAG.."Both your gear and items have been "..TXT_DROPPED.." next to your corpse.|r", p_victim );
    p_victim:SendNotification( "Your items dropped to the ground !" );

  end
end

RegisterPlayerEvent( PLAYER_EVENT_ON_KILL_PLAYER,        RemoveItemsOnDeath );
RegisterPlayerEvent( PLAYER_EVENT_ON_KILLED_BY_CREATURE, RemoveItemsOnDeath );

---------------------
-- TODO / IDEAS
---------------------
-- Ajouter un GOB de cadavre, le renommer avec le nom du joueur et son skin
-- Ajouter les loots dans des gobs (Or + Stuff sur le cadavre, le reste sur un gob de sac)
-- Pas de FX de loot sur les gobs
-- Une fois looté, transformer le cadavre en squelette ou en tas de viande
-- Forcer la rez au cimetière après la mort
-- Ajouter la fonction qui permet de savoir si une zone/area est un sanctuaire
-- Systeme de grade/pts a chaque kill
--
--
-- 
