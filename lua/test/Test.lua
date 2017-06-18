---------------------------------------------------
-- Test.lua
---------------------------------------------------
-- Creature :
--  # Worgen Female (52463)
---------------------------------------------------
-- Triggers :
--  # CREATURE_EVENT_ON_SPAWN
--  # CREATURE_EVENT_ON_ENTER_COMBAT
--  # CREATURE_EVENT_ON_LEAVE_COMBAT
--  # CREATURE_EVENT_ON_DIED
---------------------------------------------------
-- Author : Skullbot
---------------------------------------------------

local TestMonster = {};
local Entry       = 52463; -- Worgen Female

local m_target;

function TestMonster.OnSpawn( _, p_creature )
  local t_name = "Dynamic Name #"..math.random( 1, 100 );
  p_creature:SendUnitYell( "I'M BACK !", 0 );
  p_creature:SetFaction( 16 );
end

function TestMonster.OnEnterCombat( _, p_creature, p_target )
  m_target = p_target;
  p_creature:SendChatMessageToPlayer( 0, 0, "Aggro", m_target );
  p_creature:RegisterEvent( TestMonster.Poison, math.random( 3000, 5000 ), 0 );
  p_creature:RegisterEvent( TestMonster.Sinister_Strike, 8000, 0 );
end

function TestMonster.Poison( _, _, _, p_creature )
  if math.random( 1, 100 ) <= 75 then
    p_creature:CastSpell( p_creature:GetVictim(), 744 );
    p_creature:SendChatMessageToPlayer( 0, 0, "Poison", m_target, true );
  end
end

function TestMonster.Sinister_Strike( _, _, _, p_creature )
  if math.random( 1, 100 ) <= 85 then
    p_creature:CastSpell( p_creature:GetVictim(), 14873 );
    p_creature:SendChatMessageToPlayer( 0, 0, "Sinister Strike", m_target, true );
  end
end

function TestMonster.Reset( _, p_creature)
  p_creature:SendChatMessageToPlayer( 0, 0, "Reset", m_target );
  p_creature:RemoveEvents()
  m_target = nil;
end

RegisterCreatureEvent( Entry, CREATURE_EVENT_ON_SPAWN,        TestMonster.OnSpawn )
RegisterCreatureEvent( Entry, CREATURE_EVENT_ON_ENTER_COMBAT, TestMonster.OnEnterCombat )
RegisterCreatureEvent( Entry, CREATURE_EVENT_ON_LEAVE_COMBAT, TestMonster.Reset )
RegisterCreatureEvent( Entry, CREATURE_EVENT_ON_DIED,         TestMonster.Reset )
