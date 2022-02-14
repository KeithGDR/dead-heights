/*****************************/
//Pragma
#pragma semicolon 1
#pragma newdecls required

/*****************************/
//Defines
#define PLUGIN_NAME "[DH] Ads"
#define PLUGIN_DESCRIPTION "Show automatic advertisements in chat."
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

bool IsVersus()
{
	char sGamemode[32];
	FindConVar("mp_gamemode").GetString(sGamemode, sizeof(sGamemode));
	
	if (StrEqual(sGamemode, "versus", false))
		return true;
	
	return false;
}