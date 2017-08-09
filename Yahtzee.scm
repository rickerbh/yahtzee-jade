jadeVersionNumber "4.0.11";
schemaDefinition
Yahtzee subschemaOf RootSchema completeDefinition;
constantDefinitions
localeDefinitions
	5129 "English (New Zealand)";
libraryDefinitions
typeHeaders
	Yahtzee subclassOf RootSchemaApp number = 2053;
	CellCodes subclassOf Object number = 2054;
	DiceBoard subclassOf Object number = 2055;
	Die subclassOf Object number = 2056;
	Evaluator subclassOf Object number = 2057;
	GYahtzee subclassOf RootSchemaGlobal number = 2058;
	Match subclassOf Object number = 2059;
	Player subclassOf Object number = 2060;
	SYahtzee subclassOf RootSchemaSession number = 2061;
	FrmAbout subclassOf Form transient, number = 2062;
	FrmGetPlayers subclassOf Form transient, number = 2063;
	FrmQuitTotal subclassOf Form transient, number = 2064;
	FrmYahtzeeBoard subclassOf Form transient, number = 2065;
	DieArray subclassOf Array number = 2066;
	Integer2DArray subclassOf Array number = 2067;
	PlayerArray subclassOf Array number = 2068;
 
membershipDefinitions
	DieArray of Die ;
	Integer2DArray of IntegerArray ;
	PlayerArray of Player ;
 
typeDefinitions
 
 
 
 
	CellCodes completeDefinition
	(
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
	constantDefinitions
		CHANCE:                        Integer = 13;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		FIVES:                         Integer = 5;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		FOAK:                          Integer = 8;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		FOURS:                         Integer = 4;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		FULLH:                         Integer = 9;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		GRANDTOTAL:                    Integer = 18;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:12:58:40.990;
		HIGHS:                         Integer = 11;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		LOWS:                          Integer = 10;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		ONES:                          Integer = 1;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		SIXES:                         Integer = 6;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		THREES:                        Integer = 3;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		TOAK:                          Integer = 7;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		TOTALLS:                       Integer = 16;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		TOTALUS:                       Integer = 15;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		TWOS:                          Integer = 2;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		USBONUS:                       Integer = 14;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		YAH:                           Integer = 12;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		YAHBONUS:                      Integer = 17;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
	)
 
	DiceBoard completeDefinition
	(
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:25:21:41:04.450;
	constantDefinitions
		NUMDIE:                        Integer = 5;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
	attributeDefinitions
		roll_number:                   Integer protected;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:23:16:01:08.360;
	referenceDefinitions
		db:                            DieArray;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:28:22:09:59.650;
 
	jadeMethodDefinitions
		getDie(number: Integer): Die updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:28:22:10:02.560;
		getNextRollNum(): Integer;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:26:07:06:01.280;
		resetBoard() updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:28:22:10:03.550;
		rollBoard() updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:28:22:10:03.440;
		setupDiceBoard() updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:28:22:10:10.420;
	)
 
	Die completeDefinition
	(
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:26:07:03:00.520;
	attributeDefinitions
		current_value:                 Integer;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:23:16:29:01;
		die_locked:                    Boolean protected;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:22:21:29:14.860;
 
	jadeMethodDefinitions
		getValue(): Integer updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:26:07:05:49.630;
		isLocked(): Boolean;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:26:07:05:50.840;
		resetDie() updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:26:07:05:51.830;
		roll() updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:26:08:53:38.700;
		setDie(val: Integer) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:26:07:05:54.030;
		toggleLock() updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:26:07:05:55.180;
	)
 
	Evaluator completeDefinition
	(
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:25:22:06:07.210;
	constantDefinitions
		FULL_HOUSE:                    Integer = 25;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		HIGHS:                         Integer = 40;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		LOWS:                          Integer = 30;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		USBONUS:                       Integer = 35;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		YAHTZEE:                       Integer = 50;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		YAHTZEE_BONUS:                 Integer = 100;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
	attributeDefinitions
		myDice:                        IntegerArray protected, subId = 1;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
	referenceDefinitions
		rBoard:                        DiceBoard;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		rPlayer:                       Player;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
 
	jadeMethodDefinitions
		diceShowYahtzee(): Boolean;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:26:07:05:34.420;
		evaluate(
			board: DiceBoard; 
			cellCode: Integer; 
			player: Player; 
			game: Integer) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:20:52:03.080;
		isFourOfAKind(): Boolean;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:17:13:16.270;
		isFullHouse(): Boolean;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:26:07:05:39.640;
		isHighStraight(): Boolean;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:26:07:05:40.790;
		isLowStraight(): Boolean;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:26:07:05:42.050;
		isThreeOfAKind(): Boolean;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:17:13:10.010;
		isTwoOfAKind(): Boolean;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:26:07:05:44.910;
		updateTotals(game: Integer) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:13:09:16.810;
	)
 
 
 
 
	JadeScript completeDefinition
	(
 
	jadeMethodDefinitions
		purgeDatabase() updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:07:12:16:16:08.480;
		testDiceBoard() updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:28:22:11:05.560;
		testDie() updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:25:23:14:33.490;
		testMatch();
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:28:23:07:40.510;
		testPlayer() updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:28:23:05:02.100;
	)
 
	Match completeDefinition
	(
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:26:06:59:23.940;
	constantDefinitions
		MAXGAMES:                      Integer = 5;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		MAXPLAYERS:                    Integer = 5;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		MAXROUNDS:                     Integer = 13;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
	attributeDefinitions
		currentPlayer:                 Integer protected;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:23:15:51:56.140;
		gameNum:                       Integer protected;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:23:15:51:36.470;
		numPlayers:                    Integer protected;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:23:15:52:06.410;
		roundNum:                      Integer protected;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:23:15:51:47.290;
	referenceDefinitions
		playerAry:                     PlayerArray;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:28:22:14:08.790;
 
	jadeMethodDefinitions
		addPlayer(name: String) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:28:23:07:15.300;
		getCurrentPlayer(): Player updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:28:22:14:11.480;
		getGameNum(): Integer;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:26:07:05:04.980;
		getNumPlayers(): Integer;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:26:07:05:06.240;
		getPlayer(playerId: Integer): Player updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:28:22:14:11.760;
		getRoundNum(): Integer;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:26:07:05:08.490;
		nextPlayer() updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:20:05:15.390;
		setupMatch() updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:28:22:14:19.500;
	)
 
	Player completeDefinition
	(
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:28:22:55:57.950;
	attributeDefinitions
		playerName:                    String[31] protected;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:23:15:57:01.630;
	referenceDefinitions
		r2DAry:                        Integer2DArray;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:28:23:04:31.890;
 
	jadeMethodDefinitions
		getName(): String;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:26:07:05:18.210;
		getScoreCell(
			game: Integer; 
			cell: Integer): Integer;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:28:23:04:44.420;
		setPlayerName(name: String) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:26:07:05:22.110;
		setScoreCell(
			game: Integer; 
			cell: Integer; 
			score: Integer) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:28:23:04:44.420;
		setupPlayer(name: String) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:20:04:16.510;
	)
 
 
 
 
 
 
	FrmAbout completeDefinition
	(
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:30:00:12:07.370;
	referenceDefinitions
		bnContinue:                    Button;
		laAuthor:                      Label;
		laAuthorInfo:                  Label;
		laAuthorInfo_1:                Label;
		laAuthor_1:                    Label;
		laDate:                        Label;
		laDateInfo:                    Label;
		laTitle:                       Label;
 
	jadeMethodDefinitions
		bnContinue_click(btn: Button input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:22:05:44.080;
		unload() updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:22:05:21.120;
 
	eventMethodMappings
		bnContinue_click = click of Button;
		unload = unload of Form;
	)
 
	FrmGetPlayers completeDefinition
	(
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:16:57:29.680;
	referenceDefinitions
		bnPlay:                        Button;
		bnQuit:                        Button;
		laPlayer1:                     Label;
		laPlayer2:                     Label;
		laPlayer3:                     Label;
		laPlayer4:                     Label;
		laPlayer5:                     Label;
		laTitle:                       Label;
		tbPlayer1:                     TextBox;
		tbPlayer2:                     TextBox;
		tbPlayer3:                     TextBox;
		tbPlayer4:                     TextBox;
		tbPlayer5:                     TextBox;
 
	jadeMethodDefinitions
		bnPlay_click(btn: Button input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:21:14:09.640;
		bnQuit_click(btn: Button input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:26:07:09:58.280;
 
	eventMethodMappings
		bnPlay_click = click of Button;
		bnQuit_click = click of Button;
	)
 
	FrmQuitTotal completeDefinition
	(
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:20:53:15.410;
	referenceDefinitions
		bnQuit:                        Button;
		laName:                        Label;
		laScore:                       Label;
		laTitle:                       Label;
		tbName1:                       TextBox;
		tbName2:                       TextBox;
		tbName3:                       TextBox;
		tbName4:                       TextBox;
		tbName5:                       TextBox;
		tbScore1:                      TextBox;
		tbScore2:                      TextBox;
		tbScore3:                      TextBox;
		tbScore4:                      TextBox;
		tbScore5:                      TextBox;
 
	jadeMethodDefinitions
		bnQuit_click(btn: Button input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:21:07:12.590;
		calculateTotals(myMatch: Match) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:21:02:53.060;
 
	eventMethodMappings
		bnQuit_click = click of Button;
	)
 
	FrmYahtzeeBoard completeDefinition
	(
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:22:03:54.450;
	referenceDefinitions
		bnChance:                      Button;
		bnExit:                        Button;
		bnFives:                       Button;
		bnFoak:                        Button;
		bnFours:                       Button;
		bnFullH:                       Button;
		bnHighS:                       Button;
		bnLowS:                        Button;
		bnNext:                        Button;
		bnOnes:                        Button;
		bnRoll:                        Button;
		bnSixes:                       Button;
		bnThrees:                      Button;
		bnToak:                        Button;
		bnTwos:                        Button;
		bnYah:                         Button;
		cxD1:                          CheckBox;
		cxD2:                          CheckBox;
		cxD3:                          CheckBox;
		cxD4:                          CheckBox;
		cxD5:                          CheckBox;
		laGame:                        Label;
		laGameNum:                     Label;
		laGrandTotal:                  Label;
		laPlayer:                      Label;
		laPlayerName:                  Label;
		laRound:                       Label;
		laRoundNum:                    Label;
		laTitle:                       Label;
		laTotalLS:                     Label;
		laTotalUS:                     Label;
		laUSBonus:                     Label;
		laYahBonus:                    Label;
		piD1:                          Picture;
		piD2:                          Picture;
		piD3:                          Picture;
		piD4:                          Picture;
		piD5:                          Picture;
		piFive:                        Picture;
		piFour:                        Picture;
		piOne:                         Picture;
		piSix:                         Picture;
		piThree:                       Picture;
		piTwo:                         Picture;
		rDiceBoard:                    DiceBoard protected;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		rMatch:                        Match protected;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" ;
		taScoreSheet:                  Table;
 
	jadeMethodDefinitions
		bnChance_click(btn: Button input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:13:00:44.580;
		bnExit_click(btn: Button input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:30:00:04:06.280;
		bnFives_click(btn: Button input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:13:01:03.300;
		bnFoak_click(btn: Button input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:13:01:19.290;
		bnFours_click(btn: Button input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:13:01:32.030;
		bnFullH_click(btn: Button input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:13:01:46.750;
		bnHighS_click(btn: Button input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:13:02:02.620;
		bnLowS_click(btn: Button input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:13:02:22.230;
		bnNext_click(btn: Button input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:30:00:07:19.560;
		bnOnes_click(btn: Button input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:12:19:58.470;
		bnRoll_click(btn: Button input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:17:47:37.130;
		bnSixes_click(btn: Button input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:13:02:42.880;
		bnThrees_click(btn: Button input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:13:03:01.390;
		bnToak_click(btn: Button input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:13:03:19.680;
		bnTwos_click(btn: Button input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:13:03:36.330;
		bnYah_click(btn: Button input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:13:03:51.490;
		cxD1_change(checkbox: CheckBox input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:17:05:30.330;
		cxD2_change(checkbox: CheckBox input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:17:05:50.820;
		cxD3_change(checkbox: CheckBox input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:17:06:06.250;
		cxD4_change(checkbox: CheckBox input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:17:06:23.060;
		cxD5_change(checkbox: CheckBox input) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:17:06:36.300;
		disableAll() updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:20:00:35.110;
		disableCategories() updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:18:01:47.590;
		refillBoard() updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:21:04:37.920;
		resetBoard() updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:20:17:39.580;
		resetCategories() updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:20:03:04.070;
		setCellData(
			row: Integer; 
			cols: Integer; 
			text: String) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:12:07:44;
		setText(str: String) updating, subschemaHidden;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:26:08:04:42.110;
		setupForm(tempMatch: Match) updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:19:25:43.330;
		unload() updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:20:32:24.430;
		updateScoreSheet() updating;
		setModifiedTimeStamp "Hamish Rickerby" "4.0.11" 1998:06:29:21:08:47.660;
 
	eventMethodMappings
		bnChance_click = click of Button;
		bnExit_click = click of Button;
		bnFives_click = click of Button;
		bnFoak_click = click of Button;
		bnFours_click = click of Button;
		bnFullH_click = click of Button;
		bnHighS_click = click of Button;
		bnLowS_click = click of Button;
		bnNext_click = click of Button;
		bnOnes_click = click of Button;
		bnRoll_click = click of Button;
		bnSixes_click = click of Button;
		bnThrees_click = click of Button;
		bnToak_click = click of Button;
		bnTwos_click = click of Button;
		bnYah_click = click of Button;
		cxD1_change = change of CheckBox;
		cxD2_change = change of CheckBox;
		cxD3_change = change of CheckBox;
		cxD4_change = change of CheckBox;
		cxD5_change = change of CheckBox;
		unload = unload of Form;
	)
 
 
 
 
	DieArray completeDefinition
	(
	)
	Integer2DArray completeDefinition
	(
	)
	PlayerArray completeDefinition
	(
	)
 
inverseDefinitions
methodImplementations
	DiceBoard (
getDie(number: Integer): Die updating;

vars

begin
	return db[number];

end;
getNextRollNum(): Integer;

vars

begin
	return roll_number;

end;
resetBoard() updating;

vars
	counter:	Integer;

begin
	counter := 1;
	while counter <= NUMDIE do
		db[counter].resetDie();
		counter := counter + 1;
	endwhile;
	roll_number := 1;

end;
rollBoard() updating;

vars
	counter:	Integer;

begin
	counter := 1;
	while counter <= NUMDIE do
		if db[counter].isLocked() = false then
			db[counter].roll();
		endif;
		counter := counter + 1;
	endwhile;

	if roll_number = 3 then
		roll_number := 1;
	else
		roll_number := roll_number + 1;
	endif;

end;
setupDiceBoard() updating;

vars
	myBoard:	DieArray;
	myDie1:		Die;
	myDie2:		Die;
	myDie3:		Die;
	myDie4:		Die;
	myDie5:		Die;

begin
	create myBoard transient;
	db := myBoard;

	create myDie1 transient;
	create myDie2 transient;
	create myDie3 transient;
	create myDie4 transient;
	create myDie5 transient;
	db[1] := myDie1;
	db[2] := myDie2;
	db[3] := myDie3;
	db[4] := myDie4;
	db[5] := myDie5;
	roll_number := 1;

end;
	)
	Die (
getValue(): Integer updating;

vars

begin
	return current_value;

end;
isLocked(): Boolean ;

vars

begin
	return die_locked;

end;
resetDie() updating;

vars

begin
	current_value := 0;
	die_locked := false;

end;
roll() updating;

vars

begin
	current_value := app.random(5) + 1;

end;
setDie( val: Integer ) updating;

vars

begin
	current_value := val;

end;
toggleLock() updating;

vars

begin
	if( die_locked = false) then
		die_locked := true;
	else 
		die_locked := false;
	endif;

end;
	)
	Evaluator (
diceShowYahtzee(): Boolean;

vars
	counter:		Integer;
	returnValue :	Boolean;

begin
	counter := 1;
	returnValue := false;
	while counter <= 6 do
		if myDice[counter] = 5 then
			returnValue := true;
		endif;
		counter := counter + 1;
	endwhile;
	return returnValue;

end;
evaluate(board: DiceBoard; cellCode: Integer; player: Player; game: Integer) updating;

vars
	counter:		Integer;
	tempDie:		Die;
	runningTotal:	Integer;

begin


	rBoard := board;
	rPlayer := player;

//  Make sure the dice contain a value, or this'll crash!
	if rBoard.getDie(1).getValue <> 0 then		// Continue on with the rest of the method

//  Set up a  counter, to go thru my array, and place 0 in each of the places
	counter := 1;
	while counter <= 6 do
		myDice[counter] := 0;
		counter := counter + 1;
	endwhile;

//  Move the values on the die into my array, to figure out haw many of each number we have.  eg... we could
//  have 1x1, 0x2, 3x3, 0x4, 0x5, 1x6.  Makes calculating other stuff HEAPS easier...

	counter := 1;
	while counter <= 5 do
 		if rBoard.getDie(counter).getValue() = 1 then
			myDice[1] := myDice[1] + 1;
 		elseif rBoard.getDie(counter).getValue() = 2 then
			myDice[2] := myDice[2] + 1;
 		elseif rBoard.getDie(counter).getValue() = 3 then
			myDice[3] := myDice[3] + 1;
 		elseif rBoard.getDie(counter).getValue() = 4 then
			myDice[4] := myDice[4] + 1;
 		elseif rBoard.getDie(counter).getValue() = 5 then
			myDice[5] := myDice[5] + 1;
 		elseif rBoard.getDie(counter).getValue() = 6 then
			myDice[6] := myDice[6] + 1;
 		endif;
		counter := counter + 1;
	endwhile;

	if cellCode = CellCodes.ONES then
		rPlayer.setScoreCell( game, cellCode, myDice[1] * 1 );
	elseif cellCode = CellCodes.TWOS then
		rPlayer.setScoreCell( game, cellCode, myDice[2] * 2 );
	elseif cellCode = CellCodes.THREES then
		rPlayer.setScoreCell( game, cellCode, myDice[3] * 3 );
	elseif cellCode = CellCodes.FOURS then
		rPlayer.setScoreCell( game, cellCode, myDice[4] * 4 );
	elseif cellCode = CellCodes.FIVES then
		rPlayer.setScoreCell( game, cellCode, myDice[5] * 5 );
	elseif cellCode = CellCodes.SIXES then
		rPlayer.setScoreCell( game, cellCode, myDice[6] * 6 );
	elseif cellCode = CellCodes.TOAK then
		runningTotal := 0;
		if isThreeOfAKind() = true then
			counter := 1;
			while counter < 7 do
				runningTotal := runningTotal + (myDice[counter] * counter);
				counter := counter + 1;
			endwhile;
		endif;
		rPlayer.setScoreCell( game, cellCode, runningTotal);
	elseif cellCode = CellCodes.FOAK then
		runningTotal := 0;
		if isFourOfAKind() = true then
			counter := 1;
			while counter < 7 do
				runningTotal := runningTotal + (myDice[counter] * counter);
				counter := counter + 1;
			endwhile;
		endif;
		rPlayer.setScoreCell( game, cellCode, runningTotal);
	elseif cellCode = CellCodes.FULLH then
		if (isThreeOfAKind() = true) and (isTwoOfAKind() = true) then
			rPlayer.setScoreCell( game, cellCode, FULL_HOUSE);
		else
			rPlayer.setScoreCell( game, cellCode, 0);
		endif;
	elseif cellCode = CellCodes.LOWS then
		if isLowStraight() = true then
			rPlayer.setScoreCell( game, cellCode, LOWS);
		else
			rPlayer.setScoreCell( game, cellCode, 0);
		endif;
	elseif cellCode = CellCodes.HIGHS then
		if isHighStraight() = true then
			rPlayer.setScoreCell( game, cellCode, HIGHS);
		else
			rPlayer.setScoreCell( game, cellCode, 0);
		endif;

	elseif cellCode = CellCodes.CHANCE then
		runningTotal := 0;
		counter := 1;
		while counter < 7 do
			runningTotal := runningTotal + (myDice[counter] * counter);
			counter := counter + 1;
		endwhile;
		rPlayer.setScoreCell( game, cellCode, runningTotal );
	endif;

	if ((diceShowYahtzee() = true) and (rPlayer.getScoreCell( game, CellCodes.YAH) = YAHTZEE)) then
		rPlayer.setScoreCell( game, CellCodes.YAHBONUS, (rPlayer.getScoreCell(game, CellCodes.YAHBONUS) + YAHTZEE_BONUS));
	endif;

	if cellCode = CellCodes.YAH then
		if diceShowYahtzee() = true then
			rPlayer.setScoreCell( game, cellCode, YAHTZEE);
		else
			rPlayer.setScoreCell( game, cellCode, 0);
		endif;
	endif;

	updateTotals( game );
	endif;			// jump to here if dice contain no values...
end;
isFourOfAKind(): Boolean;

vars
	counter:		Integer;
	returnValue:	Boolean;

begin
	returnValue := false;
	counter := 1;
	while counter <= 6 do
		if myDice[counter] >= 4 then
			returnValue := true;
			counter := 6;
		endif;
		counter := counter + 1;
	endwhile;
    return returnValue;
end;
isFullHouse(): Boolean;

vars

begin
	if (isThreeOfAKind() = true) and (isTwoOfAKind() = true) then
		return true;
	else 
		return false;
	endif;

end;
isHighStraight(): Boolean;

vars
	returnValue:	Boolean;

begin
	returnValue := false;
	if (myDice[1] <> 0) and (myDice[2] <> 0) and (myDice[3] <> 0) and (myDice[4] <> 0) and (myDice[5] <> 0) then
		returnValue := true;
	elseif (myDice[2] <> 0) and (myDice[3] <> 0) and (myDice[4] <> 0) and (myDice[5] <> 0) and (myDice[6] <> 0) then
		returnValue := true;
	endif;
	return returnValue;

end;
isLowStraight(): Boolean;

vars
	returnValue:	Boolean;

begin
	returnValue := false;
	if (myDice[1] <> 0) and (myDice[2] <> 0) and (myDice[3] <> 0) and (myDice[4] <> 0) then
		returnValue := true;
	elseif (myDice[2] <> 0) and (myDice[3] <> 0) and (myDice[4] <> 0) and (myDice[5] <> 0) then
		returnValue := true;
	elseif (myDice[3] <> 0) and (myDice[4] <> 0) and (myDice[5] <> 0) and (myDice[6] <> 0) then
		returnValue := true;
	endif;
	return returnValue;

end;
isThreeOfAKind(): Boolean;

vars
	counter:		Integer;
	returnValue:	Boolean;

begin
	returnValue := false;
	counter := 1;
	while counter <= 6 do
		if myDice[counter] >= 3 then
			returnValue := true;
			counter := 6;
		endif;
		counter := counter + 1;
	endwhile;
    return returnValue;
end;
isTwoOfAKind(): Boolean;

vars
	counter:		Integer;
	returnValue:	Boolean;

begin
	returnValue := false;
	counter := 1;
	while counter <= 6 do
		if myDice[counter] = 2 then
			returnValue := true;
			counter := 6;
		endif;
		counter := counter + 1;
	endwhile;
    return returnValue;
end;
updateTotals( game: Integer ) updating;

vars
	upperTotal:		Integer;
	lowerTotal:		Integer;
	grandTotal:		Integer;
	counter:		Integer;

begin
	upperTotal := 0;
	lowerTotal := 0;
	grandTotal := 0;
	counter := 1;
	while counter < 7 do
		if rPlayer.getScoreCell( game, counter ) <> -1 then
			upperTotal := upperTotal + rPlayer.getScoreCell( game, counter );
		endif;
		counter := counter + 1;
	endwhile;
	if upperTotal > 63 then
		rPlayer.setScoreCell( game, CellCodes.USBONUS, USBONUS);
		upperTotal := upperTotal + USBONUS;
	endif;
	counter := CellCodes.TOAK;
	while counter <= CellCodes.CHANCE do
		if rPlayer.getScoreCell( game, counter ) > 0 then
			lowerTotal := lowerTotal + rPlayer.getScoreCell( game, counter);
		endif;
		counter := counter + 1;
	endwhile;
	rPlayer.setScoreCell( game, CellCodes.TOTALUS, upperTotal );
	rPlayer.setScoreCell( game, CellCodes.TOTALLS, lowerTotal );
	counter := CellCodes.TOTALUS;
	while counter < CellCodes.GRANDTOTAL do
		grandTotal := grandTotal + rPlayer.getScoreCell( game, counter );
		counter := counter + 1;
	endwhile;
	rPlayer.setScoreCell( game, CellCodes.GRANDTOTAL, grandTotal);

end;
	)
	JadeScript (
purgeDatabase() updating;

vars

begin
		CellCodes.deleteAllInstances();
		DiceBoard.deleteAllInstances();
		Die.deleteAllInstances();
		Evaluator.deleteAllInstances();
		Match.deleteAllInstances();
		Player.deleteAllInstances();

end;
testDiceBoard() updating;

vars
	diceB:	DiceBoard;

begin
	create diceB transient;
	diceB.setupDiceBoard();
	diceB.rollBoard();
	write diceB.getDie(1).getValue();
	write diceB.getDie(2).getValue();
	write diceB.getDie(3).getValue();
	write diceB.getDie(4).getValue();
	write diceB.getDie(5).getValue();
	write diceB.getNextRollNum();
	diceB.rollBoard();
	write diceB.getNextRollNum();
	diceB.rollBoard();
	write diceB.getNextRollNum();

	delete diceB;

end;
testDie() updating;

vars
	myDie:	Die;

begin
	create myDie transient;
	myDie.resetDie();
	write myDie.getValue();
	write myDie.isLocked();
	myDie.roll();
	write myDie.getValue();
	myDie.roll();
	write myDie.getValue();
	myDie.roll();
	write myDie.getValue();
	myDie.toggleLock();
	write myDie.isLocked();
	myDie.resetDie();
	write myDie.getValue();
	write myDie.isLocked();
	delete myDie;

end;
testMatch();

vars
	myMatch:	Match;

begin
	create myMatch transient;
	myMatch.setupMatch();
	myMatch.addPlayer( "Hamish" );
	myMatch.getPlayer(1).setScoreCell(1,3,5);
	myMatch.getPlayer(1).setScoreCell(3,1,10);
	write (myMatch.getNumPlayers());
	write (myMatch.getPlayer(1).getName());
	write (myMatch.getPlayer(1).getScoreCell(1,3));
	write (myMatch.getPlayer(1).getScoreCell(3,1));
	myMatch.addPlayer( "Bob" );
	myMatch.getPlayer(2).setScoreCell(1,3,6);
	myMatch.getPlayer(2).setScoreCell(3,1,11);
	write (myMatch.getNumPlayers());
	write (myMatch.getPlayer(2).getName());
	write (myMatch.getPlayer(2).getScoreCell(1,3));
	write (myMatch.getPlayer(2).getScoreCell(3,1));
	delete myMatch;

end;
testPlayer() updating;

vars
	myPlayer:	Player;

begin
	create myPlayer transient;
	myPlayer.setupPlayer( "Hamish" );
	write myPlayer.getName;
	myPlayer.setScoreCell( 1, 4, 10);
	myPlayer.setScoreCell( 3, 4, 4);
	write myPlayer.getScoreCell( 3, 4);
	write myPlayer.getScoreCell( 1, 4);

	delete myPlayer;

end;
	)
	Match (
addPlayer( name : String ) updating;

vars
	myPlayer:	Player;

begin
	create myPlayer transient;
	numPlayers := numPlayers + 1;
	playerAry[numPlayers] := myPlayer;
	playerAry[numPlayers].setupPlayer( name );

end;
getCurrentPlayer(): Player updating;

vars

begin
	return playerAry[currentPlayer];

end;
getGameNum(): Integer;

vars

begin
	return gameNum;

end;
getNumPlayers(): Integer;

vars

begin
	return numPlayers;

end;
getPlayer(playerId: Integer): Player updating;

vars

begin
	return playerAry[playerId];

end;
getRoundNum(): Integer;

vars

begin
	return roundNum;

end;
nextPlayer() updating;

vars

begin
	if currentPlayer < getNumPlayers() then
		currentPlayer := currentPlayer + 1;
	elseif getRoundNum() < MAXROUNDS then
		currentPlayer := 1;
		roundNum := roundNum + 1;
	else
		currentPlayer := 1;
		roundNum := 1;
		gameNum := gameNum + 1;
	endif;

end;
setupMatch() updating;

vars
	myPlayerAry:	PlayerArray;

begin
	create myPlayerAry transient;
	playerAry := myPlayerAry;
	numPlayers := 0;
	currentPlayer := 1;
	gameNum := 1;
	roundNum := 1;

end;
	)
	Player (
getName() : String;

vars

begin
	return playerName;

end;
getScoreCell(game: Integer; cell: Integer): Integer;

vars

begin
	return r2DAry[game][cell];

end;
setPlayerName(name: String) updating;

vars

begin
	playerName := name;

end;
setScoreCell(game: Integer; cell: Integer; score: Integer) updating;

vars

begin
	r2DAry[game][cell] := score;

end;
setupPlayer(name: String) updating;

vars
	my2DAry:				Integer2DArray;
	myIntAry1:				IntegerArray;
	myIntAry2:				IntegerArray;
	myIntAry3:				IntegerArray;
	myIntAry4:				IntegerArray;
	myIntAry5:				IntegerArray;
	counter1, counter2:		Integer;

begin
	create my2DAry transient;
	create myIntAry1 transient;
	create myIntAry2 transient;
	create myIntAry3 transient;
	create myIntAry4 transient;
	create myIntAry5 transient;
	my2DAry[1] := myIntAry1;
	my2DAry[2] := myIntAry2;
	my2DAry[3] := myIntAry3;
	my2DAry[4] := myIntAry4;
	my2DAry[5] := myIntAry5;
	r2DAry := my2DAry;
	setPlayerName( name );
	counter1 := 1;
	while counter1 < 6 do
		counter2 := 1;
		while counter2 < 14 do
			setScoreCell (counter1, counter2, -1);
			counter2 := counter2 + 1;
		endwhile;
		while counter2 < 19 do
			setScoreCell (counter1, counter2, 0);
			counter2 := counter2 + 1;
		endwhile;
		counter1 := counter1 + 1;
	endwhile;

end;
	)
	FrmAbout (
bnContinue_click(btn: Button input) updating;

vars

begin
	unloadForm();

end;
unload() updating;

vars
	fm:			FrmGetPlayers;

begin
	create fm;
	fm.show;

end;
	)
	FrmGetPlayers (
bnPlay_click(btn: Button input) updating;

vars
	myMatch:	Match;
	fm:			FrmYahtzeeBoard;

begin
	beginTransaction;
		create myMatch transient;
	commitTransaction;
	myMatch.setupMatch();
	if tbPlayer1.text.trimBlanks <> null then
		myMatch.addPlayer( tbPlayer1.text.trimBlanks );
	endif;
	if tbPlayer2.text.trimBlanks <> null then
		myMatch.addPlayer( tbPlayer2.text.trimBlanks );
	endif;
	if tbPlayer3.text.trimBlanks <> null then
		myMatch.addPlayer( tbPlayer3.text.trimBlanks );
	endif;
	if tbPlayer4.text.trimBlanks <> null then
		myMatch.addPlayer( tbPlayer4.text.trimBlanks );
	endif;
	if tbPlayer5.text.trimBlanks <> null then
		myMatch.addPlayer( tbPlayer5.text.trimBlanks );
	endif;
	if myMatch.getNumPlayers <> 0 then
		unloadForm;
		create fm;
		fm.show;
		fm.setupForm( myMatch );
	else
		app.msgBox( "You must enter at least one player name", "Excuse me, I think we have a problem", MsgBox_OK_Only );
	endif;

end;
bnQuit_click(btn: Button input) updating;

vars

begin
	unloadForm;

end;
	)
	FrmQuitTotal (
bnQuit_click(btn: Button input) updating;

vars

begin
	unloadForm();

end;
calculateTotals( myMatch: Match ) updating;

vars
	rMatch:		Match;
	num:		Integer;

begin
	rMatch := myMatch;
	num := rMatch.getNumPlayers();
	if num > 0 then
		tbName1.text := rMatch.getPlayer(1).getName();
		tbScore1.text := (rMatch.getPlayer(1).getScoreCell(1, 18) + rMatch.getPlayer(1).getScoreCell(2, 18) + rMatch.getPlayer(1).getScoreCell(3, 18) + rMatch.getPlayer(1).getScoreCell(4, 18) + rMatch.getPlayer(1).getScoreCell(5, 18)).String;
	endif;
	if num > 1 then
		tbName2.text := rMatch.getPlayer(2).getName();
		tbScore2.text := (rMatch.getPlayer(2).getScoreCell(1, 18) + rMatch.getPlayer(2).getScoreCell(2, 18) + rMatch.getPlayer(2).getScoreCell(3, 18) + rMatch.getPlayer(2).getScoreCell(4, 18) + rMatch.getPlayer(2).getScoreCell(5, 18)).String;
	endif;
	if num > 2 then
		tbName3.text := rMatch.getPlayer(3).getName();
		tbScore3.text := (rMatch.getPlayer(3).getScoreCell(1, 18) + rMatch.getPlayer(3).getScoreCell(2, 18) + rMatch.getPlayer(3).getScoreCell(3, 18) + rMatch.getPlayer(3).getScoreCell(4, 18) + rMatch.getPlayer(3).getScoreCell(5, 18)).String;
	endif;
	if num > 3 then
		tbName4.text := rMatch.getPlayer(4).getName();
		tbScore4.text := (rMatch.getPlayer(4).getScoreCell(1, 18) + rMatch.getPlayer(4).getScoreCell(2, 18) + rMatch.getPlayer(4).getScoreCell(3, 18) + rMatch.getPlayer(4).getScoreCell(4, 18) + rMatch.getPlayer(4).getScoreCell(5, 18)).String;
	endif;
	if num > 4 then
		tbName5.text := rMatch.getPlayer(5).getName();
		tbScore5.text := (rMatch.getPlayer(5).getScoreCell(1, 18) + rMatch.getPlayer(5).getScoreCell(2, 18) + rMatch.getPlayer(5).getScoreCell(3, 18) + rMatch.getPlayer(5).getScoreCell(4, 18) + rMatch.getPlayer(5).getScoreCell(5, 18)).String;
	endif;

end;
	)
	FrmYahtzeeBoard (
bnChance_click(btn: Button input) updating;

vars
	myEvaluator:	Evaluator;

begin
	create myEvaluator transient;
		myEvaluator.evaluate(	rDiceBoard, CellCodes.CHANCE, rMatch.getCurrentPlayer, rMatch.getGameNum );
	delete myEvaluator;
	updateScoreSheet();
end;
bnExit_click(btn: Button input) updating;

vars

begin
	unloadForm();

end;
bnFives_click(btn: Button input) updating;

vars
	myEvaluator:	Evaluator;

begin
	create myEvaluator transient;
		myEvaluator.evaluate(	rDiceBoard, CellCodes.FIVES, rMatch.getCurrentPlayer, rMatch.getGameNum );
	delete myEvaluator;
	updateScoreSheet();
end;
bnFoak_click(btn: Button input) updating;

vars
	myEvaluator:	Evaluator;

begin
	create myEvaluator transient;
		myEvaluator.evaluate(	rDiceBoard, CellCodes.FOAK, rMatch.getCurrentPlayer, rMatch.getGameNum );
	delete myEvaluator;
	updateScoreSheet();
end;
bnFours_click(btn: Button input) updating;

vars
	myEvaluator:	Evaluator;

begin
	create myEvaluator transient;
		myEvaluator.evaluate(	rDiceBoard, CellCodes.FOURS, rMatch.getCurrentPlayer, rMatch.getGameNum );
	delete myEvaluator;
	updateScoreSheet();
end;
bnFullH_click(btn: Button input) updating;

vars
	myEvaluator:	Evaluator;

begin
	create myEvaluator transient;
		myEvaluator.evaluate(	rDiceBoard, CellCodes.FULLH, rMatch.getCurrentPlayer, rMatch.getGameNum );
	delete myEvaluator;
	updateScoreSheet();
end;
bnHighS_click(btn: Button input) updating;

vars
	myEvaluator:	Evaluator;

begin
	create myEvaluator transient;
		myEvaluator.evaluate(	rDiceBoard, CellCodes.HIGHS, rMatch.getCurrentPlayer, rMatch.getGameNum );
	delete myEvaluator;
	updateScoreSheet();
end;
bnLowS_click(btn: Button input) updating;

vars
	myEvaluator:	Evaluator;

begin
	create myEvaluator transient;
		myEvaluator.evaluate(	rDiceBoard, CellCodes.LOWS, rMatch.getCurrentPlayer, rMatch.getGameNum );
	delete myEvaluator;
	updateScoreSheet();
end;
bnNext_click(btn: Button input) updating;

vars

begin
	rMatch.nextPlayer();
	if rMatch.getGameNum() = 6 then
		unloadForm();
	endif;
	rDiceBoard.resetBoard();
	cxD1.value := false;
	cxD2.value := false;
	cxD3.value := false;
	cxD4.value := false;
	cxD5.value := false;
	piD1.picture := null;
	piD2.picture := null;
	piD3.picture := null;
	piD4.picture := null;
	piD5.picture := null;
	refillBoard();
	resetBoard();
	resetCategories();
	disableCategories();

end;
bnOnes_click(btn: Button input) updating;

vars
	myEvaluator:	Evaluator;

begin
	create myEvaluator transient;
		myEvaluator.evaluate(	rDiceBoard, CellCodes.ONES, rMatch.getCurrentPlayer, rMatch.getGameNum );
	delete myEvaluator;
	updateScoreSheet();
end;
bnRoll_click(btn: Button input) updating;

vars

begin
	rDiceBoard.rollBoard();
	if rDiceBoard.getDie(1).getValue() = 1 then
		piD1.picture := piOne.picture;
	elseif rDiceBoard.getDie(1).getValue() = 2 then
		piD1.picture := piTwo.picture;
	elseif rDiceBoard.getDie(1).getValue() = 3 then
		piD1.picture := piThree.picture;
	elseif rDiceBoard.getDie(1).getValue() = 4 then
		piD1.picture := piFour.picture;
	elseif rDiceBoard.getDie(1).getValue() = 5 then
		piD1.picture := piFive.picture;
	elseif rDiceBoard.getDie(1).getValue() = 6 then
		piD1.picture := piSix.picture;
	endif;
	if rDiceBoard.getDie(2).getValue() = 1 then
		piD2.picture := piOne.picture;
	elseif rDiceBoard.getDie(2).getValue() = 2 then
		piD2.picture := piTwo.picture;
	elseif rDiceBoard.getDie(2).getValue() = 3 then
		piD2.picture := piThree.picture;
	elseif rDiceBoard.getDie(2).getValue() = 4 then
		piD2.picture := piFour.picture;
	elseif rDiceBoard.getDie(2).getValue() = 5 then
		piD2.picture := piFive.picture;
	elseif rDiceBoard.getDie(2).getValue() = 6 then
		piD2.picture := piSix.picture;
	endif;
	if rDiceBoard.getDie(3).getValue() = 1 then
		piD3.picture := piOne.picture;
	elseif rDiceBoard.getDie(3).getValue() = 2 then
		piD3.picture := piTwo.picture;
	elseif rDiceBoard.getDie(3).getValue() = 3 then
		piD3.picture := piThree.picture;
	elseif rDiceBoard.getDie(3).getValue() = 4 then
		piD3.picture := piFour.picture;
	elseif rDiceBoard.getDie(3).getValue() = 5 then
		piD3.picture := piFive.picture;
	elseif rDiceBoard.getDie(3).getValue() = 6 then
		piD3.picture := piSix.picture;
	endif;
	if rDiceBoard.getDie(4).getValue() = 1 then
		piD4.picture := piOne.picture;
	elseif rDiceBoard.getDie(4).getValue() = 2 then
		piD4.picture := piTwo.picture;
	elseif rDiceBoard.getDie(4).getValue() = 3 then
		piD4.picture := piThree.picture;
	elseif rDiceBoard.getDie(4).getValue() = 4 then
		piD4.picture := piFour.picture;
	elseif rDiceBoard.getDie(4).getValue() = 5 then
		piD4.picture := piFive.picture;
	elseif rDiceBoard.getDie(4).getValue() = 6 then
		piD4.picture := piSix.picture;
	endif;
	if rDiceBoard.getDie(5).getValue() = 1 then
		piD5.picture := piOne.picture;
	elseif rDiceBoard.getDie(5).getValue() = 2 then
		piD5.picture := piTwo.picture;
	elseif rDiceBoard.getDie(5).getValue() = 3 then
		piD5.picture := piThree.picture;
	elseif rDiceBoard.getDie(5).getValue() = 4 then
		piD5.picture := piFour.picture;
	elseif rDiceBoard.getDie(5).getValue() = 5 then
		piD5.picture := piFive.picture;
	elseif rDiceBoard.getDie(5).getValue() = 6 then
		piD5.picture := piSix.picture;
	endif;
	if rDiceBoard.getNextRollNum = 1 then
		bnRoll.enabled := false;
	endif;
	if rDiceBoard.getNextRollNum = 1 then
		bnRoll.caption := "Roll Dice";
	elseif rDiceBoard.getNextRollNum = 2 then
		bnRoll.caption := "Second Roll";
	elseif rDiceBoard.getNextRollNum = 3 then
		bnRoll.caption := "Last Roll";
	endif;


end;
bnSixes_click(btn: Button input) updating;

vars
	myEvaluator:	Evaluator;

begin
	create myEvaluator transient;
		myEvaluator.evaluate(	rDiceBoard, CellCodes.SIXES, rMatch.getCurrentPlayer, rMatch.getGameNum );
	delete myEvaluator;
	updateScoreSheet();
end;
bnThrees_click(btn: Button input) updating;

vars
	myEvaluator:	Evaluator;

begin
	create myEvaluator transient;
		myEvaluator.evaluate(	rDiceBoard, CellCodes.THREES, rMatch.getCurrentPlayer, rMatch.getGameNum );
	delete myEvaluator;
	updateScoreSheet();
end;
bnToak_click(btn: Button input) updating;

vars
	myEvaluator:	Evaluator;

begin
	create myEvaluator transient;
		myEvaluator.evaluate(	rDiceBoard, CellCodes.TOAK, rMatch.getCurrentPlayer, rMatch.getGameNum );
	delete myEvaluator;
	updateScoreSheet();
end;
bnTwos_click(btn: Button input) updating;

vars
	myEvaluator:	Evaluator;

begin
	create myEvaluator transient;
		myEvaluator.evaluate(	rDiceBoard, CellCodes.TWOS, rMatch.getCurrentPlayer, rMatch.getGameNum );
	delete myEvaluator;
	updateScoreSheet();
end;
bnYah_click(btn: Button input) updating;

vars
	myEvaluator:	Evaluator;

begin
	create myEvaluator transient;
		myEvaluator.evaluate(	rDiceBoard, CellCodes.YAH, rMatch.getCurrentPlayer, rMatch.getGameNum );
	delete myEvaluator;
	updateScoreSheet();
end;
cxD1_change(checkbox: CheckBox input) updating;

vars

begin
	rDiceBoard.getDie(1).toggleLock();

end;
cxD2_change(checkbox: CheckBox input) updating;

vars

begin
	rDiceBoard.getDie(2).toggleLock();

end;
cxD3_change(checkbox: CheckBox input) updating;

vars

begin
	rDiceBoard.getDie(3).toggleLock();

end;
cxD4_change(checkbox: CheckBox input) updating;

vars

begin
	rDiceBoard.getDie(4).toggleLock();

end;
cxD5_change(checkbox: CheckBox input) updating;

vars

begin
	rDiceBoard.getDie(5).toggleLock();

end;
disableAll() updating;

vars

begin
	bnOnes.enabled := false;
	bnTwos.enabled := false;
	bnThrees.enabled := false;
	bnFours.enabled := false;
	bnFives.enabled := false;
	bnSixes.enabled := false;
	bnToak.enabled := false;
	bnFoak.enabled := false;
	bnFullH.enabled := false;
	bnLowS.enabled := false;
	bnHighS.enabled := false;
	bnYah.enabled := false;
	bnChance.enabled := false;
	bnRoll.enabled := false;

end;
disableCategories() updating;

vars
	thisGame:	Integer;

begin
	thisGame := rMatch.getGameNum();
	if taScoreSheet.getCellText( CellCodes.ONES, thisGame ) <> "" then
		bnOnes.enabled := false;
	endif;
	if taScoreSheet.getCellText( CellCodes.TWOS, thisGame ) <> "" then
		bnTwos.enabled := false;
	endif;
	if taScoreSheet.getCellText( CellCodes.THREES, thisGame ) <> "" then
		bnThrees.enabled := false;
	endif;
	if taScoreSheet.getCellText( CellCodes.FOURS, thisGame ) <> "" then
		bnFours.enabled := false;
	endif;
	if taScoreSheet.getCellText( CellCodes.FIVES, thisGame ) <> "" then
		bnFives.enabled := false;
	endif;
	if taScoreSheet.getCellText( CellCodes.SIXES, thisGame ) <> "" then
		bnSixes.enabled := false;
	endif;
	if taScoreSheet.getCellText( CellCodes.TOAK, thisGame ) <> "" then
		bnToak.enabled := false;
	endif;
	if taScoreSheet.getCellText( CellCodes.FOAK, thisGame ) <> "" then
		bnFoak.enabled := false;
	endif;
	if taScoreSheet.getCellText( CellCodes.FULLH, thisGame ) <> "" then
		bnFullH.enabled := false;
	endif;
	if taScoreSheet.getCellText( CellCodes.LOWS, thisGame ) <> "" then
		bnLowS.enabled := false;
	endif;
	if taScoreSheet.getCellText( CellCodes.HIGHS, thisGame ) <> "" then
		bnHighS.enabled := false;
	endif;
	if taScoreSheet.getCellText( CellCodes.YAH, thisGame ) <> "" then
		bnYah.enabled := false;
	endif;
	if taScoreSheet.getCellText( CellCodes.CHANCE, thisGame ) <> "" then
		bnChance.enabled := false;
	endif;


end;
refillBoard() updating;

vars
	counter:	Integer;
	thisGame:	Integer;
begin
	thisGame := 1;
	while thisGame <= rMatch.getGameNum() do
		counter := 1;	
		while counter <= CellCodes.GRANDTOTAL do
			if rMatch.getCurrentPlayer().getScoreCell( thisGame, counter) <> -1 then
				setCellData( counter, thisGame, rMatch.getCurrentPlayer().getScoreCell(thisGame, counter).String);
			else 
				setCellData( counter, thisGame, "" );
			endif;
			counter := counter + 1;
		endwhile;
		thisGame := thisGame + 1;
	endwhile;

end;
resetBoard() updating;

vars

begin
	laPlayerName.caption := rMatch.getCurrentPlayer.getName();
	laGameNum.caption := rMatch.getGameNum().String;
	laRoundNum.caption := rMatch.getRoundNum().String;
	bnNext.enabled := false;
	bnRoll.caption := "Roll Dice";
	bnRoll.enabled := true;

end;
resetCategories() updating;

vars

begin
	bnOnes.enabled := true;
	bnTwos.enabled := true;
	bnThrees.enabled := true;
	bnFours.enabled := true;
	bnFives.enabled := true;
	bnSixes.enabled := true;
	bnToak.enabled := true;
	bnFoak.enabled := true;
	bnFullH.enabled := true;
	bnLowS.enabled := true;
	bnHighS.enabled := true;
	bnYah.enabled := true;
	bnChance.enabled := true;
	bnRoll.enabled := true;

end;
setCellData( row: Integer; cols: Integer; text: String) updating;

vars

begin
	taScoreSheet.setCellText( row, cols, text);

end;
setText(str : String) subschemaHidden, updating;

vars

begin

end;
setupForm(tempMatch: Match) updating;

vars
	myBoard:	DiceBoard;
	counter:	Integer;
	counter2:	Integer;

begin
	rMatch := tempMatch;
	laPlayerName.caption := rMatch.getCurrentPlayer.getName();
	laGameNum.caption := rMatch.getGameNum().String;
	laRoundNum.caption := rMatch.getRoundNum().String;
	create myBoard transient;
	rDiceBoard := myBoard;
	rDiceBoard.setupDiceBoard();
//	counter := 1;
//	while counter <= 5 do
//		counter2 := 1;
//		while counter2 <= CellCodes.GRANDTOTAL do
//			if rMatch.getCurrentPlayer().getScoreCell( counter, counter2) <> -1 then
//				setCellData( counter2, counter, rMatch.getCurrentPlayer().getScoreCell(counter, counter2).String);
//			else
//				setCellData (counter2, counter, "" );
//			endif;
//			counter2 := counter + 1;
//		endwhile;
//		counter := counter + 1;
//	endwhile;
	resetCategories();
	disableCategories();


end;
unload() updating;

vars
	fm:			FrmQuitTotal;

begin
	create fm;
	fm.show;
	fm.calculateTotals( rMatch );

end;
updateScoreSheet() updating;

vars
	thisGame:	Integer;
	counter:	Integer;

begin
	if rDiceBoard.getDie(1).getValue() <> 0 then
		laGameNum.caption := rMatch.getGameNum().String;
		laRoundNum.caption := rMatch.getRoundNum().String;
		thisGame := rMatch.getGameNum();
		counter := 1;	
		while counter <= CellCodes.GRANDTOTAL do
			if rMatch.getCurrentPlayer().getScoreCell( thisGame, counter) <> -1 then
				setCellData( counter, thisGame, rMatch.getCurrentPlayer().getScoreCell(thisGame, counter).String);
			endif;
			counter := counter + 1;
		endwhile;
		disableAll();
		bnNext.enabled := true;
	endif;
end;
	)
databaseDefinitions
YahtzeeDb
	(
	databaseFileDefinitions
		"Yahtzee";
	defaultFileDefinition "Yahtzee";
	classMapDefinitions
		Yahtzee in "Yahtzee";
		CellCodes in "Yahtzee";
		DiceBoard in "Yahtzee";
		Die in "Yahtzee";
		Evaluator in "Yahtzee";
		GYahtzee in "Yahtzee";
		Match in "Yahtzee";
		Player in "Yahtzee";
		SYahtzee in "Yahtzee";
		DieArray in "Yahtzee";
		Integer2DArray in "Yahtzee";
		PlayerArray in "Yahtzee";
		DieArray in "Yahtzee";
		Integer2DArray in "Yahtzee";
		PlayerArray in "Yahtzee";
	)
schemaViewDefinitions
