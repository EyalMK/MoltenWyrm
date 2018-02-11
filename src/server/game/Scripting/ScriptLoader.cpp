/*
 * Copyright (C) 2008-2014 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2011-2016 ArkCORE <http://www.arkania.net/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "ScriptLoader.h"

//examples
void AddSC_example_creature();

void AddSC_example_escort();

void AddSC_example_gossip_codebox();

void AddSC_example_misc();

void AddSC_example_commandscript();

// spells
void AddSC_deathknight_spell_scripts();

void AddSC_druid_spell_scripts();

void AddSC_generic_spell_scripts();

void AddSC_hunter_spell_scripts();

void AddSC_mage_spell_scripts();

void AddSC_paladin_spell_scripts();

void AddSC_priest_spell_scripts();

void AddSC_rogue_spell_scripts();

void AddSC_shaman_spell_scripts();

void AddSC_warlock_spell_scripts();

void AddSC_warrior_spell_scripts();

void AddSC_quest_spell_scripts();

void AddSC_item_spell_scripts();

void AddSC_example_spell_scripts();

void AddSC_holiday_spell_scripts();

void AddSC_guild_spell_scripts();

void AddSC_SmartSCripts();

//Commands
void AddSC_account_commandscript();

void AddSC_achievement_commandscript();

void AddSC_ahbot_commandscript();

void AddSC_arena_commandscript();

void AddSC_ban_commandscript();

void AddSC_bf_commandscript();

void AddSC_cast_commandscript();

void AddSC_character_commandscript();

void AddSC_cheat_commandscript();

void AddSC_debug_commandscript();

void AddSC_deserter_commandscript();

void AddSC_disable_commandscript();

void AddSC_event_commandscript();

void AddSC_gm_commandscript();

void AddSC_go_commandscript();

void AddSC_gobject_commandscript();

void AddSC_group_commandscript();

void AddSC_guild_commandscript();

void AddSC_honor_commandscript();

void AddSC_instance_commandscript();

void AddSC_learn_commandscript();

void AddSC_lfg_commandscript();

void AddSC_list_commandscript();

void AddSC_lookup_commandscript();

void AddSC_message_commandscript();

void AddSC_misc_commandscript();

void AddSC_mmaps_commandscript();

void AddSC_modify_commandscript();

void AddSC_npc_commandscript();

void AddSC_pet_commandscript();

void AddSC_quest_commandscript();

void AddSC_rbac_commandscript();

void AddSC_reload_commandscript();

void AddSC_reset_commandscript();

void AddSC_send_commandscript();

void AddSC_server_commandscript();

void AddSC_tele_commandscript();

void AddSC_ticket_commandscript();

void AddSC_titles_commandscript();

void AddSC_wp_commandscript();

// World
void AddSC_areatrigger_scripts();

void AddSC_generic_creature();

void AddSC_go_scripts();

void AddSC_guards();

void AddSC_item_scripts();

void AddSC_npc_professions();

void AddSC_npc_innkeeper();

void AddSC_npcs_special();

void AddSC_npc_taxi();

void AddSC_achievement_scripts();

void AddSC_npc_trainings_dummy();

// battlegrounds


// outdoor pvp
void AddSC_outdoorpvp_hp();

void AddSC_outdoorpvp_na();

void AddSC_outdoorpvp_si();

void AddSC_outdoorpvp_tf();

void AddSC_outdoorpvp_zm();

// player
void AddSC_chat_log();

void AddSC_chat_censor();

// TeleNPC2
void AddSC_npc_teleport();

//Bots
void AddSC_death_knight_bot();

void AddSC_druid_bot();

void AddSC_hunter_bot();

void AddSC_mage_bot();

void AddSC_paladin_bot();

void AddSC_priest_bot();

void AddSC_rogue_bot();

void AddSC_shaman_bot();

void AddSC_warlock_bot();

void AddSC_warrior_bot();

void AddSC_script_bot_commands();

void AddScripts()
{
	AddExampleScripts();
	AddSpellScripts();
	AddSC_SmartSCripts();
	AddCommandScripts();
	AddWorldScripts();
	AddBattlegroundScripts();
	AddCustomScripts();
}

void AddExampleScripts()
{
	AddSC_example_creature();
	AddSC_example_escort();
	AddSC_example_gossip_codebox();
	AddSC_example_misc();
	AddSC_example_commandscript();
}

void AddSpellScripts()
{
	AddSC_deathknight_spell_scripts();
	AddSC_druid_spell_scripts();
	AddSC_generic_spell_scripts();
	AddSC_hunter_spell_scripts();
	AddSC_mage_spell_scripts();
	AddSC_paladin_spell_scripts();
	AddSC_priest_spell_scripts();
	AddSC_rogue_spell_scripts();
	AddSC_shaman_spell_scripts();
	AddSC_warlock_spell_scripts();
	AddSC_warrior_spell_scripts();
	AddSC_quest_spell_scripts();
	AddSC_item_spell_scripts();
	AddSC_example_spell_scripts();
	AddSC_holiday_spell_scripts();
	AddSC_guild_spell_scripts();
}

void AddCommandScripts()
{
	AddSC_account_commandscript();
	AddSC_achievement_commandscript();
	AddSC_ahbot_commandscript();
	AddSC_arena_commandscript();
	AddSC_ban_commandscript();
	AddSC_bf_commandscript();
	AddSC_cast_commandscript();
	AddSC_character_commandscript();
	AddSC_cheat_commandscript();
	AddSC_debug_commandscript();
	AddSC_deserter_commandscript();
	AddSC_disable_commandscript();
	AddSC_event_commandscript();
	AddSC_gm_commandscript();
	AddSC_go_commandscript();
	AddSC_gobject_commandscript();
	AddSC_group_commandscript();
	AddSC_guild_commandscript();
	AddSC_honor_commandscript();
	AddSC_instance_commandscript();
	AddSC_learn_commandscript();
	AddSC_lookup_commandscript();
	AddSC_lfg_commandscript();
	AddSC_list_commandscript();
	AddSC_message_commandscript();
	AddSC_misc_commandscript();
	AddSC_mmaps_commandscript();
	AddSC_modify_commandscript();
	AddSC_npc_commandscript();
	AddSC_quest_commandscript();
	AddSC_pet_commandscript();
	AddSC_rbac_commandscript();
	AddSC_reload_commandscript();
	AddSC_reset_commandscript();
	AddSC_send_commandscript();
	AddSC_server_commandscript();
	AddSC_tele_commandscript();
	AddSC_ticket_commandscript();
	AddSC_titles_commandscript();
	AddSC_wp_commandscript();
}

void AddWorldScripts()
{
	AddSC_areatrigger_scripts();
	AddSC_generic_creature();
	AddSC_go_scripts();
	AddSC_guards();
	AddSC_item_scripts();
	AddSC_npc_professions();
	AddSC_npc_innkeeper();
	AddSC_npcs_special();
	AddSC_npc_taxi();
	AddSC_achievement_scripts();
	AddSC_chat_log();
	AddSC_chat_censor();
	AddSC_npc_trainings_dummy();
}

void AddBattlegroundScripts()
{
}

void AddCustomScripts()
{
	// TeleNPC2
	AddSC_npc_teleport();
	
	//Bots
	AddSC_death_knight_bot();
	AddSC_druid_bot();
	AddSC_hunter_bot();
	AddSC_mage_bot();
	AddSC_paladin_bot();
	AddSC_priest_bot();
	AddSC_rogue_bot();
	AddSC_shaman_bot();
	AddSC_warlock_bot();
	AddSC_warrior_bot();
	AddSC_script_bot_commands();
}
