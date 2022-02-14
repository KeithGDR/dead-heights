/*****************************/
//Pragma
#pragma semicolon 1
#pragma newdecls required

/*****************************/
//Defines
#define PLUGIN_NAME "[DH] ConVars"
#define PLUGIN_DESCRIPTION "Set specific ConVars whenever configs are executed."
#define PLUGIN_VERSION "1.0.0"

/*****************************/
//Includes
#include <sourcemod>

/*****************************/
//ConVars

/*****************************/
//Globals

/*****************************/
//Plugin Info
public Plugin myinfo = 
{
	name = PLUGIN_NAME, 
	author = "Drixevel", 
	description = PLUGIN_DESCRIPTION, 
	version = PLUGIN_VERSION, 
	url = "https://deadheights.com/"
};

public void OnPluginStart()
{
	
}

public void OnConfigsExecuted()
{
	if (!IsVersus())
		return;
	
	FindConVar("sv_pure").IntValue = 0;
	FindConVar("sv_consistency").BoolValue = false;
	FindConVar("director_afk_timeout").IntValue = 0;
	FindConVar("survivor_friendly_fire_factor_easy").IntValue = 0;
	FindConVar("survivor_friendly_fire_factor_normal").IntValue = 0;
	FindConVar("survivor_friendly_fire_factor_hard").IntValue = 0;
	FindConVar("survivor_friendly_fire_factor_expert").IntValue = 0;
	FindConVar("survivor_burn_factor_easy").IntValue = 0;
	FindConVar("survivor_burn_factor_normal").IntValue = 0;
	FindConVar("survivor_burn_factor_hard").IntValue = 0;
	FindConVar("survivor_burn_factor_expert").IntValue = 0;
	FindConVar("sb_all_bot_game").BoolValue = true;
	FindConVar("sb_allow_leading").BoolValue = true;
	FindConVar("allow_all_bot_survivor_team").BoolValue = true;
	FindConVar("sv_vote_issue_change_difficulty_allowed").BoolValue = false;
	FindConVar("sv_vote_issue_change_map_later_allowed").BoolValue = false;
	FindConVar("sv_vote_issue_change_map_now_allowed").BoolValue = false;
	FindConVar("sv_vote_issue_change_mission_allowed").BoolValue = false;
	FindConVar("sv_vote_issue_kick_allowed").BoolValue = false;
	FindConVar("sv_vote_issue_restart_game_allowed").BoolValue = false;
}

bool IsVersus()
{
	char sGamemode[32];
	FindConVar("mp_gamemode").GetString(sGamemode, sizeof(sGamemode));
	
	if (StrEqual(sGamemode, "versus", false))
		return true;
	
	return false;
}