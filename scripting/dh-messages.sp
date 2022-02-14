/*****************************/
//Pragma
#pragma semicolon 1
#pragma newdecls required

/*****************************/
//Defines
#define PLUGIN_NAME "[DH] Messages"
#define PLUGIN_DESCRIPTION "Displays messages in chat to players based on certain events."
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

public void OnClientConnected(int client)
{
	if (IsVersus())
		return;
	
	PrintToChatAll("\x03[Dead Heights] \x04%N \x01has connected to the server.", client);
}

bool IsVersus()
{
	char sGamemode[32];
	FindConVar("mp_gamemode").GetString(sGamemode, sizeof(sGamemode));
	
	if (StrEqual(sGamemode, "versus", false))
		return true;
	
	return false;
}