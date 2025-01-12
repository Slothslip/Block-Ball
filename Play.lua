-- bubblegum game 
local CheatsActive= 0
	local Throw= true
if BigBallz== false then 
	 BallType= 0
elseif BigBallz== true then
	 BallType= 1
end

if Spookymode== true then 
	local spriteSheet1=require("Spooky")
end

if MoreAmmomode== false then 
	 PlayerOneAmo= 5
elseif MoreAmmomode== true then
	 PlayerOneAmo= 10
end

	if POneSkin== 1 and PTwoSkin== 1 then
		local SongTwo = audio.loadStream("TackyTanks.mp3")
		audio.play(SongTwo,{loops=1})
		
	elseif POneSkin== 6 and PTwoSkin== 7 then 
		local SongThree = audio.loadStream("StreamsofTime.mp3")
		audio.play(SongThree,{loops=1})
	else 
		local Song = audio.loadStream("Block_Ball_Gameplay_Music.mp3")
		audio.play(Song,{loops=1})
	end 

local SpecialPOAmo= 1
local POWeapontype=0
local PlayerOneLives=2
local PlayerOneAlive= true
local SheildOne= 0
local SheildOneStr= 2 
local SheildLives= 1
local POneMovementActive= true
local DogeDashp1= false 
local Stun = false
local OutOfAmmo_On= false 

if MoreAmmomode== false then 
	 PlayerTwoAmo= 5
elseif MoreAmmomode== true then 
	 PlayerTwoAmo= 10
end 
local SpecialPTAmo= 1
local PTWeapontype=0
local PlayerTwoLives= 2
local PlayerTwoAlive= true
local SheildTwo= 0
local SheildTwoStr= 2
local SheildTwoLives= 1
local PTwoMovementActive= true
local DogeDashp2= false 
local StunT = false
local OutOfAmmo_OnT= false 

local physics=require("physics")
	physics.start()
	physics.setGravity(0,0) -- 0 15

function sepR (event)
	BackBoard= display.newRect(2000,1150,4000,300)
	physics.addBody( BackBoard, "static")
	BackBoard.myName="BackBoard"
	
	
local Fade= function (event)
	transition.to(BackBoard,{time=1000,alpha=0})
	physics.removeBody( BackBoard)
end 

timer.performWithDelay(2000,Fade,0)
end 

sepR()
	
PlayerTwoBasket= display.newRect( 2000, 0, 4000, 100)
	PlayerTwoBasket:setFillColor(0,0,1)
	physics.addBody( PlayerTwoBasket, "dynamic" )
	PlayerTwoBasket.gravityScale = 0
	PlayerTwoBasket.isSensor = true
	PlayerTwoBasket.myName="Basket2"
	
	
PlayerOneBasket= display.newRect( 2000,2500, 4000, 100)
	PlayerOneBasket:setFillColor(1,0,0)
	physics.addBody( PlayerOneBasket, "dynamic" )
	PlayerOneBasket.gravityScale = 0
	PlayerOneBasket.isSensor = true
	PlayerOneBasket.myName="Basket1"
	
function PlayerOneSpawn (event)
if POneSkin== 0 then		
	 PlayerOne = display.newRect( 1900, 2300, 200, 200)
		if POneStype== 0 and Inverted== false then 
			PlayerOne:setFillColor( 1,1,1 )
		elseif POneStype== 1 and Inverted== false then 
			PlayerOne:setFillColor( 1,0,0 )
		elseif POneStype== 2 and Inverted== false then 
			PlayerOne:setFillColor( 0,1,0 )
		elseif POneStype== 3 and Inverted== false then 
			PlayerOne:setFillColor( 0,0,1)
		elseif POneStype== 4 and Inverted== false then 
			PlayerOne:setFillColor( 1,1,0)
		elseif POneStype== 5 and Inverted== false  then 
			PlayerOne:setFillColor( .6,0,1)
		elseif Inverted== true then 
			PlayerOne:setFillColor( 0,0,0)
		end
		physics.addBody( PlayerOne, "dynamic" )
		PlayerOne.gravityScale = 0
		PlayerOne.isSensor = true
		PlayerOne.myName="PlayerOne"
elseif POneSkin== 1 then
		if POneStype== 0 and Inverted==false  then 
			PlayerOne = display.newImage("Tank.png",1900,2300)
		elseif POneStype== 1 and Inverted==false  then 
			PlayerOne = display.newImage("TankB.png",1900,2300)
		elseif POneStype== 2 and Inverted==false  then 
			PlayerOne = display.newImage("TankP.png",1900,2300)
		elseif POneStype== 3 and Inverted==false  then 
			PlayerOne = display.newImage("TankR.png",1900,2300)
		elseif POneStype== 4 and Inverted==false then 
			PlayerOne = display.newImage("TankS.png",1900,2300)
		elseif POneStype== 5 and Inverted==false then 
			PlayerOne = display.newImage("TankA.png",1900,2300)
		elseif Inverted == true then 
			PlayerOne = display.newImage("TankInverted.png",1900,2300)
		end

		PlayerOne:scale(1.4,1.4)
		physics.addBody( PlayerOne, "dynamic" )
		PlayerOne.gravityScale = 0
		PlayerOne.isSensor = true
		PlayerOne.myName="PlayerOne"
		
elseif POneSkin==2 then
	if POneStype== 0 and Inverted==false  then 
			PlayerOne = display.newImage("Ship.png",1900,2300)
		elseif POneStype== 1 and Inverted==false  then 
			PlayerOne = display.newImage("ShipB.png",1900,2300)
		elseif POneStype== 2 and Inverted== false  then 
			PlayerOne = display.newImage("ShipG.png",1900,2300)
		elseif POneStype== 3 and Inverted== false  then 
			PlayerOne = display.newImage("ShipP.png",1900,2300)
		elseif POneStype== 4 and Inverted== false  then 
			PlayerOne = display.newImage("ShipW.png",1900,2300)
		elseif POneStype== 5 and Inverted== false then 
			PlayerOne = display.newImage("ShipY.png",1900,2300)
		elseif Inverted==true then 
			PlayerOne = display.newImage("ShipInverted.png",1900,2300)
		end
	
		PlayerOne:scale(1.8,1.8)
		physics.addBody( PlayerOne, "dynamic" )
		PlayerOne.gravityScale = 0
		PlayerOne.isSensor = true
		PlayerOne.myName="PlayerOne"
elseif POneSkin==3 then
	if POneStype== 0 and Inverted==false then 
			PlayerOne = display.newImage("Doge.png",1900,2300)
		elseif POneStype== 1 and Inverted==false then 
			PlayerOne = display.newImage("DogeB.png",1900,2300)
		elseif POneStype== 2 and Inverted==false then 
			PlayerOne = display.newImage("DogeG.png",1900,2300)
		elseif POneStype== 3 and Inverted==false then 
			PlayerOne = display.newImage("DogeP.png",1900,2300)
		elseif POneStype== 4 and Inverted==false then 
			PlayerOne = display.newImage("DogeR.png",1900,2300)
		elseif POneStype== 5 and Inverted==false then 
			PlayerOne = display.newImage("DogeSd.png",1900,2300)
		elseif Inverted==true then 
			PlayerOne = display.newImage("Dogeinvert.png",1900,2300)
		end
		
		PlayerOne:scale(1.8,1.8)
		physics.addBody( PlayerOne, "dynamic" )
		PlayerOne.gravityScale = 0
		PlayerOne.isSensor = true
		PlayerOne.myName="PlayerOne"
elseif POneSkin==4 then
	if POneStype== 0 and Inverted==false then 
			PlayerOne = display.newImage("Pep.png",1900,2300)
		elseif POneStype== 1 and Inverted==false then 
			PlayerOne = display.newImage("PepB.png",1900,2300)
		elseif POneStype== 2 and Inverted==false then 
			PlayerOne = display.newImage("PepGre.png",1900,2300)
		elseif POneStype== 3 and Inverted==false then 
			PlayerOne = display.newImage("PepP.png",1900,2300)
		elseif POneStype== 4 and Inverted==false then 
			PlayerOne = display.newImage("PepR.png",1900,2300)
		elseif POneStype== 5 and Inverted==false then 
			PlayerOne = display.newImage("PepY.png",1900,2300)
		elseif Inverted==true then
			PlayerOne = display.newImage("Pepinverted.png",1900,2300)
		end
		
		PlayerOne:scale(1.8,1.8)
		physics.addBody( PlayerOne, "dynamic" )
		PlayerOne.gravityScale = 0
		PlayerOne.isSensor = true
		PlayerOne.myName="PlayerOne"
elseif POneSkin==5 then
	if POneStype== 0 and Inverted==false then 
			PlayerOne = display.newImage("Alien.png",1900,2300)
		elseif POneStype== 1 and Inverted==false then 
			PlayerOne = display.newImage("AlienGO.png",1900,2300)
		elseif POneStype== 2 and Inverted==false then 
			PlayerOne = display.newImage("AlienO.png",1900,2300)
		elseif POneStype== 3 and Inverted==false then 
			PlayerOne = display.newImage("AlienR.png",1900,2300)
		elseif POneStype== 4 and Inverted==false then 
			PlayerOne = display.newImage("AlienW.png",1900,2300)
		elseif POneStype== 5 and Inverted==false then 
			PlayerOne = display.newImage("AlienWC.png",1900,2300)
		elseif Inverted==true then
			PlayerOne = display.newImage("AlienInvert.png",1900,2300)
		end
		
		PlayerOne:scale(2.3,2.3)
		physics.addBody( PlayerOne, "dynamic" )
		PlayerOne.gravityScale = 0
		PlayerOne.isSensor = true
		PlayerOne.myName="PlayerOne"
elseif POneSkin==6 then
	if POneStype== 0 and Inverted==false then 
			PlayerOne = display.newImage("Spider.png",1900,2300)
		elseif POneStype== 1 and Inverted==false then 
			PlayerOne = display.newImage("SpiderBL.png",1900,2300)
		elseif POneStype== 2 and Inverted==false then 
			PlayerOne = display.newImage("SpiderY.png",1900,2300)
		elseif POneStype== 3 and Inverted==false then 
			PlayerOne = display.newImage("SpiderBW.png",1900,2300)
		elseif POneStype== 4 and Inverted==false then 
			PlayerOne = display.newImage("SpiderG.png",1900,2300)
		elseif POneStype== 5 and Inverted==false then 
			PlayerOne = display.newImage("SpiderW.png",1900,2300)
		elseif Inverted==true then
			PlayerOne = display.newImage("SpiderInverted.png",1900,2300)
		end
		
		PlayerOne:scale(2.3,2.3)
		physics.addBody( PlayerOne, "dynamic" )
		PlayerOne.gravityScale = 0
		PlayerOne.isSensor = true
		PlayerOne.myName="PlayerOne"
elseif POneSkin==7 then
	if POneStype== 0 and Inverted==false  then 
			PlayerOne = display.newImage("Bee.png",1900,2300)
		elseif POneStype== 1 and Inverted==false  then 
			PlayerOne = display.newImage("BeeB.png",1900,2300)
		elseif POneStype== 2 and Inverted==false  then 
			PlayerOne = display.newImage("BeeG.png",1900,2300)
		elseif POneStype== 3 and Inverted==false  then 
			PlayerOne = display.newImage("BeeP.png",1900,2300)
		elseif POneStype== 4 and Inverted==false  then 
			PlayerOne = display.newImage("BeeR.png",1900,2300)
		elseif POneStype== 5 and Inverted==false  then 
			PlayerOne = display.newImage("BeeW.png",1900,2300)
		elseif Inverted==true then
			PlayerOne = display.newImage("BeeInvert.png",1900,2300)
		end
		PlayerOne:scale(2.3,2.3)
		physics.addBody( PlayerOne, "dynamic" )
		PlayerOne.gravityScale = 0
		PlayerOne.isSensor = true
		PlayerOne.myName="PlayerOne"

end 

end

PlayerOneSpawn()

function PlayerTwoSpawn (event)
if PTwoSkin==0 then 				
	PlayerTwo = display.newRect( 1900, 200, 200, 200)
		PlayerTwo:setFillColor( 1,1,1 )
		if PTwoStype== 0 and Inverted==false  then  --Inverted= false
			PlayerTwo:setFillColor( 1,1,1 )
		elseif PTwoStype== 1 and Inverted==false then 
			PlayerTwo:setFillColor( 1,0,0 )
		elseif PTwoStype== 2 and Inverted==false then 
			PlayerTwo:setFillColor( 0,1,0 )
		elseif PTwoStype== 3 and Inverted==false then 
			PlayerTwo:setFillColor( 0,0,1)
		elseif PTwoStype== 4 and Inverted==false  then 
			PlayerTwo:setFillColor( 1,1,0)
		elseif PTwoStype== 5 and Inverted==false then 
			PlayerTwo:setFillColor( .6,0,1)
		elseif Inverted==true  then
			PlayerTwo:setFillColor( 0,0,0)
		end
		physics.addBody( PlayerTwo, "dynamic" )
		PlayerTwo.gravityScale = 0
		PlayerTwo.isSensor = true
		PlayerTwo.myName="PlayerTwo"
	
elseif PTwoSkin== 1 then
	if PTwoStype== 0 and Inverted==false then 
			PlayerTwo = display.newImage("tank.png",1900,200)
		elseif PTwoStype== 1 and Inverted==false then 
			PlayerTwo = display.newImage("TankB.png",1900,200)
		elseif PTwoStype== 2 and Inverted==false then 
			PlayerTwo = display.newImage("TankP.png",1900,200)
		elseif PTwoStype== 3 and Inverted==false then 
			PlayerTwo = display.newImage("TankR.png",1900,200)
		elseif PTwoStype== 4 and Inverted==false then 
			PlayerTwo = display.newImage("TankS.png",1900,200)
		elseif PTwoStype== 5 and Inverted==false then 
			PlayerTwo = display.newImage("TankA.png",1900,200)
		elseif Inverted==true then
			PlayerTwo = display.newImage("TankInverted.png",1900,200)
		end
		PlayerTwo.rotation= -180
		PlayerTwo:scale(1.4,1.4)
		physics.addBody( PlayerTwo, "dynamic" )
		PlayerTwo.gravityScale = 0
		PlayerTwo.isSensor = true
		PlayerTwo.myName="PlayerTwo"
elseif PTwoSkin==2 then
		if PTwoStype== 0 and Inverted==false  then
			PlayerTwo = display.newImage("Ship.png",1900,200)
		elseif PTwoStype== 1 and Inverted==false  then 
			PlayerTwo = display.newImage("ShipB.png",1900,200)
		elseif PTwoStype== 2 and Inverted==false  then 
			PlayerTwo = display.newImage("ShipG.png",1900,200)
		elseif PTwoStype== 3 and Inverted==false  then 
			PlayerTwo = display.newImage("ShipP.png",1900,200)
		elseif PTwoStype== 4 and Inverted==false  then 
			PlayerTwo = display.newImage("ShipW.png",1900,200)
		elseif PTwoStype== 5 and Inverted==false  then 
			PlayerTwo = display.newImage("ShipY.png",1900,200)
		elseif Inverted==true then 
			PlayerTwo = display.newImage("ShipInverted.png",1900,200)
		end	
		PlayerTwo.rotation= -180
		PlayerTwo:scale(1.8,1.8)
		physics.addBody( PlayerTwo, "dynamic" )
		PlayerTwo.gravityScale = 0
		PlayerTwo.isSensor = true
		PlayerTwo.myName="PlayerTwo"
elseif PTwoSkin==3 then
		if PTwoStype== 0 and Inverted==false then 
			PlayerTwo = display.newImage("Doge.png",1900,200)
		elseif PTwoStype== 1 and Inverted==false then 
			PlayerTwo = display.newImage("DogeB.png",1900,200)
		elseif PTwoStype== 2 and Inverted==false then 
			PlayerTwo = display.newImage("DogeG.png",1900,200)
		elseif PTwoStype== 3 and Inverted==false then 
			PlayerTwo = display.newImage("DogeP.png",1900,200)
		elseif PTwoStype== 4 and Inverted==false then 
			PlayerTwo= display.newImage("DogeR.png",1900,200)
		elseif PTwoStype== 5 and Inverted==false then 
			PlayerTwo = display.newImage("DogeSd.png",1900,200)
		elseif  Inverted==true then 
			PlayerTwo = display.newImage("Dogeinvert.png",1900,200)
		end
		PlayerTwo.rotation= -180
		PlayerTwo:scale(1.8,1.8)
		physics.addBody( PlayerTwo, "dynamic" )
		PlayerTwo.gravityScale = 0
		PlayerTwo.isSensor = true
		PlayerTwo.myName="PlayerTwo"
elseif PTwoSkin==4 then
		if PTwoStype== 0 and Inverted==false then 
			PlayerTwo  = display.newImage("Pep.png",1900,200)
		elseif PTwoStype== 1 and Inverted==false then 
			PlayerTwo  = display.newImage("PepB.png",1900,200)
		elseif PTwoStype== 2 and Inverted==false then 
			PlayerTwo  = display.newImage("PepGre.png",1900,200)
		elseif PTwoStype== 3 and Inverted==false then 
			PlayerTwo  = display.newImage("PepP.png",1900,200)
		elseif PTwoStype== 4 and Inverted==false then 
			PlayerTwo  = display.newImage("PepR.png",1900,200)
		elseif PTwoStype== 5 and Inverted==false then 
			PlayerTwo = display.newImage("PepY.png",1900,200)
		elseif  Inverted==true then
			PlayerTwo = display.newImage("Pepinverted.png",1900,200)
		end

		PlayerTwo.rotation= -180
		PlayerTwo:scale(1.8,1.8)
		physics.addBody( PlayerTwo, "dynamic" )
		PlayerTwo.gravityScale = 0
		PlayerTwo.isSensor = true
		PlayerTwo.myName="PlayerTwo"
elseif PTwoSkin==5 then
		if PTwoStype== 0 and Inverted==false then 
			PlayerTwo  = display.newImage("Alien.png",1900,200)
		elseif PTwoStype== 1 and Inverted==false then 
			PlayerTwo  = display.newImage("AlienGO.png",1900,200)
		elseif PTwoStype== 2 and Inverted==false then 
			PlayerTwo  = display.newImage("AlienO.png",1900,200)
		elseif PTwoStype== 3 and Inverted==false then 
			PlayerTwo  = display.newImage("AlienR.png",1900,200)
		elseif PTwoStype== 4 and Inverted==false then 
			PlayerTwo  = display.newImage("AlienW.png",1900,200)
		elseif PTwoStype== 5 and Inverted==false then 
			PlayerTwo = display.newImage("AlienWC.png",1900,200)
		elseif Inverted==true then
			PlayerTwo = display.newImage("AlienInvert.png",1900,200)
		end
		PlayerTwo.rotation= -180
		PlayerTwo:scale(2.3,2.3)
		physics.addBody( PlayerTwo, "dynamic" )
		PlayerTwo.gravityScale = 0
		PlayerTwo.isSensor = true
		PlayerTwo.myName="PlayerTwo"
elseif PTwoSkin==6 then
		if PTwoStype== 0 and Inverted==false then 
			PlayerTwo  = display.newImage("Spider.png",1900,200)
		elseif PTwoStype== 1 and Inverted==false then 
			PlayerTwo  = display.newImage("SpiderBL.png",1900,200)
		elseif PTwoStype== 2 and Inverted==false then 
			PlayerTwo  = display.newImage("SpiderY.png",1900,200)
		elseif PTwoStype== 3 and Inverted==false then 
			PlayerTwo  = display.newImage("SpiderBW.png",1900,200)
		elseif PTwoStype== 4 and Inverted==false then 
			PlayerTwo  = display.newImage("SpiderG.png",1900,200)
		elseif PTwoStype== 5 and Inverted==false then 
			PlayerTwo = display.newImage("SpiderW.png",1900,200)
		elseif Inverted==true then 
			PlayerTwo = display.newImage("SpiderInverted.png",1900,200)
		end
		PlayerTwo.rotation= -180
		PlayerTwo:scale(2.3,2.3)
		physics.addBody( PlayerTwo, "dynamic" )
		PlayerTwo.gravityScale = 0
		PlayerTwo.isSensor = true
		PlayerTwo.myName="PlayerTwo"
elseif PTwoSkin==7 then -- strange glitch Fix 
		if PTwoStype== 0 and Inverted==false then 
			PlayerTwo  = display.newImage("Bee.png",1900,200)
		elseif PTwoStype== 1 and Inverted==false then 
			PlayerTwo  = display.newImage("BeeB.png",1900,200)
		elseif PTwoStype== 2 and Inverted==false then 
			PlayerTwo  = display.newImage("BeeG.png",1900,200)
		elseif PTwoStype== 3 and Inverted==false then 
			PlayerTwo  = display.newImage("BeeP.png",1900,200)
		elseif PTwoStype== 4 and Inverted==false then 
			PlayerTwo  = display.newImage("BeeR.png",1900,200)
		elseif PTwoStype== 5 and Inverted==false then 
			PlayerTwo = display.newImage("BeeW.png",1900,200)
		elseif Inverted==true then
			PlayerTwo = display.newImage("BeeInvert.png",1900,200)
		end
		PlayerTwo.rotation= -180
		PlayerTwo:scale(2.3,2.3)
		physics.addBody( PlayerTwo, "dynamic" )
		PlayerTwo.gravityScale = 0
		PlayerTwo.isSensor = true
		PlayerTwo.myName="PlayerTwo"
	
	
end

end 

PlayerTwoSpawn()
	
-- Called when a key event has been received
local function onKeyEvent( event )
 
    -- Print which key was pressed down/up
    local message = "Key '" .. event.keyName .. "' was pressed " .. event.phase
    print( message )
 
    -- If the "back" key was pressed on Android, prevent it from backing out of the app
    if ( event.keyName == "back" ) then
        if ( system.getInfo("platform") == "android" ) then
            return true
        end
    end
	
	if ( event.keyName == "escape" ) and (event.phase == "down")then
		native.requestExit()
	end 
	
-- player one start 
	if ( event.keyName == "up" ) and (event.phase == "down") and PlayerOneAlive== true and SheildOne== 0 and SheildLives> 0 and POneMovementActive==true then
		SheildOne= 1
		Sheild = display.newRect(PlayerOne.x,PlayerOne.y-200,500,50)
			physics.addBody( Sheild, "static")
			Sheild.myName="Sheild"
			Sheild:setFillColor( 1,0,0)
			transition.cancel(PlayerOne)

	end
	
	if ( event.keyName == "down" ) and (event.phase == "down") and PlayerOneAlive== true and SheildOne== 1 and SheildLives> 0 and POneMovementActive==true then
		display.remove(Sheild)
		SheildOne= 0
	end 
 
    if ( event.keyName == "right" ) and (event.phase=="down") and (PlayerOneAlive== true)and POneMovementActive==true and Stun== false then
		if DogeDashp1== false then 
			transition.to( PlayerOne, { time=4000,x=(PlayerOne.x+4000),} )
		elseif DogeDashp1== true then 
			transition.to( PlayerOne, { time=2000,x=(PlayerOne.x+4000),} )
			if POneStype== 0 then 
				DogeShadow = display.newImage("Doge.png",PlayerOne.x,PlayerOne.y)
			elseif POneStype== 1 then 
				DogeShadow = display.newImage("DogeB.png",PlayerOne.x,PlayerOne.y)
			elseif POneStype== 2 then 
				DogeShadow = display.newImage("DogeG.png",PlayerOne.x,PlayerOne.y)
			elseif POneStype== 3 then 
				DogeShadow = display.newImage("DogeP.png",PlayerOne.x,PlayerOne.y)
			elseif POneStype== 4 then 
				DogeShadow = display.newImage("DogeR.png",PlayerOne.x,PlayerOne.y)
			elseif POneStype== 5 then 
				DogeShadow = display.newImage("DogeSd.png",PlayerOne.x,PlayerOne.y)
			end 
				DogeShadow.alpha= .4
				DogeShadow:scale(1.8,1.8)
				transition.to( DogeShadow, { time=2000,x=(DogeShadow.x-4000),} )
				transition.to( DogeShadow, { time=500,alpha=(0)} )
			
			function DogeShadowRemove (event)
				display.remove(DogeShadow)
			end
			timer.performWithDelay(2000,DogeShadowRemove)
		end 
		if SheildOne== 1 then
			if DogeDashp1== false then
				transition.to( Sheild, { time=4000,x=(Sheild.x+4000),} )
			elseif DogeDashp1== true then 
				transition.to( Sheild, { time=2000,x=(Sheild.x+4000),} )
			end 
		end 
	elseif ( event.keyName == "right" ) and (event.phase=="up") and PlayerOneAlive== true and POneMovementActive==true and POneMovementActive==true  then
		transition.cancel(PlayerOne) 
		if SheildOne==1 then
			transition.cancel(Sheild)
		end
        if ( system.getInfo("platform") == "android" ) then
            return true 
	end
		end
	
	
	    if ( event.keyName == "left" ) and (event.phase == "down") and PlayerOneAlive== true and POneMovementActive==true and Stun== false then
			if DogeDashp1== false then
				transition.to( PlayerOne, { time=4000,x=(PlayerOne.x-4000),} )
			
			elseif DogeDashp1== true then 
				transition.to( PlayerOne, { time=2000,x=(PlayerOne.x-4000),} )
				if POneStype== 0 then 
					DogeShadow = display.newImage("Doge.png",PlayerOne.x,PlayerOne.y)
				elseif POneStype== 1 then 
					DogeShadow = display.newImage("DogeB.png",PlayerOne.x,PlayerOne.y)
				elseif POneStype== 2 then 
					DogeShadow = display.newImage("DogeG.png",PlayerOne.x,PlayerOne.y)
				elseif POneStype== 3 then 
					DogeShadow = display.newImage("DogeP.png",PlayerOne.x,PlayerOne.y)
				elseif POneStype== 4 then 
					DogeShadow = display.newImage("DogeR.png",PlayerOne.x,PlayerOne.y)
				elseif POneStype== 5 then 
					DogeShadow = display.newImage("DogeSd.png",PlayerOne.x,PlayerOne.y)
				end  
					DogeShadow.alpha= .4
					DogeShadow:scale(1.8,1.8)
					transition.to( DogeShadow, { time=2000,x=(DogeShadow.x+4000),} )
				transition.to( DogeShadow, { time=500,alpha=(0)} )
				
				function DogeShadowRemove (event)
					display.remove(DogeShadow)
				end
				timer.performWithDelay(2000,DogeShadowRemove)

			end 
			if SheildOne== 1 then
				if DogeDashp1== false then
					transition.to( Sheild, { time=4000,x=(Sheild.x-4000),} )
				elseif DogeDashp1== true then 
					transition.to( Sheild, { time=2000,x=(Sheild.x-4000),} )
				end 
			end 
		
		elseif ( event.keyName == "left" ) and (event.phase == "up") and PlayerOneAlive== true and POneMovementActive==true  then 
			transition.cancel(PlayerOne)
			if SheildOne==1 then
				transition.cancel(Sheild)
			end
			
        if ( system.getInfo("platform") == "android" ) then
            return true  
		end
			end
			
		if ( event.keyName == "." ) and (event.phase == "down") then
			if POWeapontype== 0 and SpecialPOAmo > 0 then
				POWeapontype= 1
			elseif POWeapontype== 1 then 	
				POWeapontype= 0
			end
		end
			
		if ( event.keyName == "space") and (event.phase == "down")and POneMovementActive==true   then
			if PlayerOneAmo <= 0 and PlayerOneLives >= 0 and OutOfAmmo_On== false then 
				local OutOfAmmoText=display.newText("Out of ammo",PlayerOne.x,PlayerOne.y-100,'',100)
					transition.to( OutOfAmmoText, { time=2000,y=(OutOfAmmoText.y-400),} )
					transition.to( OutOfAmmoText, { time=600,alpha=0} )
					OutOfAmmo_On= true
					
					function OutOfammoRemove (event)
						display.remove(OutOfAmmoText)
					end
					
					OOAR_removeTimer= timer.performWithDelay(2001,OutOfammoRemove)
			end
			
			if PlayerOneAmo> 0 and PlayerOneLives >= 0 and PlayerOneAlive== true and POWeapontype==0 and BallType==0 then
				OutOfAmmo_On= false
				PlayerOneAmo= PlayerOneAmo-1
				local PhoneShotColor = math.random(1,3)
				local PoneShot = display.newCircle( PlayerOne.x, PlayerOne.y, 60 )
				if PhoneShotColor== 1 then 
					PoneShot:setFillColor( 1,0,0)
				elseif PhoneShotColor== 2 then 
					PoneShot:setFillColor( 0,1,0)
				elseif PhoneShotColor== 3 then 
					PoneShot:setFillColor( 0,0,1)
				end 
				physics.addBody( PoneShot,"dynamic", { density=.014, friction=0, bounce=0.6} )
				PoneShot.myName="PhoneShot"
				PoneShot:applyForce( 0, -300, PoneShot.x, -2 ) -- 30000
				--PoneShot:setLinearVelocity( 2, -1000)

			elseif SpecialPOAmo>0 and PlayerOneLives >= 0 and PlayerOneAlive== true and POWeapontype==1 and BallType==0 and POneMovementActive==true then
				SpecialPOAmo= SpecialPOAmo-1
				if POneSkin==0 then 
					local BackBoard= display.newRect(2000,1150,4000,300)
					if POneStype== 1 then 
						BackBoard:setFillColor(1,0,0)
					elseif POneStype== 2 then 
						BackBoard:setFillColor(0,1,0)
					elseif POneStype== 3 then 
						BackBoard:setFillColor(0,0,1)
					elseif POneStype== 4 then
						BackBoard:setFillColor( 1,1,0)
					elseif POneStype== 5 then
						BackBoard:setFillColor( .6,0,1)
					end 
					physics.addBody( BackBoard, "static")
					BackBoard.myName="BackBoard"
				
					local Fade= function (event)
						transition.to(BackBoard,{time=1000,alpha=0})
						physics.removeBody( BackBoard)
					end 

					timer.performWithDelay(2000,Fade)
					POWeapontype= 0
				elseif POneSkin==1 then
					print ("Tank")
					local TankShot = display.newImage("BigShot.png",PlayerOne.x,PlayerOne.y)
						if POneStype== 1 then 
							TankShot:setFillColor(0,0,1)
						elseif POneStype== 2 then 
							TankShot:setFillColor(1,1,1)
						elseif POneStype== 3 then 
							TankShot:setFillColor(1,0,0)
						elseif POneStype== 4 then
							TankShot:setFillColor( 1,1,0)
						elseif POneStype== 5 then
							TankShot:setFillColor( 128,0,128)
						elseif POneStype== 0 then
							TankShot:setFillColor( 0,1,0)
						end 
						physics.addBody( TankShot,"dynamic", { density=.014, friction=0, bounce=0.6} ) --BackBoard:setFillColor( 1,1,0)
						TankShot.myName="TankShot"
						TankShot:applyForce( 0, -2000, TankShot.x, -2 ) -- 30000
						POWeapontype=0
						
				elseif POneSkin==2 then 
					transition.to(PlayerOne,{time=400,y=-100})
					POneMovementActive= false 
					PlayerOne.myName="ShipOne"
					function POneReturnShip (event)
						PlayerOne.y= 2300 
						PlayerOne.myName="PlayerOne"
						POWeapontype=0
						POneMovementActive= true 
					end
					timer.performWithDelay(1000,POneReturnShip)
				elseif POneSkin==3 then
					DogeDashp1= true 
					
					function DogeDashp_stop (event)
						DogeDashp1= false
					end 
					
					timer.performWithDelay(4000,DogeDashp_stop)
					POWeapontype=0
				elseif POneSkin==4 then
					SpecialPOAmo= SpecialPOAmo-1
					PlayerOne.myName="ReflectOne"
					function Frog_specialStop (event)
						PlayerOne.myName="PlayerOne"
					end 
				timer.performWithDelay(3000,Frog_specialStop)
				POWeapontype=0
				elseif POneSkin==5 then
					transition.to(PlayerOne,{time=400,alpha=.1})
					PlayerOne.myName="PhaseOne"
					function Alien_specialStop (event)
						PlayerOne.myName="PlayerOne"
						transition.to(PlayerOne,{time=400,alpha=1})
					end 
					timer.performWithDelay(4000,Alien_specialStop)
					POWeapontype=0
				elseif POneSkin== 6 then 
					local WebShot = display.newImage("Webshot0000.png",PlayerOne.x,PlayerOne.y)
						WebShot:scale(2.3,2.3)
						physics.addBody( WebShot,"dynamic", { density=.014, friction=0, bounce=0.6} ) --BackBoard:setFillColor( 1,1,0)
						WebShot.myName="WebShot"
						WebShot:applyForce( 0, -2000, WebShot.x, -2 )
					POWeapontype=0
				elseif POneSkin== 7 then 
					--Put that dang bee move attack boi
					local BeePro = display.newImage("Bee.png",PlayerOne.x,PlayerOne.y)
						BeePro:scale(1.2,1.2)
						physics.addBody( BeePro, "dynamic" )
						BeePro.myName="BeePro"
						BeePro.gravityScale = 0
						BeePro.isSensor = true
						transition.to( BeePro, { time=1500,y=(PlayerTwo.y-400)} )
						transition.to( BeePro, { time=700,x=(PlayerTwo.x)} )
						
						function BeeProUpdate (event)
							transition.to( BeePro, { time=500,x=(PlayerTwo.x)} )
						end
						
						timer.performWithDelay(200,BeeProUpdate,5)
						POWeapontype=0
				end
				

			elseif PlayerOneAmo> 0 and PlayerOneLives >= 0 and PlayerOneAlive== true and BallType==1 then
				PlayerOneAmo= PlayerOneAmo-1
				local PhoneShotColor = math.random(1,3)
				local PhoneShotColor = math.random(1,3)
				local PoneShot = display.newCircle( PlayerOne.x, PlayerOne.y, 120 )
				if PhoneShotColor== 1 then 
					PoneShot:setFillColor( 1,0,0)
				elseif PhoneShotColor== 2 then 
					PoneShot:setFillColor( 0,1,0)
				elseif PhoneShotColor== 3 then 
					PoneShot:setFillColor( 0,0,1)
				end 
				physics.addBody( PoneShot,"dynamic", { density=.001, friction=0, bounce=0.6} )
				PoneShot.myName="PhoneShot"
				PoneShot:applyForce( 0, -300, PoneShot.x, -2 )
			end 
        if ( system.getInfo("platform") == "android" ) then
            return true  
		end
			end
	-- player one end 
	
	-- player two start
	
		if ( event.keyName == "w" ) and (event.phase == "down") and PlayerTwoAlive== true and SheildTwo== 0 and SheildTwoLives > 0 and PTwoMovementActive==true then
			SheildTwo= 1
				Sheildtoo = display.newRect(PlayerTwo.x,PlayerTwo.y+200,500,50)
				physics.addBody( Sheildtoo, "static")
				Sheildtoo.myName="Sheildtwo"
				Sheildtoo:setFillColor( 0,0,1)
				transition.cancel(PlayerTwo)
		end
		
		if ( event.keyName == "s" ) and (event.phase == "down") and PlayerTwoAlive== true and SheildTwo== 1 and SheildTwoLives > 0 and PTwoMovementActive==true  then
			display.remove(Sheildtoo)
			SheildTwo= 0
		end
	
		    if ( event.keyName == "d" ) and (event.phase=="down") and(PlayerTwoLives>= 0) and PlayerTwoAlive== true and PTwoMovementActive==true and StunT== false then
				if DogeDashp2== false then 
					transition.to( PlayerTwo, { time=4000,x=(PlayerTwo.x+4000),} )
				elseif DogeDashp2== true then 
					transition.to( PlayerTwo, { time=2000,x=(PlayerTwo.x+4000),} )
					if PTwoStype== 0 then 
						DogeShadowT = display.newImage("Doge.png",PlayerTwo.x,PlayerTwo.y)
					elseif PTwoStype== 1 then 
						DogeShadowT = display.newImage("DogeB.png",PlayerTwo.x,PlayerTwo.y)
					elseif PTwoStype== 2 then 
						DogeShadowT = display.newImage("DogeG.png",PlayerTwo.x,PlayerTwo.y)
					elseif PTwoStype== 3 then 
						DogeShadowT= display.newImage("DogeP.png",PlayerTwo.x,PlayerTwo.y)
					elseif PTwoStype== 4 then 
						DogeShadowT= display.newImage("DogeR.png",PlayerTwo.x,PlayerTwo.y)
					elseif PTwoStype== 5 then 
						DogeShadowT = display.newImage("DogeSd.png",PlayerTwo.x,PlayerTwo.y)
					end  
					DogeShadowT.alpha= .4
					DogeShadowT:scale(1.8,1.8)
					DogeShadowT.rotation=-180
					transition.to( DogeShadowT, { time=2000,x=(DogeShadowT.x-4000),} )
					transition.to( DogeShadowT, { time=500,alpha=(0)} )
			
					function DogeShadowRemove (event)
						display.remove(DogeShadowT)
					end
					timer.performWithDelay(2000,DogeShadowRemove)

				end
				
				if SheildTwo== 1 then
					if DogeDashp2== false then 
						transition.to( Sheildtoo, { time=4000,x=(Sheildtoo.x+4000),} )
					elseif DogeDashp2== true then
						transition.to( Sheildtoo, { time=2000,x=(Sheildtoo.x+4000),} )
					end
				end 
			elseif ( event.keyName == "d" ) and (event.phase=="up") and PlayerTwoAlive== true and PTwoMovementActive==true then
				transition.cancel(PlayerTwo)
				if SheildTwo== 1 then
					transition.cancel(Sheildtoo)
				end
				if ( system.getInfo("platform") == "android" ) then
					return true 
			end
				end
		
	 if ( event.keyName == "a" ) and (event.phase == "down") and (PlayerTwoLives>= 0) and PlayerTwoAlive== true and PTwoMovementActive==true and StunT== false then
			if DogeDashp2 == false then 
				transition.to( PlayerTwo, { time=4000,x=(PlayerTwo.x-4000),} )
			elseif DogeDashp2== true then
				transition.to( PlayerTwo, { time=2000,x=(PlayerTwo.x-4000),} )
				if PTwoStype== 0 then 
					DogeShadowT = display.newImage("Doge.png",PlayerTwo.x,PlayerTwo.y)
				elseif PTwoStype== 1 then 
					DogeShadowT = display.newImage("DogeB.png",PlayerTwo.x,PlayerTwo.y)
				elseif PTwoStype== 2 then 
					DogeShadowT = display.newImage("DogeG.png",PlayerTwo.x,PlayerTwo.y)
				elseif PTwoStype== 3 then 
					DogeShadowT= display.newImage("DogeP.png",PlayerTwo.x,PlayerTwo.y)
				elseif PTwoStype== 4 then 
					DogeShadowT= display.newImage("DogeR.png",PlayerTwo.x,PlayerTwo.y)
				elseif PTwoStype== 5 then 
					DogeShadowT = display.newImage("DogeSd.png",PlayerTwo.x,PlayerTwo.y)
				end 
					DogeShadowT.alpha= .4
					DogeShadowT:scale(1.8,1.8)
					DogeShadowT.rotation=-180
					transition.to( DogeShadowT, { time=2000,x=(DogeShadowT.x+4000),} ) -- 
					transition.to( DogeShadowT, { time=500,alpha=(0)} )
			
					function DogeShadowRemove (event)
						display.remove(DogeShadowT)
					end
					timer.performWithDelay(2000,DogeShadowRemove)
			end
			
		if SheildTwo== 1 then
			if DogeDashp2== false then 
				transition.to( Sheildtoo, { time=4000,x=(Sheildtoo.x-4000),} )
			elseif DogeDashp2== true then
				transition.to( Sheildtoo, { time=2000,x=(Sheildtoo.x-4000),} )
			end
		end 
		
		elseif ( event.keyName == "a" ) and (event.phase == "up") and (PlayerTwoLives>= 0) and PlayerTwoAlive== true and PTwoMovementActive==true then 
			transition.cancel(PlayerTwo)
			if SheildTwo== 1 then
				transition.cancel(Sheildtoo)
			end
			
        if ( system.getInfo("platform") == "android" ) then
            return true  
		end
			end
			
		if ( event.keyName == "r" ) and (event.phase == "down") then
			if PTWeapontype== 0 and SpecialPTAmo > 0 then
				PTWeapontype= 1
			elseif PTWeapontype== 1 then 	
				PTWeapontype= 0
			end
		end
			
		if ( event.keyName == "f") and (event.phase == "down") and PlayerTwoAlive== true and PTwoMovementActive==true then
			if PlayerTwoAmo <= 0 and PlayerTwoLives >= 0 and OutOfAmmo_OnT== false then 
				local OutOfAmmoTextT=display.newText("Out of ammo",PlayerTwo.x,PlayerTwo.y+100,'',100)
					transition.to( OutOfAmmoTextT, { time=2000,y=(OutOfAmmoTextT.y+400)} )
					transition.to( OutOfAmmoTextT, { time=600,alpha=0} )
					OutOfAmmo_OnT= true
					
					function OutOfammoTRemove (event)
						display.remove(OutOfAmmoText)
					end
					
					OOART_removeTimer= timer.performWithDelay(2001,OutOfammoTRemove)
			end 
			
			if PlayerTwoAmo> 0 and PlayerTwoLives>= 0 and PTWeapontype==0 and BallType== 0 then
				OutOfAmmo_OnT= false
				PlayerTwoAmo= PlayerTwoAmo-1
				local PhoneShotColorTwo = math.random(1,3)
				local PoneShotTwo = display.newCircle( PlayerTwo.x, PlayerTwo.y, 60 )
				if PhoneShotColorTwo== 1 then 
					PoneShotTwo:setFillColor( 1,0,1)
				elseif PhoneShotColorTwo== 2 then 
					PoneShotTwo:setFillColor( 1,1,0)
				elseif PhoneShotColorTwo== 3 then 
					PoneShotTwo:setFillColor( 0,1,1)
				end 
				physics.addBody( PoneShotTwo,"dynamic", { density=.014, friction=0, bounce=0.6} )
				PoneShotTwo.myName="PhoneShotTwo"
				PoneShotTwo:applyForce( 0, 300, PoneShotTwo.x, -2 )
			elseif SpecialPTAmo>0 and PlayerTwoLives >= 0 and PlayerTwoAlive== true and PTWeapontype==1 and BallType==0 and PTwoMovementActive==true  then
				SpecialPTAmo= SpecialPTAmo-1
				if PTwoSkin==0 then 
					local BackBoard= display.newRect(2000,1150,4000,300)
						if PTwoStype== 1 then 
							BackBoard:setFillColor(1,0,0)
						elseif PTwoStype== 2 then 
							BackBoard:setFillColor(0,1,0)
						elseif PTwoStype== 3 then 
							BackBoard:setFillColor(0,0,1)
						elseif PTwoStype== 4 then
							BackBoard:setFillColor( 1,1,0)
						elseif PTwoStype== 5 then
							BackBoard:setFillColor( .6,0,1)
					end 
						physics.addBody( BackBoard, "static")
						BackBoard.myName="BackBoard"
				
					local Fade= function (event)
						transition.to(BackBoard,{time=1000,alpha=0})
						physics.removeBody( BackBoard)
					end 

					timer.performWithDelay(2000,Fade)
					PTWeapontype= 0
				elseif PTwoSkin== 1 then
					print("Tank")
					local TankTShot = display.newImage("BigShot.png",PlayerTwo.x,PlayerTwo.y)
						TankTShot.rotation=-180
						if PTwoStype== 1 then 
							TankTShot:setFillColor(0,0,1)
						elseif PTwoStype== 2 then 
							TankTShot:setFillColor(1,1,1)
						elseif PTwoStype== 3 then 
							TankTShot:setFillColor(1,0,0)
						elseif PTwoStype== 4 then
							TankTShot:setFillColor( 1,1,0)
						elseif PTwoStype== 5 then
							TankTShot:setFillColor( 128,0,128)
						elseif PTwoStype== 0 then
							TankTShot:setFillColor( 0,1,0)
						end 
						physics.addBody( TankTShot,"dynamic", { density=.014, friction=0, bounce=0.6} ) --BackBoard:setFillColor( 1,1,0)
						TankTShot.myName="TankTShot"
						TankTShot:applyForce( 0, 2000, TankTShot.x, -2 ) -- 30000
						PTWeapontype=0
				elseif PTwoSkin==2 then 
					transition.to(PlayerTwo,{time=400,y=2600})
					PTwoMovementActive= false 
					PlayerTwo.myName="ShipTwo"
					function PTwoReturnShip (event)
						PlayerTwo.myName="PlayerTwo"
						PTwoMovementActive= true 
						PlayerTwo.y= 200
					end
					timer.performWithDelay(1000,PTwoReturnShip)
					PTWeapontype=0
				elseif PTwoSkin==3 then 
					DogeDashp2=true --- look here
					function DogeDashp2_stop (event)
						DogeDashp2=false 
					end
					timer.performWithDelay(4000,DogeDashp2_stop)
					PTWeapontype=0
				elseif PTwoSkin==4 then
					SpecialPTAmo= SpecialPTAmo-1
					PlayerTwo.myName="ReflectTwo"
					function Frog_specialStopT (event)
						PlayerTwo.myName="PlayerTwo"
					end 
				
				
					timer.performWithDelay(3000,Frog_specialStopT)
					PTWeapontype=0
				elseif PTwoSkin==5 then
					transition.to(PlayerTwo,{time=400,alpha=.1})
					PlayerTwo.myName="PhaseTwo"
					function Alien_specialStopT (event)
						PlayerTwo.myName="PlayerTwo"
						transition.to(PlayerTwo,{time=400,alpha=1})
					end 
					timer.performWithDelay(4000,Alien_specialStopT)
					PTWeapontype=0
				
				elseif PTwoSkin==6 then -- here
					local WebShotT = display.newImage("Webshot0000.png",PlayerTwo.x,PlayerTwo.y)
						WebShotT.rotation=180
						WebShotT:scale(2.3,2.3)
						physics.addBody( WebShotT,"dynamic", { density=.014, friction=0, bounce=0.6} ) --BackBoard:setFillColor( 1,1,0)
						WebShotT.myName="WebShotT"
						WebShotT:applyForce( 0, 2000, WebShotT.x, -2 )
						PTWeapontype=0
						
				elseif PTwoSkin== 7 then 
					local BeeProT = display.newImage("Bee.png",PlayerTwo.x,PlayerTwo.y)
						BeeProT.rotation=-180
						BeeProT:scale(1.2,1.2)
						physics.addBody( BeeProT, "dynamic" )
						BeeProT.myName="BeeProT"
						BeeProT.gravityScale = 0
						BeeProT.isSensor = true
						transition.to( BeeProT, { time=1500,y=(PlayerOne.y+400)} )
						transition.to( BeeProT, { time=700,x=(PlayerOne.x)} )
						
						function BeeProUpdateT (event)
							transition.to( BeeProT, { time=500,x=(PlayerOne.x)} )
						end
						
						timer.performWithDelay(200,BeeProUpdateT,5)
						PTWeapontype=0
				end
			
			
			elseif PlayerTwoAmo> 0 and PlayerTwoLives>= 0 and BallType==1 and PTwoMovementActive==true then
				PlayerTwoAmo= PlayerTwoAmo-1
				local PhoneShotColorTwo = math.random(1,3)
				local PoneShotTwo = display.newCircle( PlayerTwo.x, PlayerTwo.y, 120 )
				PoneShotTwo.rotation= -180
				if PhoneShotColorTwo== 1 then 
					PoneShotTwo:setFillColor( 1,0,1)
				elseif PhoneShotColorTwo== 2 then 
					PoneShotTwo:setFillColor( 1,1,0)
				elseif PhoneShotColorTwo== 3 then 
					PoneShotTwo:setFillColor( 0,1,1)
				end 
				physics.addBody( PoneShotTwo,"dynamic", { density=.001, friction=0, bounce=0.6} )
				PoneShotTwo.myName="PhoneShotTwo"
				PoneShotTwo:applyForce( 0, 300, PoneShotTwo.x, -2 )
			end 
        if ( system.getInfo("platform") == "android" ) then
            return true  
		end
			end
	
	-- player two end 
 
    -- IMPORTANT! Return false to indicate that this app is NOT overriding the received key
    -- This lets the operating system execute its default handling of the key
    return false
end
 
-- Add the key event listener
Runtime:addEventListener( "key", onKeyEvent )

  
local function onLocalCollision( self, event )
 
    if ( event.phase == "began" ) then
        print( self.myName .. ": collision began with " .. event.other.myName )

		if self.myName=="PlayerTwo" and event.other.myName=="PhoneShot" and PlayerTwoAlive== true or self.myName=="ShipTwo" and event.other.myName=="PhoneShot" and PlayerTwoAlive== true then 
			PlayerTwoAlive= false
			PlayerOneAmo= PlayerOneAmo+1
			display.remove(PlayerTwo)
			display.remove(event.other)
		end 
		
		if self.myName=="PlayerTwo" and event.other.myName=="TankShot" and PlayerTwoAlive== true or self.myName=="ShipTwo" and event.other.myName=="TankShot" and PlayerTwoAlive== true then 
			SheildTwoLives= 0					
			display.remove(event.other)
		end 
		
		if self.myName=="ReflectTwo" and event.other.myName=="PhoneShot" and PlayerTwoAlive== true or self.myName=="ReflectTwo" and event.other.myName=="PhoneShot" and PlayerTwoAlive== true then
			event.other:applyForce( 0, 3000, event.other.x, -2 )
			event.other.myName="PhoneShotTwo"
		end 
		
		if self.myName=="PlayerTwo" and event.other.myName=="BeePro" and PlayerTwoAlive== true or self.myName=="ShipTwo" and event.other.myName=="BeePro" and PlayerTwoAlive== true then 				
			transition.cancel(PlayerTwo)
			display.remove(event.other)
			StunT=true
			
			function StunTT (event)
				StunT=false 
			end 
			timer.performWithDelay(600,(StunTT))
		end 
		
		if self.myName=="PlayerOne" and event.other.myName=="PhoneShotTwo" and PlayerOneAlive== true or self.myName=="ShipOne" and event.other.myName=="PhoneShotTwo" and PlayerOneAlive== true then
			PlayerOneAlive=false 
			PlayerTwoAmo= PlayerTwoAmo+1
			display.remove(PlayerOne)
			display.remove(event.other)
		end
		
		if self.myName=="ReflectOne" and event.other.myName=="PhoneShotTwo" and PlayerOneAlive== true or self.myName=="ReflectOne" and event.other.myName=="PhoneShotTwo" and PlayerOneAlive== true then
			event.other:applyForce( 0, -3000, event.other.x, -2 )
			event.other.myName="PhoneShot"
		end 
		
		if self.myName=="PlayerOne" and event.other.myName=="TankTShot" and PlayerOneAlive== true or self.myName=="ShipOne" and event.other.myName=="TankTShot" and PlayerOneAlive== true then
			SheildLives= 0	
			display.remove(event.other)
		end
		
		if self.myName=="PlayerOne" and event.other.myName=="BeeProT" and PlayerOneAlive== true or self.myName=="ShipOne" and event.other.myName=="BeeProT" and PlayerOneAlive== true then
			transition.cancel(PlayerOne)
			Stun = true
			display.remove(event.other)
			function Stun (event)
				Stun=false 
			end 
			timer.performWithDelay(600,(Stun))
		end 
		
		if self.myName=="ShipOne" and event.other.myName=="PlayerTwo" and PlayerOneAlive== true then
			PlayerTwoAlive=false 
			display.remove(PlayerTwo)
		end 
		
		if self.myName=="ShipTwo" and event.other.myName=="PlayerOne" and PlayerOneAlive== true then
			PlayerOneAlive=false 
			display.remove(PlayerOne)
		end
		
		if self.myName=="Basket1" and event.other.myName=="PhoneShotTwo" then
			display.remove(event.other)
			PlayerOneAmo= PlayerOneAmo+1
			print(PlayerOneAmo)
		end
		
		if self.myName=="Basket1" and event.other.myName=="PhoneShot" then
			display.remove(event.other)
			PlayerOneAmo= PlayerOneAmo+1
			print(PlayerOneAmo)
			
		end
		
		if self.myName=="Basket1" and event.other.myName=="WebShotT" then -- takes away player two ball
			display.remove(event.other)
			PlayerOneAmo= PlayerOneAmo-1
			PlayerTwoAmo= PlayerTwoAmo+1
			print(PlayerTwoAmo)
		end
		
		if self.myName=="Basket2" and event.other.myName=="PhoneShot" then
			display.remove(event.other)
			PlayerTwoAmo= PlayerTwoAmo+1
			print(PlayerTwoAmo)
			
		end
		
		if self.myName=="Basket2" and event.other.myName=="WebShot" then -- takes away player two ball
			display.remove(event.other)
			PlayerTwoAmo= PlayerTwoAmo-1
			PlayerOneAmo= PlayerOneAmo+1
			print(PlayerTwoAmo)
		end
		
		if self.myName=="BackBoard" and event.other.myName=="WebShot" then -- Destroy webshot
			display.remove(event.other)
		end
		
		if self.myName=="BackBoard" and event.other.myName=="WebShotT" then -- Destroy webshot
			display.remove(event.other)
		end
		
		
		if self.myName=="Basket2" and event.other.myName=="PhoneShotTwo" then
			display.remove(event.other)
			PlayerTwoAmo= PlayerTwoAmo+1
			print(PlayerTwoAmo)
		end
		
		if   self.myName=="Sheild" and event.other.myName=="PhoneShotTwo" and SheildOneStr >= 1     then
			SheildOneStr= SheildOneStr - 1
			print (SheildOneStr)
		elseif self.myName=="Sheild" and event.other.myName=="PhoneShotTwo" and SheildOneStr < 1 then
			print(SheildOneStr)
			SheildOne= 0
			SheildLives= SheildLives- 1
			display.remove(Sheild)
		end 
		
		if   self.myName=="Sheild" and event.other.myName=="TankTShot"    then
			SheildOne= 0
			display.remove(Sheild)
			display.remove(event.other)
			print (SheildOneStr)
		end
		
		if   self.myName=="Sheild" and event.other.myName=="BeeProT"    then
			display.remove(event.other)
			print (SheildOneStr)
		end 
		
		if   self.myName=="Sheildtwo" and event.other.myName=="PhoneShot" and SheildTwoStr >= 1 then
			SheildTwoStr= SheildTwoStr - 1
			print (SheildOneStr)
		elseif self.myName=="Sheildtwo" and event.other.myName=="PhoneShot" and SheildTwoStr < 1 then
			print(SheildTwoStr.."test")
			 SheildTwo= 0
			 SheildTwoLives= SheildTwoLives -1 
			 display.remove(Sheildtoo)
		end 
		
		if   self.myName=="Sheildtwo" and event.other.myName=="TankShot"  then
			SheildTwo= 0
			display.remove(Sheildtoo)
			display.remove(event.other)
			print (SheildOneStr)
		
		end
		
		if   self.myName=="Sheildtwo" and event.other.myName=="BeePro"  then
			display.remove(event.other)
			print (SheildOneStr)
		
		end
		

    elseif ( event.phase == "ended" ) then
        print( self.myName .. ": collision ended with " .. event.other.myName )
    end
	
end

function SheildChecker (event)
	if SheildOne==1 then
		Sheild.collision = onLocalCollision
		Sheild:addEventListener("collision")
	end
	
	if SheildTwo==1 then
		Sheildtoo.collision = onLocalCollision
		Sheildtoo:addEventListener("collision")
	end
	
	if PlayerOneAlive== false and PlayerOneLives> 0 then
		print("respawnone")
		sepR()
		PlayerOneLives=PlayerOneLives-1
		POWeapontype= 0
		SheildLives= 1
		PlayerOneSpawn()
		PlayerOneAlive= true
		PlayerOne.collision = onLocalCollision
		PlayerOne:addEventListener( "collision" )
	elseif PlayerOneAlive== false and PlayerOneLives == 0 then
		PlayerOneLives=PlayerOneLives-1
		
	end
	
	if PlayerTwoAlive== false and PlayerTwoLives> 0 then
		print("respawntwo")
		sepR()
		PTWeapontype=0
		PlayerTwoLives= PlayerTwoLives-1
		SheildTwoLives= 1
		PlayerTwoSpawn()
		PlayerTwoAlive= true
		PlayerTwo.collision = onLocalCollision
		PlayerTwo:addEventListener( "collision" )
	elseif PlayerTwoAlive== false and PlayerTwoLives == 0 then
		PlayerTwoLives=PlayerTwoLives-1
		
	end 
	
end

function WIN (event)
	if PlayerTwoLives < 0 and PlayerOneLives>0  then 
		timer.cancel( WinTimer )
		local PlayerOneWText= display.newText("Player One Wins",2000,1000,"",300)
			PlayerOneWText:setFillColor(1,0,0)
	elseif PlayerOneLives < 0 then 
		timer.cancel( WinTimer )
		local PlayerTwoWText= display.newText("Player Two Wins",2000,1000,"",300)
			PlayerTwoWText:setFillColor(0,0,1)
	end 

end 
 
PlayerOne.collision = onLocalCollision
PlayerOne:addEventListener( "collision" )

PlayerTwo.collision = onLocalCollision
PlayerTwo:addEventListener( "collision" )


PlayerOneBasket.collision = onLocalCollision
PlayerOneBasket:addEventListener( "collision" )


PlayerTwoBasket.collision = onLocalCollision
PlayerTwoBasket:addEventListener( "collision" )
timer.performWithDelay(2000,SheildChecker,0)
WinTimer= timer.performWithDelay(30,WIN,0)

BackBoard.collision = onLocalCollision
BackBoard:addEventListener( "collision" )
