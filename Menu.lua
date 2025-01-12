--
BigBallz= false
Inverted= false
Spookymode= false
MoreAmmomode= false
--
local physics=require("physics")
	physics.start()
	physics.setGravity(0,30) -- 0 15
	
Menu = display.newGroup()
BColor=1
	
POneSkin= 0
PTwoSkin=0

POneActive=0
POneButtons= 0
PTwoActive= 0
PTwoButtons= 0
POneStype= 0
PTwoStype= 0
H_menu= false
C_menu= false

local EXIT= display.newText("X",3700,300,"",100)
	Menu:insert(EXIT)
local PlayText= display.newText("Play",400,1000,"",100)
	Menu:insert( PlayText)
local How= display.newText("How To Play",570,1200,"",100)
	Menu:insert( How)
local Cheatz=display.newText("Cheats",450,1400,"",100)
	Menu:insert(Cheatz)
local MenuBlock=display.newImage("BlOck.png",700,500)
	MenuBlock:scale(4,4)
	Menu:insert( MenuBlock)

local BALL=display.newImage("BaLl.png",1600,500)
	BALL:scale(3,3)
	physics.addBody( BALL,"dynamic", { density=.5, friction=0, bounce=1} )
	Menu:insert(BALL)

local Backop= display.newRect(2000,2000,4000,300)
	physics.addBody( Backop, "static")
	Menu:insert(Backop)
	
local PlayerOneSelect= display.newText("Player One",700,2300,"regular",100)
	Menu:insert(PlayerOneSelect)
local POneRightPointer= display.newImage("Pointer.png",1000,2300)
	POneRightPointer:scale(2,2)
	POneRightPointer:setFillColor(1,0,0)
	Menu:insert(POneRightPointer)
local POneLeftPointer=display.newImage("PointerTwo.png",380,2300)
	POneLeftPointer:scale(2,2)
	POneLeftPointer:setFillColor(1,0,0)
	Menu:insert(POneLeftPointer)
local CharacterOText=display.newText("Square",700,2420,'',100)
		Menu:insert(CharacterOText)
	local CharacterOAvatar = display.newRect( 1200, 2320, 200, 200) --displays character in menu 
		CharacterOAvatar:setFillColor( 1,1,1 )
		Menu:insert(CharacterOAvatar)
	

local PlayerTwoSelect= display.newText("Player Two",3000,2300,"regular",100)
	Menu:insert(PlayerTwoSelect)
local PTwoRightPointer= display.newImage("Pointer.png",3300,2300)
	PTwoRightPointer:scale(2,2)
	PTwoRightPointer:setFillColor(0,1,0)
	Menu:insert(PTwoRightPointer)
local PTwoLeftPointer=display.newImage("PointerTwo.png",2700,2300)
	PTwoLeftPointer:scale(2,2)
	PTwoLeftPointer:setFillColor(0,1,0)
	Menu:insert(PTwoLeftPointer)
local CharacterTText=display.newText("Square",3020,2420,'',100)
		Menu:insert(CharacterTText)
		local CharacterTAvatar = display.newRect( 3500, 2320, 200, 200) --displays character 2 in menu 
			CharacterOAvatar:setFillColor( 1,1,1 )
			Menu:insert(CharacterTAvatar)
		
	
function BALL:touch (event)
	BALL:applyForce( 100, 0, BALL.x, 0,0)
end 



function ReturnBall (event)
	if BALL.x > 4000 then
		display.remove(BALL)
		if BColor== 1 then
			BALL=display.newImage("BaLlTW.png",1600,500)
			BColor=2
		elseif BColor== 2 then
			BALL=display.newImage("BaLlTBW.png",1600,500)
			BColor=3
		elseif BColor==3 then
			BALL=display.newImage("BaLl.png",1600,500)
			BColor=1
		end
		BALL:scale(3,3)
		physics.addBody( BALL,"dynamic", { density=.5, friction=0, bounce=1} )
		Menu:insert(BALL)
		
	end 
	
	function BALL:touch (event)
		BALL:applyForce( 100, 0, BALL.x, 0,0)
	end 

	
BALL:addEventListener("touch",BALL)
end 
-- PlayerSelect buttons 
function POneRightPointer:tap (event)
	POneRightPointer:setFillColor(.4,0,0)
	POneSkin= POneSkin+ 1
	if POneSkin== 1 then
		display.remove(CharacterOAvatar)
		display.remove(CharacterOText)
		POneStype=0
		CharacterOText=display.newText("Tank",700,2420,'',100)
		Menu:insert(CharacterOText)
		 CharacterOAvatar= display.newImage("Tank.png",1200, 2320)
			Menu:insert(CharacterOAvatar)
			CharacterOAvatar:scale(1.4,1.4)
		 function CharacterOText:touch (event)
			if POneActive== 0 and POneButtons==0 then
				require("Skins")
				POneButtons=2
				POneActive= 1
				Menu.alpha = 0
			elseif POneActive> 0 and POneButtons==0 then
				POneButtons=2
				Menu.alpha = 0
				SkinsCall()
			end 
		end 	
	CharacterOText:addEventListener("touch",CharacterOText)
	
	elseif POneSkin== 2 then 
		display.remove(CharacterOAvatar)
		display.remove(CharacterOText)
		POneStype=0
		CharacterOText=display.newText("Ship",700,2420,'',100)
		Menu:insert(CharacterOText)
			CharacterOAvatar= display.newImage("Ship.png",1200, 2320)
				Menu:insert(CharacterOAvatar)
				CharacterOAvatar:scale(1.8,1.8)
			function CharacterOText:touch (event)
				if POneActive== 0 and POneButtons==0 then
					require("Skins")
					POneButtons=3
					POneActive= 1
					Menu.alpha = 0
				elseif POneActive> 0 and POneButtons==0 then
					POneButtons=3
					Menu.alpha = 0
					SkinsCall()
				end 
			end 	
		CharacterOText:addEventListener("touch",CharacterOText)
		
		function CharacterOAvatar:tap (event)  -- effect caused by touching avatar for Character 1 
			if POneSkin== 2 then 
				FlyBye= display.newImage("Ship.png",0, 1600)
				FlyBye.rotation= 90
				transition.to( FlyBye, { time=2000,x=(FlyBye.x+6000),} )
				Menu:insert(FlyBye)
			end 
		end 
		CharacterOAvatar:addEventListener("tap",CharacterOAvatar)
		
	elseif POneSkin== 3 then 
		display.remove(CharacterOAvatar)
		display.remove(CharacterOText)
		POneStype=0
		CharacterOText=display.newText("Doge",700,2420,'',100)
		Menu:insert(CharacterOText)
			CharacterOAvatar= display.newImage("Doge.png",1200, 2320)
				Menu:insert(CharacterOAvatar)
				CharacterOAvatar:scale(1.8,1.8)
			function CharacterOText:touch (event)
				if POneActive== 0 and POneButtons==0 then
					require("Skins")
					POneButtons=4
					POneActive= 1
					Menu.alpha = 0
				elseif POneActive> 0 and POneButtons==0 then
					POneButtons=4
					Menu.alpha = 0
					SkinsCall()
				end 
			end 	
		CharacterOText:addEventListener("touch",CharacterOText)
		
	elseif POneSkin== 4 then 
		display.remove(CharacterOAvatar)
		display.remove(CharacterOText)
		POneStype=0
		CharacterOText=display.newText("Pepe",700,2420,'',100)
		Menu:insert(CharacterOText)
			CharacterOAvatar= display.newImage("Pep.png",1200, 2320)
				Menu:insert(CharacterOAvatar)
				CharacterOAvatar:scale(1.8,1.8)
		function CharacterOText:touch (event)
				if POneActive== 0 and POneButtons==0 then
					require("Skins")
					POneButtons=5
					POneActive= 1
					Menu.alpha = 0
				elseif POneActive> 0 and POneButtons==0 then
					POneButtons=5
					Menu.alpha = 0
					SkinsCall()
				end 
			end 	
		CharacterOText:addEventListener("touch",CharacterOText)
		
	elseif POneSkin== 5 then 
		display.remove(CharacterOAvatar)
		display.remove(CharacterOText)
		POneStype=0
		CharacterOText=display.newText("Alien",700,2420,'',100)
		Menu:insert(CharacterOText)
			CharacterOAvatar= display.newImage("Alien.png",1200, 2320)
				Menu:insert(CharacterOAvatar)
				CharacterOAvatar:scale(1.8,1.8)
		function CharacterOText:touch (event)
				if POneActive== 0 and POneButtons==0 then
					require("Skins")
					POneButtons=6
					POneActive= 1
					Menu.alpha = 0
				elseif POneActive> 0 and POneButtons==0 then
					POneButtons=6
					Menu.alpha = 0
					SkinsCall()
				end 
			end
		CharacterOText:addEventListener("touch",CharacterOText)
	elseif POneSkin== 6 then 
		display.remove(CharacterOAvatar)
		display.remove(CharacterOText)
		POneStype=0
		CharacterOText=display.newText("Spider",700,2420,'',100)
		Menu:insert(CharacterOText)
			CharacterOAvatar= display.newImage("Spider.png",1200, 2320)
				Menu:insert(CharacterOAvatar)
				CharacterOAvatar:scale(1.8,1.8)
				function CharacterOText:touch (event)
				if POneActive== 0 and POneButtons==0 then
					require("Skins")
					POneButtons=7
					POneActive= 1
					Menu.alpha = 0
				elseif POneActive> 0 and POneButtons==0 then
					POneButtons=7
					Menu.alpha = 0
					SkinsCall()
				end 
			end
		CharacterOText:addEventListener("touch",CharacterOText)
	elseif POneSkin== 7 then 
		display.remove(CharacterOAvatar)
		display.remove(CharacterOText)
		POneStype=0
		CharacterOText=display.newText("Bee",700,2420,'',100)
		Menu:insert(CharacterOText)
			CharacterOAvatar= display.newImage("Bee.png",1200, 2320)
				Menu:insert(CharacterOAvatar)
				CharacterOAvatar:scale(1.8,1.8)
		function CharacterOText:touch (event)
				if POneActive== 0 and POneButtons==0 then
					require("Skins")
					POneButtons=8
					POneActive= 1
					Menu.alpha = 0
				elseif POneActive> 0 and POneButtons==0 then
					POneButtons=8
					Menu.alpha = 0
					SkinsCall()
				end 
			end
			CharacterOText:addEventListener("touch",CharacterOText)
	elseif POneSkin== 0 then 
		display.remove(CharacterOText)
		POneStype=0
		CharacterOText=display.newText("Square",700,2420,'',100)
		Menu:insert(CharacterOText)
	elseif POneSkin== 8 then 
		display.remove(CharacterOAvatar)
		display.remove(CharacterOText)
		POneSkin= 0
		POneStype=0
		CharacterOText=display.newText("Square",700,2420,'',100)
		Menu:insert(CharacterOText)
			CharacterOAvatar = display.newRect( 1200, 2320, 200, 200)
				CharacterOAvatar:setFillColor( 1,1,1 )
				Menu:insert(CharacterOAvatar)
		function CharacterOText:touch (event)
				if POneActive== 0 and POneButtons==0 then
					require("Skins")
					POneButtons=1
					POneActive= 1
					Menu.alpha = 0
				elseif POneActive> 0 and POneButtons==0 then
					POneButtons=1
					Menu.alpha = 0
					SkinsCall()
				end 
			end
			CharacterOText:addEventListener("touch",CharacterOText)
	
	end
	
	print(POneSkin)
	
	function PORPReturn (event)
		POneRightPointer:setFillColor(1,0,0)
	end
	
	timer.performWithDelay(100,PORPReturn)
end

function POneLeftPointer:tap (event)
	POneLeftPointer:setFillColor(.4,0,0)
	if POneSkin > 0 then 
		POneStype=0
		POneSkin= POneSkin- 1
	if POneSkin== 1 then
		display.remove(CharacterOAvatar)
		display.remove(CharacterOText)
		POneStype=0
		CharacterOText=display.newText("Tank",700,2420,'',100)
		Menu:insert(CharacterOText)
		 CharacterOAvatar= display.newImage("Tank.png",1200, 2320)
			Menu:insert(CharacterOAvatar)
			CharacterOAvatar:scale(1.4,1.4)
		function CharacterOText:touch (event)
			if POneActive== 0 and POneButtons==0 then
				require("Skins")
				POneButtons=2
				POneActive= 1
				Menu.alpha = 0
			elseif POneActive> 0 and POneButtons==0 then
				POneButtons=2
				Menu.alpha = 0
				SkinsCall()
			end 
		end 	
	CharacterOText:addEventListener("touch",CharacterOText)
	elseif POneSkin== 2 then 
		display.remove(CharacterOAvatar)
		display.remove(CharacterOText)
		POneStype=0
		CharacterOText=display.newText("Ship",700,2420,'',100)
		Menu:insert(CharacterOText)
		CharacterOAvatar= display.newImage("Ship.png",1200, 2320)
				Menu:insert(CharacterOAvatar)
				CharacterOAvatar:scale(1.8,1.8)
		function CharacterOText:touch (event)
				if POneActive== 0 and POneButtons==0 then
					require("Skins")
					POneButtons=3
					POneActive= 1
					Menu.alpha = 0
				elseif POneActive> 0 and POneButtons==0 then
					POneButtons=3
					Menu.alpha = 0
					SkinsCall()
				end 
			end 	
		CharacterOText:addEventListener("touch",CharacterOText)
				
	elseif POneSkin== 3 then 
		display.remove(CharacterOAvatar)
		display.remove(CharacterOText)
		POneStype=0
		CharacterOText=display.newText("Doge",700,2420,'',100)
		Menu:insert(CharacterOText)
			CharacterOAvatar= display.newImage("Doge.png",1200, 2320)
				Menu:insert(CharacterOAvatar)
				CharacterOAvatar:scale(1.8,1.8)
		function CharacterOText:touch (event)
				if POneActive== 0 and POneButtons==0 then
					require("Skins")
					POneButtons=4
					POneActive= 1
					Menu.alpha = 0
				elseif POneActive> 0 and POneButtons==0 then
					POneButtons=4
					Menu.alpha = 0
					SkinsCall()
				end 
			end 	
		CharacterOText:addEventListener("touch",CharacterOText)
	elseif POneSkin== 4 then 
		display.remove(CharacterOAvatar)
		display.remove(CharacterOText)
		POneStype=0
		CharacterOText=display.newText("Pepe",700,2420,'',100)
		Menu:insert(CharacterOText)
			CharacterOAvatar= display.newImage("Pep.png",1200, 2320)
				Menu:insert(CharacterOAvatar)
				CharacterOAvatar:scale(1.8,1.8)
		function CharacterOText:touch (event)
				if POneActive== 0 and POneButtons==0 then
					require("Skins")
					POneButtons=5
					POneActive= 1
					Menu.alpha = 0
				elseif POneActive> 0 and POneButtons==0 then
					POneButtons=5
					Menu.alpha = 0
					SkinsCall()
				end 
			end 	
		CharacterOText:addEventListener("touch",CharacterOText)
	elseif POneSkin== 5 then 
		display.remove(CharacterOAvatar)
		display.remove(CharacterOText)
		POneStype=0
		CharacterOText=display.newText("Alien",700,2420,'',100)
		Menu:insert(CharacterOText)
			Menu:insert(CharacterOText)
			CharacterOAvatar= display.newImage("Alien.png",1200, 2320)
				Menu:insert(CharacterOAvatar)
				CharacterOAvatar:scale(1.8,1.8)
		function CharacterOText:touch (event)
				if POneActive== 0 and POneButtons==0 then
					require("Skins")
					POneButtons=6
					POneActive= 1
					Menu.alpha = 0
				elseif POneActive> 0 and POneButtons==0 then
					POneButtons=6
					Menu.alpha = 0
					SkinsCall()
				end 
			end 	
		CharacterOText:addEventListener("touch",CharacterOText)
	elseif POneSkin== 6 then 
		display.remove(CharacterOAvatar)
		display.remove(CharacterOText)
		POneStype=0
		CharacterOText=display.newText("Spider",700,2420,'',100)
		Menu:insert(CharacterOText)
			CharacterOAvatar= display.newImage("Spider.png",1200, 2320)
				Menu:insert(CharacterOAvatar)
				CharacterOAvatar:scale(1.8,1.8)
		function CharacterOText:touch (event)
				if POneActive== 0 and POneButtons==0 then
					require("Skins")
					POneButtons=7
					POneActive= 1
					Menu.alpha = 0
				elseif POneActive> 0 and POneButtons==0 then
					POneButtons=7
					Menu.alpha = 0
					SkinsCall()
				end 
			end 	
		CharacterOText:addEventListener("touch",CharacterOText)
	elseif POneSkin== 7 then 
		display.remove(CharacterOAvatar)
		display.remove(CharacterOText)
		POneStype=0
		CharacterOText=display.newText("Bee",700,2420,'',100)
		Menu:insert(CharacterOText)
			CharacterOAvatar= display.newImage("Bee.png",1200, 2320)
				Menu:insert(CharacterOAvatar)
				CharacterOAvatar:scale(1.8,1.8)
		function CharacterOText:touch (event)
				if POneActive== 0 and POneButtons==0 then
					require("Skins")
					POneButtons=8
					POneActive= 1
					Menu.alpha = 0
				elseif POneActive> 0 and POneButtons==0 then
					POneButtons=8
					Menu.alpha = 0
					SkinsCall()
				end 
			end 	
		CharacterOText:addEventListener("touch",CharacterOText)
	elseif POneSkin== 0 then 
		display.remove(CharacterOAvatar)
		display.remove(CharacterOText)
		POneStype=0
		CharacterOText=display.newText("Square",700,2420,'',100)
		Menu:insert(CharacterOText)
		CharacterOText:addEventListener("touch",CharacterOText)
			CharacterOAvatar = display.newRect( 1200, 2320, 200, 200)
				CharacterOAvatar:setFillColor( 1,1,1 )
				Menu:insert(CharacterOAvatar)
		 function CharacterOText:touch (event)
			if POneActive== 0 then
				require("Skins")
				POneActive= 1
				POneButtons=1
				Menu.alpha = 0
			elseif POneActive> 0 then
				Menu.alpha = 0
				POneButtons=1
				SkinsCall()
			end 
		end 
	
	end
		print(POneSkin)
	elseif POneSkin<= 0 then
		POneSkin= 7 --  UPDATED FROM LAST VERSION CYCLES TO LAST SELECTION WHEN LEFT AT 0
		display.remove(CharacterOAvatar)
		display.remove(CharacterOText)
		POneStype=0
		CharacterOText=display.newText("Bee",700,2420,'',100)
		Menu:insert(CharacterOText)
			CharacterOAvatar= display.newImage("Bee.png",1200, 2320)
				Menu:insert(CharacterOAvatar)
				CharacterOAvatar:scale(1.8,1.8)
		function CharacterOText:touch (event)
				if POneActive== 0 and POneButtons==0 then
					require("Skins")
					POneButtons=8
					POneActive= 1
					Menu.alpha = 0
				elseif POneActive> 0 and POneButtons==0 then
					POneButtons=8
					Menu.alpha = 0
					SkinsCall()
				end 
			end 	
		CharacterOText:addEventListener("touch",CharacterOText)
	end
	function POLPReturn (event)
		POneLeftPointer:setFillColor(1,0,0)
	end
	
	timer.performWithDelay(100,POLPReturn)
end

function PTwoRightPointer:tap (event)
	PTwoRightPointer:setFillColor(0,.4,0)
	if PTwoSkin~= 6 then -- was 6 
		PTwoSkin= PTwoSkin+ 1
	elseif PTwoSkin == 6 then
		PTwoSkin= 7
	end 
	if PTwoSkin== 1 then
		display.remove(CharacterTAvatar)
		display.remove(CharacterTText)
		CharacterTText=display.newText("Tank",3020,2420,'',100)
		Menu:insert(CharacterTText)
			CharacterTAvatar= display.newImage("Tank.png",3500, 2320)
				Menu:insert(CharacterTAvatar)
				CharacterTAvatar:scale(1.4,1.4)
		function CharacterTText:touch (event)
			if PTwoActive== 0 and PTwoButtons== 0 then
				require("SkinT")
				PTwoButtons= 2
				PTwoActive= 1
				Menu.alpha = 0
			elseif PTwoActive> 0 and PTwoButtons== 0 then
				Menu.alpha = 0
				PTwoButtons= 2
				SkinsTCall()
			end 
		end 
		CharacterTText:addEventListener("touch",CharacterTText)
	elseif PTwoSkin== 2 then 
		display.remove(CharacterTAvatar)
		display.remove(CharacterTText)
		CharacterTText=display.newText("Ship",3020,2420,'',100)
		Menu:insert(CharacterTText)
			CharacterTAvatar= display.newImage("Ship.png",3500, 2320)
				Menu:insert(CharacterTAvatar)
				CharacterTAvatar:scale(1.8,1.8)
		function CharacterTText:touch (event)
			if PTwoActive== 0 and PTwoButtons== 0 then
				require("SkinT")
				PTwoButtons= 3
				PTwoActive= 1
				Menu.alpha = 0
			elseif PTwoActive> 0 and PTwoButtons== 0 then
				Menu.alpha = 0
				PTwoButtons= 3
				SkinsTCall()
			end 
		end 
		CharacterTText:addEventListener("touch",CharacterTText)
	elseif PTwoSkin== 3 then 
		display.remove(CharacterTAvatar)
		display.remove(CharacterTText)
		CharacterTText=display.newText("Doge",3020,2420,'',100)
		Menu:insert(CharacterTText)
			CharacterTAvatar= display.newImage("Doge.png",3500, 2320)
				Menu:insert(CharacterTAvatar)
				CharacterTAvatar:scale(1.8,1.8)
		function CharacterTText:touch (event)
			if PTwoActive== 0 and PTwoButtons== 0 then
				require("SkinT")
				PTwoButtons= 4
				PTwoActive= 1
				Menu.alpha = 0
			elseif PTwoActive> 0 and PTwoButtons== 0 then
				Menu.alpha = 0
				PTwoButtons= 4
				SkinsTCall()
			end 
		end 
		CharacterTText:addEventListener("touch",CharacterTText)
	elseif PTwoSkin== 4 then 
		display.remove(CharacterTAvatar)
		display.remove(CharacterTText)
		CharacterTText=display.newText("Pepe",3020,2420,'',100)
		Menu:insert(CharacterTText)
			CharacterTAvatar= display.newImage("Pep.png",3500, 2320)
				Menu:insert(CharacterTAvatar)
				CharacterTAvatar:scale(1.8,1.8)
		function CharacterTText:touch (event)
			if PTwoActive== 0 and PTwoButtons== 0 then
				require("SkinT")
				PTwoButtons= 5
				PTwoActive= 1
				Menu.alpha = 0
			elseif PTwoActive> 0 and PTwoButtons== 0 then
				Menu.alpha = 0
				PTwoButtons= 5
				SkinsTCall()
			end 
		end 
		CharacterTText:addEventListener("touch",CharacterTText)
	elseif PTwoSkin== 5 then 
		display.remove(CharacterTAvatar)
		display.remove(CharacterTText)
		CharacterTText=display.newText("Alien",3020,2420,'',100)
		Menu:insert(CharacterTText)
			CharacterTAvatar= display.newImage("Alien.png",3500, 2320)
				Menu:insert(CharacterTAvatar)
				CharacterTAvatar:scale(1.8,1.8)
		function CharacterTText:touch (event)
			if PTwoActive== 0 and PTwoButtons== 0 then
				require("SkinT")
				PTwoButtons= 6
				PTwoActive= 1
				Menu.alpha = 0
			elseif PTwoActive> 0 and PTwoButtons== 0 then
				Menu.alpha = 0
				PTwoButtons= 6
				SkinsTCall()
			end 
		end 
		CharacterTText:addEventListener("touch",CharacterTText)
	elseif PTwoSkin== 6 then 
		display.remove(CharacterTAvatar)
		display.remove(CharacterTText)
		CharacterTText=display.newText("Spider",3020,2420,'',100)
		Menu:insert(CharacterTText)
			CharacterTAvatar= display.newImage("Spider.png",3500, 2320)
				Menu:insert(CharacterTAvatar)
				CharacterTAvatar:scale(1.8,1.8)
		function CharacterTText:touch (event)
			if PTwoActive== 0 and PTwoButtons== 0 then
				require("SkinT")
				PTwoButtons= 7
				PTwoActive= 1
				Menu.alpha = 0
			elseif PTwoActive> 0 and PTwoButtons== 0 then
				Menu.alpha = 0
				PTwoButtons= 7
				SkinsTCall()
			end 
		end 
		CharacterTText:addEventListener("touch",CharacterTText)
	elseif PTwoSkin== 7 then 
		display.remove(CharacterTAvatar)
		display.remove(CharacterTText)
		CharacterTText=display.newText("Bee",3020,2420,'',100)
		Menu:insert(CharacterTText)
			CharacterTAvatar= display.newImage("Bee.png",3500, 2320)
				Menu:insert(CharacterTAvatar)
				CharacterTAvatar:scale(1.8,1.8)
		function CharacterTText:touch (event)
			if PTwoActive== 0 and PTwoButtons== 0 then
				require("SkinT")
				PTwoButtons= 8
				PTwoActive= 1
				Menu.alpha = 0
			elseif PTwoActive> 0 and PTwoButtons== 0 then
				Menu.alpha = 0
				PTwoButtons= 8
				SkinsTCall()
			end 
		end 
		CharacterTText:addEventListener("touch",CharacterTText)
		elseif PTwoSkin== 8 then 
			PTwoSkin= 0
			display.remove(CharacterTAvatar)
			display.remove(CharacterTText)
			CharacterTText=display.newText("Square",3020,2420,'',100)
			Menu:insert(CharacterTText)
				CharacterTAvatar = display.newRect( 3500, 2320, 200, 200)
				Menu:insert(CharacterTAvatar)
			function CharacterTText:touch (event)
					if PTwoActive== 0 and PTwoButtons==0 then
						require("SkinT")
						PTwoButtons=1
						PTwoActive= 1
						Menu.alpha = 0
					elseif PTwoActive> 0 and PTwoButtons==0 then
						PTwoButtons=1
						Menu.alpha = 0
						SkinsTCall()
					end 
				end
			CharacterTText:addEventListener("touch",CharacterTText)
	elseif PTwoSkin== 0 then 
		display.remove(CharacterTText)
		CharacterTText=display.newText("Square",3020,2420,'',100)
		Menu:insert(CharacterTText)
		function CharacterTText:touch (event)
					if PTwoActive== 0 and PTwoButtons==0 then
						require("SkinT")
						PTwoButtons=1
						PTwoActive= 1
						Menu.alpha = 0
					elseif PTwoActive> 0 and PTwoButtons==0 then
						PTwoButtons=1
						Menu.alpha = 0
						SkinsTCall()
					end 
				end
			CharacterTText:addEventListener("touch",CharacterTText)
	
	end
	print(PTwoSkin)
	
	function PTRPReturn (event)
		PTwoRightPointer:setFillColor(0,1,0)
	end
	
	timer.performWithDelay(100,PTRPReturn)
end

function PTwoLeftPointer:tap (event)
	PTwoLeftPointer:setFillColor(0,.4,0)
	if PTwoSkin >= 0 then 
		PTwoSkin= PTwoSkin- 1
		print(PTwoSkin) 
	if PTwoSkin== 1 then
		display.remove(CharacterTAvatar)
		display.remove(CharacterTText)
		CharacterTText=display.newText("Tank",3020,2420,'',100)
		Menu:insert(CharacterTText)
			CharacterTAvatar= display.newImage("Tank.png",3500, 2320)
				Menu:insert(CharacterTAvatar)
				CharacterTAvatar:scale(1.4,1.4)
		function CharacterTText:touch (event)
			if PTwoActive== 0 and PTwoButtons== 0 then
				require("SkinT")
				PTwoButtons= 2
				PTwoActive= 1
				Menu.alpha = 0
			elseif PTwoActive> 0 and PTwoButtons== 0 then
				Menu.alpha = 0
				PTwoButtons= 2
				SkinsTCall()
			end 
		end 
		CharacterTText:addEventListener("touch",CharacterTText)
	elseif PTwoSkin== 2 then 
		display.remove(CharacterTAvatar)
		display.remove(CharacterTText)
		CharacterTText=display.newText("Ship",3020,2420,'',100)
		Menu:insert(CharacterTText)
			CharacterTAvatar= display.newImage("Ship.png",3500, 2320)
				Menu:insert(CharacterTAvatar)
				CharacterTAvatar:scale(1.8,1.8)
		function CharacterTText:touch (event)
			if PTwoActive== 0 and PTwoButtons== 0 then
				require("SkinT")
				PTwoButtons= 3
				PTwoActive= 1
				Menu.alpha = 0
			elseif PTwoActive> 0 and PTwoButtons== 0 then
				Menu.alpha = 0
				PTwoButtons= 3
				SkinsTCall()
			end 
		end 
		CharacterTText:addEventListener("touch",CharacterTText)
	elseif PTwoSkin== 3 then 
		display.remove(CharacterTAvatar)
		display.remove(CharacterTText)
		CharacterTText=display.newText("Doge",3020,2420,'',100)
		Menu:insert(CharacterTText)
			CharacterTAvatar= display.newImage("Doge.png",3500, 2320)
				Menu:insert(CharacterTAvatar)
				CharacterTAvatar:scale(1.8,1.8)
		function CharacterTText:touch (event)
			if PTwoActive== 0 and PTwoButtons== 0 then
				require("SkinT")
				PTwoButtons= 4
				PTwoActive= 1
				Menu.alpha = 0
			elseif PTwoActive> 0 and PTwoButtons== 0 then
				Menu.alpha = 0
				PTwoButtons= 4
				SkinsTCall()
			end 
		end 
		CharacterTText:addEventListener("touch",CharacterTText)
	elseif PTwoSkin== 4 then 
		display.remove(CharacterTAvatar)
		display.remove(CharacterTText)
		CharacterTText=display.newText("Pepe",3020,2420,'',100)
		Menu:insert(CharacterTText)
			CharacterTAvatar= display.newImage("pep.png",3500, 2320)
				Menu:insert(CharacterTAvatar)
				CharacterTAvatar:scale(1.8,1.8)
		function CharacterTText:touch (event)
			if PTwoActive== 0 and PTwoButtons== 0 then
				require("SkinT")
				PTwoButtons= 5
				PTwoActive= 1
				Menu.alpha = 0
			elseif PTwoActive> 0 and PTwoButtons== 0 then
				Menu.alpha = 0
				PTwoButtons= 5
				SkinsTCall()
			end 
		end 
		CharacterTText:addEventListener("touch",CharacterTText)
		
	elseif PTwoSkin== 5 then 
		display.remove(CharacterTAvatar)
		display.remove(CharacterTText)
		CharacterTText=display.newText("Alien",3020,2420,'',100)
		Menu:insert(CharacterTText)
			CharacterTAvatar= display.newImage("Alien.png",3500, 2320)
				Menu:insert(CharacterTAvatar)
				CharacterTAvatar:scale(1.8,1.8)
		function CharacterTText:touch (event)
			if PTwoActive== 0 and PTwoButtons== 0 then
				require("SkinT")
				PTwoButtons= 6
				PTwoActive= 1
				Menu.alpha = 0
			elseif PTwoActive> 0 and PTwoButtons== 0 then
				Menu.alpha = 0
				PTwoButtons= 6
				SkinsTCall()
			end 
		end 
		CharacterTText:addEventListener("touch",CharacterTText)
	elseif PTwoSkin== 6 then 
		display.remove(CharacterTAvatar)
		display.remove(CharacterTText)
		CharacterTText=display.newText("Spider",3020,2420,'',100)
		Menu:insert(CharacterTText)
			CharacterTAvatar= display.newImage("Spider.png",3500, 2320)
				Menu:insert(CharacterTAvatar)
				CharacterTAvatar:scale(1.8,1.8)
		function CharacterTText:touch (event)
			if PTwoActive== 0 and PTwoButtons== 0 then
				require("SkinT")
				PTwoButtons= 7
				PTwoActive= 1
				Menu.alpha = 0
			elseif PTwoActive> 0 and PTwoButtons== 0 then
				Menu.alpha = 0
				PTwoButtons= 7
				SkinsTCall()
			end 
		end 
		CharacterTText:addEventListener("touch",CharacterTText)
	elseif PTwoSkin== 7 then 
		display.remove(CharacterTAvatar)
		display.remove(CharacterTText)
		CharacterTText=display.newText("Bee",3020,2420,'',100)
		Menu:insert(CharacterTText)
			CharacterTAvatar= display.newImage("Bee.png",3500, 2320)
				Menu:insert(CharacterTAvatar)
				CharacterTAvatar:scale(1.8,1.8)
		function CharacterTText:touch (event)
			if PTwoActive== 0 and PTwoButtons== 0 then
				require("SkinT")
				PTwoButtons= 8
				PTwoActive= 1
				Menu.alpha = 0
			elseif PTwoActive> 0 and PTwoButtons== 0 then
				Menu.alpha = 0
				PTwoButtons= 8
				SkinsTCall()
			end 
		end 
		CharacterTText:addEventListener("touch",CharacterTText)
		
	
	elseif PTwoSkin== 0 then 
		display.remove(CharacterTAvatar)
		display.remove(CharacterTText)
		CharacterTText=display.newText("Square",3020,2420,'',100)
		Menu:insert(CharacterTText)
			CharacterTAvatar = display.newRect( 3500, 2320, 200, 200) --displays character 2 in menu 
			CharacterOAvatar:setFillColor( 1,1,1 )
			Menu:insert(CharacterTAvatar)
		function CharacterTText:touch (event)
			if PTwoActive== 0 and PTwoButtons== 0 then
				require("SkinT")
				PTwoButtons= 1
				PTwoActive= 1
				Menu.alpha = 0
			elseif PTwoActive> 0 and PTwoButtons== 0 then
				Menu.alpha = 0
				PTwoButtons= 1
				SkinsTCall()
			end 
		end 
		CharacterTText:addEventListener("touch",CharacterTText)
	elseif PTwoSkin== 7 then
		display.remove(CharacterTAvatar)
		display.remove(CharacterTText)
		CharacterTText=display.newText("Bee",3020,2420,'',100)
		Menu:insert(CharacterTText)
		function CharacterTText:touch (event)
			if PTwoActive== 0 and PTwoButtons== 0 then
				require("SkinT")
				PTwoButtons= 8
				PTwoActive= 1
				Menu.alpha = 0
			elseif PTwoActive> 0 and PTwoButtons== 0 then
				Menu.alpha = 0
				PTwoButtons= 8
				SkinsTCall()
			end 
		end 
	elseif  PTwoSkin< 0 then
		PTwoSkin= 7
		display.remove(CharacterTAvatar)
		display.remove(CharacterTText)
		CharacterTText=display.newText("Bee",3020,2420,'',100)
		Menu:insert(CharacterTText)
			CharacterTAvatar= display.newImage("Bee.png",3500, 2320)
				Menu:insert(CharacterTAvatar)
				CharacterTAvatar:scale(1.8,1.8)
		function CharacterTText:touch (event)
			if PTwoActive== 0 and PTwoButtons== 0 then
				require("SkinT")
				PTwoButtons= 8
				PTwoActive= 1
				Menu.alpha = 0
			elseif PTwoActive> 0 and PTwoButtons== 0 then
				Menu.alpha = 0
				PTwoButtons= 8
				SkinsTCall()
			end 
		end 
		CharacterTText:addEventListener("touch",CharacterTText)
	end
	end
	function PTLPReturn (event)
		PTwoLeftPointer:setFillColor(0,1,0)
	end
	
	timer.performWithDelay(100,PTLPReturn)
end

--PlayerSelect buttons end

function PlayText:tap (event)
	timer.cancel( BR )
	display.remove(Menu)
	require("Play")
	
end


function EXIT:tap(event)
	native.requestExit()
end

-- skins menu
 function CharacterOText:touch (event)
	if POneActive== 0 and POneButtons==0 then
		require("Skins")
		POneButtons=1
		POneActive= 1
		Menu.alpha = 0
	elseif POneActive> 0 and POneButtons==0 then
		POneButtons=1
		Menu.alpha = 0
		SkinsCall()
	end 
end 

function CharacterTText:touch (event)
	if PTwoActive== 0 and PTwoButtons== 0 then
		require("SkinT")
		PTwoButtons= 1
		PTwoActive= 1
		Menu.alpha = 0
	elseif PTwoActive> 0 and PTwoButtons== 0 then
		Menu.alpha = 0
		PTwoButtons= 1
		SkinsTCall()
	end 
end 

--skin end 



function How:tap (event)
		if H_menu== false then 
			Menu.alpha = 0
			Menu.x = Menu.x+100000
			require("Rules")
			H_menu= true 
		elseif H_menu== true then 
			timer.performWithDelay(2000,button_activiate)
			Menu.alpha = 0
			Menu.x = Menu.x+100000
			transition.to(RulesG,{time=2000, alpha= 1})
			transition.to(RulesVisbleButtons,{time=2000, alpha= 1})
		end
end 
How:addEventListener("tap", How)

function Cheatz:tap (event)
	if C_menu== false then 
		Menu.alpha = 0
			Menu.x = Menu.x+100000
			require("Cheats")
			C_menu= true 
	elseif C_menu== true then 
		Menu.alpha = 0
		Menu.x = Menu.x+100000
		transition.to(CheatsGroup,{time=2000, alpha= 1})
		transition.to(RulesVisbleButtons,{time=2000, alpha= 1})
	end
end
Cheatz:addEventListener("tap", Cheatz)

POneRightPointer:addEventListener("tap", POneRightPointer)
POneLeftPointer:addEventListener("tap", POneLeftPointer)

PTwoRightPointer:addEventListener("tap", PTwoRightPointer)
PTwoLeftPointer:addEventListener("tap", PTwoLeftPointer)

PlayText:addEventListener("tap", PlayText)


BR =timer.performWithDelay(2000,ReturnBall,0)
BALL:addEventListener("touch",BALL)

EXIT:addEventListener("tap", EXIT)

CharacterOText:addEventListener("touch",CharacterOText)
CharacterTText:addEventListener("touch",CharacterTText)

