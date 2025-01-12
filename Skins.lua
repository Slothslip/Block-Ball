function SkinsCall (event)

local SkinsTextGroup = display.newGroup()

local MText = display.newText("Skins",2000,200,'',200)
	SkinsTextGroup:insert(MText)
local ReturnTeXt= display.newText("Return",2000,2100,"",200)
	SkinsTextGroup:insert(ReturnTeXt)
	


if POneSkin== 0  then 
	 SkinsOneGroup = display.newGroup()
	
	local SkinOne = display.newRect( 1000, 1000, 200, 200)
		SkinOne:setFillColor( 1,1,1 )
		SkinsOneGroup:insert(SkinOne)
		if POneStype == 0 and POneButtons==1 then 
			CHoosen=display.newCircle( SkinOne.x, SkinOne.y+200, 30 )
			SkinsOneGroup:insert(CHoosen)
		end 
		function SkinOne:tap (event)
			if POneStype ~= 0 and POneButtons==1 then
				display.remove(CHoosen)
				CHoosen=display.newCircle( SkinOne.x, SkinOne.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
				POneStype = 0
			end
		end 
		SkinOne:addEventListener("tap", SkinOne)
	local SkinTwo = display.newRect( 1500, 1000, 200, 200)
		SkinTwo:setFillColor( 1,0,0 )
		SkinsOneGroup:insert(SkinTwo)
		if POneStype == 1 and POneButtons==1 then 
			CHoosen=display.newCircle( SkinTwo.x, SkinTwo.y+200, 30 )
			SkinsOneGroup:insert(CHoosen)
		end 
		function SkinTwo:tap (event)
			if POneStype ~= 1 and POneButtons==1 then
				display.remove(CHoosen)
				CHoosen=display.newCircle( SkinTwo.x, SkinTwo.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
				POneStype = 1
			end
		end 
		SkinTwo:addEventListener("tap", SkinTwo)
		
	local SkinThree = display.newRect( 2000, 1000, 200, 200)
		SkinThree:setFillColor( 0,1,0 )
		SkinsOneGroup:insert(SkinThree)
		if POneStype == 2 and POneButtons==1 then 
			CHoosen=display.newCircle( SkinThree.x, SkinThree.y+200, 30 )
			SkinsOneGroup:insert(CHoosen)
		end 
		function SkinThree:tap (event)
			if POneStype ~= 2 and POneButtons==1 then
				display.remove(CHoosen)
				CHoosen=display.newCircle( SkinThree.x, SkinThree.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
				POneStype= 2
			end
		end 
		SkinThree:addEventListener("tap", SkinThree)
		
		
	local SkinFour = display.newRect( 1000, 1500, 200, 200)
		SkinFour:setFillColor( 0,0,1)
		SkinsOneGroup:insert(SkinFour)
		if POneStype == 3 and POneButtons==1 then 
			CHoosen=display.newCircle( SkinFour.x, SkinFour.y+200, 30 )
			SkinsOneGroup:insert(CHoosen)
		end 
		function SkinFour:tap (event)
			if POneStype ~= 3 and POneButtons==1 then
				display.remove(CHoosen)
				CHoosen=display.newCircle( SkinFour.x, SkinFour.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
				POneStype = 3
			end
		end 
		SkinFour:addEventListener("tap", SkinFour)
		
		
	local SkinFive = display.newRect( 1500, 1500, 200, 200)
		SkinFive:setFillColor( 1,1,0)
		SkinsOneGroup:insert(SkinFive)
		if POneStype == 4 and POneButtons==1 then 
			CHoosen=display.newCircle( SkinFive.x, SkinFive.y+200, 30 )
			SkinsOneGroup:insert(CHoosen)
		end 
		function SkinFive:tap (event)
			if POneStype ~= 4 and POneButtons==1 then
				display.remove(CHoosen)
				CHoosen=display.newCircle( SkinFive.x, SkinFive.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
				POneStype = 4
			end
		end 
		SkinFive:addEventListener("tap", SkinFive)
		
		
	local SkinSix = display.newRect( 2000, 1500, 200, 200)
		SkinSix:setFillColor( .6,0,1)
		SkinsOneGroup:insert(SkinSix)
		if POneStype == 5 and POneButtons==1 then 
			CHoosen=display.newCircle( SkinSix.x, SkinSix.y+200, 30 )
			SkinsOneGroup:insert(CHoosen)
		end 
		function SkinSix:tap (event)
			if POneStype ~= 5 and POneButtons==1 then
				display.remove(CHoosen)
				CHoosen=display.newCircle( SkinSix.x, SkinSix.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
				POneStype = 5
			end
		end 
		SkinSix:addEventListener("tap", SkinSix)
		
		
		
		
	SkinsOneGroup.x=SkinsOneGroup.x+500
	SkinsOneGroup.y=SkinsOneGroup.y-100
	SkinsTextGroup:insert(SkinsOneGroup)
	
elseif POneSkin== 1 then 
		SkinsOneGroup = display.newGroup()
		local SkinOne= display.newImage("Tank.png",1500,1000)
			SkinOne:scale(1.4,1.4)
			SkinsTextGroup :insert( SkinOne)
			if POneStype == 0 and POneButtons==2 then 
				CHoosen=display.newCircle( SkinOne.x, SkinOne.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinOne:tap (event)
				if POneStype ~= 0 and POneButtons==2 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinOne.x, SkinOne.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 0
				end
			end 
		SkinOne:addEventListener("tap", SkinOne)
		
		local SkinTwo= display.newImage("TankB.png",2000,1000)
			SkinTwo:scale(1.4,1.4)
			SkinsTextGroup :insert( SkinTwo)
			if POneStype == 1 and POneButtons==2 then 
				CHoosen=display.newCircle( SkinTwo.x, SkinTwo.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinTwo:tap (event)
				if POneStype ~= 1 and POneButtons==2 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinTwo.x, SkinTwo.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 1
				end
			end 
		SkinTwo:addEventListener("tap", SkinTwo)
			
		local SkinThree= display.newImage("TankP.png",2500,1000)
			SkinThree:scale(1.4,1.4)
			SkinsTextGroup :insert( SkinThree)
		if POneStype == 2 and POneButtons==2 then 
			CHoosen=display.newCircle( SkinThree.x, SkinThree.y+200, 30 )
			SkinsOneGroup:insert(CHoosen)
		end 
		function SkinThree:tap (event)
			if POneStype ~= 2 and POneButtons==2 then
				display.remove(CHoosen)
				CHoosen=display.newCircle( SkinThree.x, SkinThree.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
				POneStype= 2
			end
		end 
		SkinThree:addEventListener("tap", SkinThree)
			
		local SkinFour= display.newImage("TankR.png",2000,1500)
			SkinFour:scale(1.4,1.4)
			SkinsTextGroup :insert( SkinFour)
			if POneStype == 3 and POneButtons==2 then 
				CHoosen=display.newCircle( SkinFour.x, SkinFour.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinFour:tap (event)
				if POneStype ~= 3 and POneButtons==2 then -- red tank 
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFour.x, SkinFour.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 3
				end
			end 
			SkinFour:addEventListener("tap", SkinFour)
			
		local SkinFive= display.newImage("TankS.png",1500,1500)-- yellow
			SkinFive:scale(1.4,1.4)
			SkinsTextGroup :insert( SkinFive)
			if POneStype == 4 and POneButtons==2 then 
				CHoosen=display.newCircle( SkinFive.x, SkinFive.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinFive:tap (event)
				if POneStype ~= 4 and POneButtons==2 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFive.x, SkinFive.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 4
				end
			end 
			SkinFive:addEventListener("tap", SkinFive)
			
		local SkinSix= display.newImage("TankA.png",2500,1500)
			SkinSix:scale(1.4,1.4)
			SkinsTextGroup :insert( SkinSix)
			if POneStype == 5 and POneButtons==2 then 
				CHoosen=display.newCircle( SkinSix.x, SkinSix.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinSix:tap (event)
				if POneStype ~= 5 and POneButtons==2 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinSix.x, SkinSix.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 5
				end
			end 
		SkinSix:addEventListener("tap", SkinSix)
		
			
		SkinsTextGroup:insert(SkinsOneGroup)
	
elseif POneSkin== 2 then 
	SkinsOneGroup = display.newGroup()
	
	local SkinOne= display.newImage("Ship.png",1500,1000)
		SkinOne:scale(1.8,1.8)
		SkinsTextGroup :insert( SkinOne)
		if POneStype == 0 and POneButtons==3 then 
				CHoosen=display.newCircle( SkinOne.x, SkinOne.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinOne:tap (event)
				if POneStype ~= 0 and POneButtons==3 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinOne.x, SkinOne.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 0
				end
			end 
		SkinOne:addEventListener("tap", SkinOne)
	
	local SkinTwo= display.newImage("ShipB.png",2000,1000)
			SkinTwo:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinTwo)
			if POneStype == 1 and POneButtons==3 then 
				CHoosen=display.newCircle( SkinTwo.x, SkinTwo.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinTwo:tap (event)
				if POneStype ~= 1 and POneButtons==3 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinTwo.x, SkinTwo.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 1
				end
			end 
		SkinTwo:addEventListener("tap", SkinTwo)
	
	local SkinThree= display.newImage("ShipG.png",2500,1000)
			SkinThree:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinThree)
			if POneStype == 2 and POneButtons==3 then 
				CHoosen=display.newCircle( SkinThree.x, SkinThree.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinThree:tap (event)
				if POneStype ~= 2 and POneButtons==3 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinThree.x, SkinThree.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 2
				end
			end 
		SkinThree:addEventListener("tap", SkinThree)
	
	local SkinFour= display.newImage("ShipP.png",2000,1500)
			SkinFour:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinFour)
			if POneStype == 3 and POneButtons==3 then 
				CHoosen=display.newCircle( SkinFour.x, SkinFour.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinFour:tap (event)
				if POneStype ~= 3 and POneButtons==3 then -- red tank 
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFour.x, SkinFour.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 3
				end
			end 
			SkinFour:addEventListener("tap", SkinFour)
	
	local SkinFive= display.newImage("ShipW.png",1500,1500)-- yellow
			SkinFive:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinFive)
			if POneStype == 4 and POneButtons==3 then 
				CHoosen=display.newCircle( SkinFive.x, SkinFive.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinFive:tap (event)
				if POneStype ~= 4 and POneButtons==3 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFive.x, SkinFive.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 4
				end
			end 
			SkinFive:addEventListener("tap", SkinFive)
	
	local SkinSix= display.newImage("ShipY.png",2500,1500)
			SkinSix:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinSix)
			if POneStype == 5 and POneButtons==3 then 
				CHoosen=display.newCircle( SkinSix.x, SkinSix.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinSix:tap (event)
				if POneStype ~= 5 and POneButtons==3 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinSix.x, SkinSix.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 5
				end
			end 
		SkinSix:addEventListener("tap", SkinSix)
		
			
		SkinsTextGroup:insert(SkinsOneGroup)
		
elseif POneSkin== 3 then 
	SkinsOneGroup = display.newGroup()
	
	local SkinOne= display.newImage("Doge.png",1500,1000)
		SkinOne:scale(1.8,1.8)
		SkinsTextGroup :insert( SkinOne)
		if POneStype == 0 and POneButtons==4 then 
				CHoosen=display.newCircle( SkinOne.x, SkinOne.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinOne:tap (event)
				if POneStype ~= 0 and POneButtons==4 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinOne.x, SkinOne.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 0
				end
			end 
		SkinOne:addEventListener("tap", SkinOne)
	
	local SkinTwo= display.newImage("DogeB.png",2000,1000)
			SkinTwo:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinTwo)
			if POneStype == 1 and POneButtons==4 then 
				CHoosen=display.newCircle( SkinTwo.x, SkinTwo.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinTwo:tap (event)
				if POneStype ~= 1 and POneButtons==4 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinTwo.x, SkinTwo.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 1
				end
			end 
		SkinTwo:addEventListener("tap", SkinTwo)
	
	local SkinThree= display.newImage("DogeG.png",2500,1000)
			SkinThree:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinThree)
			if POneStype == 2 and POneButtons==4 then 
				CHoosen=display.newCircle( SkinThree.x, SkinThree.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinThree:tap (event)
				if POneStype ~= 2 and POneButtons==4 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinThree.x, SkinThree.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 2
				end
			end 
		SkinThree:addEventListener("tap", SkinThree)
	
	local SkinFour= display.newImage("DogeP.png",2000,1500)
			SkinFour:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinFour)
			if POneStype == 3 and POneButtons==4 then 
				CHoosen=display.newCircle( SkinFour.x, SkinFour.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinFour:tap (event)
				if POneStype ~= 3 and POneButtons==4 then -- red tank 
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFour.x, SkinFour.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 3
				end
			end 
			SkinFour:addEventListener("tap", SkinFour)
	
	local SkinFive= display.newImage("DogeR.png",1500,1500)-- yellow
			SkinFive:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinFive)
			if POneStype == 4 and POneButtons==4 then 
				CHoosen=display.newCircle( SkinFive.x, SkinFive.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinFive:tap (event)
				if POneStype ~= 4 and POneButtons==4 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFive.x, SkinFive.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 4
				end
			end 
			SkinFive:addEventListener("tap", SkinFive)
	
	local SkinSix= display.newImage("DogeSd.png",2500,1500)
			SkinSix:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinSix)
			if POneStype == 5 and POneButtons==4 then 
				CHoosen=display.newCircle( SkinSix.x, SkinSix.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinSix:tap (event)
				if POneStype ~= 5 and POneButtons==4 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinSix.x, SkinSix.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 5
				end
			end 
		SkinSix:addEventListener("tap", SkinSix)
		
			
		SkinsTextGroup:insert(SkinsOneGroup)
	
elseif POneSkin== 4 then
		SkinsOneGroup = display.newGroup()
	
	local SkinOne= display.newImage("Pep.png",1500,1000)
		SkinOne:scale(1.8,1.8)
		SkinsTextGroup :insert( SkinOne)
		if POneStype == 0 and POneButtons==5 then 
				CHoosen=display.newCircle( SkinOne.x, SkinOne.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinOne:tap (event)
				if POneStype ~= 0 and POneButtons==5 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinOne.x, SkinOne.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 0
				end
			end 
		SkinOne:addEventListener("tap", SkinOne)
	
	local SkinTwo= display.newImage("PepB.png",2000,1000)
			SkinTwo:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinTwo)
			if POneStype == 1 and POneButtons==5 then 
				CHoosen=display.newCircle( SkinTwo.x, SkinTwo.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinTwo:tap (event)
				if POneStype ~= 1 and POneButtons==5 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinTwo.x, SkinTwo.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 1
				end
			end 
		SkinTwo:addEventListener("tap", SkinTwo)
	
	local SkinThree= display.newImage("PepGre.png",2500,1000)
			SkinThree:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinThree)
			if POneStype == 2 and POneButtons==5 then 
				CHoosen=display.newCircle( SkinThree.x, SkinThree.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinThree:tap (event)
				if POneStype ~= 2 and POneButtons==5 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinThree.x, SkinThree.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 2
				end
			end 
		SkinThree:addEventListener("tap", SkinThree)
	
	local SkinFour= display.newImage("PepP.png",2000,1500)
			SkinFour:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinFour)
			if POneStype == 3 and POneButtons==5 then 
				CHoosen=display.newCircle( SkinFour.x, SkinFour.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinFour:tap (event)
				if POneStype ~= 3 and POneButtons==5 then -- red tank 
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFour.x, SkinFour.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 3
				end
			end 
			SkinFour:addEventListener("tap", SkinFour)
	
	local SkinFive= display.newImage("PepR.png",1500,1500)-- yellow
			SkinFive:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinFive)
			if POneStype == 4 and POneButtons==5 then 
				CHoosen=display.newCircle( SkinFive.x, SkinFive.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinFive:tap (event)
				if POneStype ~= 4 and POneButtons==5 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFive.x, SkinFive.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 4
				end
			end 
			SkinFive:addEventListener("tap", SkinFive)
	
	local SkinSix= display.newImage("PepY.png",2500,1500)
			SkinSix:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinSix)
			if POneStype == 5 and POneButtons==5 then 
				CHoosen=display.newCircle( SkinSix.x, SkinSix.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinSix:tap (event)
				if POneStype ~= 5 and POneButtons==5 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinSix.x, SkinSix.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 5
				end
			end 
		SkinSix:addEventListener("tap", SkinSix)
		
			
		SkinsTextGroup:insert(SkinsOneGroup)
		
elseif POneSkin== 5 then
			SkinsOneGroup = display.newGroup()
	
	local SkinOne= display.newImage("Alien.png",1500,1000)
		SkinOne:scale(1.8,1.8)
		SkinsTextGroup :insert( SkinOne)
		if POneStype == 0 and POneButtons==6 then 
				CHoosen=display.newCircle( SkinOne.x, SkinOne.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinOne:tap (event)
				if POneStype ~= 0 and POneButtons==6 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinOne.x, SkinOne.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 0
				end
			end 
		SkinOne:addEventListener("tap", SkinOne)
	
	local SkinTwo= display.newImage("AlienGO.png",2000,1000)
			SkinTwo:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinTwo)
			if POneStype == 1 and POneButtons==5 then 
				CHoosen=display.newCircle( SkinTwo.x, SkinTwo.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinTwo:tap (event)
				if POneStype ~= 1 and POneButtons==6 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinTwo.x, SkinTwo.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 1
				end
			end 
		SkinTwo:addEventListener("tap", SkinTwo)
	
	local SkinThree= display.newImage("AlienO.png",2500,1000)
			SkinThree:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinThree)
			if POneStype == 2 and POneButtons==6 then 
				CHoosen=display.newCircle( SkinThree.x, SkinThree.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinThree:tap (event)
				if POneStype ~= 2 and POneButtons==6 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinThree.x, SkinThree.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 2
				end
			end 
		SkinThree:addEventListener("tap", SkinThree)
	
	local SkinFour= display.newImage("AlienR.png",2000,1500)
			SkinFour:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinFour)
			if POneStype == 3 and POneButtons==6 then 
				CHoosen=display.newCircle( SkinFour.x, SkinFour.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinFour:tap (event)
				if POneStype ~= 3 and POneButtons==6 then -- red tank 
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFour.x, SkinFour.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 3
				end
			end 
			SkinFour:addEventListener("tap", SkinFour)
	
	local SkinFive= display.newImage("AlienW.png",1500,1500)-- yellow
			SkinFive:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinFive)
			if POneStype == 4 and POneButtons==6 then 
				CHoosen=display.newCircle( SkinFive.x, SkinFive.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinFive:tap (event)
				if POneStype ~= 4 and POneButtons==6 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFive.x, SkinFive.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 4
				end
			end 
			SkinFive:addEventListener("tap", SkinFive)
	
	local SkinSix= display.newImage("AlienWC.png",2500,1500)
			SkinSix:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinSix)
			if POneStype == 5 and POneButtons==6 then 
				CHoosen=display.newCircle( SkinSix.x, SkinSix.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinSix:tap (event)
				if POneStype ~= 5 and POneButtons==6 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinSix.x, SkinSix.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 5
				end
			end 
		SkinSix:addEventListener("tap", SkinSix)
		
			
		SkinsTextGroup:insert(SkinsOneGroup)
		
elseif POneSkin== 6 then
				SkinsOneGroup = display.newGroup()
	
	local SkinOne= display.newImage("Spider.png",1500,1000)
		SkinOne:scale(1.8,1.8)
		SkinsTextGroup :insert( SkinOne)
		if POneStype == 0 and POneButtons==7 then 
				CHoosen=display.newCircle( SkinOne.x, SkinOne.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinOne:tap (event)
				if POneStype ~= 0 and POneButtons==7 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinOne.x, SkinOne.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 0
				end
			end 
		SkinOne:addEventListener("tap", SkinOne)
	
	local SkinTwo= display.newImage("SpiderBL.png",2000,1000)
			SkinTwo:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinTwo)
			if POneStype == 1 and POneButtons==7 then 
				CHoosen=display.newCircle( SkinTwo.x, SkinTwo.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinTwo:tap (event)
				if POneStype ~= 1 and POneButtons==7 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinTwo.x, SkinTwo.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 1
				end
			end 
		SkinTwo:addEventListener("tap", SkinTwo)
	
	local SkinThree= display.newImage("SpiderY.png",2500,1000)
			SkinThree:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinThree)
			if POneStype == 2 and POneButtons==7 then 
				CHoosen=display.newCircle( SkinThree.x, SkinThree.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinThree:tap (event)
				if POneStype ~= 2 and POneButtons==7 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinThree.x, SkinThree.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 2
				end
			end 
		SkinThree:addEventListener("tap", SkinThree)
	
	local SkinFour= display.newImage("SpiderBW.png",2000,1500)
			SkinFour:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinFour)
			if POneStype == 3 and POneButtons==7 then 
				CHoosen=display.newCircle( SkinFour.x, SkinFour.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinFour:tap (event)
				if POneStype ~= 3 and POneButtons==7 then -- red tank 
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFour.x, SkinFour.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 3
				end
			end 
			SkinFour:addEventListener("tap", SkinFour)
	
	local SkinFive= display.newImage("SpiderG.png",1500,1500)-- yellow
			SkinFive:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinFive)
			if POneStype == 4 and POneButtons==7 then 
				CHoosen=display.newCircle( SkinFive.x, SkinFive.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinFive:tap (event)
				if POneStype ~= 4 and POneButtons==7 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFive.x, SkinFive.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 4
				end
			end 
			SkinFive:addEventListener("tap", SkinFive)
	
	local SkinSix= display.newImage("SpiderW.png",2500,1500)
			SkinSix:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinSix)
			if POneStype == 5 and POneButtons==7 then 
				CHoosen=display.newCircle( SkinSix.x, SkinSix.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinSix:tap (event)
				if POneStype ~= 5 and POneButtons==7 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinSix.x, SkinSix.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 5
				end
			end 
		SkinSix:addEventListener("tap", SkinSix)
		
			
		SkinsTextGroup:insert(SkinsOneGroup)
		
elseif POneSkin== 7 then
	SkinsOneGroup = display.newGroup()
	
	local SkinOne= display.newImage("Bee.png",1500,1000)
		SkinOne:scale(1.8,1.8)
		SkinsTextGroup :insert( SkinOne)
		if POneStype == 0 and POneButtons==8 then 
				CHoosen=display.newCircle( SkinOne.x, SkinOne.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinOne:tap (event)
				if POneStype ~= 0 and POneButtons==8 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinOne.x, SkinOne.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 0
				end
			end 
		SkinOne:addEventListener("tap", SkinOne)
	
	local SkinTwo= display.newImage("BeeB.png",2000,1000)
			SkinTwo:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinTwo)
			if POneStype == 1 and POneButtons==8 then 
				CHoosen=display.newCircle( SkinTwo.x, SkinTwo.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinTwo:tap (event)
				if POneStype ~= 1 and POneButtons==8 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinTwo.x, SkinTwo.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 1
				end
			end 
		SkinTwo:addEventListener("tap", SkinTwo)
	
	local SkinThree= display.newImage("BeeG.png",2500,1000)
			SkinThree:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinThree)
			if POneStype == 2 and POneButtons==8 then 
				CHoosen=display.newCircle( SkinThree.x, SkinThree.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinThree:tap (event)
				if POneStype ~= 2 and POneButtons==8 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinThree.x, SkinThree.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 2
				end
			end 
		SkinThree:addEventListener("tap", SkinThree)
	
	local SkinFour= display.newImage("BeeP.png",2000,1500)
			SkinFour:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinFour)
			if POneStype == 3 and POneButtons==8 then 
				CHoosen=display.newCircle( SkinFour.x, SkinFour.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinFour:tap (event)
				if POneStype ~= 3 and POneButtons==8 then -- red tank 
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFour.x, SkinFour.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 3
				end
			end 
			SkinFour:addEventListener("tap", SkinFour)
	
	local SkinFive= display.newImage("BeeR.png",1500,1500)-- yellow
			SkinFive:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinFive)
			if POneStype == 4 and POneButtons==8 then 
				CHoosen=display.newCircle( SkinFive.x, SkinFive.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinFive:tap (event)
				if POneStype ~= 4 and POneButtons==8 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFive.x, SkinFive.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 4
				end
			end 
			SkinFive:addEventListener("tap", SkinFive)
	
	local SkinSix= display.newImage("BeeW.png",2500,1500)
			SkinSix:scale(1.8,1.8)
			SkinsTextGroup :insert( SkinSix)
			if POneStype == 5 and POneButtons==8 then 
				CHoosen=display.newCircle( SkinSix.x, SkinSix.y+200, 30 )
				SkinsOneGroup:insert(CHoosen)
			end 
			function SkinSix:tap (event)
				if POneStype ~= 5 and POneButtons==8 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinSix.x, SkinSix.y+200, 30 )
					SkinsOneGroup:insert(CHoosen)
					POneStype = 5
				end
			end 
		SkinSix:addEventListener("tap", SkinSix)
		
			
		SkinsTextGroup:insert(SkinsOneGroup)


end

function ReturnTeXt:tap (event)
	display.remove(SkinsTextGroup)
	Menu.alpha= 1
	POneButtons=0
	
end 

ReturnTeXt:addEventListener("tap", ReturnTeXt)

end 

SkinsCall()