---------------------------------------------------
-- Test.lua
---------------------------------------------------
-- Creature :
--  # Innkeeper Farley (295)
---------------------------------------------------
-- Triggers :
--  # GOSSIP_EVENT_ON_HELLO
--  # GOSSIP_EVENT_ON_SELECT
---------------------------------------------------
-- Author : Skullbot
---------------------------------------------------

local TestMonster = {};
local Entry       = 295; -- NPC has gossip flag

function TestMonster.GossipHello( _, p_player, unit )
  p_player:GossipMenuAddItem( 0, "I want to go to the battleground !", 0, 1 ) -- icon, text, sender, intid
  p_player:GossipMenuAddItem( 0, "I want to get my items back !",      0, 2 ) -- icon, text, sender, intid
  p_player:GossipMenuAddItem( 0, "Give me some gear !",                0, 3 ) -- icon, text, sender, intid
  p_player:GossipSendMenu(1, unit)
end

function TestMonster.GossipSelect( _, p_player, _, _, p_choice )

  if p_choice == 1 then
    HoldInventory( p_player );
    p_player:GossipComplete();
    p_player:Teleport( 169, -4434, -3541, 400, 0 );
    p_player:CastSpell( p_player, 91835, true );
  end

  if p_choice == 2 then
    RestoreInventory( p_player );
    p_player:GossipComplete();
  end

  if p_choice == 3 then
    p_player:AddItem(22416);
    p_player:AddItem(22417);
    p_player:AddItem(22418);
    p_player:AddItem(22419);
    p_player:AddItem(22420);
    p_player:AddItem(22421);
    p_player:AddItem(22422);
    p_player:AddItem(22423);
    p_player:AddItem(49623);
    p_player:GossipComplete();
    p_player:SaveToDB();
  end

end

RegisterCreatureGossipEvent(Entry, GOSSIP_EVENT_ON_HELLO, TestMonster.GossipHello)
RegisterCreatureGossipEvent(Entry, GOSSIP_EVENT_ON_SELECT, TestMonster.GossipSelect)
