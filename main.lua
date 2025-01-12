local widget = require( "widget" )
local Logo1=display.newImage("Logo.png",2000,1200)
	Logo1.alpha=0
	Logo1:scale(4,4)
	transition.to(Logo1,{time=2000,alpha=1})
	
function LogoRemove (event)
	transition.to(Logo1,{time=2000,alpha=0})
end 

function MenuLoad (event)
	require("Menu")	
end 

timer.performWithDelay(2300,LogoRemove)
timer.performWithDelay(4500,MenuLoad)

 


