local spriteSheet1=require("game")
local Sheetpull= spriteSheet1:getSheet()
local sheet1 = graphics.newImageSheet("game.png",Sheetpull)

local Ghost_Visible= true
local Ghost_horizontal_movement= 0
local Ghost_Big_Small= false




local Ghost_Flying_anim= {
		{
		name="Ghost Fly",frames={22,23,24,25,26,27,28,29,30,31,32},
		sheet=sheet1,
		count=1,
		time=1500,
		loop=0
	
		}
		
	}
	
local Ghost_Flying_animTwo= {
		{
		name="Ghost Fly Two",frames={32,31,30,29,28,27,26,25,24,23,22},
		sheet=sheet1,
		count=1,
		time=1500,
		loop=0
	
		}
		
	}
	
local Ghost=display.newSprite(sheet1,Ghost_Flying_anim)
	local xSpawn_Ghost = math.random(1,3)
		if xSpawn_Ghost== 1 then
			Ghost.x= 900
		elseif xSpawn_Ghost== 2 then
			Ghost.x= 2000
		elseif xSpawn_Ghost== 3 then 
			Ghost.x= 2500
		end 
	Ghost.y= 2000
	--transition.to(Ghost,{time=2000, xScale=2 , yScale=2})
	Ghost:play()

function Ghost_flash (event)
	if Ghost_Visible == true then
			--Ghost.alpha=0
			transition.to( Ghost, { time=200,alpha=(0)} )
			Ghost_Visible= false
	elseif Ghost_Visible == false then
		--Ghost.alpha= 1
		transition.to( Ghost, { time=200,alpha=(1)} )
		Ghost_Visible= true
	end
end

function Ghost_movement (event)
	function Ghost_V_movement (event)
		transition.to( Ghost, { time=7000,y=(Ghost.y-4000),0} )
	end

	
	function Ghost_H_movement (event)
		if Ghost_horizontal_movement== 0 then 
			transition.to( Ghost, { time=2000,x=(Ghost.x-500),} )
			transition.to( Ghost, { time=2000,rotation=(Ghost.rotation-60),} )
				Ghost_horizontal_movement= 1
		elseif Ghost_horizontal_movement== 1 then
			transition.to( Ghost, { time=2000,x=(Ghost.x+500),} )
			transition.to( Ghost, { time=2000,rotation=(Ghost.rotation+60),} )
				Ghost_horizontal_movement= 0
		end
		
	end 
			
	 Ghost_H_move_timer= timer.performWithDelay(400,Ghost_H_movement,0)
	
	Ghost_V_movement()

	
end 

local Ghost_viz_timer= timer.performWithDelay(400,Ghost_flash,0)

	function Ghost_return_to_start (event)
		if (Ghost.y < -10) then
				transition.cancel(Ghost)
				Ghost.y= 2000
				transition.to( Ghost, { time=7000,y=(Ghost.y-4000),0} )
				if Ghost_Big_Small== false then 
					transition.to(Ghost,{time=2000, xScale=2 , yScale=2})
					Ghost_Big_Small= true
				elseif Ghost_Big_Small== true then 
					transition.to(Ghost,{time=2000, xScale=.7 , yScale=.7})
					Ghost_Big_Small= false
				end
		end 
	end 
local Ghost_return_timer= timer.performWithDelay(50,Ghost_return_to_start,0)

Ghost_movement()

function cancel_Ghost (event)
	timer.cancel(Ghost_return_timer)
	timer.cancel(Ghost_viz_timer)
	timer.cancel(Ghost_H_move_timer)  
	display.remove(Ghost)
end 

timer.performWithDelay(20000,cancel_Ghost)

