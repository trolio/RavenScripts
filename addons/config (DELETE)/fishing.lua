fishing = {}
	---------------------------------------------------------------
	--=====How long should it take for player to catch a fish=======--
	---------------------------------------------------------------
	--Time in miliseconds
	fishing.FishTime = {a = 20000, b = 44000}
	
	--------------------------------------------------------
	--=====Prices of the items players can sell==========--
	--------------------------------------------------------
	--First amount minimum price second maximum amount (the amount player will get is random between those two numbers)
	fishing.FishPrice = {a = 5, b = 200} --Will get clean money THIS PRICE IS FOR EVERY 5 FISH ITEMS (5 kg)
	fishing.TurtlePrice = {a = 10, b = 300} --Will get dirty money
	fishing.SharkPrice = {a = 40, b = 400} --Will get dirty money

	--------------------------------------------------------
	--=====Locations where players can sell stuff========--
	--------------------------------------------------------

	fishing.SellFish = {x = -3251.2, y = 991.5, z = 11.49} --Place where players can sell their fish
	fishing.SellTurtle = {x = 3804.0, y = 4443.3, z = 3.0} --Place where players can sell their turtles 
	fishing.SellShark = {x = 2517.6 , y = 4218.0, z = 38.8} --Place where players can sell their sharks

	--------------------------------------------------------
	--=====Locations where players can rent boats========--
	--------------------------------------------------------
fishing.MarkerZones = { 
	
    {x = -3426.7   ,y = 955.66 ,z = 7.35, xs = -3426.2  , ys = 942.4, zs = 1.1 },
	{x = -732.9     ,y = -1309.7 ,z = 4.0, xs = -725.7    , ys = -1351.5, zs = 0.5 },  
	{x = -1607.6      ,y =  5252.8 ,z = 3.0, xs = -1590.2      , ys = 5278.8, zs = 1.0 },
	{x = 3855.0        ,y =  4463.7 ,z = 1.6, xs = 3885.2       , ys =  4507.2, zs = 1.0 },
	{x = 1330.8        ,y =  4226.6 ,z = 32.9, xs = 1334.2         , ys =  4192.4, zs = 30.0 },
	
	{x = -1669.851, y = -980.167, z = 7.361, 	xs = -1744.672, ys = -1059.358, zs = 1.463 }, -- yacht spawn
	

}