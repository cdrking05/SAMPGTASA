new Text:Horse1, Text:Horse2, Text:Horse3, Text:Horse4, Text:BG1, Text:BG2, Text:Start, Text:Finish, Text:Start2, Text:Finish2, HorseCD, Text:CDTextDraw, Text:HorseNum1, Text:HorseNum2, Text:HorseNum3, Text:HorseNum4, HorseAnimCount;
new Float:HorsePosX1, Float:HorsePosX2, Float:HorsePosX3, Float:HorsePosX4, HorseStop;
new MoneyBet[MAX_PLAYERS], BetOnHorse[MAX_PLAYERS], RaceStarted, Watching[MAX_PLAYERS], Prepared, Horsemsg, HBStarting, HBStarted;
//Meh, I know it's alot of variables.
static ServerMinutes;
static ServerHours;

//Some simple defines for easier access :>
#define ORANGE 0xF97804FF
#define TimerTextDrawLocX 547
#define TimerTextDrawLocY 2
#define TimeOfHorseRaceHours 1
#define TimeOfHorseRaceMinutes 20
#define CashLowerBounds 100000
#define CashHigherBounds 250000
#define RealMilisecondsPerIGMinute 2000

//I had to make these stocks as I was too lazy to type everything :D
stock HorseInfo(Text:horseid)
{
    TextDrawFont(horseid, 4); 
    TextDrawColor(horseid,0xFFFFFFFF);
    TextDrawTextSize(horseid,64,64); 
}

stock HorseNumInfo(Text:horsenumid)
{
    TextDrawFont(horsenumid, 4); 
    TextDrawColor(horsenumid,0xFFFFFFFF);
    TextDrawTextSize(horsenumid,32,32); 
}

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" Horse Betting Track system by KUSH");
	print("--------------------------------------\n");
	RaceStarted = 0;
	Prepared = 0;
	Horsemsg = 1;
	return 1;
}

forward GameTimeTimer();
public GameTimeTimer()
{
    ServerMinutes++;
	if(ServerMinutes == 60)
	{
		ServerMinutes = 0;
		ServerHours++;

		if(ServerHours == 24)
		{
		ServerHours = 0;
		}
	}
	SetWorldTime(ServerHours);
	if (HBStarting == 1)
	{
		SendClientMessageToAll(ORANGE, "Horse Racing has about to start. You can watch to your mobile phone using [/watch].");
		for(new i = 0; i < MAX_PLAYERS; i++)
	 	{
		    new Float:X[MAX_PLAYERS], Float:Y[MAX_PLAYERS], Float:Z[MAX_PLAYERS];
	 	    GetPlayerPos(i, X[i], Y[i], Z[i]);
		    PlayerPlaySound(i, 5410, X[i], Y[i], Z[i]);
		    SetTimerEx("HorseAnimTimer1", 5000, false, "i", i);
		}
		SetTimer("HorseStartTimer", 2000, 0);
		RaceStarted = 1;
		Prepared = 0;
	}
	if (HBStarted == 1)
	{
	    HorseCD = 3;
	    HorseStop = 0;

	    BG2 = TextDrawCreate(0, 0, "LD_OTB:bckgrnd");
        TextDrawFont(BG2, 4);
        TextDrawColor(BG2,0xFFFFFFFF);
        TextDrawTextSize(BG2,640,200);

 	    BG1 = TextDrawCreate(0, 0, "LD_OTB:trees");
        TextDrawFont(BG1, 4);
        TextDrawColor(BG1,0xFFFFFFFF);
        TextDrawTextSize(BG1,640,480);

   	    Start2 = TextDrawCreate(-170, 145, "LD_OTB:pole2");
        TextDrawFont(Start2, 4);
        TextDrawColor(Start2,0xFFFFFFFF);
        TextDrawTextSize(Start2,256,200);

   	    Finish2 = TextDrawCreate(365, 145, "LD_OTB:pole2");
        TextDrawFont(Finish2, 4);
        TextDrawColor(Finish2,0xFFFFFFFF);
        TextDrawTextSize(Finish2,256,200);

    	Horse1 = TextDrawCreate(0, 200, "LD_OTB:hrs8");
		HorseInfo(Horse1);
		HorsePosX1 = 0;

   	 	Horse2 = TextDrawCreate(0, 250, "LD_OTB:hrs8");
		HorseInfo(Horse2);
		HorsePosX2 = 0;

    	Horse3 = TextDrawCreate(0, 300, "LD_OTB:hrs8");
		HorseInfo(Horse3);
		HorsePosX3 = 0;

    	Horse4 = TextDrawCreate(0, 350, "LD_OTB:hrs8");
		HorseInfo(Horse4);
    	HorsePosX4 = 0;

    	HorseNum1 = TextDrawCreate(15, 204, "LD_OTB2:Ric1");
    	HorseNumInfo(HorseNum1);

    	HorseNum2 = TextDrawCreate(15, 254, "LD_OTB2:Ric2");
    	HorseNumInfo(HorseNum2);

    	HorseNum3 = TextDrawCreate(15, 304, "LD_OTB2:Ric3");
    	HorseNumInfo(HorseNum3);

    	HorseNum4 = TextDrawCreate(15, 354, "LD_OTB2:Ric4");
   		HorseNumInfo(HorseNum4);

   		Start = TextDrawCreate(-170, 338, "LD_OTB:pole2");
    	TextDrawFont(Start, 4);
    	TextDrawColor(Start,0xFFFFFFFF);
    	TextDrawTextSize(Start,256,200);

   		Finish = TextDrawCreate(365, 338, "LD_OTB:pole2");
    	TextDrawFont(Finish, 4);
    	TextDrawColor(Finish,0xFFFFFFFF);
    	TextDrawTextSize(Finish,256,200);

		CDTextDraw = TextDrawCreate(310,235,"3");
		TextDrawAlignment(CDTextDraw,0);
		TextDrawBackgroundColor(CDTextDraw,0x000000ff);
		TextDrawFont(CDTextDraw,2);
		TextDrawLetterSize(CDTextDraw,0.5,2);
		TextDrawColor(CDTextDraw,0x00ff0099);
		TextDrawSetOutline(CDTextDraw,1);
		TextDrawSetProportional(CDTextDraw,1);
		TextDrawSetShadow(CDTextDraw,1);

		HorseAnimCount = 1;
		Prepared = 1;
		for(new i = 0; i < MAX_PLAYERS; i++)
 		{
			new Float:X[MAX_PLAYERS], Float:Y[MAX_PLAYERS], Float:Z[MAX_PLAYERS];
 			GetPlayerPos(i, X[i], Y[i], Z[i]);
			PlayerPlaySound(i, 5401, X[i], Y[i], Z[i]);
		}
		SendClientMessageToAll(ORANGE, "Horse Racing is about to start. You can bet using [/bet] and watch to your mobile phone using [/watch].");
	}
}

forward HorseStartTimer();
public HorseStartTimer()
{
	if (HorseCD > 0)
	{
	new string[128];
	format(string, sizeof(string), "%d",HorseCD);
	if (Horsemsg == 1)
	{
	SendClientMessageToAll(ORANGE, "Horse Racing is about to start. You can watch to your mobile phone using [/watch]");
	Horsemsg = 0;
	}
	TextDrawColor(CDTextDraw,0xff0000ff);
	TextDrawSetString(CDTextDraw, string);
	HorseCD -= 1;
	SetTimer("HorseStartTimer", 2000, 0);
	for(new i = 0; i < MAX_PLAYERS; i++)
	    {
	    new Float:X[MAX_PLAYERS], Float:Y[MAX_PLAYERS], Float:Z[MAX_PLAYERS];
	    GetPlayerPos(i, X[i], Y[i], Z[i]);
		PlayerPlaySound(i, 3200, X[i], Y[i], Z[i]);
		}
	}
	else
	{
	TextDrawColor(CDTextDraw,0x00ff00ff);
	TextDrawSetString(CDTextDraw, "Go!");
	Horsemsg = 1;
	for(new i = 0; i < MAX_PLAYERS; i++)
	    {
	    new Float:X[MAX_PLAYERS], Float:Y[MAX_PLAYERS], Float:Z[MAX_PLAYERS];
	    GetPlayerPos(i, X[i], Y[i], Z[i]);
		PlayerPlaySound(i, 3201, X[i], Y[i], Z[i]);
		}
	SetTimer("HorseAnimTimer", 100, 0);
	}
	TextDrawShowForAll(CDTextDraw);
	SetTimer("HorseStartHideTimer", 1000, 0);
	return 1;
}

forward HorseAnimTimer1(playerid);
public HorseAnimTimer1(playerid)
{
	HBStarted = 1;
	return 1;
}

forward HBStartings(playerid);
public HBStartings(playerid)
{
	HBStarting = 1;
	return 1;
}


CMD:exithb(playerid, params[])
{
	if (Watching[playerid] == 1)
	{
 		TogglePlayerControllable(playerid, 1);
	    TextDrawHideForPlayer(playerid,BG2);
	    TextDrawHideForPlayer(playerid,BG1);
	    TextDrawHideForPlayer(playerid,Start2);
	    TextDrawHideForPlayer(playerid,Finish2);
		TextDrawHideForPlayer(playerid, Horse1);
	    TextDrawHideForPlayer(playerid,Horse2);
	    TextDrawHideForPlayer(playerid,Horse3);
	    TextDrawHideForPlayer(playerid,Horse4);
	    TextDrawHideForPlayer(playerid,HorseNum1);
	    TextDrawHideForPlayer(playerid,HorseNum2);
	    TextDrawHideForPlayer(playerid,HorseNum3);
	    TextDrawHideForPlayer(playerid,HorseNum4);
	    TextDrawHideForPlayer(playerid,Start);
	    TextDrawHideForPlayer(playerid,Finish);
		Watching[playerid] = 0;
	    SendClientMessage(playerid, 0x00FF00, "You successfully turn off your mobile phone TV.");
	}
	return 1;
}

CMD:watch(playerid, params[])
{
	if (Prepared == 1 || RaceStarted == 1)
	{
	    TogglePlayerControllable(playerid, 0);
	    TextDrawShowForPlayer(playerid,BG2);
	    TextDrawShowForPlayer(playerid,BG1);
	    TextDrawShowForPlayer(playerid,Start2);
	    TextDrawShowForPlayer(playerid,Finish2);
		TextDrawShowForPlayer(playerid, Horse1);
	    TextDrawShowForPlayer(playerid,Horse2);
	    TextDrawShowForPlayer(playerid,Horse3);
	    TextDrawShowForPlayer(playerid,Horse4);
	    TextDrawShowForPlayer(playerid,HorseNum1);
	    TextDrawShowForPlayer(playerid,HorseNum2);
	    TextDrawShowForPlayer(playerid,HorseNum3);
	    TextDrawShowForPlayer(playerid,HorseNum4);
	    TextDrawShowForPlayer(playerid,Start);
	    TextDrawShowForPlayer(playerid,Finish);
	    Watching[playerid] = 1;
	    SendClientMessage(playerid, 0x00FF00, "Welcome to Horse Racing!");
  	}
  	else
  	{
	  SendClientMessage(playerid, 0xFFFF00FF, "Horse Racing hasn't started yet use [/bet] to bet.");
  	}
	return 1;
}

CMD:mybet(playerid, params[])
{
	if (MoneyBet[playerid] > 0 && BetOnHorse[playerid] > 0)
	{
		new string[128];
		format(string, sizeof(string), "You've bet $%d to Horse Number %d",MoneyBet[playerid],BetOnHorse[playerid]);
		SendClientMessage(playerid, 0x00FFFFFF, string);
	}
	return 1;
}

CMD:hbhelp(playerid, params[])
{
	SendClientMessage(playerid, ORANGE, "Horse Racing: /mybet, /bet, /watch, /exithb");
}

CMD:bet(playerid, params[])
{
            new horse, cash;
            if(!sscanf(params,"ii",horse, cash) && horse < 5 && horse > 0 && cash <= CashHigherBounds && cash >= CashLowerBounds)
            {
	                if (GetPlayerMoney(playerid) >= cash)
	                {
	                    if (RaceStarted == 1)
	                    {
	                    	SendClientMessage(playerid, 0xFF0000FF, "Race has been started. You can place a bet after the race.");
	                    }
		                    else
		                    {
							if (MoneyBet[playerid] > 0)
							{
								SendClientMessage(playerid, 0xFF0000FF, "You already placed your bet type [/mybet] to check your placed bet.");
							}
							else
							{
								MoneyBet[playerid] = cash;
								GivePlayerCash(playerid, -cash);
								BetOnHorse[playerid] = horse;
								SendClientMessageToAll(ORANGE, "Horse Racing has about to start. You can watch to your mobile phone using [/watch].");
								new string[128];
								format(string, sizeof(string), "You've bet $%d to Horse Number %d. Goodluck!",MoneyBet[playerid],BetOnHorse[playerid]);
								SendClientMessage(playerid, 0x00FFFFFF, string);
								for(new i = 0; i < MAX_PLAYERS; i++)
	 							{
									new Float:X[MAX_PLAYERS], Float:Y[MAX_PLAYERS], Float:Z[MAX_PLAYERS];
	 								GetPlayerPos(i, X[i], Y[i], Z[i]);
									PlayerPlaySound(i, 5410, X[i], Y[i], Z[i]);
								}
								SetTimerEx("HBStartings", 5000, false, "i", playerid);
								RaceStarted = 1;
								Prepared = 0;
							}
						}
					}
					else
					{
					    SendClientMessage(playerid, 0xFF0000FF, "You don't have enough money to bet from Horse Racing.");
					    new Float:X, Float:Y, Float:Z;
					    GetPlayerPos(playerid, X, Y, Z);
					    PlayerPlaySound(playerid, 5405, X, Y, Z);
					}
     		}
       		else
			{
				new string[128];
				format(string, sizeof(string), "Horse Bet: /bet [1-4] [$100,000 - $500,000]",CashLowerBounds,CashHigherBounds);
				SendClientMessage(playerid, 0xFF0000FF,string);
				SendClientMessage(playerid, 0xAFAFAFFF, "Format: /bet [Horse Number] [amount]");
			}
			return 1;
}

forward HorseAnimTimer();

public HorseAnimTimer()
{
	new string[12], HorseWon;
 	format(string, sizeof(string), "LD_OTB:hrs%i", HorseAnimCount);
 	HorseAnimCount++;
 	if (HorseAnimCount == 9) HorseAnimCount = 1;

  	HorsePosX1 = HorsePosX1 + (random(600) / 100);
  	HorsePosX2 = HorsePosX2 + (random(600) / 100);
  	HorsePosX3 = HorsePosX3 + (random(600) / 100);
  	HorsePosX4 = HorsePosX4 + (random(600) / 100);

  	TextDrawDestroy(Horse1);
  	TextDrawDestroy(Horse2);
  	TextDrawDestroy(Horse3);
  	TextDrawDestroy(Horse4);
  	TextDrawDestroy(HorseNum1);
  	TextDrawDestroy(HorseNum2);
  	TextDrawDestroy(HorseNum3);
  	TextDrawDestroy(HorseNum4);


    Horse1 = TextDrawCreate(HorsePosX1, 200, string); 
    HorseInfo(Horse1);
    Horse2 = TextDrawCreate(HorsePosX2, 250, string); 
    HorseInfo(Horse2);
    Horse3 = TextDrawCreate(HorsePosX3, 300, string); 
    HorseInfo(Horse3);
    Horse4 = TextDrawCreate(HorsePosX4, 350, string); 
    HorseInfo(Horse4);
    HorseNum1 = TextDrawCreate(HorsePosX1 + 15, 204, "LD_OTB2:Ric1"); 
    HorseNumInfo(HorseNum1);
    HorseNum2 = TextDrawCreate(HorsePosX2 + 15, 254, "LD_OTB2:Ric2"); 
    HorseNumInfo(HorseNum2);
    HorseNum3 = TextDrawCreate(HorsePosX3 + 15, 304, "LD_OTB2:Ric3"); 
    HorseNumInfo(HorseNum3);
    HorseNum4 = TextDrawCreate(HorsePosX4 + 15, 354, "LD_OTB2:Ric4"); 
    HorseNumInfo(HorseNum4);

	for(new i = 0; i < MAX_PLAYERS; i++)
	    {
	        if (Watching[i] == 1)
	        {
	          	TextDrawShowForPlayer(i,Horse1);
			  	TextDrawShowForPlayer(i,Horse2);
			  	TextDrawShowForPlayer(i,Horse3);
			  	TextDrawShowForPlayer(i,Horse4);
			  	TextDrawShowForPlayer(i,HorseNum1);
			  	TextDrawShowForPlayer(i,HorseNum2);
			  	TextDrawShowForPlayer(i,HorseNum3);
			  	TextDrawShowForPlayer(i,HorseNum4);
	        }
	    }

	if (HorsePosX1 >= 560)
	{
	SendClientMessageToAll(ORANGE, "Horse 1 got the 1st Place!");
	HorseStop = 1;
	HorseWon = 1;
	}
	else if (HorsePosX2 >= 560)
	{
	SendClientMessageToAll(ORANGE, "Horse 2 got the 1st Place!");
	HorseStop = 1;
	HorseWon = 2;
	}
	else if (HorsePosX3 >= 560)
	{
	SendClientMessageToAll(ORANGE, "Horse 3 got the 1st Place!");
	HorseStop = 1;
	HorseWon = 3;
	}
	else if (HorsePosX4 >= 560)
	{
	SendClientMessageToAll(ORANGE, "Horse 4 got the 1st Place!");
	HorseStop = 1;
	HorseWon = 4;
	}
	if (HorseStop == 0)
	{
	SetTimer("HorseAnimTimer", 100, 0);
	}
	else
	{
	HorseStop = 1;
	RaceStarted = 0;
    TextDrawDestroy(BG2);
    TextDrawDestroy(BG1);
    TextDrawDestroy(Start2);
    TextDrawDestroy(Finish2);
    TextDrawDestroy(Horse1);
    TextDrawDestroy(Horse2);
    TextDrawDestroy(Horse3);
    TextDrawDestroy(Horse4);
    TextDrawDestroy(HorseNum1);
    TextDrawDestroy(HorseNum2);
    TextDrawDestroy(HorseNum3);
    TextDrawDestroy(HorseNum4);
    TextDrawDestroy(Start);
    TextDrawDestroy(Finish);
	for(new i = 0; i < MAX_PLAYERS; i++)
 	{
  		if (BetOnHorse[i] == HorseWon)
  		{
			new Float:X[MAX_PLAYERS], Float:Y[MAX_PLAYERS], Float:Z[MAX_PLAYERS];
		 	GetPlayerPos(i, X[i], Y[i], Z[i]);
			PlayerPlaySound(i, 5448, X[i], Y[i], Z[i]);
	        SendClientMessage(i, 0x00FFFFFF, "Congratulations you have won from Horse Bet! Therefore your money will be doubled.");
			GivePlayerCash(i, MoneyBet[i] * 2);
		}
		else if (MoneyBet[i] != 0 && BetOnHorse[i] != HorseWon)
		{
  			SendClientMessage(i, 0xFFFF00FF, "Sorry you have lose from Horse Bet. Better Luck Next Time");
			new Float:X[MAX_PLAYERS], Float:Y[MAX_PLAYERS], Float:Z[MAX_PLAYERS];
		 	GetPlayerPos(i, X[i], Y[i], Z[i]);
			PlayerPlaySound(i, 5453, X[i], Y[i], Z[i]);
		}
		if (Watching[i] == 1)
		{
			TogglePlayerControllable(i, 1);
		}
	}
}
}

forward HorseStartHideTimer();

public HorseStartHideTimer()
{
	TextDrawHideForAll(CDTextDraw);
}
