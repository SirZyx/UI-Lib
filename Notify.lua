--> HOW TO USE <--
--> loadstring(game:HttpGetAsync("https://pastebin.com/raw/Ts8TSAZN", 0, true))() <--
--> notify("Text you want it to say when it is executed") <--
--> HOW TO USE <--








if _G.dAAcG3fvBqVoPzVnAFk == nil then
_G.dAAcG3fvBqVoPzVnAFk = ""
end


function notify(text, overwrite, response)

	local clickfunction = response or function() return end
	local override = overwrite or false
	if text == _G.dAAcG3fvBqVoPzVnAFk and override == false then return end
	spawn(function()
		for i,v in pairs(game.CoreGui:GetChildren())do
		spawn(function()
		if v.Name == "MNotify" then -- deleting here
			pcall(function()
			v.ImageButton.ZIndex = 58; v.ImageButton.TextLabel.ZIndex = 59
			v.ImageButton:TweenPosition(UDim2.new(0.01, 0,1, 0), "Out", "Quint", .7, true)
			game:GetService("TweenService"):Create(v.ImageButton.TextLabel,TweenInfo.new(0.8,Enum.EasingStyle.Quint,Enum.EasingDirection.Out,0,false,0), {TextTransparency = 1})
			wait(1)
			v:Destroy()
			end)
		end
		end)
	end
	
	_G.dAAcG3fvBqVoPzVnAFk = text
	local clickfunction = response or function() return end
	local function CreateInstance(cls,props)	local inst = Instance.new(cls)	for i,v in pairs(props) do	inst[i] = v	end	return inst	end
	local MNotify = CreateInstance('ScreenGui',{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name='MNotify', Parent=game.CoreGui})
	local ImageButton = CreateInstance('ImageButton',{Image='rbxassetid://1051186612',ImageColor3=Color3.new(0.129412, 0.129412, 0.129412),ImageRectOffset=Vector2.new(0, 0),ImageRectSize=Vector2.new(0, 0),ImageTransparency=0,ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(20, 20, 20, 20),AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.00999999978, 0, 1, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 234, 0, 40),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=60,Name='ImageButton',Parent = MNotify})
	local TextLabel = CreateInstance('TextLabel',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size24,Text=text,TextColor3=Color3.new(0.807843, 0.807843, 0.807843),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.132478639, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 174, 0, 40),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=61,Name='TextLabel',Parent = ImageButton})
	local UIListLayout = CreateInstance('UIListLayout', {Padding = UDim.new(0, 0), FillDirection = Enum.FillDirection.Vertical, HorizontalAlignment = Enum.HorizontalAlignment.Center, SortOrder = Enum.SortOrder.Name, VerticalAlignment = Enum.VerticalAlignment.Top, Name = 'UIListLayout', Parent = ImageButton })
	-- not setting text ^	
	local value = 1
	if string.len(text) <= 49 then
		ImageButton.Size = UDim2.new(0, game:GetService("TextService"):GetTextSize(text, 24, Enum.Font.SourceSansLight, Vector2.new(500,900)).X+57, 0, 40)
	elseif string.len(text) > 49 then
		value = math.ceil(string.len(string.sub(text, 49))/9)
		ImageButton.Size = UDim2.new(0, game:GetService("TextService"):GetTextSize(text, 24, Enum.Font.SourceSansLight, Vector2.new(500+value*100,900)).X+57, 0, 40)
	end
	ImageButton:TweenPosition(UDim2.new(0.01, 0,1, -60), "Out", "Quint", .7, true)
	spawn(function()
		wait(6.7)
		pcall(function()
		ImageButton.ZIndex = 58; TextLabel.ZIndex = 59
		ImageButton:TweenPosition(UDim2.new(0.01, 0,1, 0), "Out", "Quint", .7, true)
		_G.dAAcG3fvBqVoPzVnAFk = ""
		wait(1)
		MNotify:Destroy()
		end)
	end)
	ImageButton.MouseButton1Up:Connect(function()
		if response == nil then return end
        spawn(function()
		pcall(function()
		ImageButton.ZIndex = 58; TextLabel.ZIndex = 59
		ImageButton:TweenPosition(UDim2.new(0.01, 0,1, 0), "Out", "Quint", .7, true)
		_G.dAAcG3fvBqVoPzVnAFk = ""
		wait(1)
		MNotify:Destroy() end)
		end)
		clickfunction()
	end)	
	end)

end
