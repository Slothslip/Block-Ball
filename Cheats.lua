CheatsGroup = display.newGroup()
Firstdigitsgroup = display.newGroup()
Seconddigitsgroup = display.newGroup()
Thirddigitsgroup = display.newGroup()
InputHoldersgroup = display.newGroup()
-- Variable controls
 local digit_visible=1
 local current_number=1
 D1= nil -- first digit saved number
 D2= nil -- Second digit saved number
 D3= nil --Third digit saved number
 D4= nil --Fourth digit saved number
---------------------------------------------

--Cheats enabled
	BigBallz= false
	Inverted= false
	Spookymode= false
	MoreAmmomode= false

--

local DigitOne=display.newImage("DigitHolder.png",1400,420)
	InputHoldersgroup:insert(DigitOne)
		function Digit_holder_blink (event)
			if current_number== 1 then 
				if digit_visible== 1 and current_number==1 then 
					DigitOne.alpha= 0
					digit_visible= 0
				elseif digit_visible == 0 and current_number==1 then
					DigitOne.alpha= 1
					digit_visible= 1
				end
			end

		end
	local FirstdigitFlash=timer.performWithDelay(100,Digit_holder_blink,0)
local DigitTwo=display.newImage("DigitHolder.png",1700,420)
	InputHoldersgroup:insert(DigitTwo)
		function Digit_holder_blink2 (event)
			if current_number== 2 then 
				if digit_visible== 1 then 
					DigitTwo.alpha= 0
					digit_visible= 0
				elseif digit_visible == 0 then
					DigitTwo.alpha= 1
					digit_visible= 1
				end
			end

		end
	local SecondDigitFlash=timer.performWithDelay(100,Digit_holder_blink2,0)
local DigitThree=display.newImage("DigitHolder.png",2000,420)
	InputHoldersgroup:insert(DigitThree)
	function Digit_holder_blink3 (event)
		if current_number== 3 then 
			if digit_visible== 1 then 
				DigitThree.alpha= 0
				digit_visible= 0
			elseif digit_visible == 0 then
				DigitThree.alpha= 1
				digit_visible= 1
			end
		end

	end
	local ThirddigitFlash=timer.performWithDelay(100,Digit_holder_blink3,0)
local DigitFour=display.newImage("DigitHolder.png",2300,420)
	InputHoldersgroup:insert(DigitFour)
		function Digit_holder_blink4 (event)
		if current_number== 4 then 
			if digit_visible== 1 then 
				DigitFour.alpha= 0
				digit_visible= 0
			elseif digit_visible == 0 then
				DigitFour.alpha= 1
				digit_visible= 1
			end
		end

	end
	local FourthdigitFlash=timer.performWithDelay(100,Digit_holder_blink4,0)
local InputBoxoutline=display.newImage("InputBox.png",1900,400)
	CheatsGroup:insert(InputBoxoutline)

--adjusment for InputHoldersgroup
	InputHoldersgroup.x= InputHoldersgroup.x+20
--end 
	
-- digits 
local ChMe_button0=display.newImage("Button_0.png",1900,2000)
	CheatsGroup:insert(ChMe_button0)
		function  ChMe_button0:tap (event) -- handles touch event for first digit 
		ChMe_button0:setFillColor(.4,0,0)
		function InputZero (event) --sets digit one
				if current_number==1 then
					current_number=2
					display.remove(DigitOne)
					timer.cancel(FirstdigitFlash)
					DigitOne= display.newImage("Digit_0.png",1400,410)
					CheatsGroup:insert(DigitOne)
					DigitOne.xScale=2
					DigitOne.yScale= 2
					D1=0
				elseif current_number==2 then
					current_number=3
					display.remove(DigitTwo)
					timer.cancel(SecondDigitFlash)
					DigitTwo= display.newImage("Digit_0.png",1700,410)
					CheatsGroup:insert(DigitTwo)
					DigitTwo.xScale=2
					DigitTwo.yScale= 2
					D2=0
				elseif current_number==3 then
					current_number=4
					display.remove(DigitThree)
					timer.cancel(ThirddigitFlash)
					DigitThree= display.newImage("Digit_0.png",2000,410)
					CheatsGroup:insert(DigitThree)
					DigitThree.xScale=2
					DigitThree.yScale= 2
					D3=0
				elseif current_number==4 then
					current_number=5
					display.remove(DigitFour)
					timer.cancel(FourthdigitFlash)
					DigitFour= display.newImage("Digit_0.png",2300,410)
					CheatsGroup:insert(DigitFour)
					DigitFour.xScale=2
					DigitFour.yScale= 2
					D4=0
				end
			end 
			InputZero()
		
			function ChMe_button0Return (event)
				ChMe_button0:setFillColor(1,1,1)
			end
		local ChMe_button0Returntimer=timer.performWithDelay(200,ChMe_button0Return)
	end
	ChMe_button0:addEventListener("tap",ChMe_button0)

local ChMe_button1=display.newImage("Button_1.png",700,500)
	Firstdigitsgroup:insert(ChMe_button1)
	function  ChMe_button1:tap (event) -- handles touch event for first digit 
		ChMe_button1:setFillColor(.4,0,0)
			function InputOne (event) --sets digit one
				if current_number==1 then
					current_number=2
					D1=1
					print(D1)
					display.remove(DigitOne)
					timer.cancel(FirstdigitFlash)
					DigitOne= display.newImage("Digit_1.png",1400,420)
					CheatsGroup:insert(DigitOne)
					DigitOne.xScale=2
					DigitOne.yScale= 2
				elseif current_number==2 then
					current_number=3
					D2=1
					display.remove(DigitTwo)
					timer.cancel(SecondDigitFlash)
					DigitTwo= display.newImage("Digit_1.png",1700,420)
					CheatsGroup:insert(DigitTwo)
					DigitTwo.xScale=2
					DigitTwo.yScale= 2
				elseif current_number==3 then
					current_number=4
					D3=1
					display.remove(DigitThree)
					timer.cancel(ThirddigitFlash)
					DigitThree= display.newImage("Digit_1.png",2000,420)
					CheatsGroup:insert(DigitThree)
					DigitThree.xScale=2
					DigitThree.yScale= 2
				elseif current_number==4 then
					current_number=5
					D4=1
					display.remove(DigitFour)
					timer.cancel(FourthdigitFlash)
					DigitFour= display.newImage("Digit_1.png",2300,420)
					CheatsGroup:insert(DigitFour)
					DigitFour.xScale=2
					DigitFour.yScale= 2
				end
			end 
			InputOne()
			function ChMe_button1Return (event)
				ChMe_button1:setFillColor(1,1,1)
			end
		local ChMe_button1Returntimer=timer.performWithDelay(200,ChMe_button1Return)
	end
	ChMe_button1:addEventListener("tap",ChMe_button1)

local ChMe_button2=display.newImage("Button_2.png",1300,500)
	Firstdigitsgroup:insert(ChMe_button2)
	function  ChMe_button2:tap (event) -- handles touch event for first digit 
		ChMe_button2:setFillColor(.4,0,0)
			function InputTwo (event) --sets digit one
				if current_number==1 then
					current_number=2
					D1=2
					display.remove(DigitOne)
					timer.cancel(FirstdigitFlash)
					DigitOne= display.newImage("Digit_2.png",1400,420)
					CheatsGroup:insert(DigitOne)
					DigitOne.xScale=2
					DigitOne.yScale= 2
				elseif current_number==2 then
					current_number=3
					D2=2
					display.remove(DigitTwo)
					timer.cancel(SecondDigitFlash)
					DigitTwo= display.newImage("Digit_2.png",1700,420)
					CheatsGroup:insert(DigitTwo)
					DigitTwo.xScale=2
					DigitTwo.yScale= 2
				elseif current_number==3 then
					current_number=4
					D3=2
					display.remove(DigitThree)
					timer.cancel(ThirddigitFlash)
					DigitThree= display.newImage("Digit_2.png",2000,420)
					CheatsGroup:insert(DigitThree)
					DigitThree.xScale=2
					DigitThree.yScale= 2
				elseif current_number==4 then
					current_number=5
					D4=2
					display.remove(DigitFour)
					timer.cancel(FourthdigitFlash)
					DigitFour= display.newImage("Digit_2.png",2300,420)
					CheatsGroup:insert(DigitFour)
					DigitFour.xScale=2
					DigitFour.yScale= 2
				end
			end 
			InputTwo()
		
		function ChMe_button2Return (event)
				ChMe_button2:setFillColor(1,1,1)
		end
		local ChMe_button2Returntimer=timer.performWithDelay(200,ChMe_button2Return)
	end
	ChMe_button2:addEventListener("tap",ChMe_button2)

local ChMe_button3=display.newImage("Button_3.png",1900,500)
	Firstdigitsgroup:insert(ChMe_button3)
	function  ChMe_button3:tap (event) -- handles touch event for first digit 
		ChMe_button3:setFillColor(.4,0,0)
			function InputThree (event) --sets digit one
				if current_number==1 then
					current_number=2
					display.remove(DigitOne)
					timer.cancel(FirstdigitFlash)
					DigitOne= display.newImage("Digit_3.png",1400,420)
					CheatsGroup:insert(DigitOne)
					DigitOne.xScale=2
					DigitOne.yScale= 2
					D1=3
				elseif current_number==2 then
					current_number=3
					display.remove(DigitTwo)
					timer.cancel(SecondDigitFlash)
					DigitTwo= display.newImage("Digit_3.png",1700,420)
					CheatsGroup:insert(DigitTwo)
					DigitTwo.xScale=2
					DigitTwo.yScale= 2
					D2=3
				elseif current_number==3 then
					current_number=4
					display.remove(DigitThree)
					timer.cancel(ThirddigitFlash)
					DigitThree= display.newImage("Digit_3.png",2000,420)
					CheatsGroup:insert(DigitThree)
					DigitThree.xScale=2
					DigitThree.yScale= 2
					D3=3
				elseif current_number==4 then
					current_number=5
					display.remove(DigitFour)
					timer.cancel(FourthdigitFlash)
					DigitFour= display.newImage("Digit_3.png",2300,420)
					CheatsGroup:insert(DigitFour)
					DigitFour.xScale=2
					DigitFour.yScale= 2
					D4=3
				end
			end 
			InputThree()
		
		function ChMe_button3Return (event)
			ChMe_button3:setFillColor(1,1,1)
		end
		local ChMe_button3Returntimer=timer.performWithDelay(200,ChMe_button3Return)
	end
	ChMe_button3:addEventListener("tap",ChMe_button3)


local ChMe_button4=display.newImage("Button_4.png",700,800)
	Seconddigitsgroup:insert(ChMe_button4)
	function  ChMe_button4:tap (event) -- handles touch event for first digit 
		ChMe_button4:setFillColor(.4,0,0)
			function InputFour (event) --sets digit one
				if current_number==1 then
					current_number=2
					display.remove(DigitOne)
					timer.cancel(FirstdigitFlash)
					DigitOne= display.newImage("Digit_4.png",1400,420)
					CheatsGroup:insert(DigitOne)
					DigitOne.xScale=2
					DigitOne.yScale= 2
					D1=4
				elseif current_number==2 then
					current_number=3
					display.remove(DigitTwo)
					timer.cancel(SecondDigitFlash)
					DigitTwo= display.newImage("Digit_4.png",1700,420)
					CheatsGroup:insert(DigitTwo)
					DigitTwo.xScale=2
					DigitTwo.yScale= 2
					D2=4
				elseif current_number==3 then
					current_number=4
					display.remove(DigitThree)
					timer.cancel(ThirddigitFlash)
					DigitThree= display.newImage("Digit_4.png",2000,420)
					CheatsGroup:insert(DigitThree)
					DigitThree.xScale=2
					DigitThree.yScale= 2
					D3=4
				elseif current_number==4 then
					current_number=5
					display.remove(DigitFour)
					timer.cancel(FourthdigitFlash)
					DigitFour= display.newImage("Digit_4.png",2300,420)
					CheatsGroup:insert(DigitFour)
					DigitFour.xScale=2
					DigitFour.yScale= 2
					D4=4
				end
			end 
			InputFour ()
		
			function ChMe_button4Return (event)
				ChMe_button4:setFillColor(1,1,1)
			end
		local ChMe_button4Returntimer=timer.performWithDelay(200,ChMe_button4Return)
	end
	ChMe_button4:addEventListener("tap",ChMe_button4)

local ChMe_button5=display.newImage("Button_5.png",1300,800)
	Seconddigitsgroup:insert(ChMe_button5)
		function  ChMe_button5:tap (event) -- handles touch event for first digit 
		ChMe_button5:setFillColor(.4,0,0)
			function InputFive (event) --sets digit one
				if current_number==1 then
					current_number=2
					display.remove(DigitOne)
					timer.cancel(FirstdigitFlash)
					DigitOne= display.newImage("Digit_5.png",1400,420)
					CheatsGroup:insert(DigitOne)
					DigitOne.xScale=2
					DigitOne.yScale= 2
					D1=5
				elseif current_number==2 then
					current_number=3
					display.remove(DigitTwo)
					timer.cancel(SecondDigitFlash)
					DigitTwo= display.newImage("Digit_5.png",1700,420)
					CheatsGroup:insert(DigitTwo)
					DigitTwo.xScale=2
					DigitTwo.yScale= 2
					D2=5
				elseif current_number==3 then
					current_number=4
					display.remove(DigitThree)
					timer.cancel(ThirddigitFlash)
					DigitThree= display.newImage("Digit_5.png",2000,420)
					CheatsGroup:insert(DigitThree)
					DigitThree.xScale=2
					DigitThree.yScale= 2
					D3=5
				elseif current_number==4 then
					current_number=5
					display.remove(DigitFour)
					timer.cancel(FourthdigitFlash)
					DigitThree= display.newImage("Digit_5.png",2300,420)
					CheatsGroup:insert(DigitThree)
					DigitThree.xScale=2
					DigitThree.yScale= 2
					D4=5
				end
			end 
			InputFive()
		
			function ChMe_button5Return (event)
				ChMe_button5:setFillColor(1,1,1)
			end
		local ChMe_button5Returntimer=timer.performWithDelay(200,ChMe_button5Return)
	end
	ChMe_button5:addEventListener("tap",ChMe_button5)

local ChMe_button6=display.newImage("Button_6.png",1900,800)
	Seconddigitsgroup:insert(ChMe_button6)
	function  ChMe_button6:tap (event) -- handles touch event for first digit 
		ChMe_button6:setFillColor(.4,0,0)
			function InputSix (event) --sets digit one
				if current_number==1 then
					current_number=2
					display.remove(DigitOne)
					timer.cancel(FirstdigitFlash)
					DigitOne= display.newImage("Digit_6.png",1400,420)
					CheatsGroup:insert(DigitOne)
					DigitOne.xScale=2
					DigitOne.yScale= 2
					D1=6
				elseif current_number==2 then
					current_number=3
					display.remove(DigitTwo)
					timer.cancel(SecondDigitFlash)
					DigitTwo= display.newImage("Digit_6.png",1700,420)
					CheatsGroup:insert(DigitTwo)
					DigitTwo.xScale=2
					DigitTwo.yScale= 2
					D2=6
				elseif current_number==3 then
					current_number=4
					display.remove(DigitThree)
					timer.cancel(ThirddigitFlash)
					DigitThree= display.newImage("Digit_6.png",2000,420)
					CheatsGroup:insert(DigitThree)
					DigitThree.xScale=2
					DigitThree.yScale= 2
					D3=6
				elseif current_number==4 then
					current_number=5
					display.remove(DigitFour)
					timer.cancel(FourthdigitFlash)
					DigitFour= display.newImage("Digit_6.png",2300,420)
					CheatsGroup:insert(DigitFour)
					DigitFour.xScale=2
					DigitFour.yScale= 2
					D4=6
				end
			end 
			InputSix()
		
		function ChMe_button6Return (event)
			ChMe_button6:setFillColor(1,1,1)
		end
		local ChMe_button6Returntimer=timer.performWithDelay(200,ChMe_button6Return)
	end
	ChMe_button6:addEventListener("tap",ChMe_button6)

local ChMe_button7=display.newImage("Button_7.png",700,1100)
	Thirddigitsgroup:insert(ChMe_button7)
		function  ChMe_button7:tap (event) -- handles touch event for first digit 
		ChMe_button7:setFillColor(.4,0,0)
		function InputSeven (event) --sets digit one
				if current_number==1 then
					current_number=2
					display.remove(DigitOne)
					timer.cancel(FirstdigitFlash)
					DigitOne= display.newImage("Digit_7.png",1400,420)
					CheatsGroup:insert(DigitOne)
					DigitOne.xScale=2
					DigitOne.yScale= 2
					D1=7
				elseif current_number==2 then
					current_number=3
					display.remove(DigitTwo)
					timer.cancel(SecondDigitFlash)
					DigitTwo= display.newImage("Digit_7.png",1700,420)
					CheatsGroup:insert(DigitTwo)
					DigitTwo.xScale=2
					DigitTwo.yScale= 2
					D2=7
				elseif current_number==3 then
					current_number=4
					display.remove(DigitThree)
					timer.cancel(ThirddigitFlash)
					DigitThree= display.newImage("Digit_7.png",2000,420)
					CheatsGroup:insert(DigitThree)
					DigitThree.xScale=2
					DigitThree.yScale= 2
					D3=7
				elseif current_number==4 then
					current_number=5
					display.remove(DigitFour)
					timer.cancel(FourthdigitFlash)
					DigitFour= display.newImage("Digit_7.png",2300,420)
					CheatsGroup:insert(DigitFour)
					DigitFour.xScale=2
					DigitFour.yScale= 2
					D4=7
				end
			end 
			InputSeven()
			
			function ChMe_button7Return (event)
				ChMe_button7:setFillColor(1,1,1)
			end
		local ChMe_button7Returntimer=timer.performWithDelay(200,ChMe_button7Return)
	end
	ChMe_button7:addEventListener("tap",ChMe_button7)

local ChMe_button8=display.newImage("Button_8.png",1300,1100)
	Thirddigitsgroup:insert(ChMe_button8)
		function  ChMe_button8:tap (event) -- handles touch event for first digit 
		ChMe_button8:setFillColor(.4,0,0)
			function InputEight (event) --sets digit one
				if current_number==1 then
					current_number=2
					display.remove(DigitOne)
					timer.cancel(FirstdigitFlash)
					DigitOne= display.newImage("Digit_8.png",1400,420)
					CheatsGroup:insert(DigitOne)
					DigitOne.xScale=2
					DigitOne.yScale= 2
					D1=8
				elseif current_number==2 then
					current_number=3
					display.remove(DigitTwo)
					timer.cancel(SecondDigitFlash)
					DigitTwo= display.newImage("Digit_8.png",1700,420)
					CheatsGroup:insert(DigitTwo)
					DigitTwo.xScale=2
					DigitTwo.yScale= 2
					D2=8
				elseif current_number==3 then
					current_number=4
					display.remove(DigitThree)
					timer.cancel(ThirddigitFlash)
					DigitThree= display.newImage("Digit_8.png",2000,420)
					CheatsGroup:insert(DigitThree)
					DigitThree.xScale=2
					DigitThree.yScale= 2
					D3=8
				elseif current_number==4 then
					current_number=5
					display.remove(DigitFour)
					timer.cancel(FourthdigitFlash)
					DigitFour= display.newImage("Digit_8.png",2300,420)
					CheatsGroup:insert(DigitFour)
					DigitFour.xScale=2
					DigitFour.yScale= 2
					D4=8
				end
			end 
			InputEight()
			function ChMe_button8Return (event)
				ChMe_button8:setFillColor(1,1,1)
			end
		local ChMe_button8Returntimer=timer.performWithDelay(200,ChMe_button8Return)
	end
	ChMe_button8:addEventListener("tap",ChMe_button8)

local ChMe_button9=display.newImage("Button_9.png",1900,1100)
	Thirddigitsgroup:insert(ChMe_button9)
	function  ChMe_button9:tap (event) -- handles touch event for first digit 
		ChMe_button9:setFillColor(.4,0,0)
			function InputNine (event) --sets digit one
				if current_number==1 then
					current_number=2
					display.remove(DigitOne)
					timer.cancel(FirstdigitFlash)
					DigitOne= display.newImage("Digit_9.png",1400,420)
					CheatsGroup:insert(DigitOne)
					DigitOne.xScale=2
					DigitOne.yScale= 2
					D1=9
				elseif current_number==2 then
					current_number=3
					display.remove(DigitTwo)
					timer.cancel(SecondDigitFlash)
					DigitTwo= display.newImage("Digit_9.png",1700,420)
					CheatsGroup:insert(DigitTwo)
					DigitTwo.xScale=2
					DigitTwo.yScale= 2
					D2=9
				elseif current_number==3 then
					current_number=4
					display.remove(DigitThree)
					timer.cancel(ThirddigitFlash)
					DigitThree= display.newImage("Digit_9.png",2000,420)
					CheatsGroup:insert(DigitThree)
					DigitThree.xScale=2
					DigitThree.yScale= 2
					D3=9
				elseif current_number==4 then
					current_number=5
					display.remove(DigitFour)
					timer.cancel(FourthdigitFlash)
					DigitFour= display.newImage("Digit_9.png",2300,420)
					CheatsGroup:insert(DigitFour)
					DigitFour.xScale=2
					DigitFour.yScale= 2
					D4=9
				end
			end 
			InputNine()
		
			function ChMe_button9Return (event)
				ChMe_button9:setFillColor(1,1,1)
			end
		local ChMe_button9Returntimer=timer.performWithDelay(200,ChMe_button9Return)
	end
	ChMe_button9:addEventListener("tap",ChMe_button9)
	
local Enter_button=display.newImage("Enter_button.png",1900+600,2000)
	CheatsGroup:insert(Enter_button)
	function  Enter_button:tap (event)
		 Enter_button:setFillColor(.4,0,0)
		 
		 function CodeAccepted (event)
			if D1== 9 and D2==9 and D3==9 and D4== 9 then
				if BigBallz== false then 
					BigBallz= true
					local Big_Ball_modeText= display.newText("Big Ball Mode Activatd",1900,100,'',90)
						Big_Ball_modeText:setFillColor(0,1,0)
						transition.to(Big_Ball_modeText,{time=700,alpha=0})
				elseif BigBallz== true then
					BigBallz= false
					local Big_Ball_modeText= display.newText("Big Ball Mode Deactivatd",1900,100,'',90)
						Big_Ball_modeText:setFillColor(1,0,0)
						transition.to(Big_Ball_modeText,{time=900,alpha=0})
				end
			elseif D1== 0 and D2==0 and D3==0 and D4== 0 then 
				if Inverted == false then 
					Inverted= true
					local Inverted_CharacterText= display.newText("Inverted Character Mode Activatd",1900,100,'',90)
						Inverted_CharacterText:setFillColor(0,1,0)
						transition.to(Inverted_CharacterText,{time=900,alpha=0})
				elseif Inverted == true then
					Inverted= false 
					local Inverted_CharacterText= display.newText("Inverted Character Mode Deactivatd",1900,100,'',90)
						Inverted_CharacterText:setFillColor(1,0,0)
						transition.to(Inverted_CharacterText,{time=900,alpha=0})
				end
			elseif D1== 1 and D2==0 and D3==3 and D4== 1 then
				if Spookymode == false then 
					Spookymode= true
					local Inverted_CharacterText= display.newText("Spooky Mode Mode Activatd",1900,100,'',90)
						Inverted_CharacterText:setFillColor(0,1,0)
						transition.to(Inverted_CharacterText,{time=900,alpha=0})
				elseif Spookymode == true then
					Spookymode= false 
					local Inverted_CharacterText= display.newText("Spooky Mode Deactivatd",1900,100,'',90)
						Inverted_CharacterText:setFillColor(1,0,0)
						transition.to(Inverted_CharacterText,{time=900,alpha=0})
				end
				
			elseif D1== 3 and D2==4 and D3==6 and D4== 2 then
				if Spookymode == false then 
					MoreAmmomode= true
					local Inverted_CharacterText= display.newText(" More Balls Activatd",1900,100,'',90)
						Inverted_CharacterText:setFillColor(0,1,0)
						transition.to(Inverted_CharacterText,{time=900,alpha=0})
				elseif Spookymode == true then
					MoreAmmomode= true 
					local Inverted_CharacterText= display.newText(" More Balls  Deactivatd",1900,100,'',90)
						Inverted_CharacterText:setFillColor(1,0,0)
						transition.to(Inverted_CharacterText,{time=900,alpha=0})
				end
			end
			
		 end
		 CodeAccepted()
		 function Enter_buttonReturn (event)
			Enter_button:setFillColor(1,1,1)
		 end
		local Enter_buttontimer=timer.performWithDelay(200,Enter_buttonReturn)
	end 
Enter_button:addEventListener("tap",Enter_button)

local Return_button=display.newImage("Return_button.png",1900-600,2000)
	CheatsGroup:insert(Return_button)
		function  Return_button:tap (event)
			Return_button:setFillColor(.4,0,0)
			if current_number==2 then
				current_number= 1
				display.remove(DigitOne)
				DigitOne= display.newImage("DigitHolder.png",1400,420)
				InputHoldersgroup:insert(DigitOne)
				if digit_visible==0 then
					DigitTwo.alpha= 1
				end
					FirstdigitFlash=timer.performWithDelay(100,Digit_holder_blink,0)
			elseif current_number==3 then 
				current_number= 2
				display.remove(DigitTwo)
				DigitTwo=nil
				DigitTwo= display.newImage("DigitHolder.png",1700,420)
				InputHoldersgroup:insert(DigitTwo)
				if digit_visible==0 then
					DigitThree.alpha= 1
				end
					SecondDigitFlash=timer.performWithDelay(100,Digit_holder_blink2,0)
			elseif current_number==4 then
				current_number= 3
				display.remove(DigitThree)
				DigitThree=nil
				DigitThree= display.newImage("DigitHolder.png",2000,420)
				InputHoldersgroup:insert(DigitThree)
				if digit_visible==0 then
					DigitThree.alpha= 1
				end
					ThirddigitFlash=timer.performWithDelay(100,Digit_holder_blink3,0)
			elseif current_number==5 then
				current_number= 4
				display.remove(DigitFour) 
				DigitFour=nil
				DigitFour=display.newImage("DigitHolder.png",2300,420)
				InputHoldersgroup:insert(DigitFour)
				if digit_visible==0 then
					DigitFour.alpha= 1
				end
					FourthdigitFlash=timer.performWithDelay(100,Digit_holder_blink4,0)
			end 
		function Return_button_Return (event)
				Return_button:setFillColor(1,1,1)
		end
		local Return_buttontimer=timer.performWithDelay(200,Return_button_Return)
	end 
Return_button:addEventListener("tap",Return_button)
--end of digits
-- -------------------------------------------- Digit group movement adjustment
Firstdigitsgroup.x= Firstdigitsgroup.x+600
Firstdigitsgroup.y= Firstdigitsgroup.y+300

Seconddigitsgroup.x= Seconddigitsgroup.x+600
Seconddigitsgroup.y= Seconddigitsgroup.y+400

Thirddigitsgroup.x= Thirddigitsgroup.x+600
Thirddigitsgroup.y= Thirddigitsgroup.y+500

-- --------------------------------------------- end

--Saved functions 

--

-- Check digit function 

----------------------------------------

-- Group every thing



CheatsGroup:insert(Firstdigitsgroup)
CheatsGroup:insert(Seconddigitsgroup)
CheatsGroup:insert(Thirddigitsgroup)
CheatsGroup:insert(InputHoldersgroup)
-----------------------------------------
local CHEATSCLOSEButton= display.newText("[X]",600,200,"",200)
	CheatsGroup:insert(CHEATSCLOSEButton)

function CHEATSCLOSEButton:tap (event)
 transition.to(CheatsGroup,{time=2000, alpha= 0})
	function RESETtoMenu (event)
		transition.to(Menu,{time=2000, alpha= 1})
		Menu.x = Menu.x-100000
	end
	timer.performWithDelay(2000,RESETtoMenu)
end 

CHEATSCLOSEButton:addEventListener("tap", CHEATSCLOSEButton)