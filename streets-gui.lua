    
local L_1_ = tick()

local L_2_ = game:GetService("\82\117\110\83\101\114\118\105\99\101")
local L_3_ = game:GetService("\85\115\101\114\73\110\112\117\116\83\101\114\118\105\99\101")
local L_4_ = game:GetService("\80\108\97\121\101\114\115")

getgenv().Player = L_4_.LocalPlayer
getgenv().Mouse = Player:GetMouse()
getgenv().KillPlayer = function()
	if Player.Character then
		if Player.Character:FindFirstChild("\72\117\109\97\110\111\105\100") then
			Player.Character.Humanoid.Health = 0
		end
		wait(0.2)
		for L_47_forvar1, L_48_forvar2 in pairs(Player.Character:GetChildren()) do
			if L_48_forvar2.ClassName ~= "\72\117\109\97\110\111\105\100" then
				L_48_forvar2:Remove()
			end
		end
	end
end
getgenv().findp = function(L_49_arg1)
	local L_50_ = {}
	if L_49_arg1:lower() == "\97\108\108" then
		for L_51_forvar1, L_52_forvar2 in pairs(L_4_:GetPlayers()) do
			table.insert(L_50_, L_52_forvar2)
		end
		return L_50_
	elseif L_49_arg1:lower() == "\111\116\104\101\114\115" then
		for L_53_forvar1, L_54_forvar2 in pairs(L_4_:GetPlayers()) do
			if L_54_forvar2 ~= Player then
				table.insert(L_50_, L_54_forvar2)
			end
		end
		return L_50_
	elseif L_49_arg1:lower() == "\109\101" then
		table.insert(L_50_, L_4_)
		return L_50_
	else
		for L_55_forvar1, L_56_forvar2 in pairs(L_4_:GetPlayers()) do
			if L_56_forvar2 ~= Player then
				if L_49_arg1:lower() == L_56_forvar2.Name:sub(1, L_49_arg1:len()):lower() then
					table.insert(L_50_, L_56_forvar2)
				end
			end
		end
		return L_50_
	end
	return nil
end
getgenv().changeprop = function(L_57_arg1, L_58_arg2, L_59_arg3)
	if L_57_arg1 and L_57_arg1[L_58_arg2] then
		L_57_arg1[L_58_arg2] = L_59_arg3
	end
end

local L_5_ = {
	["\115\105\108\101\110\116\95\97\105\109"] = false,
	["\112\114\101\100\105\99\116\105\111\110"] = false,
	["\111\108\100\112\114\101\100\105\99\116\105\111\110"] = false,
	["\101\115\112"] = false,
	["\98\111\120\95\101\115\112"] = true,
	["\116\114\97\99\101\114"] = false,
	["\99\104\97\109\115"] = false,
	["\116\101\120\116"] = true,
	["\116\101\120\116\95\110\97\109\101"] = true,
	["\116\101\120\116\95\100\105\115\116\97\110\99\101"] = true,
	["\116\101\120\116\95\104\101\97\108\116\104"] = true,
	["\100\97\109\97\103\101\95\101\115\112"] = true,
	["\103\111\100\109\111\100\101"] = false,
	["\116\114\117\101\103\111\100"] = false,
	["\116\112\98\121\112\97\115\115"] = false,
	["\97\110\116\105\107\105\108\108"] = false,
	["\110\111\99\108\105\112"] = false,
	["\98\108\105\110\107"] = false,
	["\97\110\116\105\97\105\109"] = false,
	["\98\117\108\108\101\116\95\116\114\97\105\108\115"] = false,
}

local L_6_ = {
	["\118\101\108\111\99\105\116\121"] = 5,
	["\110\101\119\118\101\108\111\99\105\116\121"] = 5,
	["\97\105\109\95\112\97\114\116"] = "\72\101\97\100",
	["\97\105\109\95\109\111\100\101"] = "\77\111\117\115\101",
	["\97\105\109\95\116\97\114\103\101\116"] = nil,
	["\98\111\120\95\99\111\108\111\114"] = Color3.fromRGB(255, 0, 0),
	["\116\101\120\116\95\99\111\108\111\114"] = Color3.fromRGB(255, 255, 255),
	["\116\114\97\99\101\114\95\99\111\108\111\114"] = Color3.fromRGB(255, 0, 0),
	["\99\104\97\109\115\95\99\111\108\111\114"] = Color3.fromRGB(255, 0, 0),
	["\98\117\108\108\101\116\95\99\111\108\111\114"] = ColorSequence.new(Color3.new(255, 255, 255)),
	["\99\104\97\109\115\95\116\114\97\110\115\112\97\114\101\110\99\121"] = 0.5,
	["\119\97\108\107\115\112\101\101\100"] = 16,
	["\114\117\110\115\112\101\101\100"] = 25,
	["\99\114\111\117\99\104\115\112\101\101\100"] = 8,
	["\106\117\109\112\112\111\119\101\114"] = 37.5,
	["\98\108\105\110\107\115\112\101\101\100"] = 0.5,
	["\116\114\97\105\108\95\116\114\97\110\115\112\97\114\101\110\99\121"] = 0,
	["\116\114\97\105\108\95\116\105\109\101"] = 2,
	["\97\105\109\95\116\97\114\103\101\116\95\112\111\115"] = nil,
}

local L_7_ = {
	["\119"] = false,
	["\97"] = false,
	["\115"] = false,
	["\100"] = false,
	["\113"] = false,
	["\101"] = false,
	["\115\104\105\102\116"] = false,
	["\114\105\103\104\116\99\108\105\99\107"] = false,
}

local L_8_ = {
	["\98\117\108\108\101\116\95\116\114\97\105\108\115"] = nil,
	["\99\111\108\111\114"] = nil,
	["\114\101\109\111\118\101\118\101\108\111\99\105\116\121"] = nil,
}

local function L_9_func()
	local L_60_;
	local L_61_ = L_6_["\97\105\109\95\116\97\114\103\101\116"].Character.findFirstChild(L_6_["\97\105\109\95\116\97\114\103\101\116"].Character, L_6_["\97\105\109\95\112\97\114\116"])
	if L_5_["\112\114\101\100\105\99\116\105\111\110"] and L_61_ then
		L_60_ = (L_61_.CFrame + L_61_.Velocity / L_6_["\110\101\119\118\101\108\111\99\105\116\121"]) + (L_61_.RotVelocity / L_6_["\110\101\119\118\101\108\111\99\105\116\121"]) -- THANKS CY LOOOOOOOOOOOOOL
	elseif L_5_["\111\108\100\112\114\101\100\105\99\116\105\111\110"] and L_61_ then
		L_60_ = (L_61_.CFrame + L_61_.Velocity / L_6_["\118\101\108\111\99\105\116\121"]) + (L_61_.RotVelocity / L_6_["\118\101\108\111\99\105\116\121"])
	elseif L_61_ then
		L_60_ = L_61_.CFrame
	end
	return L_60_
end

local function L_10_func(L_62_arg1)
	return workspace.CurrentCamera:WorldToViewportPoint(L_62_arg1)
end

local function L_11_func()
	local L_63_;
	local L_64_ = math.huge;
	local L_65_ = math.huge;
	for L_66_forvar1, L_67_forvar2 in next, game:GetService("\80\108\97\121\101\114\115"):GetPlayers() do
		if L_67_forvar2 ~= Player then
			if game.PlaceId ~= 455366377 and workspace:FindFirstChild(L_67_forvar2.Name) and workspace:FindFirstChild(L_67_forvar2.Name):FindFirstChild("\72\101\97\100") then
				local L_68_, L_69_ = workspace.CurrentCamera:WorldToScreenPoint(workspace:FindFirstChild(L_67_forvar2.Name).Head.Position)
				L_68_ = Vector2.new(L_68_.X, L_68_.Y)
				local L_70_ = Vector2.new(Mouse.X, Mouse.Y)
				local L_71_ = (L_68_ - L_70_).magnitude
				local L_72_ = (Player.Character.Head.Position - workspace:FindFirstChild(L_67_forvar2.Name):FindFirstChild("\72\101\97\100").Position).magnitude
				if L_6_["\97\105\109\95\109\111\100\101"] == "\77\111\117\115\101" then
					if fovMode and L_71_ < getgenv().fov then
						L_63_ = L_67_forvar2
					end
					if not fovMode and L_71_ < L_64_ then
						L_64_ = L_71_
						L_63_ = L_67_forvar2
					end
				elseif L_6_["\97\105\109\95\109\111\100\101"] == "\67\108\111\115\101\115\116" then
					if L_72_ < L_65_ then
						L_65_ = L_72_
						L_63_ = L_67_forvar2
					end
				end
			elseif game.PlaceId == 455366377 and workspace.Live:FindFirstChild(L_67_forvar2.Name) and workspace.Live:FindFirstChild(L_67_forvar2.Name):FindFirstChild("\72\101\97\100") then
				local L_73_, L_74_ = workspace.CurrentCamera:WorldToScreenPoint(workspace.Live:FindFirstChild(L_67_forvar2.Name).Head.Position)
				L_73_ = Vector2.new(L_73_.X, L_73_.Y)
				local L_75_ = Vector2.new(Mouse.X, Mouse.Y)
				local L_76_ = (L_73_ - L_75_).magnitude
				local L_77_ = (Player.Character.Head.Position - workspace.Live:FindFirstChild(L_67_forvar2.Name):FindFirstChild("\72\101\97\100").Position).magnitude
				if L_6_["\97\105\109\95\109\111\100\101"] == "\77\111\117\115\101" then
					if fovMode and L_76_ < getgenv().fov then
						L_63_ = L_67_forvar2
					end
					if not fovMode and L_76_ < L_64_ then
						L_64_ = L_76_
						L_63_ = L_67_forvar2
					end
				elseif L_6_["\97\105\109\95\109\111\100\101"] == "\67\108\111\115\101\115\116" then
					if L_77_ < L_65_ then
						L_65_ = L_77_
						L_63_ = L_67_forvar2
					end
				end
			end
		end
	end
	return L_63_;
end

local L_12_ = loadstring(game:HttpGet(("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\105\115\116\104\97\116\106\97\99\107\47\117\105\47\109\97\115\116\101\114\47\118\101\110\121\120\108\105\98\46\108\117\97"), true))()
local L_13_ = L_12_.new("\233\152\180\232\140\142\119\97\114\101\46\99\99\32\45\32\84\104\101\32\83\116\114\101\101\116\115")

--[[
    https://pastebin.com/raw/wTNFKRF2
]]

local L_14_ = L_13_:addPage("\65\105\109\98\111\116", "\52\57\57\48\48\53\56\55\49\54")

local L_15_ = L_14_:addSection("\65\105\109\108\111\99\107")

local L_16_ = L_15_:addToggle("\83\105\108\101\110\116\32\65\105\109", L_5_["\115\105\108\101\110\116\95\97\105\109"], function(L_78_arg1)
	L_5_["\115\105\108\101\110\116\95\97\105\109"] = L_78_arg1
end)

local L_17_ = L_15_:addToggle("\80\114\101\100\105\99\116\105\111\110", L_5_["\112\114\101\100\105\99\116\105\111\110"], function(L_79_arg1)
	L_5_["\112\114\101\100\105\99\116\105\111\110"] = L_79_arg1
end)

local L_18_ = L_15_:addToggle("\79\108\100\32\80\114\101\100\105\99\116\105\111\110", L_5_["\111\108\100\112\114\101\100\105\99\116\105\111\110"], function(L_80_arg1)
	L_5_["\111\108\100\112\114\101\100\105\99\116\105\111\110"] = L_80_arg1
end)

local L_19_ = L_15_:addSlider("\65\105\109\98\111\116\32\86\101\108\111\99\105\116\121", 5, 1, 15, function(L_81_arg1)
	L_6_["\118\101\108\111\99\105\116\121"] = tonumber(L_81_arg1)
end)

local L_20_ = L_14_:addSection("\84\97\114\103\101\116\115")

local L_21_ = L_20_:addDropdown("\65\105\109\112\97\114\116", {
	"\72\101\97\100",
	"\84\111\114\115\111"
}, function(L_82_arg1)
	L_6_["\97\105\109\95\112\97\114\116"] = L_82_arg1
end)

local L_22_ = L_20_:addDropdown("\80\108\97\121\101\114\115", {
	"\77\111\117\115\101",
	"\67\108\111\115\101\115\116"
}, function(L_83_arg1)
	L_6_["\97\105\109\95\109\111\100\101"] = L_83_arg1
end)

local L_23_ = L_20_:addTextbox("\83\101\108\101\99\116\101\100\32\84\97\114\103\101\116", "\78\97\109\101", function(L_84_arg1)
	local L_85_ = findp(L_84_arg1)
	if L_85_ then
		L_6_["\97\105\109\95\116\97\114\103\101\116"] = L_85_[1]
	end
end)

local L_24_ = L_13_:addPage("\83\116\114\101\101\116\115", "\50\56\49\50\48\56\49\54\49\51")

local L_25_ = L_24_:addSection("\80\108\97\121\101\114")

local L_26_ = L_25_:addToggle("\71\111\100\109\111\100\101", L_5_["\103\111\100\109\111\100\101"], function(L_86_arg1)
	L_5_["\103\111\100\109\111\100\101"] = L_86_arg1
	KillPlayer()
end)

local L_27_ = L_25_:addToggle("\84\114\117\101\32\71\111\100\109\111\100\101", L_5_["\116\114\117\101\103\111\100"], function(L_87_arg1)
	L_5_["\116\114\117\101\103\111\100"] = L_87_arg1
	KillPlayer()
end)

local L_28_ = L_25_:addToggle("\84\80\32\66\121\112\97\115\115", L_5_["\116\112\98\121\112\97\115\115"], function(L_88_arg1)
	L_5_["\116\112\98\121\112\97\115\115"] = L_88_arg1
	KillPlayer()
end)

local L_29_ = L_25_:addToggle("\78\111\99\108\105\112", L_5_["\110\111\99\108\105\112"], function(L_89_arg1)
	L_5_["\110\111\99\108\105\112"] = L_89_arg1
end)

local L_30_ = L_25_:addToggle("\65\110\116\105\32\70\101\45\76\111\111\112", L_5_["\97\110\116\105\107\105\108\108"], function(L_90_arg1)
	L_5_["\97\110\116\105\107\105\108\108"] = L_90_arg1
end)

local L_31_ = L_25_:addToggle("\65\110\116\105\45\65\105\109", L_5_["\97\110\116\105\97\105\109"], function(L_91_arg1)
	L_5_["\97\110\116\105\97\105\109"] = L_91_arg1
	if L_5_["\97\110\116\105\97\105\109"] then
		if Player and Player.Character and Player.Character:FindFirstChild("\72\101\97\100") then
			for L_92_forvar1 = 1, 500 do
				local L_93_ = Instance.new("\66\111\100\121\86\101\108\111\99\105\116\121", Player.Character.Head)
				L_93_.MaxForce = Vector3.new(100, 100, 100)
				L_93_.P = math.huge
				L_93_.Velocity = Vector3.new(math.huge, math.huge, math.huge)
			end
		end
	else
		if Player and Player.Character and Player.Character:FindFirstChild("\72\101\97\100") then
			for L_94_forvar1, L_95_forvar2 in pairs(Player.Character.Head:GetChildren()) do
				if L_95_forvar2.ClassName == "\66\111\100\121\86\101\108\111\99\105\116\121" then
					L_95_forvar2:Remove()
				end
			end
		end
	end
end)

local L_32_ = L_24_:addSection("\83\112\101\101\100")

local L_33_ = L_32_:addSlider("\87\97\108\107\32\83\112\101\101\100", 16, 0, 300, function(L_96_arg1)
	L_6_["\119\97\108\107\115\112\101\101\100"] = tonumber(L_96_arg1)
	changeprop(Player.Character.Humanoid, "\87\97\108\107\83\112\101\101\100", tonumber(L_96_arg1))
end)

local L_34_ = L_32_:addSlider("\82\117\110\32\83\112\101\101\100", 25, 0, 300, function(L_97_arg1)
	L_6_["\114\117\110\115\112\101\101\100"] = tonumber(L_97_arg1)
end)

local L_35_ = L_32_:addSlider("\67\114\111\117\99\104\32\83\112\101\101\100", 8, 0, 300, function(L_98_arg1)
	L_6_["\99\114\111\117\99\104\115\112\101\101\100"] = tonumber(L_98_arg1)
end)

local L_36_ = L_32_:addSlider("\74\117\109\112\32\80\111\119\101\114", 38, 0, 300, function(L_99_arg1)
	L_6_["\106\117\109\112\112\111\119\101\114"] = tonumber(L_99_arg1)
	changeprop(Player.Character.Humanoid, "\74\117\109\112\80\111\119\101\114", tonumber(L_99_arg1))
end)

local L_37_ = L_32_:addToggle("\66\108\105\110\107", L_5_["\98\108\105\110\107"], function(L_100_arg1)
	L_5_["\98\108\105\110\107"] = L_100_arg1
end)

local L_38_ = L_32_:addSlider("\66\108\105\110\107\32\83\112\101\101\100", 5, 1, 50, function(L_101_arg1)
	L_6_["\98\108\105\110\107\115\112\101\101\100"] = (tonumber(L_101_arg1) / 10)
end)

local L_39_ = L_24_:addSection("\66\117\108\108\101\116\32\67\117\115\116\111\109\105\122\97\116\105\111\110")

local L_40_ = L_39_:addColorPicker("\66\117\108\108\101\116\32\67\111\108\111\114", Color3.fromRGB(255, 255, 255), function(L_102_arg1)
	L_6_["\98\117\108\108\101\116\95\99\111\108\111\114"] = ColorSequence.new(L_102_arg1)
end)

local L_41_ = L_39_:addToggle("\66\117\108\108\101\116\32\84\114\97\105\108\115", L_5_["\98\117\108\108\101\116\95\116\114\97\105\108\115"], function(L_103_arg1)
	L_5_["\98\117\108\108\101\116\95\116\114\97\105\108\115"] = L_103_arg1
end)

local L_42_ = L_39_:addSlider("\84\114\97\105\108\32\84\114\97\110\115\112\97\114\101\110\99\121", 0, 0, 10, function(L_104_arg1)
	L_6_["\116\114\97\105\108\95\116\114\97\110\115\112\97\114\101\110\99\121"] = (tonumber(L_104_arg1) / 10)
end)

local L_43_ = L_39_:addSlider("\84\114\97\105\108\32\76\105\102\101\116\105\109\101", 2, 0, 10, function(L_105_arg1)
	L_6_["\116\114\97\105\108\95\116\105\109\101"] = tonumber(L_105_arg1)
end)

L_12_:SelectPage(L_13_.pages[1], true)

local L_44_ = getrawmetatable(game)
local L_45_ = L_44_.__namecall
local L_46_ = L_44_.__newindex
setreadonly(L_44_, false)

L_44_.__newindex = newcclosure(function(L_106_arg1, L_107_arg2, L_108_arg3)
	if checkcaller() then
		return L_46_(L_106_arg1, L_107_arg2, L_108_arg3)
	end
	if L_106_arg1:IsA("\72\117\109\97\110\111\105\100") then
		game.StarterGui:SetCore("\82\101\115\101\116\66\117\116\116\111\110\67\97\108\108\98\97\99\107", true)
		if L_107_arg2 == "\87\97\108\107\83\112\101\101\100" then
			return
		end
		if L_107_arg2 == "\74\117\109\112\80\111\119\101\114" then
			return
		end
		if L_107_arg2 == "\72\101\97\108\116\104" then
			return
		end
		if L_107_arg2 == "\72\105\112\72\101\105\103\104\116" then
			return
		end
	end
	if L_107_arg2 == "\67\70\114\97\109\101" and L_106_arg1:IsDescendantOf(Player.Character) then
		return
	end
	return L_46_(L_106_arg1, L_107_arg2, L_108_arg3)
end)

L_44_.__namecall = newcclosure(function(L_109_arg1, ...)
	local L_110_ = {
		...
	}
	local L_111_ = getnamecallmethod()
	if L_111_ == "\66\114\101\97\107\74\111\105\110\116\115" and L_109_arg1 == Player.Character then
		return wait(9e9)
	end
	if L_111_ == "\75\105\99\107" or L_111_ == "\68\101\115\116\114\111\121" and L_109_arg1 == Player then
		return wait(9e9)
	end
	if L_111_ == "\68\101\115\116\114\111\121" and tostring(L_109_arg1) == "\66\111\100\121\71\121\114\111" or L_111_ == "\68\101\115\116\114\111\121" and tostring(L_109_arg1) == "\66\111\100\121\86\101\108\111\99\105\116\121" or L_111_ == "\68\101\115\116\114\111\121" and tostring(L_109_arg1) == "\66\111\100\121\80\111\115\105\116\105\111\110" then
		return wait(9e9)
	end
	if L_111_ == "\70\105\114\101\83\101\114\118\101\114" then
		if tostring(L_109_arg1) == "\108\73\73\73" or tostring(L_109_arg1.Parent) == "\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101" then
			return wait(9e9)
		end
		if L_110_[1] == "\104\101\121" then
			return wait(9e9)
		end
		if tostring(L_109_arg1) == "\70\105\114\101" and L_5_["\115\105\108\101\110\116\95\97\105\109"] and L_6_["\97\105\109\95\116\97\114\103\101\116"] then
			rawset(L_110_, 1, L_9_func())
			return L_45_(L_109_arg1, unpack(L_110_))
		end
		if tostring(L_109_arg1) == "\73\110\112\117\116" and L_5_["\115\105\108\101\110\116\95\97\105\109"] and L_6_["\97\105\109\95\116\97\114\103\101\116"] then
			rawset(L_110_[2], "\109\111\117\115\101\104\105\116", L_9_func())
			return L_45_(L_109_arg1, unpack(L_110_))
		end
	end
	return L_45_(L_109_arg1, unpack(L_110_))
end)

Player.CharacterAdded:Connect(function(L_112_arg1)
	coroutine.wrap(function()
		L_112_arg1:waitForChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116")
		if L_5_["\116\112\98\121\112\97\115\115"] then
			L_112_arg1.HumanoidRootPart:Remove()
		end
	end)()
	coroutine.wrap(function()
		L_112_arg1:waitForChild("\83\116\97\109\105\110\97")
		L_112_arg1:waitForChild("\85\115\101\100")
		L_112_arg1:waitForChild("\75\79")
		if L_5_["\116\114\117\101\103\111\100"] then
			L_112_arg1.Stamina:Remove()
			L_112_arg1.Used:Remove()
			L_112_arg1.KO:Remove()
		end
	end)()
	coroutine.wrap(function()
		L_112_arg1:waitForChild("\82\105\103\104\116\32\76\101\103")
		if L_5_["\103\111\100\109\111\100\101"] then
			L_112_arg1["\82\105\103\104\116\32\76\101\103"]:Remove()
		end
	end)()
	L_112_arg1:waitForChild("\72\117\109\97\110\111\105\100")
	L_112_arg1.Humanoid.WalkSpeed = L_6_["\119\97\108\107\115\112\101\101\100"]
	L_112_arg1.Humanoid.JumpPower = L_6_["\106\117\109\112\112\111\119\101\114"]
	L_112_arg1:waitForChild("\72\101\97\100")
	if L_5_["\97\110\116\105\97\105\109"] then
		for L_113_forvar1 = 1, 500 do
			local L_114_ = Instance.new("\66\111\100\121\86\101\108\111\99\105\116\121", L_112_arg1.Head)
			L_114_.MaxForce = Vector3.new(100, 100, 100)
			L_114_.P = math.huge
			L_114_.Velocity = Vector3.new(math.huge, math.huge, math.huge)
		end
	end
	if L_8_["\99\111\108\111\114"] then
		L_8_["\99\111\108\111\114"]:Disconnect()
	end
	L_8_["\99\111\108\111\114"] = L_112_arg1.DescendantAdded:Connect(function(L_115_arg1)
		if L_115_arg1:IsA("\84\114\97\105\108") then
			L_115_arg1.Color = L_6_["\98\117\108\108\101\116\95\99\111\108\111\114"]
			if L_5_["\98\117\108\108\101\116\95\116\114\97\105\108\115"] then
				L_115_arg1.Lifetime = L_6_["\116\114\97\105\108\95\116\105\109\101"]
				L_115_arg1.Transparency = NumberSequence.new(L_6_["\116\114\97\105\108\95\116\114\97\110\115\112\97\114\101\110\99\121"])
			end
		end
	end)
	if L_8_["\114\101\109\111\118\101\118\101\108\111\99\105\116\121"] then
		L_8_["\114\101\109\111\118\101\118\101\108\111\99\105\116\121"]:Disconnect()
	end
	L_8_["\114\101\109\111\118\101\118\101\108\111\99\105\116\121"] = L_112_arg1.Humanoid.Died:Connect(function()
		for L_116_forvar1, L_117_forvar2 in pairs(L_112_arg1.Head:GetChildren()) do
			if L_117_forvar2.ClassName == "\66\111\100\121\86\101\108\111\99\105\116\121" then
				L_117_forvar2:Remove()
			end
		end
	end)
end)

L_8_["\99\111\108\111\114"] = Player.Character.DescendantAdded:Connect(function(L_118_arg1)
	if L_118_arg1:IsA("\84\114\97\105\108") then
		L_118_arg1.Color = L_6_["\98\117\108\108\101\116\95\99\111\108\111\114"]
		if L_5_["\98\117\108\108\101\116\95\116\114\97\105\108\115"] then
			L_118_arg1.Lifetime = L_6_["\116\114\97\105\108\95\116\105\109\101"]
			L_118_arg1.Transparency = NumberSequence.new(L_6_["\116\114\97\105\108\95\116\114\97\110\115\112\97\114\101\110\99\121"])
		end
	end
end)

L_8_["\114\101\109\111\118\101\118\101\108\111\99\105\116\121"] = Player.Character.Humanoid.Died:Connect(function()
	for L_119_forvar1, L_120_forvar2 in pairs(Player.Character.Head:GetChildren()) do
		if L_120_forvar2.ClassName == "\66\111\100\121\86\101\108\111\99\105\116\121" then
			L_120_forvar2:Remove()
		end
	end
end)

L_3_.InputBegan:Connect(function(L_121_arg1, L_122_arg2)
	if L_121_arg1.UserInputType == Enum.UserInputType.MouseButton1 then
		if L_7_["\114\105\103\104\116\99\108\105\99\107"] then
			L_6_["\97\105\109\95\116\97\114\103\101\116"] = L_11_func()
			print(L_6_["\97\105\109\95\116\97\114\103\101\116"].Name)
		end
	end
	if L_121_arg1.UserInputType == Enum.UserInputType.MouseButton2 then
		L_7_["\114\105\103\104\116\99\108\105\99\107"] = true
	end
	if L_121_arg1.KeyCode == Enum.KeyCode.LeftShift then
		L_7_["\115\104\105\102\116"] = true
		if Player and Player.Character and Player.Character:FindFirstChild("\72\117\109\97\110\111\105\100") then
			changeprop(Player.Character.Humanoid, "\87\97\108\107\83\112\101\101\100", L_6_["\114\117\110\115\112\101\101\100"])
		end
	end
	if L_121_arg1.KeyCode == Enum.KeyCode.RightShift then
		L_7_["\115\104\105\102\116"] = true
	end
	if L_121_arg1.KeyCode == Enum.KeyCode.RightControl then
		L_13_:toggle()
	end
	if L_121_arg1.KeyCode == Enum.KeyCode.LeftControl then
		if Player and Player.Character and Player.Character:FindFirstChild("\72\117\109\97\110\111\105\100") then
			changeprop(Player.Character.Humanoid, "\87\97\108\107\83\112\101\101\100", L_6_["\99\114\111\117\99\104\115\112\101\101\100"])
		end
	end
	if L_121_arg1.KeyCode == Enum.KeyCode.W then
		L_7_["\119"] = true
	end
	if L_121_arg1.KeyCode == Enum.KeyCode.A then
		L_7_["\97"] = true
	end
	if L_121_arg1.KeyCode == Enum.KeyCode.S then
		L_7_["\115"] = true
	end
	if L_121_arg1.KeyCode == Enum.KeyCode.D then
		L_7_["\100"] = true
	end
	if L_121_arg1.KeyCode == Enum.KeyCode.Q then
		L_7_["\113"] = true
	end
	if L_121_arg1.KeyCode == Enum.KeyCode.E then
		L_7_["\101"] = true
	end
end)

L_3_.InputEnded:Connect(function(L_123_arg1, L_124_arg2)
	if L_123_arg1.UserInputType == Enum.UserInputType.MouseButton2 then
		L_7_["\114\105\103\104\116\99\108\105\99\107"] = false
	end
	if L_123_arg1.KeyCode == Enum.KeyCode.LeftShift then
		L_7_["\115\104\105\102\116"] = false
		if Player and Player.Character and Player.Character:FindFirstChild("\72\117\109\97\110\111\105\100") then
			changeprop(Player.Character.Humanoid, "\87\97\108\107\83\112\101\101\100", L_6_["\119\97\108\107\115\112\101\101\100"])
		end
	end
	if L_123_arg1.KeyCode == Enum.KeyCode.RightShift then
		L_7_["\115\104\105\102\116"] = false
	end
	if L_123_arg1.KeyCode == Enum.KeyCode.LeftControl then
		if Player and Player.Character and Player.Character:FindFirstChild("\72\117\109\97\110\111\105\100") then
			changeprop(Player.Character.Humanoid, "\87\97\108\107\83\112\101\101\100", L_6_["\119\97\108\107\115\112\101\101\100"])
		end
	end
	if L_123_arg1.KeyCode == Enum.KeyCode.W then
		L_7_["\119"] = false
	end
	if L_123_arg1.KeyCode == Enum.KeyCode.A then
		L_7_["\97"] = false
	end
	if L_123_arg1.KeyCode == Enum.KeyCode.S then
		L_7_["\115"] = false
	end
	if L_123_arg1.KeyCode == Enum.KeyCode.D then
		L_7_["\100"] = false
	end
	if L_123_arg1.KeyCode == Enum.KeyCode.Q then
		L_7_["\113"] = false
	end
	if L_123_arg1.KeyCode == Enum.KeyCode.E then
		L_7_["\101"] = false
	end
end)

coroutine.resume(coroutine.create(function()
	while wait() do
		if L_6_["\97\105\109\95\116\97\114\103\101\116"] and L_6_["\97\105\109\95\116\97\114\103\101\116"].Character and L_6_["\97\105\109\95\116\97\114\103\101\116"].Character:FindFirstChild("\84\111\114\115\111") then
			if L_6_["\97\105\109\95\116\97\114\103\101\116\95\112\111\115"] then
				local L_125_ = (L_6_["\97\105\109\95\116\97\114\103\101\116\95\112\111\115"] - L_6_["\97\105\109\95\116\97\114\103\101\116"].Character.Torso.Position).magnitude / L_6_["\118\101\108\111\99\105\116\121"]
				if L_125_ > 1 then
					L_6_["\110\101\119\118\101\108\111\99\105\116\121"] = L_125_
				else
					L_6_["\110\101\119\118\101\108\111\99\105\116\121"] = L_6_["\118\101\108\111\99\105\116\121"]
				end
			else
				L_6_["\97\105\109\95\116\97\114\103\101\116\95\112\111\115"] = L_6_["\97\105\109\95\116\97\114\103\101\116"].Character.Torso.Position
			end
		end
		if L_5_["\98\108\105\110\107"] then
			if L_7_["\115\104\105\102\116"] then
				if Player and Player.Character then
					local L_126_ = Player.Character:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116") or Player.Character:FindFirstChild("\84\111\114\115\111")
					if L_7_["\119"] then
						if L_126_ then
							L_126_.CFrame = L_126_.CFrame * CFrame.new(0, 0, -L_6_["\98\108\105\110\107\115\112\101\101\100"])
						end
					end
					if L_7_["\97"] then
						if L_126_ then
							L_126_.CFrame = L_126_.CFrame * CFrame.new(-L_6_["\98\108\105\110\107\115\112\101\101\100"], 0, 0)
						end
					end
					if L_7_["\115"] then
						if L_126_ then
							L_126_.CFrame = L_126_.CFrame * CFrame.new(0, 0, L_6_["\98\108\105\110\107\115\112\101\101\100"])
						end
					end
					if L_7_["\100"] then
						if L_126_ then
							L_126_.CFrame = L_126_.CFrame * CFrame.new(L_6_["\98\108\105\110\107\115\112\101\101\100"], 0, 0)
						end
					end
					if L_7_["\113"] then
						if L_126_ then
							L_126_.CFrame = L_126_.CFrame * CFrame.new(0, L_6_["\98\108\105\110\107\115\112\101\101\100"], 0)
						end
					end
					if L_7_["\101"] then
						if L_126_ then
							L_126_.CFrame = L_126_.CFrame * CFrame.new(0, -L_6_["\98\108\105\110\107\115\112\101\101\100"], 0)
						end
					end
				end
			end
		end
	end
end))

coroutine.resume(coroutine.create(function()
	L_2_.Stepped:Connect(function()
		if L_5_["\110\111\99\108\105\112"] then
			if Player and Player.Character then
				for L_127_forvar1, L_128_forvar2 in next, Player.Character:GetDescendants() do
					if L_128_forvar2:IsA"\66\97\115\101\80\97\114\116" then
						L_128_forvar2.CanCollide = false 
					end
				end
			end
		end
	end)
end))

game.StarterGui:SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", {
	Title = "\83\99\114\105\112\116\32\76\111\97\100\101\100";
	Text = "\76\111\97\100\101\100\32\105\110\32" .. tostring(tick() - L_1_):sub(1, 5) .. "\115";
	Icon = "\114\98\120\97\115\115\101\116\105\100\58\47\47\53\49\54\56\50\54\57\56\51\56";
	Duration = 5;
})
