RulesG = display.newGroup()
RulesVisbleButtons = display.newGroup()
button_on= false 

local Background_Rec=display.newRect( 600, 200, 7600, 500)
	Background_Rec:setFillColor( 0,0,0 )
	RulesVisbleButtons:insert( Background_Rec)

local HowTwoPlay= display.newText("How to Play",600,200,"",200)
	RulesVisbleButtons:insert( HowTwoPlay)
	
local PlayerOneTextTitle=display.newText("Player One Controls:",600,600,"",95)
	RulesG:insert( PlayerOneTextTitle)

local PlayerOneRightMovement= display.newText("Press right arrow to move right.",1000,800,"",85)
	RulesG:insert( PlayerOneRightMovement)

local PlayerOneLeftMovement= display.newText("Press left arrow to move left.",950,1000,"",85)
	RulesG:insert( PlayerOneLeftMovement)

local PlayerOneSHOOT= display.newText("Press spacebar to shoot.",880,1200,"",85)
	RulesG:insert( PlayerOneSHOOT)
	
local PlayerOneChangeAMOTYPe= display.newText("Press . to change ammo type.",970,1400,"",85)
	RulesG:insert( PlayerOneChangeAMOTYPe)
	
local PlayerShieldUP= display.newText("Press up arrow to activate sheild.",1030,1600,"",85)
	RulesG:insert( PlayerShieldUP)
	
local PlayerShieldDown= display.newText("Press down arrow to deactivate sheild.",1125,1800,"",85)
	RulesG:insert( PlayerShieldDown)
	
--------------------------------
local PlayerTwoTextTitle=display.newText("Player Two Controls:",2500,600,"",95)
	RulesG:insert( PlayerTwoTextTitle)

local PlayerTwoRightMovement= display.newText("Press D key to move right.",2900,800,"",85)
	RulesG:insert( PlayerTwoRightMovement)

local PlayerTwoLeftMovement= display.newText("Press A key to move left.",2880,1000,"",85)
	RulesG:insert( PlayerTwoLeftMovement)

local PlayerTwoSHOOT= display.newText("Press F to shoot.",2735,1200,"",85)
	RulesG:insert( PlayerTwoSHOOT)
	
local PlayerTwoChangeAMOTYPe= display.newText("Press R to change ammo type.",2990,1400,"",85)
	RulesG:insert( PlayerTwoChangeAMOTYPe)
	
local PlayerTwoShieldUP= display.newText("Press W key to activate shield.",2980,1600,"",85)
	RulesG:insert( PlayerTwoShieldUP)
	
local PlayerTwoShieldDown= display.newText("Press down arrow to deactivate shield.",3135,1800,"",85)
	RulesG:insert( PlayerTwoShieldDown)

local Rulez= display.newText("Rules",300,2000,"",95)
	RulesG:insert( Rulez)
	
local Objective=display.newText("The objective of the game is to knock out your opponent 3 times",1495,2200,"",85)
	RulesG:insert( Objective)
	
local KnockOuts=display.newText("You Knock an opponent out by hitting them with a ball",1300,2400,"",85)
	RulesG:insert( KnockOuts)

local SpecailAbility=display.newText("Every Character has a unique ability that has a single shot",1393,2600,"",85)
	RulesG:insert( SpecailAbility)
	
local SpecailAbilityContinued=display.newText("You can switch to the special by hitting '.' ",1075,2800,"",85)
	RulesG:insert( SpecailAbilityContinued)

local How_To_exit=display.newText(" While in game you can Hit the 'esc' button to close the game",1430,3000,"",85)
	RulesG:insert( How_To_exit)


---------------------------------- Up and down buttons

local Up_Button= display.newImage("Up_Clicker.png",3700,300)
	Up_Button:scale(3,3)
	RulesVisbleButtons:insert( Up_Button)
	
local Down_Button= display.newImage("Up_Clicker.png",3700,600)
	Down_Button:scale(3,3)
	Down_Button.rotation= -180
	RulesVisbleButtons:insert( Down_Button)
	
	function Up_Button: touch (event)
		if ( event.phase == "began" ) and button_on==true then
			transition.to(RulesG,{time=10000, y=RulesG.y-7000})
			
		elseif ( event.phase == "ended" ) then
			transition.cancel(RulesG)
		end

	end 
	
	
	
	Up_Button:addEventListener("touch", Up_Button)
	
	function Down_Button: touch (event)
		if ( event.phase == "began" ) and button_on==true then
			transition.to(RulesG,{time=10000, y=RulesG.y+7000})
			
		elseif ( event.phase == "ended" ) then
			transition.cancel(RulesG)
		end
		
	end 
	
	Down_Button:addEventListener("touch", Down_Button)

--------------------------------
	
local ReturnMu= display.newText("Return",3350,2200,"",200)
	RulesVisbleButtons:insert( ReturnMu)
	
function ReturnMu: tap (event)
	if button_on==true then 
		RulesG.alpha= 0
		RulesVisbleButtons.alpha= 0
		Menu.x = Menu.x-100000
		Menu.alpha= 1
		button_on=false 
	end 
end 
function button_activiate (event)
 button_on=true
end 
RulesG.alpha = 0
transition.to(RulesG,{time=2000, alpha= 1})
timer.performWithDelay(2000,button_activiate)
ReturnMu:addEventListener("tap", ReturnMu)