#if defined RES_Personal_Cars
|++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
|------------------------------------------------------------------------------|
|	    RES Cars System by Rollercaster - Copyright 2016    (Version 1.0)      |
|------------------------------------------------------------------------------|
|++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
#endif
//------------------------------------------------------------------------------
//Includes
//------------------------------------------------------------------------------
#include <a_samp>
#include <zcmd>
//------------------------------------------------------------------------------
//Defines
//------------------------------------------------------------------------------
#define COLOR_ORANGE                                                            0xFF9900AA
#define COLOR_RED									                			0xFF0000AA
//------------------------------------------------------------------------------
#define Car0                                                                    "DEMO"
#define Car1                                                                    "*FOR SALE 1*"// User 1
#define Car2                                                                    "*FOR SALE 2*"// User 2
#define Car3                                                                    "*FOR SALE 3*"// User 3
#define Car4                                                                    "*FOR SALE 4*"// User 4
#define Car5                                                                    "*FOR SALE 5*"// User 5
#define Car6                                                                    "*FOR SALE 6*"// User 6
#define Car7                                                                    "*FOR SALE 7*"// User 7
#define Car8                                                                    "[SG]MahMoud"// User 8
#define Car9                                                                    "*FOR SALE 8*"// User 9
#define Car10                                                                   "MeLLoNN"// User 10
#define Car11                                                                   "*FOR SALE 9*"// User 11
#define Car12                                                                   "*FOR SALE 10*"// User 12
#define Car13                                                                   "*FOR SALE 11*"// User 13
#define Car14                                                                   "[SG]rollercaster"// User 14
#define Car15                                                                   "*FOR SALE 12*"// User 15

//------------------------------------------------------------------------------
//Variables  ////------------    117.3382, 1728.0752, 17.6292
//------------------------------------------------------------------------------
new car0, car1, car2, car3, car4, car5, car6, car7, car8, Float:x, Float:y, Float:z,
	car9, car10, car11, car12, car13, car14, car15;
//==============================================================================
// On Script Loading
//==============================================================================
public OnFilterScriptInit()
{
	//--------------------------------------------------------------------------
	LoadCar0(), LoadCar1(), LoadCar2(), LoadCar3(), LoadCar4(), LoadCar11(),
	LoadCar5(), LoadCar6(), LoadCar7(), LoadCar8(), LoadCar9(), LoadCar10(),
	LoadCar12(), LoadCar13(), LoadCar14(), LoadCar15();
	//--------------------------------------------------------------------------
	return 1;
}
//==============================================================================
// Personal Car System Commands
//==============================================================================
CMD:mycar(playerid, params[])
{
	if(strcmp(pName(playerid), Car0, true) == 0)//////////////////////////
	{
		if(!IsPlayerInAnyVehicle(playerid))
		{
		    GetPlayerPos(playerid, x,y,z);	SetVehiclePos(car0, x+2,y+2,z);
		    PutPlayerInVehicle(playerid, car0, 0);	   Success_Demo(playerid);
		}
		else ErrorMSG(playerid);
	}
	if(strcmp(pName(playerid), Car1, true) == 0)//////////////////////////
	{
		if(!IsPlayerInAnyVehicle(playerid))
		{
		    GetPlayerPos(playerid, x,y,z);	SetVehiclePos(car1, x+2,y+2,z);
		    PutPlayerInVehicle(playerid, car1, 0);	   Success(playerid);
		}
		else ErrorMSG(playerid);
	}
	if(strcmp(pName(playerid), Car2, true) == 0)//////////////////////////
	{
		if(!IsPlayerInAnyVehicle(playerid))
		{
		    GetPlayerPos(playerid, x,y,z);	SetVehiclePos(car2, x+2,y+2,z);
		    PutPlayerInVehicle(playerid, car2, 0);       Success(playerid);
		}
		else ErrorMSG(playerid);
	}
	if(strcmp(pName(playerid), Car3, true) == 0)//////////////////////////
	{
		if(!IsPlayerInAnyVehicle(playerid))
		{
		    GetPlayerPos(playerid, x,y,z);	SetVehiclePos(car3, x+2,y+2,z);
		    PutPlayerInVehicle(playerid, car3, 0);       Success(playerid);
		}
		else ErrorMSG(playerid);
	}
	if(strcmp(pName(playerid), Car4, true) == 0)//////////////////////////
	{
	    if(!IsPlayerInAnyVehicle(playerid))
	    {
	        GetPlayerPos(playerid, x,y,z);	SetVehiclePos(car4, x+2, y+2, z);
	        PutPlayerInVehicle(playerid, car4, 0);         Success(playerid);
	    }
	    else ErrorMSG(playerid);
	}
	if(strcmp(pName(playerid), Car5, true) == 0)////////////////////////////
	{
	    if(!IsPlayerInAnyVehicle(playerid))
	    {
	        GetPlayerPos(playerid, x,y,z);  SetVehiclePos(car5, x+2, y+2, z);
	        PutPlayerInVehicle(playerid, car5, 0);         Success(playerid);
	    }
	    else ErrorMSG(playerid);
	}
	if(strcmp(pName(playerid), "Car6", true) == 0)
	{
	    if(!IsPlayerInAnyVehicle(playerid))
	    {
	        GetPlayerPos(playerid, x,y,z);	SetVehiclePos(car6, x+2, y+2, z);
	        PutPlayerInVehicle(playerid, car6, 0);         Success(playerid);
	    }
	    else ErrorMSG(playerid);
	}
	if(strcmp(pName(playerid), Car7, true) == 0)
	{
	    if(!IsPlayerInAnyVehicle(playerid))
	    {
	        GetPlayerPos(playerid, x,y,z);	SetVehiclePos(car7, x+2, y+2, z);
	        PutPlayerInVehicle(playerid, car7, 0);         Success(playerid);
	    }
	    else ErrorMSG(playerid);
    }
	if(strcmp(pName(playerid), Car8, true) == 0)
	{
	    if(!IsPlayerInAnyVehicle(playerid))
	    {
	        GetPlayerPos(playerid, x,y,z);	SetVehiclePos(car8, x+2, y+2, z);
	        PutPlayerInVehicle(playerid, car8, 0);         Success(playerid);
	    }
	    else ErrorMSG(playerid);
 	}
	if(strcmp(pName(playerid), Car9, true) == 0)
	{
	    if(!IsPlayerInAnyVehicle(playerid))
	    {
	        GetPlayerPos(playerid, x,y,z);	SetVehiclePos(car9, x+2, y+2, z);
	        PutPlayerInVehicle(playerid, car9, 0);         Success(playerid);
	    }
	    else ErrorMSG(playerid);
	}
	if(strcmp(pName(playerid), Car10, true) == 0)
	{
	    if(!IsPlayerInAnyVehicle(playerid))
	    {
	        GetPlayerPos(playerid, x,y,z);	SetVehiclePos(car10, x+2, y+2, z);
	        PutPlayerInVehicle(playerid, car10, 0);         Success(playerid);
	    }
	    else ErrorMSG(playerid);
	}
	if(strcmp(pName(playerid), Car11, true) == 0)
	{
	    if(!IsPlayerInAnyVehicle(playerid))
	    {
	        GetPlayerPos(playerid, x,y,z);	SetVehiclePos(car11, x+2, y+2, z);
	        PutPlayerInVehicle(playerid, car11, 0);         Success(playerid);
	    }
	    else ErrorMSG(playerid);
	}
	if(strcmp(pName(playerid), Car12, true) == 0)
	{
	    if(!IsPlayerInAnyVehicle(playerid))
	    {
	        GetPlayerPos(playerid, x,y,z);	SetVehiclePos(car12, x+2, y+2, z);
	        PutPlayerInVehicle(playerid, car12, 0);         Success(playerid);
	    }
	    else ErrorMSG(playerid);
	}
	if(strcmp(pName(playerid), Car13, true) == 0)
	{
	    if(!IsPlayerInAnyVehicle(playerid))
	    {
	        GetPlayerPos(playerid, x,y,z);	SetVehiclePos(car13, x+2, y+2, z);
	        PutPlayerInVehicle(playerid, car13, 0);         Success(playerid);
	    }
	    else ErrorMSG(playerid);
	}
	if(strcmp(pName(playerid), Car14, true) == 0)
	{
	    if(!IsPlayerInAnyVehicle(playerid))
	    {
	        GetPlayerPos(playerid, x,y,z);	SetVehiclePos(car14, x+2, y+2, z);
	        PutPlayerInVehicle(playerid, car14, 0);         Success(playerid);
	    }
	    else ErrorMSG(playerid);
	}
	if(strcmp(pName(playerid), Car15, true) == 0)
	{
	    if(!IsPlayerInAnyVehicle(playerid))
	    {
	        GetPlayerPos(playerid, x,y,z);	SetVehiclePos(car15, x+2, y+2, z);
	        PutPlayerInVehicle(playerid, car15, 0);         Success(playerid);
	    }
	    else ErrorMSG(playerid);
	}
	return 1;
}
//==============================================================================
//OnPlayerStateChange
//==============================================================================
public OnPlayerStateChange(playerid, newstate, oldstate)
{
	//--------------------------------------------------------------------------
    new vehicleid = GetPlayerVehicleID(playerid);
	//--------------------------------------------------------------------------
	if(newstate == PLAYER_STATE_DRIVER)
	{
	    if(vehicleid == car0 && GetVehicleModel(vehicleid) == 604)////////////
	    {
			if(strcmp(pName(playerid), Car0, true) == 0 || IsPlayerAdmin(playerid))
   			{
				return 1;
			}
			else
			{
				GetPlayerPos(playerid, x,y,z);	SetPlayerPos(playerid, x,y,z+5);
				return Errors(playerid, 1);
			}
		}
	    if(vehicleid == car1 && GetVehicleModel(vehicleid) == 411)////////////
	    {
			if(strcmp(pName(playerid), Car1, true) == 0 || IsPlayerAdmin(playerid))
   			{
				return 1;
			}
			else
			{
				GetPlayerPos(playerid, x,y,z);	SetPlayerPos(playerid, x,y,z+5);
				return Errors(playerid, 1);
			}
		}
		if(vehicleid == car2 && GetVehicleModel(vehicleid) == 411)//////////////
		{
		    if(strcmp(pName(playerid), Car2, true) == 0 || IsPlayerAdmin(playerid))
		    {
				return 1;
		    }
		    else
		    {
				GetPlayerPos(playerid, x,y,z);	SetPlayerPos(playerid, x,y,z+5);
   				return Errors(playerid, 2);
		    }
		}
		if(vehicleid == car3 && GetVehicleModel(vehicleid) == 411)/////////////
		{
		    if(strcmp(pName(playerid), Car3, true) == 0 || IsPlayerAdmin(playerid))
		    {
		        return 1;
		    }
		    else
		    {
				GetPlayerPos(playerid, x,y,z);	SetPlayerPos(playerid, x,y,z+5);
   				return Errors(playerid, 3);
		    }
		}
  		if(vehicleid == car4 && GetVehicleModel(vehicleid) == 411)//////////////
	    {
			if(strcmp(pName(playerid), Car4, true) == 0 || IsPlayerAdmin(playerid))
   			{
				return 1;
			}
			else
			{
				GetPlayerPos(playerid, x,y,z);	SetPlayerPos(playerid, x,y,z+5);
   				return Errors(playerid, 4);
			}
		}
		if(vehicleid == car5 && GetVehicleModel(vehicleid) == 411)//////////////
		{
		    if(strcmp(pName(playerid), Car5, true) == 0 || IsPlayerAdmin(playerid))
		    {
		        return 1;
		    }
		    else
		    {
		        GetPlayerPos(playerid, x,y,z);  SetPlayerPos(playerid, x,y,z+5);
		        return Errors(playerid, 5);
		    }
		}
  		if(vehicleid == car6 && GetVehicleModel(vehicleid) == 411)//////////////
	    {
			if(strcmp(pName(playerid), Car6, true) == 0 || IsPlayerAdmin(playerid))
   			{
				return 1;
			}
			else
			{
				GetPlayerPos(playerid, x,y,z);	SetPlayerPos(playerid, x,y,z+5);
   				return Errors(playerid, 6);
			}
		}
  		if(vehicleid == car7 && GetVehicleModel(vehicleid) == 411)//////////////
	    {
			if(strcmp(pName(playerid), Car7, true) == 0 || IsPlayerAdmin(playerid))
   			{
				return 1;
			}
			else
			{
				GetPlayerPos(playerid, x,y,z);	SetPlayerPos(playerid, x,y,z+5);
   				return Errors(playerid, 7);
			}
		}
  		if(vehicleid == car8 && GetVehicleModel(vehicleid) == 411)//////////////
	    {
			if(strcmp(pName(playerid), Car8, true) == 0 || IsPlayerAdmin(playerid))
   			{
				return 1;
			}
			else
			{
				GetPlayerPos(playerid, x,y,z);	SetPlayerPos(playerid, x,y,z+5);
   				return Errors(playerid, 8);
			}
        }
  		if(vehicleid == car9 && GetVehicleModel(vehicleid) == 411)//////////////
	    {
			if(strcmp(pName(playerid), Car9, true) == 0 || IsPlayerAdmin(playerid))
   			{
				return 1;
			}
			else
			{
				GetPlayerPos(playerid, x,y,z);	SetPlayerPos(playerid, x,y,z+5);
   				return Errors(playerid, 9);
			}
		}
  		if(vehicleid == car10 && GetVehicleModel(vehicleid) == 411)//////////////
	    {
			if(strcmp(pName(playerid), Car10, true) == 0 || IsPlayerAdmin(playerid))
   			{
				return 1;
			}
			else
			{
				GetPlayerPos(playerid, x,y,z);	SetPlayerPos(playerid, x,y,z+5);
   				return Errors(playerid, 10);
			}
		}
  		if(vehicleid == car11 && GetVehicleModel(vehicleid) == 411)//////////////
	    {
			if(strcmp(pName(playerid), Car11, true) == 0 || IsPlayerAdmin(playerid))
   			{
				return 1;
			}
			else
			{
				GetPlayerPos(playerid, x,y,z);	SetPlayerPos(playerid, x,y,z+5);
   				return Errors(playerid, 11);
			}
		}
  		if(vehicleid == car12 && GetVehicleModel(vehicleid) == 411)//////////////
	    {
			if(strcmp(pName(playerid), Car12, true) == 0 || IsPlayerAdmin(playerid))
   			{
				return 1;
			}
			else
			{
				GetPlayerPos(playerid, x,y,z);	SetPlayerPos(playerid, x,y,z+5);
   				return Errors(playerid, 12);
			}
		}
  		if(vehicleid == car13 && GetVehicleModel(vehicleid) == 560)//////////////
	    {
			if(strcmp(pName(playerid), Car13, true) == 0 || IsPlayerAdmin(playerid))
   			{
				return 1;
			}
			else
			{
				GetPlayerPos(playerid, x,y,z);	SetPlayerPos(playerid, x,y,z+5);
   				return Errors(playerid, 13);
			}
		}
  		if(vehicleid == car14 && GetVehicleModel(vehicleid) == 560)//////////////
	    {
			if(strcmp(pName(playerid), Car14, true) == 0 || IsPlayerAdmin(playerid))
   			{
				return 1;
			}
			else
			{
				GetPlayerPos(playerid, x,y,z);	SetPlayerPos(playerid, x,y,z+5);
   				return Errors(playerid, 14);
			}
		}
  		if(vehicleid == car15 && GetVehicleModel(vehicleid) == 411)//////////////
	    {
			if(strcmp(pName(playerid), Car15, true) == 0 || IsPlayerAdmin(playerid))
   			{
				return 1;
			}
			else
			{
				GetPlayerPos(playerid, x,y,z);	SetPlayerPos(playerid, x,y,z+5);
   				return Errors(playerid, 15);
			}
		}
	}
	return 1;
}
//==============================================================================
// Script Funcions
//==============================================================================
stock pName(playerid)
{
	new Name[MAX_PLAYER_NAME];
	GetPlayerName(playerid, Name, 240);
	return Name;
}
//------------------------------------------------------------------------------
stock Errors(playerid, EID)
{
	new string[90];
	//--------------------------------------------------------------------------
	if(EID == 0)
	{
	    format(string, 90, "~w~You are not leaving my owner!~n~~r~%s", Car0);
	}
	else if(EID == 1)
	{
	    format(string, 90, "~w~You are not leaving my owner!~n~~r~%s", Car1);
	}
	else if(EID == 2)///////////////////////////////////////////////////////////
	{
	    format(string, 90, "~w~You are not leaving my owner!~n~~r~%s", Car2);
	}
	else if(EID == 3)///////////////////////////////////////////////////////////
	{
	    format(string, 90, "~w~You are not leaving my owner!~n~~r~%s", Car3);
	}
	else if(EID == 4)///////////////////////////////////////////////////////////
	{
	    format(string, 90, "~w~You are not leaving my owner!~n~~r~%s", Car4);
	}
	else if(EID == 5)///////////////////////////////////////////////////////////
	{
	    format(string, 90, "~w~You are not leaving my owner!~n~~r~%s", Car5);
	}
	else if(EID == 6)///////////////////////////////////////////////////////////
	{
	    format(string, 90, "~w~You are not leaving my owner!~n~~r~%s", Car6);
	}
	else if(EID == 7)///////////////////////////////////////////////////////////
	{
	    format(string, 90, "~w~You are not leaving my owner!~n~~r~%s", Car7);
	}
	else if(EID == 8)///////////////////////////////////////////////////////////
	{
	    format(string, 90, "~w~You are not leaving my owner!~n~~r~%s", Car8);
	}
	else if(EID == 9)///////////////////////////////////////////////////////////
	{
	    format(string, 90, "~w~You are not leaving my owner!~n~~r~%s", Car9);
	}
	else if(EID == 10)///////////////////////////////////////////////////////////
	{
	    format(string, 90, "~w~You are not leaving my owner!~n~~r~%s", Car10);
	}
	else if(EID == 11)///////////////////////////////////////////////////////////
	{
	    format(string, 90, "~w~You are not leaving my owner!~n~~r~%s", Car11);
	}
	else if(EID == 12)///////////////////////////////////////////////////////////
	{
	    format(string, 90, "~w~You are not leaving my owner!~n~~r~%s", Car12);
	}
	else if(EID == 13)///////////////////////////////////////////////////////////
	{
	    format(string, 90, "~w~You are not leaving my owner!~n~~r~%s", Car13);
	}
	else if(EID == 14)///////////////////////////////////////////////////////////
	{
	    format(string, 90, "~w~You are not leaving my owner!~n~~r~%s", Car14);
	}
	else if(EID == 15)///////////////////////////////////////////////////////////
	{
	    format(string, 90, "~w~You are not leaving my owner!~n~~r~%s", Car15);
	}
	//--------------------------------------------------------------------------
	return GameTextForPlayer(playerid, string, 5000, 4);
}
//------------------------------------------------------------------------------
stock Success(playerid)
{
	return SendClientMessage(playerid, COLOR_ORANGE, "You have spawned your personal car!");
}
//------------------------------------------------------------------------------
stock Success_Demo(playerid)
{
	return SendClientMessage(playerid, COLOR_ORANGE, "You have spawned your personal car [DEMO]!");
}
//------------------------------------------------------------------------------
stock ErrorMSG(playerid)
{
	return SendClientMessage(playerid, COLOR_RED, "ERROR: You already have a vehicle!");
}
//------------------------------------------------------------------------------
stock LoadCar0()
{
	//--------------------------------------------------------------------------
	SetVehicleNumberPlate(car0, "{FF9900}DEMO");
	car0 = AddStaticVehicle(604, -1670.2501, 2553.5850, 85.0544, 179.0237, 84,196); //
	SetVehicleNumberPlate(car0, "{FF9900}DEMO");
	//--------------------------------------------------------------------------
}
//------------------------------------------------------------------------------
stock LoadCar1()
{
	//--------------------------------------------------------------------------
	new uvobj1, uvobj2, uvobj3, uvobj4, uvobj5, uvobj6, uvobj7, uvobj8, uvobj9,
		uvobj10, uvobj11, uvobj12, uvobj13;
	//--------------------------------------------------------------------------
	SetVehicleNumberPlate(car1, "{FF9900}->{0066CC}R{FFFF00}O{FFFF00}L	{FF9900}<-");
	car1 = AddStaticVehicle(411, -1872.0046, -861.5966, 31.0110, 90.0000, -1, -1); //
	SetVehicleNumberPlate(car1, "{FF9900}->{0066CC}R{FFFF00}O{FFFF00}L{FF9900}<-");
	//--------------------------------------------------------------------------
	uvobj1 = CreateObject(18649,0,0,-1000,0,0,0,100);	uvobj2 = CreateObject(18649,0,0,-1000,0,0,0,100);
	uvobj3 = CreateObject(19419,0,0,-1000,0,0,0,100);	uvobj4 = CreateObject(18646,0,0,-1000,0,0,0,100);
	uvobj5 = CreateObject(18646,0,0,-1000,0,0,0,100);	uvobj6 = CreateObject(18693,0,0,-1000,0,0,0,100);
	uvobj7 = CreateObject(18693,0,0,-1000,0,0,0,100);	uvobj8 = CreateObject(18702,0,0,-1000,0,0,0,100);
	uvobj9 = CreateObject(18702,0,0,-1000,0,0,0,100);	uvobj10 = CreateObject(359,0,0,-1000,0,0,0,100);
 	uvobj11 = CreateObject(359,0,0,-1000,0,0,0,100);	uvobj12 = CreateObject(362,0,0,-1000,0,0,0,100);
	uvobj13 = CreateObject(362,0,0,-1000,0,0,0,100);
	//--------------------------------------------------------------------------
	AttachObjectToVehicle(uvobj1, car1, -0.974999,0.075000,-0.524999,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(uvobj2, car1, 0.899999,0.075000,-0.524999,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(uvobj3, car1, 0.000000,-2.250000,-0.300000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(uvobj4, car1, 0.824999,2.175000,-0.075000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(uvobj5, car1, -0.824999,2.175000,-0.075000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(uvobj6, car1, 1.200000,0.749999,-1.350000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(uvobj7, car1, -1.199999,0.749999,-1.350000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(uvobj8, car1, 0.300000,-2.400000,-2.100000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(uvobj9, car1, -0.300000,-2.400000,-2.100000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(uvobj10, car1, -0.749999,2.025000,0.150000,0.000000,0.000000,89.099983);
	AttachObjectToVehicle(uvobj11, car1, 0.824999,2.025000,0.150000,0.000000,0.000000,91.799980);
	AttachObjectToVehicle(uvobj12, car1, 1.049999,-1.125000,0.225000,-89.099983,27.000003,91.799980);
	AttachObjectToVehicle(uvobj13, car1, -1.049999,-1.125000,0.225000,-272.699890,27.000003,89.099983);
}
//------------------------------------------------------------------------------
stock LoadCar2()
{
	//--------------------------------------------------------------------------
	new uvobj1, uvobj2, uvobj3, uvobj4, uvobj5, uvobj6, uvobj7, uvobj8, uvobj9,
		uvobj10, uvobj11, uvobj12, uvobj13;
	//--------------------------------------------------------------------------
	SetVehicleNumberPlate(car2, "{FF9900}->{0066CC}H{FFFF00}i{FFFF00}T{FF9900}<-");
	car2 = AddStaticVehicle(411, -1872.0046, -858.8366, 31.0110, 90.0000, -1, -1);
	SetVehicleNumberPlate(car2, "{FF9900}->{0066CC}H{FFFF00}i{FFFF00}T{FF9900}<-");
	//--------------------------------------------------------------------------
	uvobj1 = CreateObject(18649,0,0,-1000,0,0,0,100);	uvobj2 = CreateObject(18649,0,0,-1000,0,0,0,100);
	uvobj3 = CreateObject(19419,0,0,-1000,0,0,0,100);	uvobj4 = CreateObject(18646,0,0,-1000,0,0,0,100);
	uvobj5 = CreateObject(18646,0,0,-1000,0,0,0,100);	uvobj6 = CreateObject(18693,0,0,-1000,0,0,0,100);
	uvobj7 = CreateObject(18693,0,0,-1000,0,0,0,100);	uvobj8 = CreateObject(18702,0,0,-1000,0,0,0,100);
	uvobj9 = CreateObject(18702,0,0,-1000,0,0,0,100);	uvobj10 = CreateObject(359,0,0,-1000,0,0,0,100);
 	uvobj11 = CreateObject(359,0,0,-1000,0,0,0,100);	uvobj12 = CreateObject(362,0,0,-1000,0,0,0,100);
	uvobj13 = CreateObject(362,0,0,-1000,0,0,0,100);
	//--------------------------------------------------------------------------
	AttachObjectToVehicle(uvobj1, car2, -0.974999,0.075000,-0.524999,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(uvobj2, car2, 0.899999,0.075000,-0.524999,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(uvobj3, car2, 0.000000,-2.250000,-0.300000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(uvobj4, car2, 0.824999,2.175000,-0.075000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(uvobj5, car2, -0.824999,2.175000,-0.075000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(uvobj6, car2, 1.200000,0.749999,-1.350000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(uvobj7, car2, -1.199999,0.749999,-1.350000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(uvobj8, car2, 0.300000,-2.400000,-2.100000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(uvobj9, car2, -0.300000,-2.400000,-2.100000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(uvobj10, car2, -0.749999,2.025000,0.150000,0.000000,0.000000,89.099983);
	AttachObjectToVehicle(uvobj11, car2, 0.824999,2.025000,0.150000,0.000000,0.000000,91.799980);
	AttachObjectToVehicle(uvobj12, car2, 1.049999,-1.125000,0.225000,-89.099983,27.000003,91.799980);
	AttachObjectToVehicle(uvobj13, car2, -1.049999,-1.125000,0.225000,-272.699890,27.000003,89.099983);
}
//------------------------------------------------------------------------------
stock LoadCar3()
{
	//--------------------------------------------------------------------------
	new myobject19, myobject20, myobject21, myobject22, myobject23, myobject24,
	    myobject25, myobject26, myobject27, myobject28, myobject29, myobject30;
	//--------------------------------------------------------------------------
	car3 = AddStaticVehicle(411, -1872.0046, -856.1966, 31.0110, 90.0000, -1, -1);
	//--------------------------------------------------------------------------
	myobject19 = CreateObject(18647,0,0,-1000,0,0,0,100);	myobject20 = CreateObject(18647,0,0,-1000,0,0,0,100);
	myobject21 = CreateObject(362,0,0,-1000,0,0,0,100);		myobject22 = CreateObject(362,0,0,-1000,0,0,0,100);
	myobject23 = CreateObject(359,0,0,-1000,0,0,0,100);		myobject24 = CreateObject(359,0,0,-1000,0,0,0,100);
	myobject25 = CreateObject(19419,0,0,-1000,0,0,0,100);	myobject26 = CreateObject(18646,0,0,-1000,0,0,0,100);
	myobject27 = CreateObject(359,0,0,-1000,0,0,0,100);		myobject28 = CreateObject(359,0,0,-1000,0,0,0,100);
	myobject29 = CreateObject(18688,0,0,-1000,0,0,0,100);	myobject30 = CreateObject(18688,0,0,-1000,0,0,0,100);
	//--------------------------------------------------------------------------
	AttachObjectToVehicle(myobject19, car3, -0.824999,0.150000,-0.375000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject20, car3, 0.674999,0.150000,-0.375000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject21, car3, 0.749999,0.750000,0.299999,0.000001,2.700001,94.499977);
	AttachObjectToVehicle(myobject22, car3, -0.600000,0.750000,0.299999,0.000001,2.700001,91.799980);
	AttachObjectToVehicle(myobject23, car3, -0.449999,0.000000,0.749999,0.000000,0.000000,89.099983);
	AttachObjectToVehicle(myobject24, car3, 0.524999,0.000000,0.749999,0.000000,0.000000,89.099983);
	AttachObjectToVehicle(myobject25, car3, 0.000000,-1.950000,0.375000,0.000000,0.000000,-0.000002);
	AttachObjectToVehicle(myobject26, car3, 0.000000,-0.375000,0.824999,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject27, car3, -0.974999,-1.350000,0.300000,-45.900009,0.000000,89.099983);
	AttachObjectToVehicle(myobject28, car3, 0.974999,-1.350000,0.300000,45.900005,0.000000,89.099983);
	AttachObjectToVehicle(myobject29, car3, 0.749999,-1.424999,-2.025000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject30, car3, -1.200000,-1.424999,-2.025000,0.000000,0.000000,0.000000);
	//--------------------------------------------------------------------------
}
//------------------------------------------------------------------------------
stock LoadCar4()
{
	new myobject19, myobject20, myobject21, myobject22, myobject23, myobject24,
	    myobject25, myobject26, myobject27, myobject28, myobject29, myobject30;
	//--------------------------------------------------------------------------
	car4 = AddStaticVehicle(411, -1872.0046, -853.2566, 31.0110, 90.0000,31,215); //
	//--------------------------------------------------------------------------
	myobject19 = CreateObject(18647,0,0,-1000,0,0,0,100);	myobject20 = CreateObject(18647,0,0,-1000,0,0,0,100);
	myobject21 = CreateObject(362,0,0,-1000,0,0,0,100);		myobject22 = CreateObject(362,0,0,-1000,0,0,0,100);
	myobject23 = CreateObject(359,0,0,-1000,0,0,0,100);		myobject24 = CreateObject(359,0,0,-1000,0,0,0,100);
	myobject25 = CreateObject(19419,0,0,-1000,0,0,0,100);	myobject26 = CreateObject(18646,0,0,-1000,0,0,0,100);
	myobject27 = CreateObject(359,0,0,-1000,0,0,0,100);		myobject28 = CreateObject(359,0,0,-1000,0,0,0,100);
	myobject29 = CreateObject(18688,0,0,-1000,0,0,0,100);	myobject30 = CreateObject(18688,0,0,-1000,0,0,0,100);
	//--------------------------------------------------------------------------
	AttachObjectToVehicle(myobject19, car4, -0.824999,0.150000,-0.375000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject20, car4, 0.674999,0.150000,-0.375000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject21, car4, 0.749999,0.750000,0.299999,0.000001,2.700001,94.499977);
	AttachObjectToVehicle(myobject22, car4, -0.600000,0.750000,0.299999,0.000001,2.700001,91.799980);
	AttachObjectToVehicle(myobject23, car4, -0.449999,0.000000,0.749999,0.000000,0.000000,89.099983);
	AttachObjectToVehicle(myobject24, car4, 0.524999,0.000000,0.749999,0.000000,0.000000,89.099983);
	AttachObjectToVehicle(myobject25, car4, 0.000000,-1.950000,0.375000,0.000000,0.000000,-0.000002);
	AttachObjectToVehicle(myobject26, car4, 0.000000,-0.375000,0.824999,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject27, car4, -0.974999,-1.350000,0.300000,-45.900009,0.000000,89.099983);
	AttachObjectToVehicle(myobject28, car4, 0.974999,-1.350000,0.300000,45.900005,0.000000,89.099983);
	AttachObjectToVehicle(myobject29, car4, 0.749999,-1.424999,-2.025000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject30, car4, -1.200000,-1.424999,-2.025000,0.000000,0.000000,0.000000);
}
//------------------------------------------------------------------------------
stock LoadCar5()
{
	//--------------------------------------------------------------------------
	new obj1, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, ob10, ob11, ob12,
	ob13, ob14, ob15;
	//--------------------------------------------------------------------------
	car5 = AddStaticVehicle(411, -1872.0046, -849.9966, 31.0110, 90.0000, -1, -1);
	//--------------------------------------------------------------------------
	obj1 = CreateObject(362,0,0,-1000,0,0,0,100);		obj2 = CreateObject(362,0,0,-1000,0,0,0,100);
	obj3 = CreateObject(18648,0,0,-1000,0,0,0,100);		obj4 = CreateObject(18648,0,0,-1000,0,0,0,100);
	obj5 = CreateObject(359,0,0,-1000,0,0,0,100);		obj6 = CreateObject(359,0,0,-1000,0,0,0,100);
	obj7 = CreateObject(18646,0,0,-1000,0,0,0,100);		obj8 = CreateObject(18646,0,0,-1000,0,0,0,100);
	obj9 = CreateObject(18646,0,0,-1000,0,0,0,100);		ob10 = CreateObject(359,0,0,-1000,0,0,0,100);
	ob11 = CreateObject(18693,0,0,-1000,0,0,0,100);		ob12 = CreateObject(18693,0,0,-1000,0,0,0,100);
	ob13 = CreateObject(18693,0,0,-1000,0,0,0,100);		ob14 = CreateObject(362,0,0,-1000,0,0,0,100);
	ob15 = CreateObject(362,0,0,-1000,0,0,0,100);
	//--------------------------------------------------------------------------
	AttachObjectToVehicle(obj1, car5, 1.200000,1.425000,0.300000,-3.239999,29.700004,94.499977);
	AttachObjectToVehicle(obj2, car5, -1.089999,1.425000,0.300000,-3.239999,29.700004,94.499977);
	AttachObjectToVehicle(obj3, car5, 0.920000,0.099999,-0.439999,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(obj4, car5, -0.879999,0.099999,-0.439999,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(obj5, car5, 0.639999,1.800000,0.225000,0.000000,4.679999,90.359977);
	AttachObjectToVehicle(obj6, car5, -0.560000,1.800000,0.225000,0.000000,4.679999,88.919975);
	AttachObjectToVehicle(obj7, car5, -0.419999,-0.129999,0.825000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(obj8, car5, 0.465000,-0.129999,0.825000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(obj9, car5, 0.035000,-1.905000,0.460000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(ob10, car5, 0.039999,-0.329999,0.739999,0.000000,1.799999,89.999961);
	AttachObjectToVehicle(ob11, car5, -0.000000,-1.085000,-0.774999,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(ob12, car5, -0.624999,1.060000,-1.250000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(ob13, car5, 0.595000,1.080000,-1.250000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(ob14, car5, 0.085000,1.210000,0.644999,-3.239976,37.260040,92.879997);
	AttachObjectToVehicle(ob15, car5, -0.004999,1.210000,0.644999,-3.239976,37.260040,92.879997);
	//--------------------------------------------------------------------------
}
//------------------------------------------------------------------------------
stock LoadCar6()
{
	//--------------------------------------------------------------------------
	new myobject19, myobject20, myobject21, myobject22, myobject23, myobject24,
	    myobject25, myobject26, myobject27, myobject28, myobject29, myobject30;
	//--------------------------------------------------------------------------
	car6 = AddStaticVehicle(411, -1872.0046, -846.7566, 31.0110, 90.0000, -1, -1);
	//--------------------------------------------------------------------------
	myobject19 = CreateObject(18647,0,0,-1000,0,0,0,100);	myobject20 = CreateObject(18647,0,0,-1000,0,0,0,100);
	myobject21 = CreateObject(362,0,0,-1000,0,0,0,100);		myobject22 = CreateObject(362,0,0,-1000,0,0,0,100);
	myobject23 = CreateObject(359,0,0,-1000,0,0,0,100);		myobject24 = CreateObject(359,0,0,-1000,0,0,0,100);
	myobject25 = CreateObject(19419,0,0,-1000,0,0,0,100);	myobject26 = CreateObject(18646,0,0,-1000,0,0,0,100);
	myobject27 = CreateObject(359,0,0,-1000,0,0,0,100);		myobject28 = CreateObject(359,0,0,-1000,0,0,0,100);
	myobject29 = CreateObject(18688,0,0,-1000,0,0,0,100);	myobject30 = CreateObject(18688,0,0,-1000,0,0,0,100);
	//--------------------------------------------------------------------------
	AttachObjectToVehicle(myobject19, car6, -0.824999,0.150000,-0.375000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject20, car6, 0.674999,0.150000,-0.375000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject21, car6, 0.749999,0.750000,0.299999,0.000001,2.700001,94.499977);
	AttachObjectToVehicle(myobject22, car6, -0.600000,0.750000,0.299999,0.000001,2.700001,91.799980);
	AttachObjectToVehicle(myobject23, car6, -0.449999,0.000000,0.749999,0.000000,0.000000,89.099983);
	AttachObjectToVehicle(myobject24, car6, 0.524999,0.000000,0.749999,0.000000,0.000000,89.099983);
	AttachObjectToVehicle(myobject25, car6, 0.000000,-1.950000,0.375000,0.000000,0.000000,-0.000002);
	AttachObjectToVehicle(myobject26, car6, 0.000000,-0.375000,0.824999,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject27, car6, -0.974999,-1.350000,0.300000,-45.900009,0.000000,89.099983);
	AttachObjectToVehicle(myobject28, car6, 0.974999,-1.350000,0.300000,45.900005,0.000000,89.099983);
	AttachObjectToVehicle(myobject29, car6, 0.749999,-1.424999,-2.025000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject30, car6, -1.200000,-1.424999,-2.025000,0.000000,0.000000,0.000000);
	//--------------------------------------------------------------------------
}
//------------------------------------------------------------------------------
stock LoadCar7()
{
	//--------------------------------------------------------------------------
	new myobject19, myobject20, myobject21, myobject22, myobject23, myobject24,
	    myobject25, myobject26, myobject27, myobject28, myobject29, myobject30;
	//--------------------------------------------------------------------------
	car7 = AddStaticVehicle(411, -1872.0046, -843.4966, 31.0110, 90.0000, -1, -1);
	//--------------------------------------------------------------------------
	myobject19 = CreateObject(18647,0,0,-1000,0,0,0,100);	myobject20 = CreateObject(18647,0,0,-1000,0,0,0,100);
	myobject21 = CreateObject(362,0,0,-1000,0,0,0,100);		myobject22 = CreateObject(362,0,0,-1000,0,0,0,100);
	myobject23 = CreateObject(359,0,0,-1000,0,0,0,100);		myobject24 = CreateObject(359,0,0,-1000,0,0,0,100);
	myobject25 = CreateObject(19419,0,0,-1000,0,0,0,100);	myobject26 = CreateObject(18646,0,0,-1000,0,0,0,100);
	myobject27 = CreateObject(359,0,0,-1000,0,0,0,100);		myobject28 = CreateObject(359,0,0,-1000,0,0,0,100);
	myobject29 = CreateObject(18688,0,0,-1000,0,0,0,100);	myobject30 = CreateObject(18688,0,0,-1000,0,0,0,100);
	//--------------------------------------------------------------------------
	AttachObjectToVehicle(myobject19, car7, -0.824999,0.150000,-0.375000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject20, car7, 0.674999,0.150000,-0.375000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject21, car7, 0.749999,0.750000,0.299999,0.000001,2.700001,94.499977);
	AttachObjectToVehicle(myobject22, car7, -0.600000,0.750000,0.299999,0.000001,2.700001,91.799980);
	AttachObjectToVehicle(myobject23, car7, -0.449999,0.000000,0.749999,0.000000,0.000000,89.099983);
	AttachObjectToVehicle(myobject24, car7, 0.524999,0.000000,0.749999,0.000000,0.000000,89.099983);
	AttachObjectToVehicle(myobject25, car7, 0.000000,-1.950000,0.375000,0.000000,0.000000,-0.000002);
	AttachObjectToVehicle(myobject26, car7, 0.000000,-0.375000,0.824999,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject27, car7, -0.974999,-1.350000,0.300000,-45.900009,0.000000,89.099983);
	AttachObjectToVehicle(myobject28, car7, 0.974999,-1.350000,0.300000,45.900005,0.000000,89.099983);
	AttachObjectToVehicle(myobject29, car7, 0.749999,-1.424999,-2.025000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject30, car7, -1.200000,-1.424999,-2.025000,0.000000,0.000000,0.000000);
	//--------------------------------------------------------------------------
}
//------------------------------------------------------------------------------
stock LoadCar8()
{
	//--------------------------------------------------------------------------
	new myobject19, myobject20, myobject21, myobject22, myobject23, myobject24,
	    myobject25, myobject26, myobject27, myobject28, myobject29, myobject30;
	//--------------------------------------------------------------------------
	car8 = AddStaticVehicle(411, -1872.0046, -840.2366, 31.0110, 90.0000, -1, -1);
	//--------------------------------------------------------------------------
	myobject19 = CreateObject(18647,0,0,-1000,0,0,0,100);	myobject20 = CreateObject(18647,0,0,-1000,0,0,0,100);
	myobject21 = CreateObject(362,0,0,-1000,0,0,0,100);		myobject22 = CreateObject(362,0,0,-1000,0,0,0,100);
	myobject23 = CreateObject(359,0,0,-1000,0,0,0,100);		myobject24 = CreateObject(359,0,0,-1000,0,0,0,100);
	myobject25 = CreateObject(19419,0,0,-1000,0,0,0,100);	myobject26 = CreateObject(18646,0,0,-1000,0,0,0,100);
	myobject27 = CreateObject(359,0,0,-1000,0,0,0,100);		myobject28 = CreateObject(359,0,0,-1000,0,0,0,100);
	myobject29 = CreateObject(18688,0,0,-1000,0,0,0,100);	myobject30 = CreateObject(18688,0,0,-1000,0,0,0,100);
	//--------------------------------------------------------------------------
	AttachObjectToVehicle(myobject19, car8, -0.824999,0.150000,-0.375000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject20, car8, 0.674999,0.150000,-0.375000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject21, car8, 0.749999,0.750000,0.299999,0.000001,2.700001,94.499977);
	AttachObjectToVehicle(myobject22, car8, -0.600000,0.750000,0.299999,0.000001,2.700001,91.799980);
	AttachObjectToVehicle(myobject23, car8, -0.449999,0.000000,0.749999,0.000000,0.000000,89.099983);
	AttachObjectToVehicle(myobject24, car8, 0.524999,0.000000,0.749999,0.000000,0.000000,89.099983);
	AttachObjectToVehicle(myobject25, car8, 0.000000,-1.950000,0.375000,0.000000,0.000000,-0.000002);
	AttachObjectToVehicle(myobject26, car8, 0.000000,-0.375000,0.824999,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject27, car8, -0.974999,-1.350000,0.300000,-45.900009,0.000000,89.099983);
	AttachObjectToVehicle(myobject28, car8, 0.974999,-1.350000,0.300000,45.900005,0.000000,89.099983);
	AttachObjectToVehicle(myobject29, car8, 0.749999,-1.424999,-2.025000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject30, car8, -1.200000,-1.424999,-2.025000,0.000000,0.000000,0.000000);
	//--------------------------------------------------------------------------
}
//------------------------------------------------------------------------------
stock LoadCar9()
{
	//--------------------------------------------------------------------------
	new myobject19, myobject20, myobject21, myobject22, myobject23, myobject24,
	    myobject25, myobject26, myobject27, myobject28, myobject29, myobject30;
	//--------------------------------------------------------------------------
	car9 = AddStaticVehicle(411, -1872.0046, -837.0366, 31.0110, 90.0000, -1, -1); //
	//--------------------------------------------------------------------------
	myobject19 = CreateObject(18647,0,0,-1000,0,0,0,100);	myobject20 = CreateObject(18647,0,0,-1000,0,0,0,100);
	myobject21 = CreateObject(362,0,0,-1000,0,0,0,100);		myobject22 = CreateObject(362,0,0,-1000,0,0,0,100);
	myobject23 = CreateObject(359,0,0,-1000,0,0,0,100);		myobject24 = CreateObject(359,0,0,-1000,0,0,0,100);
	myobject25 = CreateObject(19419,0,0,-1000,0,0,0,100);	myobject26 = CreateObject(18646,0,0,-1000,0,0,0,100);
	myobject27 = CreateObject(359,0,0,-1000,0,0,0,100);		myobject28 = CreateObject(359,0,0,-1000,0,0,0,100);
	myobject29 = CreateObject(18688,0,0,-1000,0,0,0,100);	myobject30 = CreateObject(18688,0,0,-1000,0,0,0,100);
	//--------------------------------------------------------------------------
	AttachObjectToVehicle(myobject19, car9, -0.824999,0.150000,-0.375000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject20, car9, 0.674999,0.150000,-0.375000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject21, car9, 0.749999,0.750000,0.299999,0.000001,2.700001,94.499977);
	AttachObjectToVehicle(myobject22, car9, -0.600000,0.750000,0.299999,0.000001,2.700001,91.799980);
	AttachObjectToVehicle(myobject23, car9, -0.449999,0.000000,0.749999,0.000000,0.000000,89.099983);
	AttachObjectToVehicle(myobject24, car9, 0.524999,0.000000,0.749999,0.000000,0.000000,89.099983);
	AttachObjectToVehicle(myobject25, car9, 0.000000,-1.950000,0.375000,0.000000,0.000000,-0.000002);
	AttachObjectToVehicle(myobject26, car9, 0.000000,-0.375000,0.824999,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject27, car9, -0.974999,-1.350000,0.300000,-45.900009,0.000000,89.099983);
	AttachObjectToVehicle(myobject28, car9, 0.974999,-1.350000,0.300000,45.900005,0.000000,89.099983);
	AttachObjectToVehicle(myobject29, car9, 0.749999,-1.424999,-2.025000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject30, car9, -1.200000,-1.424999,-2.025000,0.000000,0.000000,0.000000);
	//--------------------------------------------------------------------------
}
//==============================================================================
stock LoadCar10()
{
	//--------------------------------------------------------------------------
	new myobject19, myobject20, myobject21, myobject22, myobject23, myobject24,
	    myobject25, myobject26, myobject27, myobject28, myobject29, myobject30;
	//--------------------------------------------------------------------------
	car10 = AddStaticVehicle(411, -1872.0046, -833.7766, 31.0110, 90.0000, -1, -1);
	//--------------------------------------------------------------------------
	myobject19 = CreateObject(18647,0,0,-1000,0,0,0,100);	myobject20 = CreateObject(18647,0,0,-1000,0,0,0,100);
	myobject21 = CreateObject(362,0,0,-1000,0,0,0,100);		myobject22 = CreateObject(362,0,0,-1000,0,0,0,100);
	myobject23 = CreateObject(359,0,0,-1000,0,0,0,100);		myobject24 = CreateObject(359,0,0,-1000,0,0,0,100);
	myobject25 = CreateObject(19419,0,0,-1000,0,0,0,100);	myobject26 = CreateObject(18646,0,0,-1000,0,0,0,100);
	myobject27 = CreateObject(359,0,0,-1000,0,0,0,100);		myobject28 = CreateObject(359,0,0,-1000,0,0,0,100);
	myobject29 = CreateObject(18688,0,0,-1000,0,0,0,100);	myobject30 = CreateObject(18688,0,0,-1000,0,0,0,100);
	//--------------------------------------------------------------------------
	AttachObjectToVehicle(myobject19, car10, -0.824999,0.150000,-0.375000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject20, car10, 0.674999,0.150000,-0.375000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject21, car10, 0.749999,0.750000,0.299999,0.000001,2.700001,94.499977);
	AttachObjectToVehicle(myobject22, car10, -0.600000,0.750000,0.299999,0.000001,2.700001,91.799980);
	AttachObjectToVehicle(myobject23, car10, -0.449999,0.000000,0.749999,0.000000,0.000000,89.099983);
	AttachObjectToVehicle(myobject24, car10, 0.524999,0.000000,0.749999,0.000000,0.000000,89.099983);
	AttachObjectToVehicle(myobject25, car10, 0.000000,-1.950000,0.375000,0.000000,0.000000,-0.000002);
	AttachObjectToVehicle(myobject26, car10, 0.000000,-0.375000,0.824999,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject27, car10, -0.974999,-1.350000,0.300000,-45.900009,0.000000,89.099983);
	AttachObjectToVehicle(myobject28, car10, 0.974999,-1.350000,0.300000,45.900005,0.000000,89.099983);
	AttachObjectToVehicle(myobject29, car10, 0.749999,-1.424999,-2.025000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject30, car10, -1.200000,-1.424999,-2.025000,0.000000,0.000000,0.000000);
	//--------------------------------------------------------------------------
}
//==============================================================================
stock LoadCar11()
{
	//--------------------------------------------------------------------------
	new myobject19, myobject20, myobject21, myobject22, myobject23, myobject24,
	    myobject25, myobject26, myobject27, myobject28, myobject29, myobject30;
	//--------------------------------------------------------------------------
	car11 = AddStaticVehicle(411, -1872.0046, -830.5566, 31.0110, 90.0000, -1, -1);
	//--------------------------------------------------------------------------
	myobject19 = CreateObject(18647,0,0,-1000,0,0,0,100);	myobject20 = CreateObject(18647,0,0,-1000,0,0,0,100);
	myobject21 = CreateObject(362,0,0,-1000,0,0,0,100);		myobject22 = CreateObject(362,0,0,-1000,0,0,0,100);
	myobject23 = CreateObject(359,0,0,-1000,0,0,0,100);		myobject24 = CreateObject(359,0,0,-1000,0,0,0,100);
	myobject25 = CreateObject(19419,0,0,-1000,0,0,0,100);	myobject26 = CreateObject(18646,0,0,-1000,0,0,0,100);
	myobject27 = CreateObject(359,0,0,-1000,0,0,0,100);		myobject28 = CreateObject(359,0,0,-1000,0,0,0,100);
	myobject29 = CreateObject(18688,0,0,-1000,0,0,0,100);	myobject30 = CreateObject(18688,0,0,-1000,0,0,0,100);
	//--------------------------------------------------------------------------
	AttachObjectToVehicle(myobject19, car11, -0.824999,0.150000,-0.375000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject20, car11, 0.674999,0.150000,-0.375000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject21, car11, 0.749999,0.750000,0.299999,0.000001,2.700001,94.499977);
	AttachObjectToVehicle(myobject22, car11, -0.600000,0.750000,0.299999,0.000001,2.700001,91.799980);
	AttachObjectToVehicle(myobject23, car11, -0.449999,0.000000,0.749999,0.000000,0.000000,89.099983);
	AttachObjectToVehicle(myobject24, car11, 0.524999,0.000000,0.749999,0.000000,0.000000,89.099983);
	AttachObjectToVehicle(myobject25, car11, 0.000000,-1.950000,0.375000,0.000000,0.000000,-0.000002);
	AttachObjectToVehicle(myobject26, car11, 0.000000,-0.375000,0.824999,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject27, car11, -0.974999,-1.350000,0.300000,-45.900009,0.000000,89.099983);
	AttachObjectToVehicle(myobject28, car11, 0.974999,-1.350000,0.300000,45.900005,0.000000,89.099983);
	AttachObjectToVehicle(myobject29, car11, 0.749999,-1.424999,-2.025000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject30, car11, -1.200000,-1.424999,-2.025000,0.000000,0.000000,0.000000);
	//--------------------------------------------------------------------------
}
//==============================================================================
stock LoadCar12()
{
	//--------------------------------------------------------------------------
	new myobject19, myobject20, myobject21, myobject22, myobject23, myobject24,
	    myobject25, myobject26, myobject27, myobject28, myobject29, myobject30;
	//--------------------------------------------------------------------------
	car12 = AddStaticVehicle(411, -1872.0046, -827.2366, 31.0110, 90.0000, -1, -1);
	//--------------------------------------------------------------------------
	myobject19 = CreateObject(18647,0,0,-1000,0,0,0,100);	myobject20 = CreateObject(18647,0,0,-1000,0,0,0,100);
	myobject21 = CreateObject(362,0,0,-1000,0,0,0,100);		myobject22 = CreateObject(362,0,0,-1000,0,0,0,100);
	myobject23 = CreateObject(359,0,0,-1000,0,0,0,100);		myobject24 = CreateObject(359,0,0,-1000,0,0,0,100);
	myobject25 = CreateObject(19419,0,0,-1000,0,0,0,100);	myobject26 = CreateObject(18646,0,0,-1000,0,0,0,100);
	myobject27 = CreateObject(359,0,0,-1000,0,0,0,100);		myobject28 = CreateObject(359,0,0,-1000,0,0,0,100);
	myobject29 = CreateObject(18688,0,0,-1000,0,0,0,100);	myobject30 = CreateObject(18688,0,0,-1000,0,0,0,100);
	//--------------------------------------------------------------------------
	AttachObjectToVehicle(myobject19, car12, -0.824999,0.150000,-0.375000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject20, car12, 0.674999,0.150000,-0.375000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject21, car12, 0.749999,0.750000,0.299999,0.000001,2.700001,94.499977);
	AttachObjectToVehicle(myobject22, car12, -0.600000,0.750000,0.299999,0.000001,2.700001,91.799980);
	AttachObjectToVehicle(myobject23, car12, -0.449999,0.000000,0.749999,0.000000,0.000000,89.099983);
	AttachObjectToVehicle(myobject24, car12, 0.524999,0.000000,0.749999,0.000000,0.000000,89.099983);
	AttachObjectToVehicle(myobject25, car12, 0.000000,-1.950000,0.375000,0.000000,0.000000,-0.000002);
	AttachObjectToVehicle(myobject26, car12, 0.000000,-0.375000,0.824999,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject27, car12, -0.974999,-1.350000,0.300000,-45.900009,0.000000,89.099983);
	AttachObjectToVehicle(myobject28, car12, 0.974999,-1.350000,0.300000,45.900005,0.000000,89.099983);
	AttachObjectToVehicle(myobject29, car12, 0.749999,-1.424999,-2.025000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(myobject30, car12, -1.200000,-1.424999,-2.025000,0.000000,0.000000,0.000000);
	//--------------------------------------------------------------------------
}
//==============================================================================
stock LoadCar13()
{
	car13 = AddStaticVehicle(560, 2058.3831, -1694.5460, 13.2587, 273.1751, 0, 0);
}
//==============================================================================
stock LoadCar14()
{
	//--------------------------------------------------------------------------
	new ob = CreateObject(1080, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob1 = CreateObject(1080, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob2 = CreateObject(1080, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob3 = CreateObject(1080, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob4 = CreateObject(1736, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob5 = CreateObject(18648, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob6 = CreateObject(18648, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob7 = CreateObject(18646, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob8 = CreateObject(18646, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob11 = CreateObject(1090, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob12 = CreateObject(1090, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob13 = CreateObject(1001, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob14 = CreateObject(1033, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob15 = CreateObject(18650, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob16 = CreateObject(18650, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	car14 = AddStaticVehicle(560,-1973.0759,306.4726,34.8764,181.6501,169,199); //
	AttachObjectToVehicle(ob, car14,  -1.17, 1.55, -0.21,   0.00, 0.00, 180.00);
	AttachObjectToVehicle(ob1, car14,  1.15, -1.46, -0.22,   0.00, 0.00, 0.00);
	AttachObjectToVehicle(ob2, car14,  -1.15, -1.45, -0.22,   0.00, 0.00, 180.00);
	AttachObjectToVehicle(ob3, car14, 1.16, 1.56, -0.19,   0.00, 0.00, 0.00);
	AttachObjectToVehicle(ob4, car14, 0.00, 2.14, 0.51,   -60.00, 0.00, 180.00);
    AttachObjectToVehicle(ob5, car14, -0.90, 0.05, -0.46,   0.00, 0.00, 0.00);
    AttachObjectToVehicle(ob6, car14, 0.95, -0.02, -0.46,   0.00, 0.00, 0.00);
    AttachObjectToVehicle(ob7, car14, 0.79, -1.71, 0.43,   0.00, 0.00, 0.00);
    AttachObjectToVehicle(ob8, car14, -0.78, -1.71, 0.43,   0.00, 0.00, 0.00);
    AttachObjectToVehicle(ob11, car14, 1.02, 0.01, -0.49,   0.00, 180.00, 0.00);
    AttachObjectToVehicle(ob12, car14, -1.08, 0.05, -0.50,   0.00, 0.00, 360.00);
    AttachObjectToVehicle(ob13, car14, 0.01, -2.25, 0.34,   0.00, 0.00, 0.00);
    AttachObjectToVehicle(ob14, car14, -0.01, 0.29, 0.80,   0.00, 0.00, 0.00);
    AttachObjectToVehicle(ob15, car14, -0.38, -1.36, -0.46,   0.00, 0.00, 24.00);
    AttachObjectToVehicle(ob16, car14, 0.43, -1.35, -0.46,   0.00, 0.00, -24.00);
	//--------------------------------------------------------------------------
}
//==============================================================================
stock LoadCar15()
{
	//--------------------------------------------------------------------------
	new ob = CreateObject(1006, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob1 = CreateObject(1161, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob2 = CreateObject(1161, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob3 = CreateObject(1059, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob4 = CreateObject(1146, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob5 = CreateObject(1006, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob6 = CreateObject(1146, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob7 = CreateObject(1006, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob8 = CreateObject(1006, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob11 = CreateObject(1006, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob12 = CreateObject(1027, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	new ob13 = CreateObject(1027, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
    new ob14 = CreateObject(1146, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
//===|	new ob15 = CreateObject(18650, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
//===|	new ob16 = CreateObject(18650, 0.00, 0.00, 0.00,   0.00, 0.00, 0.00);
	//--------------------------------------------------------------------------
	car15 = AddStaticVehicle(411,-1872.2316,-824.0346,31.7505,88.5211,0,00); //
	//--------------------------------------------------------------------------
	AttachObjectToVehicle(ob, car15,  -0.300000,0.000000,0.675000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(ob1, car15,  1.049999,2.174999,-0.599999,0.000005,180.899887,180.899963);
	AttachObjectToVehicle(ob2, car15,  -1.049999,-1.950001,-0.599999,0.000005,180.899887,361.799743);
	AttachObjectToVehicle(ob3, car15, 0.000000,0.000000,0.000000,0.000000,0.000000,0.000000);
	AttachObjectToVehicle(ob4, car15, -0.074999,-2.325000,0.375000,0.000000,0.000000,0.000000);
    AttachObjectToVehicle(ob5, car15, 0.225000,0.000000,0.674999,0.000000,0.000000,0.000000);
    AttachObjectToVehicle(ob6, car15, -0.074999,-2.325000,0.524999,0.000000,0.000000,0.000000);
    AttachObjectToVehicle(ob7, car15, 0.000000,1.800000,0.149999,0.000000,0.000000,0.000000);
    AttachObjectToVehicle(ob8, car15, 0.000000,1.650000,0.150000,0.000000,0.000000,0.000000);
    AttachObjectToVehicle(ob11, car15, 0.000000,1.950000,0.150000,-10.800001,0.000000,0.000000);
    AttachObjectToVehicle(ob12, car15, -1.049999,-0.824999,-0.599999,0.000000,0.000000,0.000000);
    AttachObjectToVehicle(ob13, car15, 0.974999,-0.824999,-0.599999,0.000000,0.000000,0.000000);
    AttachObjectToVehicle(ob14, car15, -0.074999,-2.325000,0.449999,0.000000,0.000000,0.000000);
//==|    AttachObjectToVehicle(ob15, car14, -0.38, -1.36, -0.46,   0.00, 0.00, 24.00);
//==|    AttachObjectToVehicle(ob16, car14, 0.43, -1.35, -0.46,   0.00, 0.00, -24.00);

	//--------------------------------------------------------------------------
}
//==============================================================================


//------------------------------------------------------------------------------
#if defined RES_Personal_Cars
|++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
|------------------------------------------------------------------------------|
|	      RES Cars System by Rollercaster - Copyright 2016                     |
|------------------------------------------------------------------------------|
|++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
#endif
