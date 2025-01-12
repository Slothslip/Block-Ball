function SkinsTCall (event)
	local SkinsTextTGroup = display.newGroup()
	
	local MTextT = display.newText("Skins",2000,200,'',200)
		SkinsTextTGroup:insert(MTextT)
	local ReturnTeXtT= display.newText("Return",2000,2100,"",200)
		SkinsTextTGroup:insert(ReturnTeXtT)
		
	if PTwoSkin == 0  then 
	  
	  SkinsTwoGroup= display.newGroup()
	
	local SkinOneT = display.newRect( 1000, 1000, 200, 200)
		SkinOneT:setFillColor( 1,1,1 )
		SkinsTwoGroup:insert(SkinOneT)
		if PTwoStype == 0 then 
			CHoosenT=display.newCircle( SkinOneT.x, SkinOneT.y+200, 30 )
			SkinsTwoGroup:insert(CHoosenT)
		end 
		function SkinOneT:tap (event)
			if PTwoStype ~= 0 then
				display.remove(CHoosenT)
				CHoosenT=display.newCircle( SkinOneT.x, SkinOneT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosenT)
				PTwoStype = 0
			end
		end 
		SkinOneT:addEventListener("tap", SkinOneT)
	local SkinTwoT = display.newRect( 1500, 1000, 200, 200)
		SkinTwoT:setFillColor( 1,0,0 )
		SkinsTwoGroup:insert(SkinTwoT)
		if PTwoStype == 1 then 
			CHoosenT=display.newCircle( SkinTwoT.x, SkinTwoT.y+200, 30 )
			SkinsTwoGroup:insert(CHoosenT)
		end 
		function SkinTwoT:tap (event)
			if PTwoStype ~= 1 then
				display.remove(CHoosenT)
				CHoosenT=display.newCircle( SkinTwoT.x, SkinTwoT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosenT)
				PTwoStype = 1
			end
		end 
		SkinTwoT:addEventListener("tap", SkinTwoT)
		
	local SkinThreeT = display.newRect( 2000, 1000, 200, 200)
		SkinThreeT:setFillColor( 0,1,0 )
		SkinsTwoGroup:insert(SkinThreeT)
		if PTwoStype == 2 then 
			CHoosenT=display.newCircle( SkinThreeT.x, SkinThreeT.y+200, 30 )
			SkinsTwoGroup:insert(CHoosenT)
		end 
		function SkinThreeT:tap (event)
			if PTwoStype ~= 2 then
				display.remove(CHoosenT)
				CHoosenT=display.newCircle( SkinThreeT.x, SkinThreeT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosenT)
				PTwoStype= 2
			end
		end 
		SkinThreeT:addEventListener("tap", SkinThreeT)
		
		
	local SkinFourT = display.newRect( 1000, 1500, 200, 200)
		SkinFourT:setFillColor( 0,0,1)
		SkinsTwoGroup:insert(SkinFourT)
		if PTwoStype == 3 then 
			CHoosenT=display.newCircle( SkinFour.x, SkinFour.y+200, 30 )
			SkinsTwoGroup:insert(CHoosenT)
		end 
		function SkinFourT:tap (event)
			if PTwoStype ~= 3 then
				display.remove(CHoosenT)
				CHoosenT=display.newCircle( SkinFourT.x, SkinFourT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosenT)
				PTwoStype= 3
			end
		end 
		SkinFourT:addEventListener("tap", SkinFourT)
		
		
	local SkinFiveT = display.newRect( 1500, 1500, 200, 200)
		SkinFiveT:setFillColor( 1,1,0)
		SkinsTwoGroup:insert(SkinFiveT)
		if PTwoStype == 4 then 
			CHoosenT=display.newCircle( SkinFiveT.x, SkinFiveT.y+200, 30 )
			SkinsTwoGroup:insert(CHoosenT)
		end 
		function SkinFiveT:tap (event)
			if PTwoStype ~= 4 then
				display.remove(CHoosenT)
				CHoosenT=display.newCircle( SkinFiveT.x, SkinFiveT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosenT)
				PTwoStype = 4
			end
		end 
		SkinFiveT:addEventListener("tap", SkinFiveT)
		
		
	local SkinSixT = display.newRect( 2000, 1500, 200, 200)
		SkinSixT:setFillColor( .6,0,1)
		SkinsTwoGroup:insert(SkinSixT)
		if PTwoStype == 5 then 
			CHoosenT=display.newCircle( SkinSixT.x, SkinSixT.y+200, 30 )
			SkinsTwoGroup:insert(CHoosenT)
		end 
		function SkinSixT:tap (event)
			if PTwoStype~= 5 then
				display.remove(CHoosenT)
				CHoosenT=display.newCircle( SkinSixT.x, SkinSixT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosenT)
				PTwoStype = 5
			end
		end 
		SkinSixT:addEventListener("tap", SkinSixT)
		
		
		
		
	SkinsTwoGroup.x=SkinsTwoGroup.x+500
	SkinsTwoGroup.y=SkinsTwoGroup.y-100
	SkinsTextTGroup:insert(SkinsTwoGroup)
	
	elseif PTwoSkin == 1 then 
		SkinsTwoGroup = display.newGroup()
		local SkinOneT= display.newImage("Tank.png",1500,1000)
			SkinOneT:scale(1.4,1.4)
			SkinsTextTGroup :insert( SkinOneT)
			if PTwoStype == 0 and PTwoButtons==2 then 
				CHoosen=display.newCircle( SkinOneT.x, SkinOneT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinOneT:tap (event)
				if PTwoStype ~= 0 and PTwoButtons==2 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinOneT.x, SkinOneT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 0
				end
			end 
		SkinOneT:addEventListener("tap", SkinOneT)
		
		local SkinTwoT= display.newImage("TankB.png",2000,1000)
			SkinTwoT:scale(1.4,1.4)
			SkinsTextTGroup :insert( SkinTwoT)
			if PTwoStype == 1 and PTwoButtons==2 then 
				CHoosen=display.newCircle( SkinTwoT.x, SkinTwoT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinTwoT:tap (event)
				if PTwoStype ~= 1 and PTwoButtons==2 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinTwoT.x, SkinTwoT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 1
				end
			end 
		SkinTwoT:addEventListener("tap", SkinTwoT)
			
		local SkinThreeT= display.newImage("TankP.png",2500,1000)
			SkinThreeT:scale(1.4,1.4)
			SkinsTextTGroup :insert( SkinThreeT)
		if PTwoStype == 2 and PTwoButtons==2 then 
			CHoosen=display.newCircle( SkinThreeT.x, SkinThreeT.y+200, 30 )
			SkinsTwoGroup:insert(CHoosen)
		end 
		function SkinThreeT:tap (event)
			if PTwoStype ~= 2 and PTwoButtons==2 then
				display.remove(CHoosen)
				CHoosen=display.newCircle( SkinThreeT.x, SkinThreeT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
				PTwoStype= 2
			end
		end 
		SkinThreeT:addEventListener("tap", SkinThreeT)
			
		local SkinFourT= display.newImage("TankR.png",2000,1500)
			SkinFourT:scale(1.4,1.4)
			SkinsTextTGroup :insert( SkinFourT)
			if PTwoStype == 3 and PTwoButtons==2 then 
				CHoosen=display.newCircle( SkinFourT.x, SkinFourT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinFourT:tap (event)
				if PTwoStype ~= 3 and PTwoButtons==2 then -- red tank 
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFourT.x, SkinFourT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 3
				end
			end 
			SkinFourT:addEventListener("tap", SkinFourT)
			
		local SkinFiveT= display.newImage("TankS.png",1500,1500)-- yellow
			SkinFiveT:scale(1.4,1.4)
			SkinsTextTGroup :insert( SkinFiveT)
			if PTwoStype == 4 and PTwoButtons==2 then 
				CHoosen=display.newCircle( SkinFiveT.x, SkinFiveT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinFiveT:tap (event)
				if PTwoStype ~= 4 and PTwoButtons==2 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFiveT.x, SkinFiveT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 4
				end
			end 
			SkinFiveT:addEventListener("tap", SkinFiveT)
			
		local SkinSixT= display.newImage("TankA.png",2500,1500)
			SkinSixT:scale(1.4,1.4)
			SkinsTextTGroup :insert( SkinSixT)
			if PTwoStype == 5 and PTwoButtons==2 then 
				CHoosen=display.newCircle( SkinSixT.x, SkinSixT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinSixT:tap (event)
				if PTwoStype ~= 5 and PTwoButtons==2 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinSixT.x, SkinSixT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype= 5
				end
			end 
		SkinSixT:addEventListener("tap", SkinSixT)
		
			
		SkinsTextTGroup:insert(SkinsTwoGroup)
	
	elseif PTwoSkin == 2 then 
		
		SkinsTwoGroup = display.newGroup()
		local SkinOneT= display.newImage("Ship.png",1500,1000)
			SkinOneT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinOneT)
			if PTwoStype == 0 and PTwoButtons==3 then 
				CHoosen=display.newCircle( SkinOneT.x, SkinOneT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinOneT:tap (event)
				if PTwoStype ~= 0 and PTwoButtons==3 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinOneT.x, SkinOneT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 0
				end
			end 
		SkinOneT:addEventListener("tap", SkinOneT)
		
		local SkinTwoT= display.newImage("ShipB.png",2000,1000)
			SkinTwoT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinTwoT)
			if PTwoStype == 1 and PTwoButtons==3 then 
				CHoosen=display.newCircle( SkinTwoT.x, SkinTwoT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinTwoT:tap (event)
				if PTwoStype ~= 1 and PTwoButtons==3 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinTwoT.x, SkinTwoT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 1
				end
			end 
		SkinTwoT:addEventListener("tap", SkinTwoT)
			
		local SkinThreeT= display.newImage("ShipG.png",2500,1000)
			SkinThreeT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinThreeT)
		if PTwoStype == 2 and PTwoButtons==3 then 
			CHoosen=display.newCircle( SkinThreeT.x, SkinThreeT.y+200, 30 )
			SkinsTwoGroup:insert(CHoosen)
		end 
		function SkinThreeT:tap (event)
			if PTwoStype ~= 2 and PTwoButtons==3 then
				display.remove(CHoosen)
				CHoosen=display.newCircle( SkinThreeT.x, SkinThreeT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
				PTwoStype= 2
			end
		end 
		SkinThreeT:addEventListener("tap", SkinThreeT)
			
		local SkinFourT= display.newImage("ShipP.png",2000,1500)
			SkinFourT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinFourT)
			if PTwoStype == 3 and PTwoButtons==3 then 
				CHoosen=display.newCircle( SkinFourT.x, SkinFourT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinFourT:tap (event)
				if PTwoStype ~= 3 and PTwoButtons==3 then -- red tank 
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFourT.x, SkinFourT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 3
				end
			end 
			SkinFourT:addEventListener("tap", SkinFourT)
			
		local SkinFiveT= display.newImage("ShipW.png",1500,1500)-- yellow
			SkinFiveT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinFiveT)
			if PTwoStype == 4 and PTwoButtons==3 then 
				CHoosen=display.newCircle( SkinFiveT.x, SkinFiveT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinFiveT:tap (event)
				if PTwoStype ~= 4 and PTwoButtons==3 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFiveT.x, SkinFiveT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 4
				end
			end 
			SkinFiveT:addEventListener("tap", SkinFiveT)
			
		local SkinSixT= display.newImage("ShipY.png",2500,1500)
			SkinSixT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinSixT)
			if PTwoStype == 5 and PTwoButtons==3 then 
				CHoosen=display.newCircle( SkinSixT.x, SkinSixT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinSixT:tap (event)
				if PTwoStype ~= 5 and PTwoButtons==3 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinSixT.x, SkinSixT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype= 5
				end
			end 
		SkinSixT:addEventListener("tap", SkinSixT)
		
			
		SkinsTextTGroup:insert(SkinsTwoGroup)
		
	elseif PTwoSkin == 3 then 
				SkinsTwoGroup = display.newGroup()
		local SkinOneT= display.newImage("Doge.png",1500,1000)
			SkinOneT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinOneT)
			if PTwoStype == 0 and PTwoButtons==4 then 
				CHoosen=display.newCircle( SkinOneT.x, SkinOneT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinOneT:tap (event)
				if PTwoStype ~= 0 and PTwoButtons==4 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinOneT.x, SkinOneT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 0
				end
			end 
		SkinOneT:addEventListener("tap", SkinOneT)
		
		local SkinTwoT= display.newImage("DogeB.png",2000,1000)
			SkinTwoT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinTwoT)
			if PTwoStype == 1 and PTwoButtons==4 then 
				CHoosen=display.newCircle( SkinTwoT.x, SkinTwoT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinTwoT:tap (event)
				if PTwoStype ~= 1 and PTwoButtons==4 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinTwoT.x, SkinTwoT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 1
				end
			end 
		SkinTwoT:addEventListener("tap", SkinTwoT)
			
		local SkinThreeT= display.newImage("DogeG.png",2500,1000)
			SkinThreeT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinThreeT)
		if PTwoStype == 2 and PTwoButtons==4 then 
			CHoosen=display.newCircle( SkinThreeT.x, SkinThreeT.y+200, 30 )
			SkinsTwoGroup:insert(CHoosen)
		end 
		function SkinThreeT:tap (event)
			if PTwoStype ~= 2 and PTwoButtons==4 then
				display.remove(CHoosen)
				CHoosen=display.newCircle( SkinThreeT.x, SkinThreeT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
				PTwoStype= 2
			end
		end 
		SkinThreeT:addEventListener("tap", SkinThreeT)
			
		local SkinFourT= display.newImage("DogeP.png",2000,1500)
			SkinFourT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinFourT)
			if PTwoStype == 3 and PTwoButtons==4 then 
				CHoosen=display.newCircle( SkinFourT.x, SkinFourT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinFourT:tap (event)
				if PTwoStype ~= 3 and PTwoButtons==4 then -- red tank 
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFourT.x, SkinFourT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 3
				end
			end 
			SkinFourT:addEventListener("tap", SkinFourT)
			
		local SkinFiveT= display.newImage("DogeR.png",1500,1500)-- yellow
			SkinFiveT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinFiveT)
			if PTwoStype == 4 and PTwoButtons==4 then 
				CHoosen=display.newCircle( SkinFiveT.x, SkinFiveT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinFiveT:tap (event)
				if PTwoStype ~= 4 and PTwoButtons==4 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFiveT.x, SkinFiveT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 4
				end
			end 
			SkinFiveT:addEventListener("tap", SkinFiveT)
			
		local SkinSixT= display.newImage("DogeSd.png",2500,1500)
			SkinSixT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinSixT)
			if PTwoStype == 5 and PTwoButtons==4 then 
				CHoosen=display.newCircle( SkinSixT.x, SkinSixT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinSixT:tap (event)
				if PTwoStype ~= 5 and PTwoButtons==4 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinSixT.x, SkinSixT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype= 5
				end
			end 
		SkinSixT:addEventListener("tap", SkinSixT)
		
			
		SkinsTextTGroup:insert(SkinsTwoGroup)
	
	elseif PTwoSkin == 4 then 
		
		SkinsTwoGroup = display.newGroup()
		
		local SkinOneT= display.newImage("Pep.png",1500,1000)
			SkinOneT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinOneT)
			if PTwoStype == 0 and PTwoButtons==5 then 
				CHoosen=display.newCircle( SkinOneT.x, SkinOneT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinOneT:tap (event)
				if PTwoStype ~= 0 and PTwoButtons==5 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinOneT.x, SkinOneT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 0
				end
			end 
		SkinOneT:addEventListener("tap", SkinOneT)
		
		local SkinTwoT= display.newImage("PepB.png",2000,1000)
			SkinTwoT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinTwoT)
			if PTwoStype == 1 and PTwoButtons==5 then 
				CHoosen=display.newCircle( SkinTwoT.x, SkinTwoT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinTwoT:tap (event)
				if PTwoStype ~= 1 and PTwoButtons==5 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinTwoT.x, SkinTwoT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 1
				end
			end 
		SkinTwoT:addEventListener("tap", SkinTwoT)
			
		local SkinThreeT= display.newImage("PepGre.png",2500,1000)
			SkinThreeT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinThreeT)
		if PTwoStype == 2 and PTwoButtons==5 then 
			CHoosen=display.newCircle( SkinThreeT.x, SkinThreeT.y+200, 30 )
			SkinsTwoGroup:insert(CHoosen)
		end 
		function SkinThreeT:tap (event)
			if PTwoStype ~= 2 and PTwoButtons==5 then
				display.remove(CHoosen)
				CHoosen=display.newCircle( SkinThreeT.x, SkinThreeT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
				PTwoStype= 2
			end
		end 
		SkinThreeT:addEventListener("tap", SkinThreeT)
			
		local SkinFourT= display.newImage("PepP.png",2000,1500)
			SkinFourT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinFourT)
			if PTwoStype == 3 and PTwoButtons==5 then 
				CHoosen=display.newCircle( SkinFourT.x, SkinFourT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinFourT:tap (event)
				if PTwoStype ~= 3 and PTwoButtons==5 then -- red tank 
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFourT.x, SkinFourT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 3
				end
			end 
			SkinFourT:addEventListener("tap", SkinFourT)
			
		local SkinFiveT= display.newImage("PepR.png",1500,1500)-- yellow
			SkinFiveT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinFiveT)
			if PTwoStype == 4 and PTwoButtons==5 then 
				CHoosen=display.newCircle( SkinFiveT.x, SkinFiveT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinFiveT:tap (event)
				if PTwoStype ~= 4 and PTwoButtons==5 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFiveT.x, SkinFiveT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 4
				end
			end 
			SkinFiveT:addEventListener("tap", SkinFiveT)
			
		local SkinSixT= display.newImage("PepY.png",2500,1500)
			SkinSixT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinSixT)
			if PTwoStype == 5 and PTwoButtons==5 then 
				CHoosen=display.newCircle( SkinSixT.x, SkinSixT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinSixT:tap (event)
				if PTwoStype ~= 5 and PTwoButtons==5 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinSixT.x, SkinSixT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype= 5
				end
			end 
		SkinSixT:addEventListener("tap", SkinSixT)
		
			
		SkinsTextTGroup:insert(SkinsTwoGroup)
		
	elseif PTwoSkin == 5 then
		
		SkinsTwoGroup = display.newGroup()
		
		local SkinOneT= display.newImage("Alien.png",1500,1000)
			SkinOneT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinOneT)
			if PTwoStype == 0 and PTwoButtons==6 then 
				CHoosen=display.newCircle( SkinOneT.x, SkinOneT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinOneT:tap (event)
				if PTwoStype ~= 0 and PTwoButtons==6 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinOneT.x, SkinOneT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 0
				end
			end 
		SkinOneT:addEventListener("tap", SkinOneT)
		
		local SkinTwoT= display.newImage("AlienGO.png",2000,1000)
			SkinTwoT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinTwoT)
			if PTwoStype == 1 and PTwoButtons==6 then 
				CHoosen=display.newCircle( SkinTwoT.x, SkinTwoT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinTwoT:tap (event)
				if PTwoStype ~= 1 and PTwoButtons==6 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinTwoT.x, SkinTwoT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 1
				end
			end 
		SkinTwoT:addEventListener("tap", SkinTwoT)
			
		local SkinThreeT= display.newImage("AlienO.png",2500,1000)
			SkinThreeT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinThreeT)
		if PTwoStype == 2 and PTwoButtons==6 then 
			CHoosen=display.newCircle( SkinThreeT.x, SkinThreeT.y+200, 30 )
			SkinsTwoGroup:insert(CHoosen)
		end 
		function SkinThreeT:tap (event)
			if PTwoStype ~= 2 and PTwoButtons==6 then
				display.remove(CHoosen)
				CHoosen=display.newCircle( SkinThreeT.x, SkinThreeT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
				PTwoStype= 2
			end
		end 
		SkinThreeT:addEventListener("tap", SkinThreeT)
			
		local SkinFourT= display.newImage("AlienR.png",2000,1500)
			SkinFourT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinFourT)
			if PTwoStype == 3 and PTwoButtons==6 then 
				CHoosen=display.newCircle( SkinFourT.x, SkinFourT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinFourT:tap (event)
				if PTwoStype ~= 3 and PTwoButtons==6 then -- red tank 
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFourT.x, SkinFourT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 3
				end
			end 
			SkinFourT:addEventListener("tap", SkinFourT)
			
		local SkinFiveT= display.newImage("AlienW.png",1500,1500)-- yellow
			SkinFiveT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinFiveT)
			if PTwoStype == 4 and PTwoButtons==6 then 
				CHoosen=display.newCircle( SkinFiveT.x, SkinFiveT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinFiveT:tap (event)
				if PTwoStype ~= 4 and PTwoButtons==6 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFiveT.x, SkinFiveT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 4
				end
			end 
			SkinFiveT:addEventListener("tap", SkinFiveT)
			
		local SkinSixT= display.newImage("AlienWC.png",2500,1500)
			SkinSixT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinSixT)
			if PTwoStype == 5 and PTwoButtons==6 then 
				CHoosen=display.newCircle( SkinSixT.x, SkinSixT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinSixT:tap (event)
				if PTwoStype ~= 5 and PTwoButtons==6 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinSixT.x, SkinSixT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype= 5
				end
			end 
		SkinSixT:addEventListener("tap", SkinSixT)
		
			
		SkinsTextTGroup:insert(SkinsTwoGroup)
	
	elseif PTwoSkin == 6 then
				SkinsTwoGroup = display.newGroup()
		
		local SkinOneT= display.newImage("Spider.png",1500,1000)
			SkinOneT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinOneT)
			if PTwoStype == 0 and PTwoButtons==7 then 
				CHoosen=display.newCircle( SkinOneT.x, SkinOneT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinOneT:tap (event)
				if PTwoStype ~= 0 and PTwoButtons==7 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinOneT.x, SkinOneT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 0
				end
			end 
		SkinOneT:addEventListener("tap", SkinOneT)
		
		local SkinTwoT= display.newImage("SpiderBL.png",2000,1000)
			SkinTwoT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinTwoT)
			if PTwoStype == 1 and PTwoButtons==7 then 
				CHoosen=display.newCircle( SkinTwoT.x, SkinTwoT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinTwoT:tap (event)
				if PTwoStype ~= 1 and PTwoButtons==7 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinTwoT.x, SkinTwoT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 1
				end
			end 
		SkinTwoT:addEventListener("tap", SkinTwoT)
			
		local SkinThreeT= display.newImage("SpiderY.png",2500,1000)
			SkinThreeT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinThreeT)
		if PTwoStype == 2 and PTwoButtons==7 then 
			CHoosen=display.newCircle( SkinThreeT.x, SkinThreeT.y+200, 30 )
			SkinsTwoGroup:insert(CHoosen)
		end 
		function SkinThreeT:tap (event)
			if PTwoStype ~= 2 and PTwoButtons==7 then
				display.remove(CHoosen)
				CHoosen=display.newCircle( SkinThreeT.x, SkinThreeT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
				PTwoStype= 2
			end
		end 
		SkinThreeT:addEventListener("tap", SkinThreeT)
			
		local SkinFourT= display.newImage("SpiderBW.png",2000,1500)
			SkinFourT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinFourT)
			if PTwoStype == 3 and PTwoButtons==7 then 
				CHoosen=display.newCircle( SkinFourT.x, SkinFourT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinFourT:tap (event)
				if PTwoStype ~= 3 and PTwoButtons==7 then -- red tank 
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFourT.x, SkinFourT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 3
				end
			end 
			SkinFourT:addEventListener("tap", SkinFourT)
			
		local SkinFiveT= display.newImage("SpiderG.png",1500,1500)-- yellow
			SkinFiveT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinFiveT)
			if PTwoStype == 4 and PTwoButtons==7 then 
				CHoosen=display.newCircle( SkinFiveT.x, SkinFiveT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinFiveT:tap (event)
				if PTwoStype ~= 4 and PTwoButtons==7 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFiveT.x, SkinFiveT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 4
				end
			end 
			SkinFiveT:addEventListener("tap", SkinFiveT)
			
		local SkinSixT= display.newImage("SpiderW.png",2500,1500)
			SkinSixT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinSixT)
			if PTwoStype == 5 and PTwoButtons==7 then 
				CHoosen=display.newCircle( SkinSixT.x, SkinSixT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinSixT:tap (event)
				if PTwoStype ~= 5 and PTwoButtons==7 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinSixT.x, SkinSixT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype= 5
				end
			end 
		SkinSixT:addEventListener("tap", SkinSixT)
		
			
		SkinsTextTGroup:insert(SkinsTwoGroup)
		
	
	
	
		
	elseif PTwoSkin == 7 then -- stange glitch fix
		SkinsTwoGroup= display.newGroup()
		print("The BEE")
		
		local SkinOneT= display.newImage("Bee.png",1500,1000)
			SkinOneT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinOneT)
			if PTwoStype == 0 and PTwoButtons==8 then 
				CHoosen=display.newCircle( SkinOneT.x, SkinOneT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinOneT:tap (event)
				if PTwoStype ~= 0 and PTwoButtons==8 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinOneT.x, SkinOneT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 0
				end
			end 
		SkinOneT:addEventListener("tap", SkinOneT)
		
		local SkinTwoT= display.newImage("BeeB.png",2000,1000)
			SkinTwoT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinTwoT)
			if PTwoStype == 1 and PTwoButtons==8 then 
				CHoosen=display.newCircle( SkinTwoT.x, SkinTwoT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinTwoT:tap (event)
				if PTwoStype ~= 1 and PTwoButtons==8 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinTwoT.x, SkinTwoT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 1
				end
			end 
		SkinTwoT:addEventListener("tap", SkinTwoT)
			
		local SkinThreeT= display.newImage("BeeG.png",2500,1000)
			SkinThreeT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinThreeT)
		if PTwoStype == 2 and PTwoButtons==8 then 
			CHoosen=display.newCircle( SkinThreeT.x, SkinThreeT.y+200, 30 )
			SkinsTwoGroup:insert(CHoosen)
		end 
		function SkinThreeT:tap (event)
			if PTwoStype ~= 2 and PTwoButtons==8 then
				display.remove(CHoosen)
				CHoosen=display.newCircle( SkinThreeT.x, SkinThreeT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
				PTwoStype= 2
			end
		end 
		SkinThreeT:addEventListener("tap", SkinThreeT)
			
		local SkinFourT= display.newImage("BeeP.png",2000,1500)
			SkinFourT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinFourT)
			if PTwoStype == 3 and PTwoButtons==8 then 
				CHoosen=display.newCircle( SkinFourT.x, SkinFourT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinFourT:tap (event)
				if PTwoStype ~= 3 and PTwoButtons==8 then -- red tank 
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFourT.x, SkinFourT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 3
				end
			end 
			SkinFourT:addEventListener("tap", SkinFourT)
			
		local SkinFiveT= display.newImage("BeeR.png",1500,1500)-- yellow
			SkinFiveT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinFiveT)
			if PTwoStype == 4 and PTwoButtons==8 then 
				CHoosen=display.newCircle( SkinFiveT.x, SkinFiveT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinFiveT:tap (event)
				if PTwoStype ~= 4 and PTwoButtons==8 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinFiveT.x, SkinFiveT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype = 4
				end
			end 
			SkinFiveT:addEventListener("tap", SkinFiveT)
			
		local SkinSixT= display.newImage("BeeW.png",2500,1500)
			SkinSixT:scale(1.8,1.8)
			SkinsTextTGroup :insert( SkinSixT)
			if PTwoStype == 5 and PTwoButtons==8 then 
				CHoosen=display.newCircle( SkinSixT.x, SkinSixT.y+200, 30 )
				SkinsTwoGroup:insert(CHoosen)
			end 
			function SkinSixT:tap (event)
				if PTwoStype ~= 5 and PTwoButtons==8 then
					display.remove(CHoosen)
					CHoosen=display.newCircle( SkinSixT.x, SkinSixT.y+200, 30 )
					SkinsTwoGroup:insert(CHoosen)
					PTwoStype= 5
				end
			end 
		SkinSixT:addEventListener("tap", SkinSixT)
		
		SkinsTextTGroup:insert(SkinsTwoGroup)
end 

	function ReturnTeXtT:tap (event)
		display.remove(SkinsTextTGroup)
		Menu.alpha= 1
		PTwoButtons=0
	end 
ReturnTeXtT:addEventListener("tap", ReturnTeXtT)

end 

SkinsTCall()