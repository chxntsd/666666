--[[

Deobfuscate by.lyy
孤儿柳叶以为自己不会被开源天天呲牙乱叫
其实就是一个没技术的AI仔🤣

]]
local clock = os.clock
local clock2 = os.clock
local floor = math.floor
local abs = math.abs
local min = math.min
local vector = Vector3.new
local vector2 = Vector2.new
local color = Color3.fromRGB
local cframe = CFrame.new
local format = string.format

local function func1()
	local func2 = cloneref
	if not func2 then
		return function(param1)
			return param1
		end
	end
	local obj = setmetatable({}, { __mode = "v" })

	return function(obj1)
		if not obj1 then
			return nil
		end
		local debugId = obj1:GetDebugId()
		local entry1 = obj[debugId]
		if entry1 then
			return entry1
		end
		local value1 = func2(obj1)
		obj[debugId] = value1
		return value1
	end
end

local result1 = func1()

if getgenv().SkinHubLoaded then
	game:GetService("StarterGui"):SetCore("SendNotification", { Title = "Skin HUB v4.2", Text = "请勿重复执行", Duration = 3 })
	return
end

getgenv().SkinHubLoaded = true
local result3 = clock()
local obj2 = result1(game:GetService("HttpService"))
local obj3 = result1(game:GetService("TeleportService"))
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/refs/heads/main/Library.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/refs/heads/main/addons/ThemeManager.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/refs/heads/main/addons/SaveManager.lua"))()
lib.ForceCheckbox = true
local options = lib.Options
local toggles = lib.Toggles
local tbl1 = {}
local lib2 = nil

pcall(function()
	lib2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/mstudio45/MSESP/refs/heads/main/source.luau"))()
end)

if lib2 ~= nil then
	if lib2 ~= nil then
		pcall(function()
			lib2.GlobalConfig.Billboards = true
			lib2.GlobalConfig.Distance = true
		end)
	end

	tbl1.addESP = function(param2)
		if lib2 == nil then
			return nil
		end
		local ok, result = pcall(lib2.Add, lib2, param2)
		if ok then
			return result
		end
		return nil
	end

	tbl1.destroyESP = function(instance2)
		if instance2 ~= nil then
			pcall(function()
				instance2:Destroy()
			end)
		end
	end

	tbl1.notify = function(message, flag1)
		lib:Notify(message, flag1 or 2)
	end

	local function func3(instance3, ...)
		local tbl2 = { ... }

		for i = 1, #tbl2 do
			local entry2 = tbl2[i]

			if instance3 then
				instance3 = instance3:FindFirstChild(entry2)
			else
				instance3 = nil
			end

			if not instance3 then
				return nil
			end
		end

		return instance3
	end

	local obj4 = result1(game:GetService("Players"))
	local value2 = result1(game:GetService("RunService"))
	local value3 = result1(game:GetService("UserInputService"))
	local obj5 = result1(game:GetService("ReplicatedStorage"))
	local obj6 = result1(game:GetService("TweenService"))
	local obj7 = result1(game:GetService("Lighting"))
	local obj8 = result1(game:GetService("Stats"))
	local value4 = result1(game:GetService("CoreGui"))
	local obj9 = result1(game:GetService("MarketplaceService"))

	if obj8 then
		local network = obj8:FindFirstChild("Network")
		network = network and network:FindFirstChild("ServerStatsItem")

		if network then
			local dataPing = network:FindFirstChild("Data Ping")
			local localPlayer = obj4.LocalPlayer

			tbl1.createFloatingButton = function(name, text, position, textSize, callback1)
				local screenGui = Instance.new("ScreenGui")
				screenGui.Name = name
				screenGui.ResetOnSpawn = false
				screenGui.Parent = localPlayer:WaitForChild("PlayerGui")
				local textButton = Instance.new("TextButton")
				textButton.Size = UDim2.new(0, 60, 0, 60)
				textButton.Position = position
				textButton.BackgroundColor3 = lib.Scheme.MainColor
				textButton.BackgroundTransparency = 0.2
				textButton.BorderSizePixel = 0
				textButton.Text = text
				textButton.TextColor3 = Color3.new(1, 1, 1)
				textButton.TextSize = textSize
				textButton.Font = Enum.Font.GothamBold
				textButton.Parent = screenGui
				textButton.Active = true
				local uiCorner = Instance.new("UICorner")
				uiCorner.CornerRadius = UDim.new(0, 12)
				uiCorner.Parent = textButton
				local uiStroke = Instance.new("UIStroke")
				uiStroke.Color = lib.Scheme.AccentColor
				uiStroke.Thickness = 2.5
				uiStroke.Transparency = 0.3
				uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				uiStroke.Parent = textButton
				local flag2 = false
				local flag3 = false
				local position2 = nil
				local position3 = nil
				local tbl3 = {}

				table.insert(tbl3, textButton.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						flag2 = true
						flag3 = false
						position2 = input.Position
						position3 = textButton.Position
					end
				end))

				table.insert(tbl3, value3.InputChanged:Connect(function(input)
					if flag2 and input.UserInputType == Enum.UserInputType.MouseMovement then
						if (input.Position - position2).Magnitude > 4 then
							flag3 = true
						end

						local n = input.Position - position2
						textButton.Position = UDim2.new(position3.X.Scale, position3.X.Offset + n.X, position3.Y.Scale, position3.Y.Offset + n.Y)
					end
				end))

				table.insert(tbl3, value3.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						flag2 = false
					end
				end))

				table.insert(tbl3, screenGui.Destroying:Connect(function()
					for _, value5 in tbl3 do
						pcall(function()
							value5:Disconnect()
						end)
					end
				end))

				textButton.MouseButton1Click:Connect(function()
					if flag3 then
						return
					end
					callback1()
				end)

				return screenGui, textButton
			end

			tbl1.GUN_NAME_SET = {
				Musket = true,
				Carbine = true,
				Rifle = true,
				Pistol = true,
				Blunderbuss = true,
				["Air Rifle"] = true,
				["Horse Artillery Pistol"] = true,
				["Nock Gun"] = true,
				["Navy Pistol"] = true,
				["Brass Pistol"] = true,
				["Double Barrel Pistol"] = true,
				["Flintlock Pistol"] = true,
				["Model 29"] = true,
				["Old Blunderbuss"] = true,
				["Needle Gun"] = true,
				Shotgun = true,
				["Bolt Rifle"] = true,
				["Officer Pistol"] = true,
				["Heavy Pistol"] = true,
				["Light Dragoon Pistol"] = true,
			}

			tbl1.WEAPON_SPEED_MAP = {
				Musket = 1650,
				Rifle = 1800,
				["Baker Rifle"] = 1750,
				["Jäger Rifle"] = 1750,
				["Ferguson Rifle"] = 1700,
				Carbine = 1550,
				Musketoon = 1500,
				["Air Rifle"] = 1300,
				["Needle Gun"] = 1600,
				["Bolt Rifle"] = 1700,
				Pistol = 900,
				["Flintlock Pistol"] = 880,
				["Navy Pistol"] = 920,
				["Brass Pistol"] = 890,
				["Officer Pistol"] = 950,
				["Heavy Pistol"] = 900,
				["Light Dragoon Pistol"] = 910,
				["Horse Artillery Pistol"] = 930,
				["Double Barrel Pistol"] = 900,
				Colt = 950,
				["Duckfoot Pistol"] = 850,
				["Howdah Pistol"] = 880,
				Blunderbuss = 650,
				["Old Blunderbuss"] = 630,
				["Nock Gun"] = 680,
				Shotgun = 620,
			}

			tbl1.sharedIsGun = function(instance4)
				if not instance4 or not instance4:IsA("Tool") then
					return false
				end
				local animations = instance4:FindFirstChild("Animations")
				if not animations then
					return false
				end
				return animations:FindFirstChild("Aim") ~= nil or animations:FindFirstChild("Aiming") ~= nil
			end

			tbl1.sharedGetShotsLoaded = function(obj)
				if not obj then
					return 0
				end
				local shotsLoaded = obj:FindFirstChild("ShotsLoaded")
				if shotsLoaded and (shotsLoaded:IsA("IntValue") or shotsLoaded:IsA("NumberValue")) then
					return shotsLoaded.Value
				end
				local players = workspace:FindFirstChild("Players")

				if players then
					local obj10 = players:FindFirstChild(localPlayer.Name)

					if obj10 then
						local obj11 = obj10:FindFirstChild(obj.Name)

						if obj11 then
							local shotsLoaded2 = obj11:FindFirstChild("ShotsLoaded")
							if shotsLoaded2 and (shotsLoaded2:IsA("IntValue") or shotsLoaded2:IsA("NumberValue")) then
								return shotsLoaded2.Value
							end
						end
					end
				end

				return 0
			end

			tbl1.sharedGetRemote = function(obj)
				if not obj then
					return nil
				end
				local remoteEvent = obj:FindFirstChild("RemoteEvent")
				if remoteEvent then
					return remoteEvent
				end
				local players = workspace:FindFirstChild("Players")

				if players then
					local obj12 = players:FindFirstChild(localPlayer.Name)

					if obj12 then
						local obj13 = obj12:FindFirstChild(obj.Name)
						if obj13 then
							return obj13:FindFirstChild("RemoteEvent")
						end
					end
				end

				return nil
			end

			tbl1.getHeldToolRemote = function()
				local character = localPlayer.Character
				if not character then
					return nil, nil
				end

				for _, value6 in character:GetChildren() do
					if value6:IsA("Tool") then
						local remoteEvent = value6:FindFirstChild("RemoteEvent")
						if remoteEvent then
							return remoteEvent, value6
						end
					end
				end

				return nil, nil
			end

			tbl1.sharedGetCurrentBulletSpeed = function()
				local character = localPlayer.Character
				if not character then
					return 900
				end
				local tool = character:FindFirstChildOfClass("Tool")
				if not tool then
					return 900
				end
				local name = tool.Name
				local value7 = tbl1.WEAPON_SPEED_MAP[name]
				if value7 then
					return value7
				end
				local obj14 = name:lower()
				if obj14:find("rifle") or obj14:find("musket") or obj14:find("carbine") or obj14:find("needle") or obj14:find("bolt") or obj14:find("jäger") or obj14:find("ferguson") or obj14:find("musketoon") then
					return 1650
				end

				if obj14:find("pistol") or obj14:find("colt") or obj14:find("revolver") or obj14:find("horse") or obj14:find("double") then
					return 900
				end

				if obj14:find("blunderbuss") or obj14:find("nock") or obj14:find("shotgun") then
					return 650
				end
				return 900
			end

			tbl1.sharedGetPing = function()
				local ok, result = pcall(function()
					return dataPing:GetValue()
				end)

				if ok and result then
					return result
				end
				return 0
			end

			tbl1._charAddedHandlers = {}

			localPlayer.CharacterAdded:Connect(function(character)
				local charAddedHandlers = tbl1._charAddedHandlers

				for i = 1, #charAddedHandlers do
					local entry3 = charAddedHandlers[i]

					if entry3 then
						local ok, result = pcall(entry3, character)

						if not ok then
							warn("[SkinHub] CharacterAdded handler error: " .. tostring(result))
						end
					end
				end
			end)

			tbl1.onCharacterAdded = function(param3)
				table.insert(tbl1._charAddedHandlers, param3)

				return function()
					for i = #tbl1._charAddedHandlers, 1, -1 do
						if tbl1._charAddedHandlers[i] == param3 then
							table.remove(tbl1._charAddedHandlers, i)
							break
						end
					end
				end
			end

			tbl1.ZombieWatch = { _models = {}, _addedSubs = {}, _started = false }
			local tbl4 = { "Zombies", "Camera" }

			tbl1.ZombieWatch.start = function()
				if tbl1.ZombieWatch._started then
					return
				end
				tbl1.ZombieWatch._started = true
				local addedSubs = tbl1.ZombieWatch._addedSubs

				local function func4(instance5)
					if instance5:IsA("Model") and not tbl1.ZombieWatch._models[instance5] then
						tbl1.ZombieWatch._models[instance5] = true

						for _, addedSub in addedSubs do
							task.spawn(addedSub, instance5)
						end
					end
				end

				local function func5(instance6)
					if not instance6 or instance6:GetAttribute("SkinHubZombieWatch") then
						return
					end
					instance6:SetAttribute("SkinHubZombieWatch", true)

					instance6.ChildAdded:Connect(function(child)
						task.defer(func4, child)
					end)

					instance6.ChildRemoved:Connect(function(child)
						tbl1.ZombieWatch._models[child] = nil
					end)

					for _, value8 in instance6:GetChildren() do
						task.spawn(func4, value8)
					end
				end

				local function func6()
					for _, value9 in tbl4 do
						func5(workspace:FindFirstChild(value9))
					end
				end

				func6()

				workspace.ChildAdded:Connect(function(child)
					for _, value10 in tbl4 do
						if child.Name == value10 then
							task.defer(func5, child)
						end
					end
				end)
			end

			tbl1.ZombieWatch.getAll = function()
				local list1 = {}

				for k in tbl1.ZombieWatch._models do
					if k.Parent then
						list1[#list1 + 1] = k
					else
						tbl1.ZombieWatch._models[k] = nil
					end
				end

				return list1
			end

			tbl1.ZombieWatch.onAdded = function(param4)
				table.insert(tbl1.ZombieWatch._addedSubs, param4)

				return function()
					local foundAt = table.find(tbl1.ZombieWatch._addedSubs, param4)

					if foundAt then
						table.remove(tbl1.ZombieWatch._addedSubs, foundAt)
					end
				end
			end

			tbl1.ZombieWatch.forEach = function(param5)
				for _, value11 in tbl1.ZombieWatch.getAll() do
					pcall(param5, value11)
				end
			end

			local str1 = "fish"

			pcall(function()
				local imageManager = lib.ImageManager
				if not imageManager then
					return
				end

				if not imageManager.GetAsset("SkinHubLogo") then
					imageManager.AddAsset("SkinHubLogo", 0, "https://raw.githubusercontent.com/Zephyrastic/sepweqeq/main/UI_image.png")
				end

				str1 = imageManager.GetAsset("SkinHubLogo") or str1
			end)

			local n = 100

			local obj15 = lib:CreateLoading({
				Title = "Skin HUB v4.2",
				Icon = str1,
				IconSize = UDim2.fromOffset(40, 40),
				CurrentStep = 0,
				TotalSteps = n,
				ShowSidebar = false,
				AlwaysOnTop = true,
				WindowWidth = 460,
				WindowHeight = 220,
				ContentWidth = 460,
			})

			obj15:SetMessage("Skin HUB v4.2")
			obj15:SetDescription("正在初始化...")
			obj15:SetCurrentStep(0)
			local color2 = Color3.fromRGB(255, 255, 255)

			__StyleLoadingDesc = function()
				local screenGui = obj15 and obj15.ScreenGui
				if not screenGui then
					return
				end

				local function func7(instance7)
					if instance7:IsA("TextLabel") then
						pcall(function()
							instance7.TextColor3 = color2
							instance7.TextStrokeTransparency = 0.4
							instance7.TextStrokeColor3 = Color3.fromRGB(20, 60, 100)
						end)

						if not instance7:GetAttribute("SkinHubDescLock") then
							instance7:SetAttribute("SkinHubDescLock", true)

							instance7:GetPropertyChangedSignal("TextColor3"):Connect(function()
								if instance7.TextColor3 ~= color2 then
									pcall(function()
										instance7.TextColor3 = color2
									end)
								end
							end)
						end
					end
				end

				for _, getDescendant in screenGui:GetDescendants() do
					func7(getDescendant)
				end

				if not screenGui:GetAttribute("SkinHubDescHook") then
					screenGui:SetAttribute("SkinHubDescHook", true)

					screenGui.DescendantAdded:Connect(function(descendant)
						task.defer(function()
							func7(descendant)
						end)
					end)
				end
			end

			task.defer(function()
				pcall(__StyleLoadingDesc)
			end)

			tbl1.bootLanguage = "中文"
			tbl1.bootLanguagePicked = false
			tbl1.bootLanguageGui = nil
			local playerGui = localPlayer:WaitForChild("PlayerGui")
			local screenGui = Instance.new("ScreenGui")
			screenGui.Name = "SkinHubLanguagePicker"
			screenGui.ResetOnSpawn = false
			screenGui.IgnoreGuiInset = true
			screenGui.DisplayOrder = 2147483646
			screenGui.Parent = playerGui
			local frame = Instance.new("Frame")
			frame.AnchorPoint = Vector2.new(0.5, 1)
			frame.Position = UDim2.new(0.5, 0, 1, -24)
			frame.Size = UDim2.new(0, 280, 0, 76)
			frame.BackgroundColor3 = color(8, 14, 26)
			frame.BackgroundTransparency = 0.15
			frame.BorderSizePixel = 0
			frame.Parent = screenGui
			local uiCorner = Instance.new("UICorner")
			uiCorner.CornerRadius = UDim.new(0, 10)
			uiCorner.Parent = frame
			local uiStroke = Instance.new("UIStroke")
			uiStroke.Color = color(45, 90, 140)
			uiStroke.Thickness = 1.5
			uiStroke.Parent = frame
			local textLabel = Instance.new("TextLabel")
			textLabel.BackgroundTransparency = 1
			textLabel.Position = UDim2.new(0, 0, 0, 4)
			textLabel.Size = UDim2.new(1, 0, 0, 20)
			textLabel.Font = Enum.Font.GothamBold
			textLabel.Text = "语言 / Language"
			textLabel.TextColor3 = Color3.new(1, 1, 1)
			textLabel.TextSize = 14
			textLabel.Parent = frame
			local tbl5 = {}

			local function func8()
				for k, value12 in tbl5 do
					if k == tbl1.bootLanguage then
						value12.BackgroundColor3 = color(80, 200, 255)
						value12.TextColor3 = color(4, 8, 16)
					else
						value12.BackgroundColor3 = color(18, 32, 56)
						value12.TextColor3 = Color3.new(1, 1, 1)
					end
				end
			end

			local function func9(text, param6)
				local textButton = Instance.new("TextButton")
				textButton.Position = UDim2.new(0, param6, 0, 30)
				textButton.Size = UDim2.new(0, 128, 0, 36)
				textButton.Font = Enum.Font.GothamBold
				textButton.Text = text
				textButton.TextSize = 15
				textButton.BorderSizePixel = 0
				textButton.Parent = frame
				local uiCorner2 = Instance.new("UICorner")
				uiCorner2.CornerRadius = UDim.new(0, 8)
				uiCorner2.Parent = textButton

				textButton.MouseButton1Click:Connect(function()
					tbl1.bootLanguage = text
					tbl1.bootLanguagePicked = true
					func8()

					if type(__FinishLoading) == "function" then
						task.defer(__FinishLoading)
					end
				end)

				tbl5[text] = textButton
			end

			func9("中文", 8)
			func9("English", 144)
			func8()
			tbl1.bootLanguageGui = screenGui

			tbl1.destroyBootLanguagePicker = function()
				if tbl1.bootLanguageGui == nil then
					return
				end

				pcall(function()
					tbl1.bootLanguageGui:Destroy()
				end)

				tbl1.bootLanguageGui = nil
			end

			local flag4 = color(80, 200, 255)
			local value13 = color(140, 240, 255)
			local value14 = color(18, 32, 56)
			local value15 = color(8, 14, 26)
			local value16 = color(45, 90, 140)
			local color3 = Color3.new(1, 1, 1)
			local font = Font.fromEnum(Enum.Font.SciFi)
			local screenGui2 = obj15.ScreenGui

			local function func10(parent)
				if parent:IsA("Frame") then
					local backgroundColor3 = parent.BackgroundColor3

					if backgroundColor3 == Color3.fromRGB(15, 15, 15) then
						parent.BackgroundColor3 = value15
					elseif backgroundColor3 == Color3.fromRGB(25, 25, 25) then
						parent.BackgroundColor3 = value14
					elseif backgroundColor3 == Color3.fromRGB(125, 85, 255) then
						parent.BackgroundColor3 = flag4
					end

					if parent.BackgroundColor3 == flag4 and parent.Size.Y.Offset <= 20 then
						if not parent:FindFirstChildOfClass("UIGradient") then
							local uiGradient = Instance.new("UIGradient")
							uiGradient.Color = ColorSequence.new(flag4, value13)
							uiGradient.Rotation = 0
							uiGradient.Parent = parent
						end
					end
				elseif parent:IsA("ImageLabel") then
					if not (parent.Size.X.Offset >= 36) then
						parent.ImageColor3 = flag4
					end
				elseif parent:IsA("UIStroke") then
					parent.Color = value16
				elseif parent:IsA("TextLabel") then
					parent.TextColor3 = color3
					parent.TextStrokeTransparency = 0.4
					parent.TextStrokeColor3 = color(20, 60, 100)

					if not parent:GetAttribute("SkinHubFontGuard") then
						parent:SetAttribute("SkinHubFontGuard", true)
						local flag5 = false

						parent:GetPropertyChangedSignal("FontFace"):Connect(function()
							if flag5 then
								return
							end

							if parent.FontFace ~= font then
								flag5 = true
								parent.FontFace = font
								flag5 = false
							end
						end)

						task.spawn(function()
							while parent and parent.Parent do
								if parent.FontFace ~= font then
									parent.FontFace = font
								end

								task.wait(0.15)
							end
						end)
					end

					if parent.FontFace ~= font then
						parent.FontFace = font
					end

					if parent.Text == "Skin HUB v4.2" and not parent:GetAttribute("SkinHubTitleFX") then
						parent:SetAttribute("SkinHubTitleFX", true)
						local uiGradient = Instance.new("UIGradient")
						local colorSequence = ColorSequence.new
						local value17 = ColorSequenceKeypoint.new(0, color(120, 220, 255))
						local value18 = ColorSequenceKeypoint.new(0.35, color(200, 245, 255))
						local new = ColorSequenceKeypoint.new
						local value19 = ColorSequenceKeypoint.new(0.65, color(140, 220, 255))
						local tbl6 = { value17, value18, value19 }

						do
							local values = table.pack(new(1, color(120, 220, 255)))
							table.move(values, 1, values.n, 4, tbl6)
						end

						uiGradient.Color = colorSequence(tbl6)
						uiGradient.Parent = parent

						task.spawn(function()
							local now = os.clock()

							while parent and parent.Parent do
								uiGradient.Rotation = (os.clock() - now) * 60 % 360
								value2.RenderStepped:Wait()
							end
						end)
					end
				end
			end

			for _, getDescendant2 in screenGui2:GetDescendants() do
				pcall(func10, getDescendant2)
			end

			screenGui2.DescendantAdded:Connect(function(descendant)
				task.defer(function()
					pcall(func10, descendant)
				end)
			end)

			task.defer(function()
				for _, getDescendant3 in screenGui2:GetDescendants() do
					if getDescendant3:IsA("Frame") and getDescendant3.Size.X.Offset >= 400 and getDescendant3.Size.Y.Offset >= 180 then
						local uiStroke2 = getDescendant3:FindFirstChildOfClass("UIStroke")

						if uiStroke2 then
							uiStroke2.Color = flag4
							uiStroke2.Thickness = 1.5
							uiStroke2.Transparency = 0.4

							task.spawn(function()
								while getDescendant3 and getDescendant3.Parent do
									uiStroke2.Transparency = 0.25 + (math.sin(os.clock() * 1.8) + 1) * 0.5 * 0.35
									task.wait(0.05)
								end
							end)
						end

						break
					end
				end
			end)

			local n2 = 0
			local flag6 = false
			local flag7 = false

			task.spawn(function()
				local tbl7 = {
					{ 0, "Skin HUB v4.2", "正在启动..." },
					{ 15, "初始化界面", "准备 UI 资源..." },
					{ 35, "加载模块", "解析脚本模块..." },
					{ 55, "构建功能", "注册自动化任务..." },
					{ 75, "应用主题", "调整配色与字体..." },
					{ 85, "收尾工作", "检查依赖..." },
				}

				local n4 = 1
				

				while not flag6 and n2 < 90 do
					if n4 <= #tbl7 and n2 >= tbl7[n4][1] then
						obj15:SetMessage(tbl7[n4][2])
						obj15:SetDescription(tbl7[n4][3])
						n4 += 1
					end

					n2 = math.min(n2 + math.random(2, 4), 90)
					obj15:SetCurrentStep(n2)
					task.wait(0.05)
				end

				obj15:SetCurrentStep(90)
				obj15:SetMessage("请选择语言")
				obj15:SetDescription("Please select your language")
				pcall(__StyleLoadingDesc)
			end)

			__FinishLoading = function()
				if flag7 then
					return
				end
				flag7 = true
				flag6 = true
				tbl1.destroyBootLanguagePicker()

				task.spawn(function()
					if tbl1.bootLanguagePicked and options and options.InterfaceLanguage then
						pcall(function()
							options.InterfaceLanguage:SetValue(tbl1.bootLanguage)
						end)

						pcall(function()
							SetInterfaceLanguage(tbl1.bootLanguage)
						end)
					end

					task.wait(0.15)
					obj15:SetMessage("加载完成")
					obj15:SetDescription("Loading complete")
					pcall(__StyleLoadingDesc)

					while n2 < n do
						n2 = math.min(n2 + 2, 100)
						obj15:SetCurrentStep(n2)
						task.wait(0.03)
					end

					task.wait(0.4)
					local screenGui3 = Instance.new("ScreenGui")
					screenGui3.Name = "SkinHubFadeOverlay"
					screenGui3.DisplayOrder = 2147483647
					screenGui3.IgnoreGuiInset = true
					screenGui3.ResetOnSpawn = false

					if not pcall(function()
						screenGui3.Parent = result1(game:GetService("CoreGui"))
					end) then
						screenGui3.Parent = obj4.LocalPlayer:WaitForChild("PlayerGui")
					end

					local frame2 = Instance.new("Frame")
					frame2.BackgroundColor3 = Color3.fromRGB(8, 14, 26)
					frame2.BackgroundTransparency = 1
					frame2.Size = UDim2.fromScale(1, 1)
					frame2.BorderSizePixel = 0
					frame2.ZIndex = 1
					frame2.Parent = screenGui3
					local tween = obj6:Create(frame2, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0 })
					tween:Play()
					tween.Completed:Wait()
					obj15:Continue()
					task.wait(0.15)
					local tween2 = obj6:Create(frame2, TweenInfo.new(0.45, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 1 })
					tween2:Play()
					tween2.Completed:Wait()
					screenGui3:Destroy()

					pcall(function()
						result1(game:GetService("StarterGui")):SetCore("SendNotification", { Title = "Skin HUB v4.2", Text = format("已加载，耗时 %.2f 秒", clock() - result3), Duration = 5 })
					end)
				end)
			end

			lib.Scheme = {
				BackgroundColor = Color3.new(0, 0, 0),
				MainColor = color(20, 50, 90),
				AccentColor = color(80, 200, 255),
				OutlineColor = color(100, 180, 255),
				FontColor = Color3.new(1, 1, 1),
				Font = Font.fromEnum(Enum.Font.Code),
				RedColor = color(255, 80, 80),
				DestructiveColor = color(220, 38, 38),
				DarkColor = Color3.new(0, 0, 0),
				WhiteColor = Color3.new(1, 1, 1),
				BackgroundImage = "",
			}

			local obj16 = lib:CreateWindow({
				Title = "Skin HUB v4.2",
				Footer = "Created by Liuye 柳叶［Willow leaf］",
				NotifySide = "Right",
				ShowCustomCursor = true,
				CornerRadius = 6,
				TabButtonsStyle = {
					Gap = 6,
					Padding = 6,
					CornerRadius = 6,
					Indicator = true,
					IndicatorWidth = 2,
					IndicatorHeight = 20,
				},
				Icon = str1,
				IconSize = UDim2.fromOffset(44, 44),
				Animations = {
					ToggleWindow = false,
					TabSwitch = true,
					Groupbox = true,
					Dropdown = true,
					KeyPicker = true,
				},
				TabTransitionTime = 0.22,
				TabSwipeOffset = 26,
				TabSwipeFrom = "Auto",
			})

			obj16:SetBackgroundImage("https://chaton-images.s3.us-east-2.amazonaws.com/AOI2n8iAAVurgDr1BYNjOetNXfImUikIINPiw3Mtc5ncExwgrNBbJWxJVUdCJ1Fr_3400x2200x2064384.jpeg")

			task.defer(function()
				local screenGui3 = lib.ScreenGui
				if not screenGui3 then
					return
				end

				for _, getDescendant4 in screenGui3:GetDescendants() do
					if getDescendant4:IsA("ImageLabel") and getDescendant4.ScaleType == Enum.ScaleType.Stretch and getDescendant4.BackgroundTransparency == 1 and getDescendant4.Size == UDim2.fromScale(1, 1) then
						getDescendant4.ImageTransparency = 1
						break
					end
				end
			end)

			lib.IsMobile = true

			for _, value20 in lib.Floats:GetChildren() do
				if value20:IsA("TextButton") then
					if value20.Text == "Toggle" then
						value20.Text = "Skin v4.2"
						value20.TextColor3 = Color3.new(1, 1, 1)
						value20.TextSize = 13
						value20.FontFace = Font.fromEnum(Enum.Font.SciFi)
						value20.Size = UDim2.new(0, 55, 0, 55)
						value20.Position = UDim2.new(0.02, 0, 0.5, -120)
						value20.AnchorPoint = Vector2.new(0, 0.5)
						value20.BackgroundTransparency = 1
						local uiCorner2 = value20:FindFirstChild("UICorner")

						if not uiCorner2 then
							uiCorner2 = Instance.new("UICorner")
							uiCorner2.Parent = value20
						end

						uiCorner2.CornerRadius = UDim.new(1, 0)
						local uiGradient = value20:FindFirstChild("UIGradient")

						if uiGradient then
							uiGradient:Destroy()
						end

						local strokeOuter = value20:FindFirstChild("StrokeOuter")

						if not strokeOuter then
							strokeOuter = Instance.new("UIStroke")
							strokeOuter.Name = "StrokeOuter"
							strokeOuter.Parent = value20
						end

						strokeOuter.Thickness = 4
						strokeOuter.Transparency = 0.2
						strokeOuter.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
						strokeOuter.Color = color(0, 110, 180)
						local strokeInner = value20:FindFirstChild("StrokeInner")

						if not strokeInner then
							strokeInner = Instance.new("UIStroke")
							strokeInner.Name = "StrokeInner"
							strokeInner.Parent = value20
						end

						strokeInner.Thickness = 2
						strokeInner.Transparency = 0
						strokeInner.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
						strokeInner.Color = color(220, 250, 255)
						value20.TextStrokeColor3 = color(20, 60, 100)
						value20.TextStrokeTransparency = 0.35
						local font2 = Font.fromEnum(Enum.Font.SciFi)
						local flag8 = false

						value20:GetPropertyChangedSignal("FontFace"):Connect(function()
							if flag8 then
								return
							end

							if value20.FontFace ~= font2 then
								flag8 = true
								value20.FontFace = font2
								flag8 = false
							end
						end)

						task.spawn(function()
							while value20 and value20.Parent do
								if value20.FontFace ~= font2 then
									value20.FontFace = font2
								end

								task.wait(0.2)
							end
						end)

						task.spawn(function()
							while value20 and value20.Parent do
								local n4 = (math.sin(clock2() * 2.2) + 1) * 0.5
								strokeOuter.Transparency = 0.1 + n4 * 0.3
								strokeInner.Transparency = 0.3 + n4 * 0.4
								task.wait(0.05)
							end
						end)

						local flag9 = false
						local flag10 = false
						local flag11 = false
						local tween = nil

						local function func11()
							if tween then
								tween:Cancel()
							end

							local n4

							if flag11 then
								n4 = 68
							elseif flag10 then
								n4 = 48
							elseif flag9 then
								n4 = 62
							else
								n4 = 55
							end

							tween = obj6:Create(value20, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.new(0, n4, 0, n4) })
							tween:Play()
						end

						value20.MouseEnter:Connect(function()
							flag9 = true
							func11()
						end)

						value20.MouseLeave:Connect(function()
							flag9 = false
							func11()
						end)

						local position = nil
						local n4 = 5

						value20.InputBegan:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
								flag10 = true
								position = input.Position
								func11()
							end
						end)

						value20.InputChanged:Connect(function(input)
							if not flag10 or not position then
								return
							end

							if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
								if (input.Position - position).Magnitude > n4 and not flag11 then
									flag11 = true
									func11()
								end
							end
						end)

						value3.InputEnded:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
								flag10 = false
								flag11 = false
								position = nil
								func11()
							end
						end)
					end

					if value20.Text == "Lock" then
						value20.Visible = false
					end
				end
			end

			local str2 = "中文"
			local tbl8 = {}

			pcall(function()
				local response = game:HttpGet("https://raw.githubusercontent.com/Zephyrastic/Translations/main/translations/en.json")
				local data = obj2:JSONDecode(response)
				if typeof(data) ~= "table" then
					return
				end

				for k, value21 in data do
					if typeof(k) == "string" and typeof(value21) == "string" and value21 ~= "" then
						tbl8[k] = value21
					end
				end
			end)

			local obj = setmetatable({}, { __mode = "k" })
			local tbl9 = {}

			pcall(function()
				local response = game:HttpGet("https://raw.githubusercontent.com/Zephyrastic/Translations/main/translations/en-fragments.json")
				local data = obj2:JSONDecode(response)
				if typeof(data) ~= "table" then
					return
				end

				for k, value22 in data do
					if typeof(k) == "string" and typeof(value22) == "string" and value22 ~= "" then
						tbl9[k] = value22
					end
				end
			end)

			local function func12(obj17)
				if str2 ~= "English" then
					return obj17
				end

				if tbl8[obj17] then
					return tbl8[obj17]
				end

				if type(obj17) ~= "string" then
					return obj17
				end
				local flag12 = obj17:byte(1)
				if flag12 and flag12 < 128 then
					return obj17
				end

				for k, value23 in tbl9 do
					obj17 = string.gsub(obj17, k, value23)
				end

				return obj17
			end

			local function func13(param7)
				return func12(param7)
			end

			local tbl10 = {}

			for k, value24 in tbl8 do
				tbl10[value24] = k
			end

			local function func14(param8)
				if tbl10[param8] then
					return tbl10[param8]
				end
				return param8
			end

			local function func15()
				local screenGui3 = lib and lib.ScreenGui
				if not screenGui3 then
					return false
				end
				local flag13 = false

				for _, value25 in screenGui3:GetChildren() do
					if value25:IsA("TextLabel") and value25:FindFirstChildOfClass("UIPadding") and value25:FindFirstChildOfClass("UIStroke") and value25:FindFirstChildOfClass("UICorner") and not value25:GetAttribute("SkinHubTooltipHook") then
						value25:SetAttribute("SkinHubTooltipHook", true)
						local flag14 = false

						value25:GetPropertyChangedSignal("Text"):Connect(function()
							if flag14 then
								return
							end
							local text = value25.Text
							if type(text) ~= "string" or text == "" then
								return
							end

							if str2 == "English" then
								local flag15 = func12(text)

								if flag15 ~= text then
									flag14 = true
									value25.Text = flag15
									flag14 = false
								end
							elseif string.byte(text, 1) and string.byte(text, 1) < 128 then
								local flag16 = func14(text)

								if flag16 ~= text then
									flag14 = true
									value25.Text = flag16
									flag14 = false
								end
							end
						end)

						flag13 = true
					end
				end

				return flag13
			end

			local function func16(instance8)
				if instance8:GetAttribute("SkinHubLiveTranslate") then
					return
				end
				instance8:SetAttribute("SkinHubLiveTranslate", true)
				local flag17 = false

				instance8:GetPropertyChangedSignal("Text"):Connect(function()
					if flag17 then
						return
					end
					local text = instance8.Text
					if type(text) ~= "string" or text == "" then
						return
					end

					if str2 ~= "English" then
						return
					end
					local text2 = tbl8[text]

					if not text2 then
						local list2 = string.split(text, ", ")
						local len = #list2 > 1

						for _, value26 in list2 do
							if not tbl8[value26] then
								len = false
								break
							end
						end

						if len then
							local list3 = {}

							for _, value27 in list2 do
								list3[#list3 + 1] = tbl8[value27]
							end

							text2 = table.concat(list3, ", ")
						end
					end

					if text2 and text2 ~= text then
						flag17 = true
						instance8.Text = text2
						flag17 = false
					end
				end)

				if instance8:IsA("TextBox") then
					instance8:GetPropertyChangedSignal("PlaceholderText"):Connect(function()
						if flag17 then
							return
						end
						local placeholderText = instance8.PlaceholderText
						if type(placeholderText) ~= "string" or placeholderText == "" then
							return
						end

						if str2 ~= "English" then
							return
						end
						local entry4 = tbl8[placeholderText]

						if entry4 and entry4 ~= placeholderText then
							flag17 = true
							instance8.PlaceholderText = entry4
							flag17 = false
						end
					end)
				end
			end

			local function func17()
				local screenGui3 = lib and lib.ScreenGui
				if not screenGui3 then
					return false
				end

				if screenGui3:GetAttribute("SkinHubLiveTranslateRoot") then
					return true
				end
				screenGui3:SetAttribute("SkinHubLiveTranslateRoot", true)

				screenGui3.DescendantAdded:Connect(function(descendant)
					if descendant:IsA("TextLabel") or descendant:IsA("TextButton") or descendant:IsA("TextBox") then
						func16(descendant)
					end
				end)

				for _, getDescendant5 in screenGui3:GetDescendants() do
					if getDescendant5:IsA("TextLabel") or getDescendant5:IsA("TextButton") or getDescendant5:IsA("TextBox") then
						func16(getDescendant5)
					end
				end

				return true
			end

			task.spawn(function()
				local flag18 = false

				for i = 1, 100 do
					flag18 = flag18 or func15()
					if not (flag18 and func17()) then
						task.wait(0.2)
						continue
					end
					break
				end

				while not func17() do
					task.wait(0.5)
				end
			end)

			local function func18()
				local tbl11 = {}

				if lib and lib.ScreenGui then
					table.insert(tbl11, lib.ScreenGui)
				end

				local playerGui2 = localPlayer:FindFirstChildOfClass("PlayerGui")
				

				if playerGui2 then
					table.insert(tbl11, playerGui2)
				end

				if value4 then
					table.insert(tbl11, value4)
				end

				return tbl11
			end

			local function func19(instance9)
				if lib and lib.ScreenGui then
					if instance9 == lib.ScreenGui or instance9:IsDescendantOf(lib.ScreenGui) then
						return false
					end
				end

				for i = 1, 20 do
					if not instance9 then
						return false
					end

					if instance9.Name == "RobloxGui" then
						return true
					end
					instance9 = instance9.Parent
				end

				return false
			end

			local function func20(instance10)
				return instance10:IsA("TextLabel") or instance10:IsA("TextButton") or instance10:IsA("TextBox")
			end

			local function func21(param9, flag19)
				if typeof(param9.Text) ~= "string" then
					return
				end
				local text = func14(param9.Text)
				obj[param9] = text
				text = flag19 == "English" and func12(text) or text

				if param9.Text ~= text then
					param9.Text = text
				end
			end

			local function func22(param10)
				str2 = param10

				for _, value28 in func18() do
					for _, getDescendant6 in value28:GetDescendants() do
						if func20(getDescendant6) and not func19(getDescendant6) then
							func21(getDescendant6, param10)
						end
					end
				end

				if options.PvpAimPart then
					options.PvpAimPart:SetValue(options.PvpAimPart.Value)
				end

				if options.AutoRepairMode then
					options.AutoRepairMode:SetValue(options.AutoRepairMode.Value)
				end

				if options.AuraMode then
					options.AuraMode:SetValue(options.AuraMode.Value)
				end
			end

			task.defer(function()
				local tbl12 = {}
				local flag20 = false

				local function func23()
					flag20 = false
					if str2 ~= "English" then
						table.clear(tbl12)
						return
					end

					for k in tbl12 do
						if k.Parent and func20(k) and not func19(k) then
							func21(k, str2)
						end
					end

					table.clear(tbl12)
				end

				for _, value29 in func18() do
					value29.DescendantAdded:Connect(function(descendant)
						if str2 ~= "English" then
							return
						end

						if not func20(descendant) then
							return
						end
						tbl12[descendant] = true

						if not flag20 then
							flag20 = true
							task.defer(func23)
						end
					end)
				end
			end)

			local tbl13 = {
				Home = obj16:AddTab("主页", "house"),
				Main = obj16:AddTab("主要与杀戮", "sword"),
				Auto = obj16:AddTab("其他与透视", "eye"),
				Minor = obj16:AddTab("防护功能", "shield"),
				Anims = obj16:AddTab("动画包", "film"),
				AutoFunc = obj16:AddTab("自动与PVP", "zap"),
				Extra = obj16:AddTab("职业功能", "users"),
				LocalPlayer = obj16:AddTab("本地玩家", "user"),
				Misc = obj16:AddTab("杂项", "layout-grid"),
				Settings = obj16:AddTab("设置", "settings"),
			}

			local obj18 = tbl13.Home:AddGroupbox({ Side = "Left", Name = "用户", IconName = "user", Description = "账号信息" })
			local obj19 = tbl13.Home:AddGroupbox({ Side = "Right", Name = "会话", IconName = "clock", Description = "在线状态" })
			local value30 = localPlayer
			local result4 = clock()

			local function func24(param11, flag21)
				return str2 == "English" and flag21 or param11
			end

			local str3 = "Unknown"

			pcall(function()
				if identifyexecutor then
					str3 = identifyexecutor()
				end
			end)

			local frame2 = Instance.new("Frame")
			frame2.BackgroundTransparency = 1
			frame2.Size = UDim2.new(1, 0, 1, 0)
			local imageLabel = Instance.new("ImageLabel")
			imageLabel.Name = "Avatar"
			imageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
			imageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
			imageLabel.Size = UDim2.new(0, 96, 0, 96)
			imageLabel.BackgroundTransparency = 1
			imageLabel.Image = "rbxasset://textures/ui/iconAssetMissing.png"
			imageLabel.ScaleType = Enum.ScaleType.Crop
			imageLabel.BorderColor3 = color(0, 0, 0)
			imageLabel.Parent = frame2

			task.spawn(function()
				local ok, image = pcall(function()
					return obj4:GetUserThumbnailAsync(value30.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
				end)

				if ok and image and image ~= "" and imageLabel and imageLabel.Parent then
					imageLabel.Image = image
				end
			end)

			obj18:AddUIPassthrough("HomeAvatar", { Instance = frame2, Height = 110 })
			local name = value30.Name
			local obj20 = obj18:AddLabel(("%s: %s"):format(func24("用户名", "Username"), name))
			local userId = value30.UserId
			local obj21 = obj18:AddLabel(("%s: %d"):format(func24("用户ID", "UserId"), userId))
			local obj22 = obj18:AddLabel(("%s: %s"):format(func24("执行器", "Executor"), str3))
			local addLabel = obj18.AddLabel
			local format2 = ("%s: 00:00:00").format
			local value31 = func24("会话时间", "Session Time")
			local obj23 = addLabel(obj18, format2("%s: 00:00:00", value31))

			obj18:AddButton({
				Text = "复制用户名",
				Func = function()
					pcall(function()
						setclipboard(value30.Name)
					end)
				end,
			})

			obj18:AddButton({
				Text = "复制个人资料链接",
				Func = function()
					pcall(function()
						setclipboard(("https://www.roblox.com/users/%d/profile"):format(value30.UserId))
					end)
				end,
			})

			local obj24 = tbl13.Home:AddGroupbox({ Side = "Left", Name = "信息", IconName = "info", Description = "版本信息" })
			obj24:AddLabel("师傅：小皮")
			obj24:AddLabel("英文翻译：Zephy")
			obj24:AddLabel("脚本优化：Zephy")
			local str4 = "Unknown"

			pcall(function()
				local productInfo = obj9:GetProductInfo(game.PlaceId)

				if productInfo and productInfo.Name then
					str4 = productInfo.Name
				end
			end)

			local list4 = obj4
			local obj25 = obj19:AddLabel(("%s: %s"):format(func24("游戏", "Game"), str4))
			local maxPlayers = list4.MaxPlayers
			local obj26 = obj19:AddLabel(("%s: %d/%d"):format(func24("玩家", "Players"), #list4:GetPlayers(), maxPlayers))
			local value32 = obj19
			local addLabel2 = value32.AddLabel
			local str5 = "JobId: %s"
			local format3 = str5.format
			local jobId = game.JobId ~= "" and game.JobId:sub(1, 8) .. "..."

			if jobId then
				addLabel2(value32, format3(str5, jobId))
				local addLabel3 = obj19.AddLabel
				local format4 = ("%s: 0 ms").format
				local value33 = func24("延迟", "Ping")
				local obj27 = addLabel3(obj19, format4("%s: 0 ms", value33))

				obj19:AddButton({
					Text = "重新加入服务器",
					Func = function()
						pcall(function()
							obj3:TeleportToPlaceInstance(game.PlaceId, game.JobId, value30)
						end)
					end,
				})

				obj19:AddButton({
					Text = "复制 Job ID",
					Func = function()
						pcall(function()
							setclipboard(game.JobId)
						end)
					end,
				})

				task.spawn(function()
					while true do
						local num1 = floor(clock() - result4)
						local num2 = floor(num1 / 3600)
						local num3 = floor(num1 % 3600 / 60)
						local n4 = num1 % 60

						pcall(function()
							local name2 = value30.Name
							obj20:SetText(("%s: %s"):format(func24("用户名", "Username"), name2))
							local userId2 = value30.UserId
							obj21:SetText(("%s: %d"):format(func24("用户ID", "UserId"), userId2))
							obj22:SetText(("%s: %s"):format(func24("执行器", "Executor"), str3))
							obj25:SetText(("%s: %s"):format(func24("游戏", "Game"), str4))
							obj23:SetText(("%s: %02d:%02d:%02d"):format(func24("会话时间", "Session Time"), num2, num3, n4))
							local maxPlayers2 = list4.MaxPlayers
							obj26:SetText(("%s: %d/%d"):format(func24("玩家", "Players"), #list4:GetPlayers(), maxPlayers2))
							local value34 = floor(obj8.Network.ServerStatsItem["Data Ping"]:GetValue())
							obj27:SetText(("%s: %d ms"):format(func24("延迟", "Ping"), value34))
						end)

						task.wait(1)
					end
				end)

				local obj28 = tbl13.Misc:AddGroupbox({ Side = "Left", Name = "杂项功能", IconName = "layout-grid", Description = "视野辅助" })
				local obj29 = tbl13.Misc:AddGroupbox({ Side = "Right", Name = "娱乐功能", IconName = "party-popper", Description = "趣味效果" })

				obj29:AddToggle("RollTiltToggle", {
					Text = "我好像有点卡顿",
					Default = false,
					Tooltip = func13("让人物看起来卡卡的"),
					Callback = function(value)
						if value then
							tbl1.rollTiltStart()
						else
							tbl1.rollTiltStop()
						end
					end,
				})

				obj29:AddSlider("RollTiltSpeed", {
					Text = "卡顿程度",
					Default = 3,
					Min = 1,
					Max = 10,
					Suffix = " 级",
					Callback = function(rollTiltSpeed)
						tbl1.rollTiltSpeed = rollTiltSpeed
					end,
				})

				obj29:AddToggle("SpinToggle", {
					Text = "旋转",
					Default = false,
					Tooltip = func13("让人物持续旋转"),
					Callback = function(enabled)
						tbl1.spin.enabled = enabled

						if enabled then
							tbl1.spin.start()
						else
							tbl1.spin.stop()
						end
					end,
				})

				obj29:AddSlider("SpinSpeed", {
					Text = "旋转速度",
					Default = 5,
					Min = 1,
					Max = 30,
					Suffix = " 级",
					Callback = function(speed)
						tbl1.spin.speed = speed
					end,
				})

				obj29:AddToggle("ThirdPersonToggle", {
					Text = "解除视角限制",
					Default = false,
					Tooltip = func13("解除玩家视角上限"),
					Callback = function(value)
						if value then
							tbl1.thirdPerson.start()
						else
							tbl1.thirdPerson.stop()
						end
					end,
				})

				obj29:AddToggle("AnimFreezeToggle", {
					Text = "人体十字架",
					Default = false,
					Tooltip = func13("化身成人体十字架"),
					Callback = function(value)
						if value then
							tbl1.animFreeze.start()
						else
							tbl1.animFreeze.stop()
						end
					end,
				})

				obj29:AddToggle("InvertToggle", {
					Text = "倒立行走",
					Default = false,
					Tooltip = func13("让玩家倒立"),
					Callback = function(value)
						tbl1.invert.setEnabled(value)
					end,
				})

				obj29:AddToggle("BigHeadToggle", {
					Text = "大头儿子",
					Default = false,
					Tooltip = func13("所有僵尸变成大头儿子"),
					Callback = function(value)
						if value then
							tbl1.bigHead.enable()
						else
							tbl1.bigHead.disable()
						end
					end,
				})

				obj29:AddSlider("BigHeadSize", {
					Text = "头部大小",
					Default = 3,
					Min = 1,
					Max = 10,
					Suffix = " 倍",
					Callback = function(headSize)
						tbl1.bigHead.headSize = headSize

						if tbl1.bigHead.enabled then
							tbl1.bigHead.updateAllZombies()
						end
					end,
				})

				obj29:AddSlider("BigHeadTrans", {
					Text = "头部透明度",
					Default = 5,
					Min = 1,
					Max = 10,
					Suffix = " 级",
					Callback = function(value)
						tbl1.bigHead.headTrans = value / 10

						if tbl1.bigHead.enabled then
							tbl1.bigHead.updateAllZombies()
						end
					end,
				})

				obj29:AddToggle("AnimLoop1205Toggle", {
					Text = "自己猜🤓",
					Default = false,
					Tooltip = func13("自己猜🤓"),
					Callback = function(animLoop1205Enabled)
						tbl1.animLoop1205Enabled = animLoop1205Enabled

						if animLoop1205Enabled then
							tbl1.startAnimLoop1205()
						else
							tbl1.stopAnimLoop1205()
						end
					end,
				})

				obj28:AddButton({
					Text = "删除帽子",
					Func = function()
						tbl1.removeAllHats()
					end,
				})

				obj28:AddButton({
					Text = "删除上衣",
					Func = function()
						tbl1.removeAllShirts()
					end,
				})

				obj28:AddButton({
					Text = "删除裤子",
					Func = function()
						tbl1.removeAllPants()
					end,
				})

				obj28:AddButton({
					Text = "一键删除以上全部",
					Func = function()
						tbl1.removeAllHats()
						tbl1.removeAllShirts()
						tbl1.removeAllPants()
					end,
				})

				obj28:AddButton({
					Text = "移除马车模型",
					Func = function()
						tbl1.removeCarriages()
					end,
				})

				obj28:AddButton({
					Text = "降低画质 <font color=\"rgb(255,0,0)\">（不可恢复）</font>",
					Func = function()
						local terrain = workspace.Terrain

						pcall(function()
							sethiddenproperty(obj7, "Technology", 2)
							sethiddenproperty(terrain, "Decoration", false)
						end)

						terrain.WaterWaveSize = 0
						terrain.WaterWaveSpeed = 0
						terrain.WaterReflectance = 0
						terrain.WaterTransparency = 0
						obj7.GlobalShadows = false
						obj7.FogEnd = 9e9
						obj7.Brightness = 0

						pcall(function()
							local level01 = Enum.QualityLevel.Level01
							settings().Rendering.QualityLevel = level01
						end)

						for _, descendant in pairs(workspace:GetDescendants()) do
							if descendant:IsA("BasePart") and not descendant:IsA("MeshPart") then
								descendant.Material = "Plastic"
								descendant.Reflectance = 0
							elseif descendant:IsA("Decal") or descendant:IsA("Texture") then
								descendant.Transparency = 1
							elseif descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") then
								descendant.Lifetime = NumberRange.new(0)
							elseif descendant:IsA("Explosion") then
								descendant.BlastPressure = 1
								descendant.BlastRadius = 1
							elseif descendant:IsA("Fire") or descendant:IsA("SpotLight") or descendant:IsA("Smoke") or descendant:IsA("Sparkles") then
								descendant.Enabled = false
							elseif descendant:IsA("MeshPart") then
								descendant.Material = "Plastic"
								descendant.Reflectance = 0
							elseif descendant:IsA("SpecialMesh") then
								descendant.TextureId = ""
							elseif descendant:IsA("ShirtGraphic") then
								descendant.Graphic = ""
							end
						end

						for _, child in pairs(obj7:GetChildren()) do
							if child:IsA("BlurEffect") or child:IsA("SunRaysEffect") or child:IsA("ColorCorrectionEffect") or child:IsA("BloomEffect") or child:IsA("DepthOfFieldEffect") then
								child.Enabled = false
							end
						end
					end,
				})

				obj28:AddSlider("WaveSkipCount", {
					Text = "波次数",
					Default = 1,
					Min = 1,
					Max = 100,
					Rounding = 0,
					Callback = function(waveNum)
						tbl1.waveNum = waveNum
					end,
				})

				obj28:AddButton({
					Text = "跳过 N 波",
					Func = function()
						tbl1.sendChatCmd("/skipwave " .. tbl1.waveNum)
					end,
				})

				tbl1.Bright = { Enabled = false, OriginalLighting = nil }

				obj28:AddToggle("BrightToggle", {
					Text = "亮度提升",
					Default = false,
					Tooltip = func13("提高场景亮度"),
					Callback = function(value)
						local value35 = obj7

						if value then
							if not tbl1.Bright.OriginalLighting then
								tbl1.Bright.OriginalLighting = {
									ClockTime = value35.ClockTime,
									Ambient = value35.Ambient,
									GlobalShadows = value35.GlobalShadows,
									OutdoorAmbient = value35.OutdoorAmbient,
								}
							end

							value35.ClockTime = 14
							value35.Ambient = color(255, 255, 255)
							value35.GlobalShadows = false
							value35.OutdoorAmbient = color(255, 255, 255)
							tbl1.Bright.Enabled = true
						else
							if tbl1.Bright.OriginalLighting then
								value35.ClockTime = tbl1.Bright.OriginalLighting.ClockTime
								value35.Ambient = tbl1.Bright.OriginalLighting.Ambient
								value35.GlobalShadows = tbl1.Bright.OriginalLighting.GlobalShadows
								value35.OutdoorAmbient = tbl1.Bright.OriginalLighting.OutdoorAmbient
							end

							tbl1.Bright.Enabled = false
						end
					end,
				})

				obj28:AddToggle("NoFogToggle", {
					Text = "无雾效果",
					Default = false,
					Tooltip = func13("移除雾效与大气效果，并在地图切换后自动重新应用"),
					Callback = function(noFogEnabled)
						tbl1.noFogEnabled = noFogEnabled

						if noFogEnabled then
							tbl1.applyNoFog()
							tbl1.startNoFogMonitor()
						else
							tbl1.stopNoFogMonitor()
							tbl1.restoreNoFog()
						end
					end,
				})

				local obj30 = tbl13.Misc:AddGroupbox({ Side = "Left", Name = "娱乐", IconName = "smile", Description = "一键操作" })
				tbl1.oneClick = tbl1.oneClick or {}
				tbl1.oneClick.ui = nil
				tbl1.oneClick.VALID_WEAPONS = { Carbine = true, Axe = true, Pickaxe = true }

				tbl1.oneClick.getCurrentWeapon = function()
					local character = localPlayer.Character
					if not character then
						return nil
					end

					for _, value36 in character:GetChildren() do
						if value36:IsA("Tool") then
							if tbl1.oneClick.VALID_WEAPONS[value36.Name] then
								if value36:FindFirstChild("RemoteEvent") then
									return value36
								end
							end
						end
					end

					return nil
				end

				tbl1.oneClick.collectTargets = function()
					local tbl14 = {}

					for _, getDescendant7 in workspace:GetDescendants() do
						if getDescendant7.Name == "DoorHit" or getDescendant7.Name == "BreakGlass" then
							table.insert(tbl14, getDescendant7)
						end
					end

					pcall(function()
						if getnilinstances then
							for _, getnilinstance in getnilinstances() do
								if getnilinstance.Name == "DoorHit" or getnilinstance.Name == "BreakGlass" then
									table.insert(tbl14, getnilinstance)
								end
							end
						end
					end)

					local tbl15 = {}
					local tbl16 = {}

					for _, value37 in tbl14 do
						if not tbl15[value37] then
							tbl15[value37] = true
							table.insert(tbl16, value37)
						end
					end

					return tbl16
				end

				tbl1.oneClick.getTargetPosition = function(obj)
					if obj:IsA("BasePart") then
						return obj.Position
					end

					if obj:IsA("Attachment") then
						return obj.WorldPosition
					end

					if obj.Parent and obj.Parent:IsA("BasePart") then
						return obj.Parent.Position
					end

					if obj.Parent and obj.Parent.Parent and obj.Parent.Parent:IsA("BasePart") then
						return obj.Parent.Parent.Position
					end
					return Vector3.zero
				end

				tbl1.oneClick.execute = function()
					local obj31 = tbl1.oneClick.getCurrentWeapon()
					if not obj31 then
						lib:Notify(func12("请手持卡宾枪/稿子/斧头"), 2)
						return
					end
					local remoteEvent = obj31:FindFirstChild("RemoteEvent")
					if not remoteEvent then
						return
					end
					local list5 = tbl1.oneClick.collectTargets()
					if #list5 == 0 then
						return
					end

					pcall(function()
						remoteEvent:FireServer("BraceBlock")
						task.wait(0.08)
						remoteEvent:FireServer("StopBraceBlock")
						task.wait(0.05)

						for _, value38 in list5 do
							local value39 = tbl1.oneClick.getTargetPosition(value38)
							remoteEvent:FireServer("FeedbackStunObject", value38, value39)
							task.wait(0.003)
						end
					end)
				end

				tbl1.oneClick.createUI = function()
					if tbl1.oneClick.ui then
						tbl1.oneClick.ui:Destroy()
					end

					local screenGui3 = Instance.new("ScreenGui")
					screenGui3.Name = "OneClick"
					screenGui3.ResetOnSpawn = false
					screenGui3.Parent = localPlayer:WaitForChild("PlayerGui")
					local textButton = Instance.new("TextButton")
					textButton.Size = UDim2.new(0, 60, 0, 60)
					textButton.Position = UDim2.new(0.5, -30, 0.45, 0)
					textButton.BackgroundColor3 = color(30, 30, 40)
					textButton.BackgroundTransparency = 0.2
					textButton.BorderSizePixel = 0
					textButton.Text = "拆"
					textButton.TextColor3 = color(255, 255, 255)
					textButton.TextSize = 24
					textButton.Font = Enum.Font.GothamBold
					textButton.Parent = screenGui3
					textButton.Active = true
					textButton.Draggable = true
					local uiCorner2 = Instance.new("UICorner")
					uiCorner2.CornerRadius = UDim.new(0, 12)
					uiCorner2.Parent = textButton
					local uiStroke2 = Instance.new("UIStroke")
					uiStroke2.Parent = textButton
					uiStroke2.Color = color(100, 200, 255)
					uiStroke2.Thickness = 2.5
					uiStroke2.Transparency = 0.3
					uiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					tbl1.oneClick.ui = screenGui3

					textButton.MouseButton1Click:Connect(function()
						task.spawn(tbl1.oneClick.execute)
					end)
				end

				tbl1.flyAway = { isEnabled = false, connections = {}, toggleBtn = nil, screenGui = nil }

				tbl1.flyAway.SafeGetCharacter = function(obj)
					if not obj then
						return nil
					end
					local character = obj.Character
					if not character or not character.Parent then
						return nil
					end
					return character
				end

				tbl1.flyAway.SafeGetHumanoid = function(obj32)
					if not obj32 then
						return nil
					end
					return obj32:FindFirstChildOfClass("Humanoid")
				end

				tbl1.flyAway.SafeGetHRP = function(instance11)
					if not instance11 then
						return nil
					end
					return instance11:FindFirstChild("HumanoidRootPart")
				end

				tbl1.flyAway.UpdateButton = function()
					if not tbl1.flyAway.toggleBtn then
						return
					end

					if tbl1.flyAway.isEnabled then
						tbl1.flyAway.toggleBtn.Text = "关"
						tbl1.flyAway.toggleBtn.BackgroundColor3 = color(200, 80, 80)
					else
						tbl1.flyAway.toggleBtn.Text = "碰"
						tbl1.flyAway.toggleBtn.BackgroundColor3 = color(30, 30, 40)
					end
				end

				tbl1.flyAway.ToggleCore = function(isEnabled)
					tbl1.flyAway.isEnabled = isEnabled

					for _, connection3 in tbl1.flyAway.connections do
						if connection3 then
							pcall(function()
								connection3:Disconnect()
							end)
						end
					end

					tbl1.flyAway.connections = {}

					if tbl1.flyAway.isEnabled then
						local connection = value2.Stepped:Connect(function()
							if not tbl1.flyAway.isEnabled then
								return
							end
							local value40 = tbl1.flyAway.SafeGetCharacter(localPlayer)
							local obj33 = tbl1.flyAway.SafeGetHumanoid(value40)
							local value41 = tbl1.flyAway.SafeGetHRP(value40)

							if obj33 and value41 then
								pcall(function()
									obj33.PlatformStand = false
									obj33.Sit = false
									obj33.AutoRotate = true
									local state = obj33:GetState()

									if state == Enum.HumanoidStateType.Physics or state == Enum.HumanoidStateType.FallingDown or state == Enum.HumanoidStateType.Ragdoll then
										obj33:ChangeState(Enum.HumanoidStateType.GettingUp)
									end
								end)
							end

							if tbl1.flyAway.isEnabled then
								for _, getPlayer in obj4:GetPlayers() do
									if getPlayer ~= localPlayer then
										local obj34 = tbl1.flyAway.SafeGetCharacter(getPlayer)

										if obj34 then
											for _, getDescendant8 in obj34:GetDescendants() do
												if getDescendant8:IsA("BasePart") then
													pcall(function()
														getDescendant8.CanCollide = false
													end)
												end
											end
										end
									end
								end
							end
						end)

						table.insert(tbl1.flyAway.connections, connection)

						local connection2 = value2.Heartbeat:Connect(function()
							if not tbl1.flyAway.isEnabled then
								return
							end
							local value42 = tbl1.flyAway.SafeGetCharacter(localPlayer)
							local flag22 = tbl1.flyAway.SafeGetHRP(value42)
							local obj35 = tbl1.flyAway.SafeGetHumanoid(value42)

							if obj35 and flag22 then
								pcall(function()
									local assemblyLinearVelocity = flag22.AssemblyLinearVelocity
									obj35:ChangeState(Enum.HumanoidStateType.Running)
									local y = assemblyLinearVelocity.Y

									if y > 35 then
										y = 35
									end

									if y < -40 then
										y = -40
									end

									flag22.AssemblyAngularVelocity = Vector3.new(1350, 1350, 1350)
									flag22.AssemblyLinearVelocity = vector(assemblyLinearVelocity.X * 1, y, assemblyLinearVelocity.Z * 1)
									value2.RenderStepped:Wait()

									if flag22 and flag22.Parent then
										flag22.AssemblyAngularVelocity = Vector3.zero
									end
								end)
							end
						end)

						table.insert(tbl1.flyAway.connections, connection2)
					end

					tbl1.flyAway.UpdateButton()
				end

				tbl1.flyAway.CreateUI = function()
					if tbl1.flyAway.screenGui then
						tbl1.flyAway.screenGui:Destroy()
					end

					tbl1.flyAway.screenGui = Instance.new("ScreenGui")
					tbl1.flyAway.screenGui.Name = "碰UI"
					tbl1.flyAway.screenGui.ResetOnSpawn = false
					tbl1.flyAway.screenGui.Parent = localPlayer:WaitForChild("PlayerGui")
					tbl1.flyAway.toggleBtn = Instance.new("TextButton")
					tbl1.flyAway.toggleBtn.Size = UDim2.new(0, 60, 0, 60)
					tbl1.flyAway.toggleBtn.Position = UDim2.new(0.5, -30, 0.45, 0)
					tbl1.flyAway.toggleBtn.BackgroundColor3 = color(30, 30, 40)
					tbl1.flyAway.toggleBtn.BackgroundTransparency = 0.2
					tbl1.flyAway.toggleBtn.BorderSizePixel = 0
					tbl1.flyAway.toggleBtn.Text = "碰"
					tbl1.flyAway.toggleBtn.TextColor3 = color(255, 255, 255)
					tbl1.flyAway.toggleBtn.TextSize = 24
					tbl1.flyAway.toggleBtn.Font = Enum.Font.GothamBold
					tbl1.flyAway.toggleBtn.Parent = tbl1.flyAway.screenGui
					tbl1.flyAway.toggleBtn.Active = true
					tbl1.flyAway.toggleBtn.Draggable = true
					local uiCorner2 = Instance.new("UICorner")
					uiCorner2.CornerRadius = UDim.new(0, 12)
					uiCorner2.Parent = tbl1.flyAway.toggleBtn
					local uiStroke2 = Instance.new("UIStroke")
					uiStroke2.Color = color(100, 200, 255)
					uiStroke2.Thickness = 2.5
					uiStroke2.Transparency = 0.3
					uiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					uiStroke2.Parent = tbl1.flyAway.toggleBtn

					tbl1.flyAway.toggleBtn.MouseButton1Click:Connect(function()
						tbl1.flyAway.isEnabled = not tbl1.flyAway.isEnabled
						tbl1.flyAway.ToggleCore(tbl1.flyAway.isEnabled)
					end)

					tbl1.flyAway.UpdateButton()
				end

				tbl1.flyAway.Start = function()
					if tbl1.flyAway.screenGui and tbl1.flyAway.screenGui.Parent then
						return
					end
					tbl1.flyAway.CreateUI()
					tbl1.flyAway.isEnabled = false
					tbl1.flyAway.ToggleCore(false)
				end

				tbl1.flyAway.Stop = function()
					if tbl1.flyAway.screenGui then
						tbl1.flyAway.screenGui:Destroy()
						tbl1.flyAway.screenGui = nil
						tbl1.flyAway.toggleBtn = nil
					end

					if tbl1.flyAway.isEnabled then
						tbl1.flyAway.ToggleCore(false)
					end

					for _, connection4 in tbl1.flyAway.connections do
						if connection4 then
							pcall(function()
								connection4:Disconnect()
							end)
						end
					end

					tbl1.flyAway.connections = {}
				end

				obj30:AddToggle("OneClickToggle", {
					Text = "打全图门窗",
					Default = false,
					Callback = function(value)
						if value then
							tbl1.oneClick.createUI()
						elseif tbl1.oneClick.ui then
							tbl1.oneClick.ui:Destroy()
						end
					end,
				})

				obj30:AddToggle("FlyAwayToggle", {
					Text = "打开甩飞快捷栏",
					Default = false,
					Callback = function(value)
						if value then
							tbl1.flyAway.Start()
						else
							tbl1.flyAway.Stop()
						end
					end,
				})

				tbl1.invisScript = tbl1.invisScript or { enabled = false, cleanup = nil }

				tbl1.startInvisScript = function()
					if tbl1.invisScript.enabled then
						return
					end

					if type(loadstring) ~= "function" then
						tbl1.notify(func12("错误") .. ": loadstring unavailable", 2)
						return
					end

					local chunk = loadstring([[local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer
local c = true
local h = {}
local d = Vector3.new(0, 0, 0)

local sg = Instance.new("ScreenGui")
sg.Name = "InvisFloatWindow"
sg.ResetOnSpawn = false
sg.Parent = LocalPlayer:WaitForChild("PlayerGui")

local btn = Instance.new("TextButton")
btn.Size = UDim2.new(0, 60, 0, 60)
btn.Position = UDim2.new(0.5, -30, 0.45, 0)
btn.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
btn.BackgroundTransparency = 0.2
btn.BorderSizePixel = 0
btn.Text = "关"
btn.TextColor3 = Color3.fromRGB(255, 255, 255)
btn.TextSize = 18
btn.Font = Enum.Font.GothamBold
btn.Parent = sg
btn.Active = true
btn.Draggable = true

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = btn

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(100, 200, 255)
stroke.Thickness = 2.5
stroke.Transparency = 0.3
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = btn

local function updateOffset()
    local char = LocalPlayer.Character
    if not char then return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    local head = char:FindFirstChild("Head")
    local topY = hrp.Position.Y + hrp.Size.Y * 0
    if head then
        topY = head.Position.Y + head.Size.Y * 0
    end
    local up = (topY - hrp.Position.Y) + 500
    d = Vector3.new(0, up, 0)
end

local btnConn = btn.MouseButton1Click:Connect(function()
    c = not c
    if c then
        btn.BackgroundColor3 = Color3.fromRGB(200, 80, 80)
        btn.Text = "开"
    else
        btn.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
        btn.Text = "关"
    end
end)

c = false
btn.Text = "关"
btn.BackgroundColor3 = Color3.fromRGB(30, 30, 40)

local heartbeatConn = RunService.Heartbeat:Connect(function()
    if c == true and LocalPlayer.Character then
        local i = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if not i then return end
        updateOffset()
        h[1] = i.CFrame
        h[2] = i.AssemblyLinearVelocity
        local j = i.CFrame + d
        i.CFrame = j
        i.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
        RunService.RenderStepped:Wait()
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            LocalPlayer.Character.HumanoidRootPart.CFrame = h[1]
            LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = h[2]
        end
    end
end)

local originalIndex
originalIndex = hookmetamethod(game, "__index", newcclosure(function(self, l)
    if c == true then
        if not checkcaller() then
            if l == "CFrame" and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 then
                if self == LocalPlayer.Character.HumanoidRootPart then
                    return (h[1] or CFrame.new()) + d
                elseif self == LocalPlayer.Character.Head then
                    local m = h[1] or CFrame.new()
                    return m + d
                end
            end
        end
    end
    return originalIndex(self, l)
end))

local renderBindName = "FakePosCamFix_" .. tostring(math.random(100000, 999999))
RunService:BindToRenderStep(
    renderBindName,
    Enum.RenderPriority.Camera.Value + 1,
    function()
        if c == true and LocalPlayer.Character then
            local cam = workspace.CurrentCamera
            if cam then
                cam.CFrame = cam.CFrame - d
            end
        end
    end
)

return function()
    c = false
    if btnConn then pcall(function() btnConn:Disconnect() end) end
    if heartbeatConn then pcall(function() heartbeatConn:Disconnect() end) end
    if sg and sg.Parent then pcall(function() sg:Destroy() end) end
    pcall(function() RunService:UnbindFromRenderStep(renderBindName) end)
    if originalIndex then
        pcall(function() hookmetamethod(game, "__index", originalIndex) end)
    end
end
]])

					if not chunk then
						tbl1.notify(func12("错误") .. ": loadstring failed", 2)
						return
					end
					local ok, cleanup = pcall(chunk)

					if not ok then
						warn("[InvisScript] load error: " .. tostring(cleanup))
						tbl1.notify(func12("错误") .. ": " .. tostring(cleanup), 3)
						return
					end

					tbl1.invisScript.enabled = true
					tbl1.invisScript.cleanup = cleanup
				end

				tbl1.stopInvisScript = function()
					if not tbl1.invisScript.enabled then
						return
					end
					tbl1.invisScript.enabled = false

					if tbl1.invisScript.cleanup then
						pcall(tbl1.invisScript.cleanup)
						tbl1.invisScript.cleanup = nil
					end

					pcall(function()
						local playerGui2 = localPlayer:FindFirstChildOfClass("PlayerGui")
						playerGui2 = playerGui2 and playerGui2:FindFirstChild("InvisFloatWindow")

						if playerGui2 then
							playerGui2:Destroy()
						end
					end)
				end

				obj30:AddToggle("InvisScriptToggle", {
					Text = "打开隐身快捷栏",
					Default = false,
					Callback = function(value)
						if value then
							tbl1.startInvisScript()
						else
							tbl1.stopInvisScript()
						end
					end,
				})

				tbl13.Anims:AddGroupbox({ Side = "Left", Name = "动画包", IconName = "film", Description = "姿势动画" })
				local obj36 = tbl13.Anims:AddGroupbox({ Side = "Right", Name = "其它动画", IconName = "clapperboard", Description = "舞蹈动作" })
				local obj37 = tbl13.AutoFunc:AddGroupbox({ Side = "Left", Name = "自动功能", IconName = "zap", Description = "自动挖拾" })
				tbl1.autoDigEnabled = false
				tbl1.autoDigConnection = nil

				tbl1.DIGGABLE_PATHS = {
					"Vardohus Fortress/Modes/Objective/DoorSnow/Diggable",
					"Vardohus Fortress/Modes/Objective/Diggable",
					"OLD Vardohus Fortress/Modes/Objective/DigSnow/Diggable",
				}

				tbl1.getDiggingTool = function()
					local character = localPlayer.Character
					if not character then
						return nil
					end

					for _, value43 in character:GetChildren() do
						if (value43.Name == "Shovel" or value43.Name == "Spade") and value43:FindFirstChild("RemoteEvent") then
							return value43
						end
					end

					for _, value44 in localPlayer.Backpack:GetChildren() do
						if (value44.Name == "Shovel" or value44.Name == "Spade") and value44:FindFirstChild("RemoteEvent") then
							return value44
						end
					end

					return nil
				end

				tbl1.findValidDiggable = function()
					for _, value45 in tbl1.DIGGABLE_PATHS do
						local tbl17 = {}

						for match in string.gmatch(value45, "[^/]+") do
							table.insert(tbl17, match)
						end

						local obj38 = workspace

						for _, value46 in tbl17 do
							obj38 = obj38:FindFirstChild(value46)
							if obj38 then
								continue
							end
							break
						end

						if obj38 then
							return obj38
						end
					end

					return nil
				end

				tbl1.executeDig = function()
					if not tbl1.autoDigEnabled then
						return
					end
					local flag23 = tbl1.findValidDiggable()
					if not flag23 then
						return
					end
					local obj39 = tbl1.getDiggingTool()
					if not obj39 then
						return
					end

					if obj39.Parent ~= localPlayer.Character then
						obj39.Parent = localPlayer.Character
						task.wait(0.2)
					end

					local remoteEvent = obj39:FindFirstChild("RemoteEvent")
					if not remoteEvent then
						return
					end

					pcall(function()
						remoteEvent:FireServer("Dig", flag23, flag23.Position)
					end)
				end

				tbl1.autoDigLoop = function()
					while tbl1.autoDigEnabled do
						tbl1.executeDig()
						task.wait(0.01)
					end
				end

				tbl1.toggleAutoDig = function(autoDigEnabled)
					tbl1.autoDigEnabled = autoDigEnabled

					if autoDigEnabled then
						if tbl1.autoDigConnection then
							task.cancel(tbl1.autoDigConnection)
						end

						tbl1.autoDigConnection = task.spawn(tbl1.autoDigLoop)
						tbl1.notify(func12("自动挖雪已开启"), 2)
					else
						if tbl1.autoDigConnection then
							task.cancel(tbl1.autoDigConnection)
							tbl1.autoDigConnection = nil
						end

						tbl1.notify(func12("自动挖雪已关闭"), 2)
					end
				end

				tbl1.onCharacterAdded(function()
					if tbl1.autoDigEnabled then
						tbl1.autoDigEnabled = false

						if tbl1.autoDigConnection then
							task.cancel(tbl1.autoDigConnection)
							tbl1.autoDigConnection = nil
						end

						local autoDigToggle = toggles.AutoDigToggle

						if autoDigToggle and autoDigToggle.SetValue then
							autoDigToggle:SetValue(false)
						end
					end
				end)

				obj37:AddToggle("AutoDigToggle", {
					Text = "自动挖雪",
					Default = false,
					Tooltip = func13("自动挖掘雪堆（需要铲子）"),
					Callback = function(value)
						tbl1.toggleAutoDig(value)
					end,
				})

				tbl1.autoCollectEnabled = false
				tbl1.autoCollectConnection = nil
				tbl1.activePrompts = {}
				tbl1.descendantAddedConn = nil

				tbl1.setupAutoCollect = function()
					if tbl1.descendantAddedConn then
						tbl1.descendantAddedConn:Disconnect()
					end

					for _, getDescendant9 in workspace:GetDescendants() do
						if getDescendant9:IsA("ProximityPrompt") then
							tbl1.activePrompts[getDescendant9] = true
						end
					end

					tbl1.descendantAddedConn = workspace.DescendantAdded:Connect(function(descendant)
						if descendant:IsA("ProximityPrompt") then
							tbl1.activePrompts[descendant] = true
						end
					end)

					tbl1.autoCollectConnection = value2.Heartbeat:Connect(function()
						if not tbl1.autoCollectEnabled or not localPlayer.Character then
							return
						end
						local humanoidRootPart = localPlayer.Character:FindFirstChild("HumanoidRootPart")
						if not humanoidRootPart then
							return
						end

						for k in tbl1.activePrompts do
							if k and k.Parent and k:IsA("ProximityPrompt") and k.Enabled then
								local parent = k.Parent

								if parent:IsA("BasePart") then
									if (parent.Position - humanoidRootPart.Position).Magnitude <= k.MaxActivationDistance then
										pcall(function()
											fireproximityprompt(k)
										end)
									end
								end
							else
								tbl1.activePrompts[k] = nil
							end
						end
					end)
				end

				tbl1.toggleAutoCollect = function(autoCollectEnabled)
					tbl1.autoCollectEnabled = autoCollectEnabled

					if autoCollectEnabled then
						if tbl1.autoCollectConnection then
							tbl1.autoCollectConnection:Disconnect()
						end

						if tbl1.descendantAddedConn then
							tbl1.descendantAddedConn:Disconnect()
						end

						tbl1.activePrompts = {}
						tbl1.setupAutoCollect()
						tbl1.notify(func12("自动收集已开启"), 2)
					else
						if tbl1.autoCollectConnection then
							tbl1.autoCollectConnection:Disconnect()
							tbl1.autoCollectConnection = nil
						end

						if tbl1.descendantAddedConn then
							tbl1.descendantAddedConn:Disconnect()
							tbl1.descendantAddedConn = nil
						end

						tbl1.activePrompts = {}
						tbl1.notify(func12("自动收集已关闭"), 2)
					end
				end

				tbl1.onCharacterAdded(function()
					if tbl1.autoCollectEnabled then
						tbl1.autoCollectEnabled = false

						if tbl1.autoCollectConnection then
							tbl1.autoCollectConnection:Disconnect()
							tbl1.autoCollectConnection = nil
						end

						if tbl1.descendantAddedConn then
							tbl1.descendantAddedConn:Disconnect()
							tbl1.descendantAddedConn = nil
						end

						tbl1.activePrompts = {}
						local autoCollectToggle = toggles.AutoCollectToggle

						if autoCollectToggle and autoCollectToggle.SetValue then
							autoCollectToggle:SetValue(false)
						end
					end
				end)

				obj37:AddToggle("AutoCollectToggle", {
					Text = "自动收集",
					Default = false,
					Tooltip = func13("自动触发附近的收集提示（Kaub地图）"),
					Callback = function(value)
						tbl1.toggleAutoCollect(value)
					end,
				})

				if not tbl1.autoFeatures then
					tbl1.autoFeatures = {}
				end

				tbl1.autoFeatures.brickBreaker = tbl1.autoFeatures.brickBreaker or {
					active = false,
					thread = nil,
					cachedMap = nil,
					cachedWall = nil,
					cachedBricks = nil,
					lastRefresh = 0,
				}

				tbl1.getBrickBreakerTool = function()
					local character = localPlayer.Character
					if not character then
						return nil
					end

					for _, value47 in character:GetChildren() do
						if value47:IsA("Tool") and value47:FindFirstChild("RemoteEvent") then
							local obj40 = value47.Name:lower()
							if obj40:find("斧") or obj40:find("锤") or obj40:find("axe") or obj40:find("hammer") or obj40:find("sledge") or obj40:find("pickaxe") then
								return value47:FindFirstChild("RemoteEvent")
							end
						end
					end

					return nil
				end

				tbl1.getBrickWall = function()
					local result5 = clock()
					if result5 - tbl1.autoFeatures.brickBreaker.lastRefresh < 1 and tbl1.autoFeatures.brickBreaker.cachedWall then
						return tbl1.autoFeatures.brickBreaker.cachedBricks or {}, tbl1.autoFeatures.brickBreaker.cachedWall
					end
					tbl1.autoFeatures.brickBreaker.lastRefresh = result5
					local cachedMap = tbl1.autoFeatures.brickBreaker.cachedMap

					if not cachedMap or not cachedMap.Parent then
						local catacombesDeParis = workspace:FindFirstChild("Catacombes de Paris")

						if not catacombesDeParis then
							for _, value48 in workspace:GetChildren() do
								if value48.Name:lower():find("catacomb") then
									catacombesDeParis = value48
									break
								end
							end

							cachedMap = catacombesDeParis
						else
							cachedMap = catacombesDeParis
						end

						tbl1.autoFeatures.brickBreaker.cachedMap = cachedMap
					end

					if not cachedMap then
						return {}, nil
					end
					local brickwall = cachedMap:FindFirstChild("Modes") and cachedMap.Modes:FindFirstChild("Objective") and cachedMap.Modes.Objective:FindFirstChild("brickwall")
					if not brickwall then
						return {}, nil
					end
					local cachedBricks = {}

					for _, value49 in brickwall:GetChildren() do
						if value49:IsA("BasePart") then
							table.insert(cachedBricks, value49)
						end
					end

					tbl1.autoFeatures.brickBreaker.cachedBricks = cachedBricks
					tbl1.autoFeatures.brickBreaker.cachedWall = brickwall
					return cachedBricks, brickwall
				end

				tbl1.breakBrickOnce = function()
					local flag24 = tbl1.getBrickBreakerTool()
					if not flag24 then
						return
					end
					local list6, obj41 = tbl1.getBrickWall()
					if not obj41 or #list6 == 0 then
						return
					end
					local character = localPlayer.Character
					if not character then
						return
					end
					local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
					if not humanoidRootPart then
						return
					end

					if (humanoidRootPart.Position - obj41:GetPivot().Position).Magnitude > 10 then
						return
					end
					pcall(flag24.FireServer, flag24, "Swing", "Over")

					for i = 1, #list6, 25 do
						for i2 = i, min(i + 25 - 1, #list6) do
							pcall(flag24.FireServer, flag24, "HitBreakable", { list6[i2] }, Vector3.new(0.97238314, 0, -0.23338981))
						end

						task.wait(0.1)
					end
				end

				tbl1.brickBreakerLoop = function()
					while tbl1.autoFeatures.brickBreaker.active do
						tbl1.breakBrickOnce()
						task.wait(0.3)
					end
				end

				obj37:AddToggle("AutoBreakWallToggle", {
					Text = "自动砸砖墙",
					Tooltip = func13("巴黎地下墓穴自动砸砖墙"),
					Default = false,
					Callback = function(active)
						tbl1.autoFeatures.brickBreaker.active = active

						if active then
							if tbl1.autoFeatures.brickBreaker.thread then
								task.cancel(tbl1.autoFeatures.brickBreaker.thread)
							end

							tbl1.autoFeatures.brickBreaker.thread = task.spawn(tbl1.brickBreakerLoop)
							tbl1.notify(func12("自动砸砖墙已开启"), 2)
						else
							if tbl1.autoFeatures.brickBreaker.thread then
								task.cancel(tbl1.autoFeatures.brickBreaker.thread)
							end

							tbl1.autoFeatures.brickBreaker.thread = nil
							tbl1.autoFeatures.brickBreaker.cachedMap = nil
							tbl1.autoFeatures.brickBreaker.cachedWall = nil
							tbl1.autoFeatures.brickBreaker.cachedBricks = nil
							tbl1.notify(func12("自动砸砖墙已关闭"), 2)
						end
					end,
				})

				local autoBarrel = {
					enabled = false,
					thread = nil,
					markers = {},
					activeZone = nil,
					idx = 1,
					GetNil = function(param12, param13)
						local ok, result = pcall(function()
							return getnilinstances
						end)

						if not ok then
							return nil
						end

						for _, value50 in result() do
							if value50.Name ~= param12 then
								continue
							end

							local ok2, result2 = pcall(function()
								return value50:GetDebugId()
							end)

							if not ok2 or result2 == param13 then
								return value50
							end
						end

						return nil
					end,
					GetEvent = function()
						for _, value51 in { localPlayer.Character, localPlayer:FindFirstChild("Backpack") }, nil, nil do
							if value51 then
								for _, value52 in value51:GetChildren() do
									if value52:IsA("Tool") and value52:FindFirstChild("RemoteEvent") then
										return value52:FindFirstChild("RemoteEvent")
									end
								end
							end
						end

						local RemoteEvent = tbl1.autoBarrel.GetNil("RemoteEvent", "1_1065169")
						if RemoteEvent then
							return RemoteEvent
						end
						return nil
					end,
					FindAxe = function()
						for _, value53 in { localPlayer.Character, localPlayer:FindFirstChild("Backpack") }, nil, nil do
							if value53 then
								for _, value54 in value53:GetChildren() do
									if value54:IsA("Tool") and (value54.Name:find("斧") or value54.Name:find("Axe")) and value54:FindFirstChild("RemoteEvent") then
										return value54
									end
								end
							end
						end

						return nil
					end,
					EquipAxe = function(instance12)
						if instance12 and localPlayer.Character and instance12.Parent ~= localPlayer.Character then
							instance12.Parent = localPlayer.Character
						end
					end,
					UnequipAxe = function(instance13)
						if instance13 and localPlayer:FindFirstChild("Backpack") and instance13.Parent == localPlayer.Character then
							instance13.Parent = localPlayer.Backpack
						end
					end,
					CreateMarker = function(position, text)
						local part = Instance.new("Part")
						part.Size = Vector3.new(5, 0.2, 5)
						part.Position = position
						part.Anchored = true
						part.CanCollide = false
						part.Transparency = 0.3
						part.BrickColor = BrickColor.new("Bright red")
						part.Material = Enum.Material.Neon
						part.Parent = workspace
						local billboardGui = Instance.new("BillboardGui")
						billboardGui.Parent = part
						billboardGui.Adornee = part
						billboardGui.Size = UDim2.new(0, 200, 0, 50)
						billboardGui.StudsOffset = Vector3.new(0, 3, 0)
						billboardGui.MaxDistance = 100
						billboardGui.AlwaysOnTop = true
						local textLabel2 = Instance.new("TextLabel")
						textLabel2.Parent = billboardGui
						textLabel2.Size = UDim2.new(1, 0, 1, 0)
						textLabel2.Text = text
						textLabel2.TextColor3 = Color3.new(1, 1, 1)
						textLabel2.BackgroundTransparency = 1
						textLabel2.TextStrokeTransparency = 0
						textLabel2.Font = Enum.Font.SourceSansBold
						textLabel2.TextSize = 20
						return part
					end,
				}

				local zones = {}

				local tbl18 = {
					name = "Sixth.Vat",
					markerPos = Vector3.new(-504, 84, -887),
					markerText = func12("站在这自动攻击"),
					getBarrel = function()
						for _, getDescendant10 in workspace:GetDescendants() do
							if getDescendant10.Name == "WeaponHitEvent" and getDescendant10:GetFullName():find("Sixth.Vat") then
								return getDescendant10
							end
						end

						return nil
					end,
					attacks = {
						{
							dir = Vector3.new(-500.75604, 84.927505, -890.66754),
							pos = Vector3.new(-0.89652354, 0.060126048, -0.43889672),
						},
						{
							dir = Vector3.new(-500.98862, 85.332466, -890.1306),
							pos = Vector3.new(-0.9041061, 0.06780118, -0.42189467),
						},
						{
							dir = Vector3.new(-501.20587, 88.09386, -885.5167),
							pos = Vector3.new(-0.9857517, 0.07103491, 0.15247163),
						},
						{
							dir = Vector3.new(-501.19708, 88.0306, -885.4305),
							pos = Vector3.new(-0.9857517, 0.07103491, 0.15247163),
						},
						{
							dir = Vector3.new(-501.08237, 85.746765, -883.75226),
							pos = Vector3.new(-0.9848724, 0.06706964, 0.15977508),
						},
						{
							dir = Vector3.new(-501.0717, 85.640114, -883.64154),
							pos = Vector3.new(-0.98487234, 0.067069635, 0.15977506),
						},
						{
							dir = Vector3.new(-501.14145, 85.49108, -884.00916),
							pos = Vector3.new(-0.9848723, 0.06706963, 0.15977503),
						},
						{
							dir = Vector3.new(-501.06598, 85.75685, -883.6555),
							pos = Vector3.new(-0.98487234, 0.067069635, 0.15977506),
						},
						{
							dir = Vector3.new(-500.78323, 85.59901, -890.52026),
							pos = Vector3.new(-0.8965356, 0.059777364, -0.4389197),
						},
						{
							dir = Vector3.new(-501.03415, 85.72296, -889.8983),
							pos = Vector3.new(-0.9848487, 0.06741139, -0.15977699),
						},
						{
							dir = Vector3.new(-501.09647, 85.69531, -889.52576),
							pos = Vector3.new(-0.9848487, 0.0674114, -0.15977699),
						},
						{
							dir = Vector3.new(-501.11978, 85.646645, -889.4025),
							pos = Vector3.new(-0.9848487, 0.06741139, -0.15977699),
						},
						{
							dir = Vector3.new(-501.16486, 85.47568, -889.19714),
							pos = Vector3.new(-0.98485446, 0.06732521, -0.15977794),
						},
						{
							dir = Vector3.new(-501.12622, 85.940796, -884.10394),
							pos = Vector3.new(-0.9848723, 0.067069635, 0.15977506),
						},
						{
							dir = Vector3.new(-501.1567, 85.96322, -884.3014),
							pos = Vector3.new(-0.9848723, 0.06706963, 0.15977506),
						},
						{
							dir = Vector3.new(-501.34366, 88.06598, -886.39453),
							pos = Vector3.new(-0.9857517, 0.07103491, 0.15247163),
						},
						{
							dir = Vector3.new(-500.15363, 85.16352, -889.7227),
							pos = Vector3.new(0, 1, 0),
						},
						{
							dir = Vector3.new(-501.2279, 87.05052, -885.19653),
							pos = Vector3.new(-0.9848732, 0.067056514, 0.1597752),
						},
						{
							dir = Vector3.new(-500.1642, 85.16352, -889.6371),
							pos = Vector3.new(0, 0.99999994, 0),
						},
						{
							dir = Vector3.new(-501.29144, 88.43513, -886.2289),
							pos = Vector3.new(-0.985762, 0.07103563, 0.15240449),
						},
						{
							dir = Vector3.new(-501.23367, 88.04647, -887.66705),
							pos = Vector3.new(-0.98581445, 0.070850246, -0.15215096),
						},
						{
							dir = Vector3.new(-501.07944, 85.71344, -889.62317),
							pos = Vector3.new(-0.9848487, 0.06741139, -0.15977699),
						},
						{
							dir = Vector3.new(-501.16504, 85.38667, -889.23346),
							pos = Vector3.new(-0.98485446, 0.06732521, -0.15977794),
						},
						{
							dir = Vector3.new(-501.0604, 85.61904, -889.7803),
							pos = Vector3.new(-0.9848487, 0.0674114, -0.15977699),
						},
						{
							dir = Vector3.new(-501.24405, 88.32903, -887.4678),
							pos = Vector3.new(-0.98580045, 0.07084924, -0.15224236),
						},
						{
							dir = Vector3.new(-500.76483, 86.16497, -890.4764),
							pos = Vector3.new(-0.90410596, 0.06780121, -0.42189494),
						},
					},
				}

				local tbl19 = {
					name = "Fifth.Vat",
					markerPos = Vector3.new(-503, 84, -855),
					markerText = func12("站在这自动攻击"),
					getBarrel = function()
						local ok, result = pcall(function()
							local london = workspace:FindFirstChild("London")
							return london and london.Modes.Objective.PlantEvent.Vats.Fifth.Vat.Union
						end)

						if ok and result and result:FindFirstChild("WeaponHitEvent") then
							return result:FindFirstChild("WeaponHitEvent")
						end
						return tbl1.autoBarrel.GetNil("WeaponHitEvent", "1_1065268")
					end,
					attacks = {
						{
							dir = Vector3.new(-501.07547, 85.681076, -858.6612),
							pos = Vector3.new(-0.98484874, 0.0674114, -0.159777),
						},
						{
							dir = Vector3.new(-501.18845, 85.63276, -857.9856),
							pos = Vector3.new(-0.98485446, 0.067325205, -0.15977792),
						},
						{
							dir = Vector3.new(-501.4731, 85.29793, -856.372),
							pos = Vector3.new(-0.98492193, 0.06730186, -0.15937145),
						},
						{
							dir = Vector3.new(-500.92535, 85.855034, -852.1581),
							pos = Vector3.new(-0.90419996, 0.067528576, 0.42173722),
						},
						{
							dir = Vector3.new(-500.88934, 85.85879, -852.0815),
							pos = Vector3.new(-0.9041999, 0.067528576, 0.4217372),
						},
						{
							dir = Vector3.new(-501.176, 87.96922, -854.2655),
							pos = Vector3.new(-0.9857516, 0.07103491, 0.15247163),
						},
						{
							dir = Vector3.new(-501.03616, 85.97066, -852.56134),
							pos = Vector3.new(-0.98487234, 0.067069635, 0.15977506),
						},
						{
							dir = Vector3.new(-501.0589, 88.31807, -853.687),
							pos = Vector3.new(-0.9848724, 0.067069635, 0.15977506),
						},
						{
							dir = Vector3.new(-499.66125, 85.16353, -853.49677),
							pos = Vector3.new(0, 1, 0),
						},
						{
							dir = Vector3.new(-501.037, 87.9361, -853.3915),
							pos = Vector3.new(-0.98487234, 0.067069635, 0.15977506),
						},
						{
							dir = Vector3.new(-500.39682, 85.50465, -854.4968),
							pos = Vector3.new(0.7061626, -0.05049091, -0.7062471),
						},
						{
							dir = Vector3.new(-500.93835, 85.88355, -852.19055),
							pos = Vector3.new(-0.90419996, 0.06752858, 0.42173725),
						},
						{
							dir = Vector3.new(-500.9397, 85.8612, -852.1898),
							pos = Vector3.new(-0.9041999, 0.067528576, 0.4217372),
						},
						{
							dir = Vector3.new(-501.0238, 85.66065, -852.35504),
							pos = Vector3.new(-0.98487234, 0.06706963, 0.15977505),
						},
						{
							dir = Vector3.new(-501.04617, 85.94073, -852.6105),
							pos = Vector3.new(-0.98487234, 0.06706963, 0.15977505),
						},
						{
							dir = Vector3.new(-500.78168, 85.65259, -851.8307),
							pos = Vector3.new(-0.8974282, 0.05971466, 0.43710032),
						},
						{
							dir = Vector3.new(-500.8728, 85.297035, -851.9692),
							pos = Vector3.new(-0.8974283, 0.059714667, 0.43710032),
						},
						{
							dir = Vector3.new(-501.1628, 84.407585, -855.2833),
							pos = Vector3.new(0.70647174, 0.04231629, -0.70647496),
						},
						{
							dir = Vector3.new(-499.37216, 84.492935, -857.3116),
							pos = Vector3.new(0.6035478, 0.5211642, 0.60342175),
						},
						{
							dir = Vector3.new(-501.2195, 88.377556, -854.73663),
							pos = Vector3.new(-0.98576206, 0.071035646, 0.15240449),
						},
						{
							dir = Vector3.new(-501.17966, 85.689224, -858.0156),
							pos = Vector3.new(-0.9848487, 0.06741139, -0.15977699),
						},
						{
							dir = Vector3.new(-501.1714, 85.6417, -858.0866),
							pos = Vector3.new(-0.98484874, 0.0674114, -0.159777),
						},
						{
							dir = Vector3.new(-501.17776, 85.642426, -858.04694),
							pos = Vector3.new(-0.9848487, 0.0674114, -0.159777),
						},
						{
							dir = Vector3.new(-501.07324, 85.03772, -858.94867),
							pos = Vector3.new(-0.9848843, 0.06680974, -0.15981026),
						},
						{
							dir = Vector3.new(-501.22708, 88.80728, -854.98596),
							pos = Vector3.new(-0.98576206, 0.07103564, 0.1524045),
						},
						{
							dir = Vector3.new(-501.07352, 85.897545, -858.58203),
							pos = Vector3.new(-0.98484874, 0.06741139, -0.15977699),
						},
					},
				}

				local tbl20 = {
					name = "Eleventh.Vat",
					markerPos = Vector3.new(-549, 86, -811),
					markerText = func12("站在这自动攻击"),
					getBarrel = function()
						local ok, result = pcall(function()
							return func3(workspace, "London", "Modes", "Objective", "PlantEvent", "Vats", "Eleventh", "Vat", "Union")
						end)

						if ok and result and result:FindFirstChild("WeaponHitEvent") then
							return result:FindFirstChild("WeaponHitEvent")
						end
						return tbl1.autoBarrel.GetNil("WeaponHitEvent", "1_1073300")
					end,
					attacks = {
						{
							dir = Vector3.new(-552.7838, 88.71797, -809.0079),
							pos = Vector3.new(0.98476565, 0.067194454, 0.16037914),
						},
						{
							dir = Vector3.new(-552.7044, 89.815094, -811.3433),
							pos = Vector3.new(0.9857639, 0.07104273, -0.15238886),
						},
						{
							dir = Vector3.new(-552.6829, 89.84794, -811.1889),
							pos = Vector3.new(0.98576397, 0.07104273, -0.15238887),
						},
						{
							dir = Vector3.new(-553.07263, 85.68813, -814.20605),
							pos = Vector3.new(0.90414244, -0.067688905, -0.4218347),
						},
						{
							dir = Vector3.new(-552.8813, 87.53904, -813.42303),
							pos = Vector3.new(0.9848784, 0.06709598, -0.15972693),
						},
						{
							dir = Vector3.new(-552.87427, 85.38809, -813.2256),
							pos = Vector3.new(0.98481035, -0.067274585, -0.16007093),
						},
						{
							dir = Vector3.new(-552.59705, 87.250275, -809.54016),
							pos = Vector3.new(0.98476404, 0.06718805, 0.16039178),
						},
						{
							dir = Vector3.new(-552.732, 87.07971, -808.63654),
							pos = Vector3.new(0.98478204, 0.06877595, 0.15960649),
						},
						{
							dir = Vector3.new(-552.6297, 87.18196, -809.311),
							pos = Vector3.new(0.98476565, 0.06719446, 0.16037914),
						},
						{
							dir = Vector3.new(-552.58185, 88.96362, -810.9475),
							pos = Vector3.new(0.98576397, 0.07104273, -0.15238887),
						},
						{
							dir = Vector3.new(-552.91504, 87.483086, -813.6546),
							pos = Vector3.new(0.9848784, 0.06709599, -0.15972693),
						},
						{
							dir = Vector3.new(-552.92816, 85.77101, -813.718),
							pos = Vector3.new(0.98481035, -0.06727458, -0.16007093),
						},
						{
							dir = Vector3.new(-552.77795, 88.10868, -808.78876),
							pos = Vector3.new(0.98476404, 0.06718804, 0.16039176),
						},
						{
							dir = Vector3.new(-552.76764, 88.29107, -808.92865),
							pos = Vector3.new(0.984764, 0.06718804, 0.16039175),
						},
						{
							dir = Vector3.new(-552.7499, 89.06903, -809.36346),
							pos = Vector3.new(0.984764, 0.06718804, 0.16039175),
						},
						{
							dir = Vector3.new(-552.751, 88.92, -809.2942),
							pos = Vector3.new(0.98476404, 0.06718804, 0.16039176),
						},
						{
							dir = Vector3.new(-552.653, 87.09329, -809.1295),
							pos = Vector3.new(0.98478204, 0.06877594, 0.15960647),
						},
						{
							dir = Vector3.new(-552.44196, 86.75629, -810.2867),
							pos = Vector3.new(0.984782, 0.06877593, 0.15960647),
						},
						{
							dir = Vector3.new(-552.9142, 85.77261, -813.6325),
							pos = Vector3.new(0.9848103, -0.06727458, -0.16007091),
						},
						{
							dir = Vector3.new(-552.76385, 87.46857, -812.7283),
							pos = Vector3.new(0.9848784, 0.06709598, -0.15972692),
						},
						{
							dir = Vector3.new(-552.9091, 86.100426, -813.73914),
							pos = Vector3.new(0.98481035, -0.067274585, -0.16007093),
						},
						{
							dir = Vector3.new(-552.8866, 85.23353, -813.23645),
							pos = Vector3.new(0.98481035, -0.067274585, -0.16007093),
						},
						{
							dir = Vector3.new(-552.6922, 84.79696, -809.4828),
							pos = Vector3.new(0.9848438, -0.06738122, 0.1598204),
						},
						{
							dir = Vector3.new(-552.7633, 86.98217, -808.4014),
							pos = Vector3.new(0.98483956, 0.067443065, 0.15981972),
						},
						{
							dir = Vector3.new(-552.69714, 86.88089, -808.76624),
							pos = Vector3.new(0.9848396, 0.06744306, 0.15981974),
						},
						{
							dir = Vector3.new(-552.7866, 89.133865, -812.1694),
							pos = Vector3.new(0.9848784, 0.06709599, -0.15972693),
						},
						{
							dir = Vector3.new(-552.7429, 87.9488, -812.3979),
							pos = Vector3.new(0.9848811, 0.06705528, -0.15972736),
						},
					},
				}

				local tbl21 = {
					name = "Eighth.Vat",
					markerPos = Vector3.new(-551, 73, -863),
					markerText = func12("站在这自动攻击"),
					getBarrel = function()
						local ok, result = pcall(function()
							local london = workspace:FindFirstChild("London")
							return london and london.Modes.Objective.PlantEvent.Vats.Eighth.Vat.Union
						end)

						if ok and result and result:FindFirstChild("WeaponHitEvent") then
							return result:FindFirstChild("WeaponHitEvent")
						end
						return tbl1.autoBarrel.GetNil("WeaponHitEvent", "1_1078763")
					end,
					attacks = {
						{
							dir = Vector3.new(-554.957, 74.623535, -861.18964),
							pos = Vector3.new(0.89145, -0.2004975, 0.40634662),
						},
						{
							dir = Vector3.new(-554.94885, 74.613556, -861.21246),
							pos = Vector3.new(0.89145005, -0.20049751, 0.40634665),
						},
						{
							dir = Vector3.new(-554.80457, 74.60722, -861.53204),
							pos = Vector3.new(0.89145, -0.20049748, 0.40634662),
						},
						{
							dir = Vector3.new(-554.8045, 74.65089, -861.5106),
							pos = Vector3.new(0.89145, -0.20049748, 0.4063466),
						},
						{
							dir = Vector3.new(-554.6135, 74.701675, -861.9043),
							pos = Vector3.new(0.8914683, -0.20056136, 0.40627486),
						},
						{
							dir = Vector3.new(-554.6528, 74.588844, -861.8741),
							pos = Vector3.new(0.89143723, -0.20055987, 0.40634373),
						},
						{
							dir = Vector3.new(-554.6643, 74.60165, -861.8426),
							pos = Vector3.new(0.89145, -0.20049746, 0.40634656),
						},
						{
							dir = Vector3.new(-554.6403, 74.7055, -861.8439),
							pos = Vector3.new(0.89145, -0.20049748, 0.4063466),
						},
						{
							dir = Vector3.new(-553.95575, 74.82688, -867.0438),
							pos = Vector3.new(0.96702576, -0.20930187, -0.14509974),
						},
						{
							dir = Vector3.new(-553.9352, 74.665886, -866.6744),
							pos = Vector3.new(0.9670257, -0.20930186, -0.14509976),
						},
						{
							dir = Vector3.new(-553.9174, 74.855194, -866.8293),
							pos = Vector3.new(0.9670257, -0.20930186, -0.14509974),
						},
						{
							dir = Vector3.new(-553.90857, 74.83263, -866.7375),
							pos = Vector3.new(0.9670257, -0.20930187, -0.14509974),
						},
						{
							dir = Vector3.new(-553.47955, 77.100334, -864.2589),
							pos = Vector3.new(0.9661953, -0.19930883, 0.16353197),
						},
						{
							dir = Vector3.new(-553.4386, 77.0082, -864.62286),
							pos = Vector3.new(0.96637833, -0.209183, 0.1495171),
						},
						{
							dir = Vector3.new(-554.3455, 74.50676, -865.581),
							pos = Vector3.new(0, -1, 0),
						},
						{
							dir = Vector3.new(-553.6022, 76.671036, -864.05756),
							pos = Vector3.new(0.9661952, -0.19930883, 0.16353197),
						},
						{
							dir = Vector3.new(-553.59204, 76.67828, -864.1087),
							pos = Vector3.new(0.9661953, -0.19930881, 0.16353197),
						},
						{
							dir = Vector3.new(-554.0542, 74.54925, -867.2995),
							pos = Vector3.new(0.96702576, -0.20930187, -0.14509976),
						},
						{
							dir = Vector3.new(-554.0468, 74.52961, -867.2221),
							pos = Vector3.new(0.96702576, -0.20930187, -0.14509976),
						},
						{
							dir = Vector3.new(-553.8126, 74.88644, -866.1759),
							pos = Vector3.new(0.9670257, -0.20930184, -0.14509974),
						},
						{
							dir = Vector3.new(-553.8118, 74.88818, -866.1729),
							pos = Vector3.new(0.96702576, -0.20930187, -0.14509976),
						},
						{
							dir = Vector3.new(-553.91675, 74.664246, -866.5492),
							pos = Vector3.new(0.96702576, -0.20930189, -0.14509976),
						},
						{
							dir = Vector3.new(-554.6526, 74.563324, -861.8871),
							pos = Vector3.new(0.89145005, -0.2004975, 0.40634662),
						},
						{
							dir = Vector3.new(-554.6871, 74.51005, -861.8376),
							pos = Vector3.new(0.8914684, -0.20056139, 0.40627494),
						},
						{
							dir = Vector3.new(-553.98035, 74.56279, -866.8266),
							pos = Vector3.new(0.96702576, -0.20930187, -0.14509976),
						},
						{
							dir = Vector3.new(-553.9917, 74.51576, -866.8348),
							pos = Vector3.new(0.96702576, -0.20930187, -0.14509974),
						},
						{
							dir = Vector3.new(-553.4251, 77.44363, -864.1622),
							pos = Vector3.new(0.9661952, -0.1993088, 0.16353196),
						},
						{
							dir = Vector3.new(-554.6713, 74.7969, -861.7308),
							pos = Vector3.new(0.89145005, -0.20049754, 0.40634656),
						},
						{
							dir = Vector3.new(-553.3532, 77.73155, -864.236),
							pos = Vector3.new(0.9661952, -0.19930881, 0.16353197),
						},
						{
							dir = Vector3.new(-553.48865, 76.52338, -864.97766),
							pos = Vector3.new(0.96637833, -0.209183, 0.1495171),
						},
						{
							dir = Vector3.new(-554.21155, 74.735115, -862.81683),
							pos = Vector3.new(0.9661952, -0.19930878, 0.16353194),
						},
						{
							dir = Vector3.new(-554.95905, 74.62028, -861.1867),
							pos = Vector3.new(0.89145, -0.2004975, 0.40634665),
						},
					},
				}

				zones[1] = tbl18
				zones[2] = tbl19
				zones[3] = tbl20
				zones[4] = tbl21
				autoBarrel.zones = zones

				autoBarrel.ClearMarkers = function()
					for _, marker in tbl1.autoBarrel.markers do
						if marker and marker.Parent then
							marker:Destroy()
						end
					end

					tbl1.autoBarrel.markers = {}
				end

				autoBarrel.MainLoop = function()
					while tbl1.autoBarrel.enabled do
						local character = localPlayer.Character
						character = character and character:FindFirstChild("HumanoidRootPart")

						if character then
							local value55 = nil

							for _, zone in tbl1.autoBarrel.zones do
								local flag25 = zone.getBarrel()

								if flag25 and flag25.Parent then
									if (character.Position - zone.markerPos).Magnitude <= 7 then
										zone.barrelObj = flag25
										value55 = zone
										break
									else
										value55 = nil
									end
								else
									value55 = nil
								end
							end

							if value55 and tbl1.autoBarrel.activeZone ~= value55 then
								tbl1.autoBarrel.activeZone = value55
								tbl1.autoBarrel.idx = 1
								local value56 = tbl1.autoBarrel.FindAxe()

								if value56 then
									tbl1.autoBarrel.EquipAxe(value56)
									task.wait(0.3)
								end
							end

							if not value55 and tbl1.autoBarrel.activeZone then
								tbl1.autoBarrel.activeZone = nil
							end

							if tbl1.autoBarrel.activeZone and value55 then
								local value57 = tbl1.autoBarrel.GetEvent()

								if value57 then
									local activeZone = tbl1.autoBarrel.activeZone

									if not activeZone.barrelObj or not activeZone.barrelObj.Parent then
										activeZone.barrelObj = activeZone.getBarrel()
									end

									if activeZone.barrelObj and activeZone.barrelObj.Parent then
										local value58 = activeZone.attacks[tbl1.autoBarrel.idx]
										pcall(value57.FireServer, value57, "PrepareSwing")
										pcall(value57.FireServer, value57, "Swing", "Side")
										pcall(value57.FireServer, value57, "WeaponHitEvent", activeZone.barrelObj, value58.dir, value58.pos)
									end

									tbl1.autoBarrel.idx = tbl1.autoBarrel.idx + 1

									if #activeZone.attacks < tbl1.autoBarrel.idx then
										tbl1.autoBarrel.idx = 1
									end
								end
							end
						elseif tbl1.autoBarrel.activeZone then
							local value59 = tbl1.autoBarrel.FindAxe()

							if value59 then
								pcall(tbl1.autoBarrel.UnequipAxe, value59)
							end

							tbl1.autoBarrel.activeZone = nil
						end

						task.wait(0.1)
					end
				end

				autoBarrel.Start = function()
					if tbl1.autoBarrel.enabled then
						return
					end
					tbl1.autoBarrel.enabled = true
					tbl1.autoBarrel.ClearMarkers()

					for _, zone2 in tbl1.autoBarrel.zones do
						local value60 = tbl1.autoBarrel.CreateMarker(zone2.markerPos, zone2.markerText)
						table.insert(tbl1.autoBarrel.markers, value60)
					end

					if tbl1.autoBarrel.thread then
						task.cancel(tbl1.autoBarrel.thread)
					end

					tbl1.autoBarrel.thread = task.spawn(tbl1.autoBarrel.MainLoop)
					tbl1.notify(func12("自动打酒桶已开启"), 2)
				end

				autoBarrel.Stop = function()
					tbl1.autoBarrel.enabled = false

					if tbl1.autoBarrel.thread then
						task.cancel(tbl1.autoBarrel.thread)
						tbl1.autoBarrel.thread = nil
					end

					tbl1.autoBarrel.ClearMarkers()
					tbl1.autoBarrel.activeZone = nil
					tbl1.autoBarrel.idx = 1
					tbl1.notify(func12("自动打酒桶已关闭"), 2)
				end

				tbl1.autoBarrel = autoBarrel

				obj37:AddToggle("AutoBarrelToggle", {
					Text = "自动打酒桶",
					Default = false,
					Tooltip = func13("自动攻击伦敦酒桶"),
					Callback = function(value)
						if value then
							tbl1.autoBarrel.Start()
						else
							tbl1.autoBarrel.Stop()
						end
					end,
				})

				tbl1.autoWestminster = { enabled = false, thread = nil, AttackInterval = 0.1, AttackRange = 15, _tmp = {} }

				tbl1.autoWestminster.getTargetParts = function()
					tbl1.autoWestminster._tmp.west = workspace:FindFirstChild("Westminster")
					if not tbl1.autoWestminster._tmp.west then
						return {}
					end
					tbl1.autoWestminster._tmp.modes = tbl1.autoWestminster._tmp.west:FindFirstChild("Modes")
					if not tbl1.autoWestminster._tmp.modes then
						return {}
					end
					tbl1.autoWestminster._tmp.obj = tbl1.autoWestminster._tmp.modes:FindFirstChild("Objective")
					if not tbl1.autoWestminster._tmp.obj then
						return {}
					end
					tbl1.autoWestminster._tmp.barricade = tbl1.autoWestminster._tmp.obj:FindFirstChild("StreetBarricade")
					if not tbl1.autoWestminster._tmp.barricade then
						return {}
					end
					tbl1.autoWestminster._tmp.model = tbl1.autoWestminster._tmp.barricade:FindFirstChild("Model")
					if not tbl1.autoWestminster._tmp.model then
						return {}
					end
					tbl1.autoWestminster._tmp.boundingBox = tbl1.autoWestminster._tmp.model:FindFirstChild("BoundingBox")
					if not tbl1.autoWestminster._tmp.boundingBox then
						return {}
					end
					tbl1.autoWestminster._tmp.parts = {}

					if tbl1.autoWestminster._tmp.boundingBox:IsA("BasePart") then
						tbl1.autoWestminster._tmp.parts[#tbl1.autoWestminster._tmp.parts + 1] = tbl1.autoWestminster._tmp.boundingBox
					end

					tbl1.autoWestminster._tmp.children = tbl1.autoWestminster._tmp.boundingBox:GetDescendants()

					for i = 1, #tbl1.autoWestminster._tmp.children do
						if tbl1.autoWestminster._tmp.children[i]:IsA("BasePart") then
							tbl1.autoWestminster._tmp.parts[#tbl1.autoWestminster._tmp.parts + 1] = tbl1.autoWestminster._tmp.children[i]
						end
					end

					return tbl1.autoWestminster._tmp.parts
				end

				tbl1.autoWestminster.getNearestTarget = function(num4)
					tbl1.autoWestminster._tmp.parts = tbl1.autoWestminster.getTargetParts()
					tbl1.autoWestminster._tmp.bestPart = nil
					tbl1.autoWestminster._tmp.bestDist = tbl1.autoWestminster.AttackRange + 1

					for i = 1, #tbl1.autoWestminster._tmp.parts do
						tbl1.autoWestminster._tmp.dist = (tbl1.autoWestminster._tmp.parts[i].Position - num4).Magnitude

						if tbl1.autoWestminster._tmp.dist < tbl1.autoWestminster._tmp.bestDist then
							tbl1.autoWestminster._tmp.bestDist = tbl1.autoWestminster._tmp.dist
							tbl1.autoWestminster._tmp.bestPart = tbl1.autoWestminster._tmp.parts[i]
						end
					end

					if not tbl1.autoWestminster._tmp.bestPart then
						return nil, nil, nil, nil
					end
					tbl1.autoWestminster._tmp.hitPos = tbl1.autoWestminster._tmp.bestPart.Position
					tbl1.autoWestminster._tmp.normal = (num4 - tbl1.autoWestminster._tmp.hitPos).Unit
					return tbl1.autoWestminster._tmp.bestPart, tbl1.autoWestminster._tmp.hitPos, tbl1.autoWestminster._tmp.normal, tbl1.autoWestminster._tmp.bestDist
				end

				tbl1.autoWestminster.getCurrentWeaponRemote = function()
					return tbl1.getHeldToolRemote()
				end

				tbl1.autoWestminster.performAttack = function(obj42, param14, param15, param16)
					if not obj42 then
						return
					end
					obj42:FireServer("PrepareSwing")
					task.wait(0.02)
					obj42:FireServer("Swing", "Side")
					task.wait(0.02)
					obj42:FireServer("HitCon", param14, param15, param16)
				end

				tbl1.autoWestminster.attackLoop = function()
					while tbl1.autoWestminster.enabled do
						local tmp = tbl1.autoWestminster._tmp
						local tmp2 = tbl1.autoWestminster._tmp
						local value61, value62 = tbl1.autoWestminster.getCurrentWeaponRemote()
						tmp.remote = value61
						tmp2.weapon = value62

						if tbl1.autoWestminster._tmp.remote and tbl1.autoWestminster._tmp.weapon and localPlayer.Character then
							tbl1.autoWestminster._tmp.root = localPlayer.Character:FindFirstChild("HumanoidRootPart")

							if tbl1.autoWestminster._tmp.root then
								local tmp3 = tbl1.autoWestminster._tmp
								local tmp4 = tbl1.autoWestminster._tmp
								local tmp5 = tbl1.autoWestminster._tmp
								local tmp6 = tbl1.autoWestminster._tmp
								local value63, value64, value65, value66 = tbl1.autoWestminster.getNearestTarget(tbl1.autoWestminster._tmp.root.Position)
								tmp3.tPart = value63
								tmp4.hPos = value64
								tmp5.normal = value65
								tmp6.dist = value66

								if tbl1.autoWestminster._tmp.tPart and tbl1.autoWestminster._tmp.dist <= tbl1.autoWestminster.AttackRange then
									tbl1.autoWestminster.performAttack(tbl1.autoWestminster._tmp.remote, tbl1.autoWestminster._tmp.tPart, tbl1.autoWestminster._tmp.hPos, tbl1.autoWestminster._tmp.normal)
								end
							end
						end

						task.wait(tbl1.autoWestminster.AttackInterval)
					end
				end

				tbl1.autoWestminster.Start = function()
					if tbl1.autoWestminster.enabled then
						return
					end
					tbl1.autoWestminster.enabled = true

					if tbl1.autoWestminster.thread then
						task.cancel(tbl1.autoWestminster.thread)
					end

					tbl1.autoWestminster.thread = task.spawn(tbl1.autoWestminster.attackLoop)
					tbl1.notify(func12("自动打威斯特敏障碍已开启"), 2)
				end

				tbl1.autoWestminster.Stop = function()
					tbl1.autoWestminster.enabled = false

					if tbl1.autoWestminster.thread then
						task.cancel(tbl1.autoWestminster.thread)
						tbl1.autoWestminster.thread = nil
					end

					tbl1.notify(func12("自动打威斯特敏障碍已关闭"), 2)
				end

				obj37:AddToggle("AutoWestminsterToggle", {
					Text = "自动打威斯特敏障碍",
					Default = false,
					Tooltip = func13("自动攻击威斯特敏路障"),
					Callback = function(value)
						if value then
							tbl1.autoWestminster.Start()
						else
							tbl1.autoWestminster.Stop()
						end
					end,
				})

				tbl1.autoLeipzigBarricade = { enabled = false, thread = nil, AttackInterval = 0.3, _tmp = {} }

				tbl1.autoLeipzigBarricade.getTarget = function()
					tbl1.autoLeipzigBarricade._tmp.leipzig = workspace:FindFirstChild("Leipzig")
					if not tbl1.autoLeipzigBarricade._tmp.leipzig then
						return nil
					end
					tbl1.autoLeipzigBarricade._tmp.modes = tbl1.autoLeipzigBarricade._tmp.leipzig:FindFirstChild("Modes")
					if not tbl1.autoLeipzigBarricade._tmp.modes then
						return nil
					end
					tbl1.autoLeipzigBarricade._tmp.objective = tbl1.autoLeipzigBarricade._tmp.modes:FindFirstChild("Objective")
					if not tbl1.autoLeipzigBarricade._tmp.objective then
						return nil
					end
					tbl1.autoLeipzigBarricade._tmp.barricade = tbl1.autoLeipzigBarricade._tmp.objective:FindFirstChild("Barricade")
					if not tbl1.autoLeipzigBarricade._tmp.barricade then
						return nil
					end
					return tbl1.autoLeipzigBarricade._tmp.barricade:FindFirstChild("Hitbox")
				end

				tbl1.autoLeipzigBarricade.getCurrentWeaponRemote = function()
					return tbl1.getHeldToolRemote()
				end

				tbl1.autoLeipzigBarricade.performAttack = function(obj43, flag26)
					if not obj43 or not flag26 then
						return
					end
					tbl1.autoLeipzigBarricade._tmp.hitPos = Vector3.new(-154.15071, -6.2045636, -95.3622)
					tbl1.autoLeipzigBarricade._tmp.normal = Vector3.new(0.2588048, 0, 0.9659296)
					obj43:FireServer("PrepareSwing")
					task.wait(0.02)
					obj43:FireServer("Swing", "Side")
					task.wait(0.02)
					obj43:FireServer("HitCon", flag26, tbl1.autoLeipzigBarricade._tmp.hitPos, tbl1.autoLeipzigBarricade._tmp.normal)
				end

				tbl1.autoLeipzigBarricade.attackLoop = function()
					while tbl1.autoLeipzigBarricade.enabled do
						local tmp = tbl1.autoLeipzigBarricade._tmp
						local tmp2 = tbl1.autoLeipzigBarricade._tmp
						local value67, value68 = tbl1.autoLeipzigBarricade.getCurrentWeaponRemote()
						tmp.remote = value67
						tmp2.weapon = value68
						tbl1.autoLeipzigBarricade._tmp.target = tbl1.autoLeipzigBarricade.getTarget()

						if tbl1.autoLeipzigBarricade._tmp.remote and tbl1.autoLeipzigBarricade._tmp.target then
							tbl1.autoLeipzigBarricade.performAttack(tbl1.autoLeipzigBarricade._tmp.remote, tbl1.autoLeipzigBarricade._tmp.target)
						end

						task.wait(tbl1.autoLeipzigBarricade.AttackInterval)
					end
				end

				tbl1.autoLeipzigBarricade.Start = function()
					if tbl1.autoLeipzigBarricade.enabled then
						return
					end
					tbl1.autoLeipzigBarricade.enabled = true

					if tbl1.autoLeipzigBarricade.thread then
						task.cancel(tbl1.autoLeipzigBarricade.thread)
					end

					tbl1.autoLeipzigBarricade.thread = task.spawn(tbl1.autoLeipzigBarricade.attackLoop)
					tbl1.notify(func12("自动打莱比锡木板已开启"), 2)
				end

				tbl1.autoLeipzigBarricade.Stop = function()
					tbl1.autoLeipzigBarricade.enabled = false

					if tbl1.autoLeipzigBarricade.thread then
						task.cancel(tbl1.autoLeipzigBarricade.thread)
						tbl1.autoLeipzigBarricade.thread = nil
					end

					tbl1.notify(func12("自动打莱比锡木板已关闭"), 2)
				end

				obj37:AddToggle("AutoLeipzigToggle", {
					Text = "自动打莱比锡木板",
					Default = false,
					Tooltip = func13("自动攻击莱比锡木板"),
					Callback = function(value)
						if value then
							tbl1.autoLeipzigBarricade.Start()
						else
							tbl1.autoLeipzigBarricade.Stop()
						end
					end,
				})

				tbl1.autoCopenhagenGate = { enabled = false, thread = nil, AttackRange = 5, AttackInterval = 0.2, _tmp = {} }

				tbl1.autoCopenhagenGate.getTarget = function()
					tbl1.autoCopenhagenGate._tmp.copenhagen = workspace:FindFirstChild("Copenhagen")
					if not tbl1.autoCopenhagenGate._tmp.copenhagen then
						return nil
					end
					tbl1.autoCopenhagenGate._tmp.modes = tbl1.autoCopenhagenGate._tmp.copenhagen:FindFirstChild("Modes")
					if not tbl1.autoCopenhagenGate._tmp.modes then
						return nil
					end
					tbl1.autoCopenhagenGate._tmp.obj = tbl1.autoCopenhagenGate._tmp.modes:FindFirstChild("Objective")
					if not tbl1.autoCopenhagenGate._tmp.obj then
						return nil
					end
					tbl1.autoCopenhagenGate._tmp.gateObj = tbl1.autoCopenhagenGate._tmp.obj:FindFirstChild("GateObj")
					if not tbl1.autoCopenhagenGate._tmp.gateObj then
						return nil
					end
					tbl1.autoCopenhagenGate._tmp.gate = tbl1.autoCopenhagenGate._tmp.gateObj:FindFirstChild("Gate")
					if not tbl1.autoCopenhagenGate._tmp.gate then
						return nil
					end
					return tbl1.autoCopenhagenGate._tmp.gate:FindFirstChild("Lock")
				end

				tbl1.autoCopenhagenGate.getCurrentWeaponRemote = function()
					return tbl1.getHeldToolRemote()
				end

				tbl1.autoCopenhagenGate.performAttack = function(obj44, flag27)
					if not obj44 or not flag27 then
						return
					end
					tbl1.autoCopenhagenGate._tmp.hitPos = Vector3.new(62.246265, 9.197623, -45.4807)
					tbl1.autoCopenhagenGate._tmp.normal = Vector3.new(0.90587777, 0.03483456, -0.42210424)
					obj44:FireServer("PrepareSwing")
					task.wait(0.02)
					obj44:FireServer("Swing", "Thrust")
					task.wait(0.02)
					obj44:FireServer("HitCon", flag27, tbl1.autoCopenhagenGate._tmp.hitPos, tbl1.autoCopenhagenGate._tmp.normal)
				end

				tbl1.autoCopenhagenGate.attackLoop = function()
					while tbl1.autoCopenhagenGate.enabled do
						local tmp = tbl1.autoCopenhagenGate._tmp
						local tmp2 = tbl1.autoCopenhagenGate._tmp
						local value69, value70 = tbl1.autoCopenhagenGate.getCurrentWeaponRemote()
						tmp.remote = value69
						tmp2.weapon = value70
						tbl1.autoCopenhagenGate._tmp.target = tbl1.autoCopenhagenGate.getTarget()

						if tbl1.autoCopenhagenGate._tmp.remote and tbl1.autoCopenhagenGate._tmp.target then
							if localPlayer.Character then
								tbl1.autoCopenhagenGate._tmp.root = localPlayer.Character:FindFirstChild("HumanoidRootPart")

								if tbl1.autoCopenhagenGate._tmp.root then
									tbl1.autoCopenhagenGate._tmp.dist = (tbl1.autoCopenhagenGate._tmp.root.Position - tbl1.autoCopenhagenGate._tmp.target.Position).Magnitude

									if tbl1.autoCopenhagenGate._tmp.dist <= tbl1.autoCopenhagenGate.AttackRange then
										tbl1.autoCopenhagenGate.performAttack(tbl1.autoCopenhagenGate._tmp.remote, tbl1.autoCopenhagenGate._tmp.target)
									end
								end
							end
						end

						task.wait(tbl1.autoCopenhagenGate.AttackInterval)
					end
				end

				tbl1.autoCopenhagenGate.Start = function()
					if tbl1.autoCopenhagenGate.enabled then
						return
					end
					tbl1.autoCopenhagenGate.enabled = true

					if tbl1.autoCopenhagenGate.thread then
						task.cancel(tbl1.autoCopenhagenGate.thread)
					end

					tbl1.autoCopenhagenGate.thread = task.spawn(tbl1.autoCopenhagenGate.attackLoop)
					tbl1.notify(func12("自动打哥本哈根锁已开启"), 2)
				end

				tbl1.autoCopenhagenGate.Stop = function()
					tbl1.autoCopenhagenGate.enabled = false

					if tbl1.autoCopenhagenGate.thread then
						task.cancel(tbl1.autoCopenhagenGate.thread)
						tbl1.autoCopenhagenGate.thread = nil
					end

					tbl1.notify(func12("自动打哥本哈根锁已关闭"), 2)
				end

				obj37:AddToggle("AutoCopenhagenToggle", {
					Text = "自动打哥本哈根锁",
					Default = false,
					Tooltip = func13("自动攻击哥本哈根门锁"),
					Callback = function(value)
						if value then
							tbl1.autoCopenhagenGate.Start()
						else
							tbl1.autoCopenhagenGate.Stop()
						end
					end,
				})

				tbl1.autoCannon = { enabled = false, connection = nil, lastReloadTime = 0, reloadCooldown = 0.5 }

				tbl1.autoCannon.findNearestGun = function()
					local character = localPlayer.Character
					if not character or not character.Parent then
						return nil
					end
					local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
					if not humanoidRootPart then
						return nil
					end
					local huge = math.huge
					local value71 = nil

					for _, getDescendant11 in workspace:GetDescendants() do
						if getDescendant11.Name == "12 Pound Gun" and getDescendant11:IsA("Model") then
							local hole = getDescendant11:FindFirstChild("Gun") and getDescendant11.Gun:FindFirstChild("Hole")

							if hole then
								local magnitude = (hole.Position - humanoidRootPart.Position).Magnitude

								if magnitude < huge then
									huge = magnitude
									value71 = getDescendant11
								end
							end
						end
					end

					return value71
				end

				tbl1.autoCannon.reload = function()
					local result6 = clock()
					if result6 - tbl1.autoCannon.lastReloadTime < tbl1.autoCannon.reloadCooldown then
						return
					end
					local obj45 = tbl1.autoCannon.findNearestGun()

					if obj45 then
						local interact = obj45:FindFirstChild("Gun") and obj45.Gun:FindFirstChild("Hole") and obj45.Gun.Hole:FindFirstChild("Interact")

						if interact and interact:IsA("RemoteEvent") then
							interact:FireServer()
							tbl1.autoCannon.lastReloadTime = result6
						end
					end
				end

				tbl1.startAutoCannon = function()
					tbl1.stopAutoCannon()
					tbl1.autoCannon.enabled = true
					tbl1.autoCannon.connection = value2.Heartbeat:Connect(tbl1.autoCannon.reload)
					tbl1.notify(func12("自动装填大炮已开启"), 2)
				end

				tbl1.stopAutoCannon = function()
					tbl1.autoCannon.enabled = false

					if tbl1.autoCannon.connection then
						tbl1.autoCannon.connection:Disconnect()
						tbl1.autoCannon.connection = nil
					end

					tbl1.notify(func12("自动装填大炮已关闭"), 2)
				end

				obj37:AddToggle("AutoCannonToggle", {
					Text = "自动装填大炮",
					Default = false,
					Tooltip = func13("自动装填最近的12磅炮"),
					Callback = function(value)
						if value then
							tbl1.startAutoCannon()
						else
							tbl1.stopAutoCannon()
						end
					end,
				})

				tbl1.autoBell = { enabled = false, conn = nil }

				tbl1.autoBell.start = function()
					if tbl1.autoBell.conn then
						return
					end
					tbl1.autoBell.enabled = true

					tbl1.autoBell.conn = value2.Heartbeat:Connect(function()
						if not tbl1.autoBell.enabled then
							return
						end
						local leipzig = workspace:FindFirstChild("Leipzig")

						if leipzig and leipzig:FindFirstChild("Modes") then
							local modes = leipzig.Modes

							if modes:FindFirstChild("Objective") then
								local bellInteract = modes.Objective:FindFirstChild("BellInteract")

								if bellInteract and bellInteract:FindFirstChild("Interact") then
									pcall(function()
										bellInteract.Interact:FireServer()
									end)
								end
							end
						end
					end)
				end

				tbl1.autoBell.stop = function()
					tbl1.autoBell.enabled = false

					if tbl1.autoBell.conn then
						tbl1.autoBell.conn:Disconnect()
						tbl1.autoBell.conn = nil
					end
				end

				obj37:AddToggle("AutoBellToggle", {
					Text = "莱比锡自动拉铃",
					Default = false,
					Tooltip = func13("自动拉响莱比锡钟楼铃铛"),
					Callback = function(value)
						if value then
							tbl1.autoBell.start()
						else
							tbl1.autoBell.stop()
						end
					end,
				})

				tbl1.LondonBoardAuto = {
					enabled = false,
					heartbeat = nil,
					refPos = Vector3.new(-149.42, 31.08, -1354.9),
					range = 7,
				}

				tbl1.LondonBoardAuto.getWeaponRemote = function()
					return tbl1.getHeldToolRemote()
				end

				tbl1.LondonBoardAuto.cachedLeft = nil
				tbl1.LondonBoardAuto.cachedRight = nil

				local function func25()
					local cachedLeft = tbl1.LondonBoardAuto.cachedLeft
					local cachedRight = tbl1.LondonBoardAuto.cachedRight
					if cachedLeft and cachedRight and cachedLeft.Parent and cachedRight.Parent then
						return cachedLeft, cachedRight
					end

					local ok, cachedLeft2, cachedRight2 = pcall(function()
						local london = workspace:FindFirstChild("London")
						if not london then
							return nil, nil
						end
						return london.Modes.Objective.SniperSection.BarricadedDoors.Left.Boards, london.Modes.Objective.SniperSection.BarricadedDoors.Right.Boards
					end)

					if not ok then
						return nil, nil
					end
					tbl1.LondonBoardAuto.cachedLeft = cachedLeft2
					tbl1.LondonBoardAuto.cachedRight = cachedRight2
					return cachedLeft2, cachedRight2
				end

				tbl1.LondonBoardAuto.execute = function()
					if not tbl1.LondonBoardAuto.enabled then
						return
					end
					local character = localPlayer.Character
					if not character then
						return
					end
					local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
					if not humanoidRootPart or (humanoidRootPart.Position - tbl1.LondonBoardAuto.refPos).Magnitude > tbl1.LondonBoardAuto.range then
						return
					end
					local obj46 = tbl1.LondonBoardAuto.getWeaponRemote()
					if not obj46 then
						return
					end
					local obj47, obj48 = func25()
					if not obj47 or not obj48 then
						return
					end

					for _, value72 in {
						function()
							obj46:FireServer("PrepareSwing")
						end,
						function()
							obj46:FireServer("Swing", "Over")
						end,
						function()
							obj46:FireServer("HitCon", obj47:GetChildren()[2], Vector3.new(-149.42076, 31.076683, -1354.8972), Vector3.new(-2.0772219e-05, 1, 7.6293945e-05))
						end,
						function()
							obj46:FireServer("HitCon", obj48:GetChildren()[2], Vector3.new(-145.23814, 33.006237, -1366.2483), Vector3.new(0.9428723, 7.6293945e-05, 0.33315423))
						end,
						function()
							obj46:FireServer("HitCon", obj47:GetChildren()[2], Vector3.new(-149.55505, 29.676874, -1354.6289), Vector3.new(-0.9428972, 5.841255e-06, -0.33308378))
						end,
						function()
							obj46:FireServer("HitCon", obj47:GetChildren()[2], Vector3.new(-149.55505, 29.676874, -1354.6289), Vector3.new(-0.9428972, 5.841255e-06, -0.33308378))
						end,
						function()
							obj46:FireServer("HitCon", obj47:GetChildren()[2], Vector3.new(-150.2777, 29.679218, -1351.9828), Vector3.new(0.9428972, -5.841255e-06, 0.33308378))
						end,
						function()
							obj46:FireServer("HitCon", obj48:GetChildren()[2], Vector3.new(-146.18898, 32.863514, -1363.5574), Vector3.new(0.9428723, 7.6293945e-05, 0.33315423))
						end,
					}, nil, nil do
						pcall(value72)
					end
				end

				tbl1.LondonBoardAuto.start = function()
					if tbl1.LondonBoardAuto.thread then
						return
					end
					tbl1.LondonBoardAuto.enabled = true

					tbl1.LondonBoardAuto.thread = task.spawn(function()
						while tbl1.LondonBoardAuto.enabled do
							tbl1.LondonBoardAuto.execute()
							task.wait(0.1)
						end
					end)
				end

				tbl1.LondonBoardAuto.stop = function()
					tbl1.LondonBoardAuto.enabled = false

					if tbl1.LondonBoardAuto.thread then
						task.cancel(tbl1.LondonBoardAuto.thread)
						tbl1.LondonBoardAuto.thread = nil
					end
				end

				obj37:AddToggle("LondonBoardToggle", {
					Text = "自动打伦敦四块木板",
					Default = false,
					Tooltip = func13("自动攻击伦敦狙神处四块木板"),
					Callback = function(value)
						if value then
							tbl1.LondonBoardAuto.start()
						else
							tbl1.LondonBoardAuto.stop()
						end
					end,
				})

				tbl1.autoBandage = { enabled = false, thread = nil, cooldown = 0, healedOnce = false }

				tbl1.autoBandage.getHealth = function()
					local humanoid = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
					return humanoid and humanoid.Health or 0
				end

				tbl1.autoBandage.getMaxHealth = function()
					local humanoid = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
					return humanoid and humanoid.MaxHealth or 100
				end

				tbl1.autoBandage.findBandage = function()
					local character = localPlayer.Character

					if character then
						for _, value73 in character:GetChildren() do
							if value73:IsA("Tool") and value73.Name:lower():find("bandage") then
								return value73
							end
						end
					end

					local backpack = localPlayer:FindFirstChild("Backpack")

					if backpack then
						for _, value74 in backpack:GetChildren() do
							if value74:IsA("Tool") and value74.Name:lower():find("bandage") then
								return value74
							end
						end
					end

					return nil
				end

				tbl1.autoBandage.zombieNear = function(num5, param17)
					for _, value75 in { "Zombies", "Camera" }, nil, nil do
						local obj49 = workspace:FindFirstChild(value75)

						if obj49 then
							for _, getDescendant12 in obj49:GetDescendants() do
								if getDescendant12:IsA("Model") and getDescendant12.Name == "m_Zombie" then
									local humanoidRootPart = getDescendant12:FindFirstChild("HumanoidRootPart")
									if humanoidRootPart and (humanoidRootPart.Position - num5).Magnitude <= param17 then
										return true
									end
								end
							end
						end
					end

					return false
				end

				tbl1.autoBandage.loop = function()
					while tbl1.autoBandage.enabled do
						task.wait(0.5)
						local num6 = tbl1.autoBandage.getHealth()
						local num7 = tbl1.autoBandage.getMaxHealth()
						local n4 = num6 / num7 * 100

						if num7 <= num6 then
							tbl1.autoBandage.healedOnce = false
						else
							if n4 < 50 then
								tbl1.autoBandage.healedOnce = false
							end

							if not (tbl1.autoBandage.healedOnce and n4 >= 50) then
								local character = localPlayer.Character
								local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")

								if not (humanoidRootPart and tbl1.autoBandage.zombieNear(humanoidRootPart.Position, 5)) then
									local obj50 = tbl1.autoBandage.findBandage()

									if obj50 then
										local cooldown = tbl1.autoBandage.cooldown

										if not (clock() - cooldown < 1) then
											tbl1.autoBandage.cooldown = clock()

											if obj50.Parent ~= character then
												pcall(function()
													obj50.Parent = character
												end)

												task.wait(0.3)
											end

											local remoteEvent = obj50:FindFirstChild("RemoteEvent")

											if remoteEvent then
												pcall(function()
													remoteEvent:FireServer()
												end)

												tbl1.autoBandage.healedOnce = true
											end

											task.wait(1)
										end
									end
								end
							end
						end
					end
				end

				tbl1.autoBandage.start = function()
					if tbl1.autoBandage.thread then
						return
					end
					tbl1.autoBandage.enabled = true
					tbl1.autoBandage.healedOnce = false
					tbl1.autoBandage.thread = task.spawn(tbl1.autoBandage.loop)
				end

				tbl1.autoBandage.stop = function()
					tbl1.autoBandage.enabled = false
					tbl1.autoBandage.healedOnce = false

					if tbl1.autoBandage.thread then
						task.cancel(tbl1.autoBandage.thread)
						tbl1.autoBandage.thread = nil
					end
				end

				obj37:AddToggle("AutoBandageToggle", {
					Text = "自动打绷带",
					Default = false,
					Tooltip = func13("血量低于75%时自动使用绷带（仅一次，低于50%重置）"),
					Callback = function(value)
						if value then
							tbl1.autoBandage.start()
						else
							tbl1.autoBandage.stop()
						end
					end,
				})

				tbl1.autoWatch = { enabled = false, thread = nil, range = 5, done = false }

				tbl1.autoWatch.getModelPos = function(obj51)
					local pivot = obj51:GetPivot()
					if pivot then
						return pivot.Position
					end

					for _, getDescendant13 in obj51:GetDescendants() do
						if getDescendant13:IsA("BasePart") then
							return getDescendant13.Position
						end
					end

					return nil
				end

				tbl1.autoWatch.getHRP = function()
					local character = localPlayer.Character
					return character and character:FindFirstChild("HumanoidRootPart")
				end

				tbl1.autoWatch.loop = function()
					tbl1.autoWatch.done = false

					while tbl1.autoWatch.enabled and not tbl1.autoWatch.done do
						task.wait(0.2)
						local num8 = tbl1.autoWatch.getHRP()

						if not num8 then
							task.wait(0.5)
						else
							local westminster = workspace:FindFirstChild("Westminster")

							if westminster then
								local modes = westminster:FindFirstChild("Modes")

								if modes then
									local objective = modes:FindFirstChild("Objective")

									if objective then
										local wellingtonScene = objective:FindFirstChild("WellingtonScene")

										if wellingtonScene then
											local pocketWatch = wellingtonScene:FindFirstChild("Pocket Watch")

											if pocketWatch then
												local proximityPrompt = pocketWatch:FindFirstChild("ProximityPrompt")

												if proximityPrompt and proximityPrompt:IsA("ProximityPrompt") and proximityPrompt.Enabled then
													local num9 = tbl1.autoWatch.getModelPos(pocketWatch)

													if num9 and (num9 - num8.Position).Magnitude <= tbl1.autoWatch.range then
														pcall(function()
															fireproximityprompt(proximityPrompt)
														end)

														if proximityPrompt.HoldDuration > 0 then
															for i = 1, 50 do
																pcall(function()
																	fireproximityprompt(proximityPrompt)
																end)

																task.wait(0.01)
															end
														end
													end
												end
											else
												tbl1.autoWatch.done = true

												pcall(function()
													tbl1.notify(func12("自动拿怀表已完成"), 2)
												end)
											end
										end
									end
								end
							end
						end
					end

					if tbl1.autoWatch.done then
						tbl1.autoWatch.enabled = false
						tbl1.autoWatch.thread = nil
					end
				end

				tbl1.autoWatch.start = function()
					if tbl1.autoWatch.thread then
						return
					end
					tbl1.autoWatch.enabled = true
					tbl1.autoWatch.done = false
					tbl1.autoWatch.thread = task.spawn(tbl1.autoWatch.loop)
				end

				tbl1.autoWatch.stop = function()
					tbl1.autoWatch.enabled = false
					tbl1.autoWatch.done = false

					if tbl1.autoWatch.thread then
						task.cancel(tbl1.autoWatch.thread)
						tbl1.autoWatch.thread = nil
					end
				end

				obj37:AddToggle("AutoWatchToggle", {
					Text = "自动拿怀表",
					Default = false,
					Tooltip = func13("自动拾取威斯敏斯特怀表"),
					Callback = function(value)
						if value then
							tbl1.autoWatch.start()
						else
							tbl1.autoWatch.stop()
						end
					end,
				})

				tbl1.autoFlag = { enabled = false, thread = nil, range = 5, done = false }

				tbl1.autoFlag.getHRP = function()
					return tbl1.autoWatch.getHRP()
				end

				tbl1.autoFlag.getModelPos = function(param18)
					return tbl1.autoWatch.getModelPos(param18)
				end

				tbl1.autoFlag.loop = function()
					tbl1.autoFlag.done = false

					while tbl1.autoFlag.enabled and not tbl1.autoFlag.done do
						task.wait(0.3)
						local num10 = tbl1.autoFlag.getHRP()

						if not num10 then
							task.wait(0.5)
						else
							local exitTo = nil

							for _, getDescendant14 in workspace:GetDescendants() do
								if getDescendant14:IsA("ProximityPrompt") and getDescendant14.Enabled then
									local parent = getDescendant14.Parent

									if parent and parent.Name == "Standard" and parent:IsA("Model") then
										local num11 = tbl1.autoFlag.getModelPos(parent)
										if num11 and (num11 - num10.Position).Magnitude <= tbl1.autoFlag.range then
											exitTo = 1
											break
										end
									end
								end
							end

							if exitTo == 1 then
								for i = 1, 25 do
									if s4.Enabled then
										pcall(function()
											fireproximityprompt(s4)
										end)

										if s4.HoldDuration > 0 then
											for i2 = 1, 30 do
												pcall(function()
													fireproximityprompt(s4)
												end)

												task.wait(0.01)
											end
										end

										task.wait(0.2)
										continue
									end

									break
								end

								tbl1.autoFlag.done = true

								pcall(function()
									tbl1.notify(func12("自动抢旗杆已完成"), 2)
								end)
							end
						end
					end

					if tbl1.autoFlag.done then
						tbl1.autoFlag.enabled = false
						tbl1.autoFlag.thread = nil
					end
				end

				tbl1.autoFlag.start = function()
					if tbl1.autoFlag.thread then
						return
					end
					tbl1.autoFlag.enabled = true
					tbl1.autoFlag.done = false
					tbl1.autoFlag.thread = task.spawn(tbl1.autoFlag.loop)
				end

				tbl1.autoFlag.stop = function()
					tbl1.autoFlag.enabled = false
					tbl1.autoFlag.done = false

					if tbl1.autoFlag.thread then
						task.cancel(tbl1.autoFlag.thread)
						tbl1.autoFlag.thread = nil
					end
				end

				obj37:AddToggle("AutoFlagToggle", {
					Text = "自动抢旗杆",
					Default = false,
					Tooltip = func13("自动拾取威斯敏斯特旗杆"),
					Callback = function(value)
						if value then
							tbl1.autoFlag.start()
						else
							tbl1.autoFlag.stop()
						end
					end,
				})

				tbl1.autoAttackDoor = { enabled = false, thread = nil, range = 10, attackCooldown = 0.3 }

				tbl1.autoAttackDoor.getWeaponRemote = function()
					return tbl1.getHeldToolRemote()
				end

				tbl1.autoAttackDoor.findTargets = function()
					local character = localPlayer.Character
					if not character then
						return {}
					end
					local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
					if not humanoidRootPart then
						return {}
					end
					local position = humanoidRootPart.Position
					local tbl22 = {}
					local tbl23 = {}

					for _, getDescendant15 in workspace:GetDescendants() do
						if getDescendant15:IsA("BasePart") and getDescendant15.CanQuery ~= false and getDescendant15.Parent then
							local magnitude = (getDescendant15.Position - position).Magnitude

							if magnitude <= tbl1.autoAttackDoor.range then
								local obj52 = getDescendant15.Name:upper()

								if getDescendant15.Name == "Main" or obj52:find("DOOR") or obj52:find("GATE") then
									local str6 = tostring(getDescendant15)

									if not tbl23[str6] then
										tbl23[str6] = true
										table.insert(tbl22, { part = getDescendant15, dist = magnitude })
									end
								end
							end
						end
					end

					table.sort(tbl22, function(param19, param20)
						return param19.dist < param20.dist
					end)

					return tbl22
				end

				tbl1.autoAttackDoor.loop = function()
					while tbl1.autoAttackDoor.enabled do
						local autoAttackDo = tbl1.autoAttackDoor.getWeaponRemote()

						if autoAttackDo and localPlayer.Character then
							local humanoidRootPart = localPlayer.Character:FindFirstChild("HumanoidRootPart")

							if humanoidRootPart then
								local autoAttackDo2 = tbl1.autoAttackDoor.findTargets()

								if #autoAttackDo2 > 0 then
									local first1 = autoAttackDo2[1]
									local position = first1.part.Position
									local unit = (humanoidRootPart.Position - position).Unit

									pcall(function()
										autoAttackDo:FireServer("PrepareSwing")
										task.wait(0.02)
										autoAttackDo:FireServer("Swing", "Side")
										task.wait(0.02)
										autoAttackDo:FireServer("HitCon", first1.part, position, unit)
									end)

									task.wait(tbl1.autoAttackDoor.attackCooldown)
								end
							end
						end

						task.wait(0.1)
					end
				end

				tbl1.autoAttackDoor.start = function()
					if tbl1.autoAttackDoor.thread then
						return
					end
					tbl1.autoAttackDoor.enabled = true
					tbl1.autoAttackDoor.thread = task.spawn(tbl1.autoAttackDoor.loop)
				end

				tbl1.autoAttackDoor.stop = function()
					tbl1.autoAttackDoor.enabled = false

					if tbl1.autoAttackDoor.thread then
						task.cancel(tbl1.autoAttackDoor.thread)
						tbl1.autoAttackDoor.thread = nil
					end
				end

				obj37:AddToggle("AutoAttackDoorToggle", {
					Text = "自动攻击门",
					Default = false,
					Tooltip = func13("自动攻击附近的门"),
					Callback = function(value)
						if value then
							tbl1.autoAttackDoor.start()
						else
							tbl1.autoAttackDoor.stop()
						end
					end,
				})

				tbl1.autoFindDoctor = {
					enabled = false,
					thread = nil,
					threshold = 40,
					teleportCount = 0,
					maxTeleports = 2,
					prevHP = 100,
					trigger = 50,
				}

				tbl1.autoFindDoctor.getHRP = function(instance14)
					return instance14 and instance14:FindFirstChild("HumanoidRootPart")
				end

				tbl1.autoFindDoctor.getHealth = function()
					local humanoid = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
					return humanoid and humanoid.Health or 0
				end

				tbl1.autoFindDoctor.getMaxHealth = function()
					local humanoid = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
					return humanoid and humanoid.MaxHealth or 100
				end

				tbl1.autoFindDoctor.isDoctor = function(obj)
					if obj == localPlayer then
						return false
					end

					if obj:GetAttribute("CurrentClass") == "Surgeon" then
						return true
					end
					local character = obj.Character

					if character then
						if character:GetAttribute("CurrentClass") == "Surgeon" then
							return true
						end

						if character:FindFirstChild("MedicalSupplies") then
							return true
						end

						if character:FindFirstChild("Meter") then
							return true
						end
					end

					return false
				end

				tbl1.autoFindDoctor.hasSupplies = function(obj)
					local character = obj.Character
					if not character then
						return false
					end
					local meter = character:FindFirstChild("Meter")
					return meter and meter.Value > 0 or false
				end

				tbl1.autoFindDoctor.findNearestDoctor = function(num12)
					local n4 = 999
					local value76 = nil

					for _, getPlayer2 in obj4:GetPlayers() do
						if not (not tbl1.autoFindDoctor.isDoctor(getPlayer2) or not tbl1.autoFindDoctor.hasSupplies(getPlayer2)) then
							local character = getPlayer2.Character
							character = character and tbl1.autoFindDoctor.getHRP(character)

							if character then
								local magnitude = (character.Position - num12).Magnitude

								if magnitude < n4 then
									n4 = magnitude
									value76 = getPlayer2
								end
							end
						end
					end

					return value76, n4
				end

				tbl1.autoFindDoctor.teleportToDoctor = function(obj)
					local character = obj.Character
					local num13 = character and tbl1.autoFindDoctor.getHRP(character)
					if not num13 then
						return false
					end
					local character2 = localPlayer.Character
					character2 = character2 and tbl1.autoFindDoctor.getHRP(character2)
					if not character2 then
						return false
					end
					local n4 = num13.Position + num13.CFrame.LookVector * 2 + Vector3.new(0, 1, 0)
					if not pcall(function()
						character2.CFrame = cframe(n4)
					end) then
						return false
					end
					local n5 = clock() + 1

					while clock() < n5 do
						local character3 = localPlayer.Character
						character3 = character3 and tbl1.autoFindDoctor.getHRP(character3)

						if character3 then
							pcall(function()
								character3.CFrame = cframe(n4)
							end)
						end

						task.wait()
					end

					return true
				end

				tbl1.autoFindDoctor.loop = function()
					tbl1.autoFindDoctor.teleportCount = 0
					tbl1.autoFindDoctor.prevHP = 100
					tbl1.autoFindDoctor.trigger = tbl1.autoFindDoctor.threshold + 10

					while tbl1.autoFindDoctor.enabled do
						task.wait(1)
						local character = localPlayer.Character
						local flag28 = character and tbl1.autoFindDoctor.getHRP(character)

						if not flag28 then
							tbl1.autoFindDoctor.teleportCount = 0
							tbl1.autoFindDoctor.prevHP = 100
						else
							local autoFindDoct = tbl1.autoFindDoctor.getHealth()
							local n4 = autoFindDoct / tbl1.autoFindDoctor.getMaxHealth() * 100

							if n4 >= tbl1.autoFindDoctor.trigger then
								if tbl1.autoFindDoctor.teleportCount > 0 then
									print("[自动找医生] 血量恢复(" .. floor(n4) .. "%)，重置")
								end

								tbl1.autoFindDoctor.teleportCount = 0
								tbl1.autoFindDoctor.prevHP = autoFindDoct
							elseif n4 < tbl1.autoFindDoctor.threshold then
								if autoFindDoct > tbl1.autoFindDoctor.prevHP then
									tbl1.autoFindDoctor.teleportCount = 0
									tbl1.autoFindDoctor.prevHP = autoFindDoct
								else
									local flag29, value77 = tbl1.autoFindDoctor.findNearestDoctor(flag28.Position)

									if not flag29 then
										tbl1.autoFindDoctor.prevHP = autoFindDoct
									elseif value77 <= 20 then
										tbl1.autoFindDoctor.teleportCount = 0
										tbl1.autoFindDoctor.prevHP = autoFindDoct
									else
										if tbl1.autoFindDoctor.teleportCount < tbl1.autoFindDoctor.maxTeleports then
											tbl1.autoFindDoctor.teleportCount = tbl1.autoFindDoctor.teleportCount + 1

											if not tbl1.autoFindDoctor.teleportToDoctor(flag29) then
												tbl1.autoFindDoctor.teleportCount = tbl1.autoFindDoctor.teleportCount - 1
											end
										end

										tbl1.autoFindDoctor.prevHP = autoFindDoct
									end
								end
							else
								if tbl1.autoFindDoctor.teleportCount > 0 and n4 >= tbl1.autoFindDoctor.threshold and n4 < tbl1.autoFindDoctor.trigger then
									if autoFindDoct > tbl1.autoFindDoctor.prevHP then
										tbl1.autoFindDoctor.teleportCount = 0
									end
								end

								tbl1.autoFindDoctor.prevHP = autoFindDoct
							end
						end
					end
				end

				tbl1.autoFindDoctor.start = function()
					if tbl1.autoFindDoctor.thread then
						return
					end
					tbl1.autoFindDoctor.enabled = true
					tbl1.autoFindDoctor.teleportCount = 0
					tbl1.autoFindDoctor.prevHP = 100
					tbl1.autoFindDoctor.trigger = tbl1.autoFindDoctor.threshold + 10
					tbl1.autoFindDoctor.thread = task.spawn(tbl1.autoFindDoctor.loop)
				end

				tbl1.autoFindDoctor.stop = function()
					tbl1.autoFindDoctor.enabled = false

					if tbl1.autoFindDoctor.thread then
						task.cancel(tbl1.autoFindDoctor.thread)
						tbl1.autoFindDoctor.thread = nil
					end

					tbl1.autoFindDoctor.teleportCount = 0
					tbl1.autoFindDoctor.prevHP = 100
				end

				obj37:AddToggle("AutoFindDoctorToggle", {
					Text = "自动找医生",
					Default = false,
					Tooltip = func13("血量低于阈值（默认40%）且还在掉血时传送至医生"),
					Callback = function(value)
						if value then
							tbl1.autoFindDoctor.start()
						else
							tbl1.autoFindDoctor.stop()
						end
					end,
				})

				obj37:AddSlider("DoctorThreshold", {
					Text = "找医生血量阈值 (%)",
					Default = 40,
					Min = 1,
					Max = 100,
					Suffix = "%",
					Callback = function(threshold)
						tbl1.autoFindDoctor.threshold = threshold
						tbl1.autoFindDoctor.trigger = threshold + 10
					end,
				})

				obj37:AddToggle("AutoHelpToggle", {
					Text = "自动求救",
					Default = false,
					Tooltip = func13("血量低于80%时自动发送语音求助"),
					Callback = function(value)
						if value then
							tbl1.autoHelp.start()
						else
							tbl1.autoHelp.stop()
						end
					end,
				})

				tbl1.autoDoorEnabled = false
				tbl1.autoDoorThread = nil
				tbl1.processingDoors = {}

				tbl1.autoDoorLoop = function()
					while tbl1.autoDoorEnabled do
						local character = localPlayer.Character
						character = character and character:FindFirstChild("HumanoidRootPart")

						if character then
							for _, getDescendant16 in workspace:GetDescendants() do
								if getDescendant16.Name == "Main" and getDescendant16:IsA("Model") then
									local ok, result = pcall(function()
										return getDescendant16:GetPivot()
									end)

									if ok and result and (character.Position - result.Position).Magnitude <= 23 then
										local attribute = getDescendant16:GetAttribute("Open")

										if attribute == nil then
											pcall(function()
												attribute = getDescendant16.Open
											end)
										end

										if attribute == false then
											local main = getDescendant16:FindFirstChild("Main")
											local interact = main and main:FindFirstChild("Interact")

											if interact and interact:IsA("RemoteEvent") and not tbl1.processingDoors[getDescendant16] then
												tbl1.processingDoors[getDescendant16] = true

												task.spawn(function()
													interact:FireServer()
													task.wait(0)
													tbl1.processingDoors[getDescendant16] = nil
												end)
											end
										end
									end
								end
							end
						end

						task.wait(0)
					end
				end

				tbl1.toggleAutoDoor = function(autoDoorEnabled)
					tbl1.autoDoorEnabled = autoDoorEnabled

					if autoDoorEnabled then
						if not tbl1.autoDoorThread then
							tbl1.autoDoorThread = task.spawn(tbl1.autoDoorLoop)
						end
					elseif tbl1.autoDoorThread then
						task.cancel(tbl1.autoDoorThread)
						tbl1.autoDoorThread = nil
					end
				end

				obj37:AddToggle("AutoDoorToggle", {
					Text = "自动开门",
					Default = false,
					Tooltip = func13("自动开启附近场景中的门（适用于所有地图）"),
					Callback = function(value)
						tbl1.toggleAutoDoor(value)
					end,
				})

				tbl1.waveNum = 1

				tbl1.sendChatCmd = function(payload)
					if not pcall(function()
						result1(game:GetService("TextChatService")):FindFirstChild("TextChannels").RBXGeneral:SendAsync(payload)
					end) then
						local events = obj5:FindFirstChild("Events")
						local chatUpdate = events and events:FindFirstChild("ChatUpdate")

						if chatUpdate then
							pcall(function()
								chatUpdate:FireServer(payload)
							end)
						end
					end
				end

				local tbl24 = { _velHistory = {} }
				local obj53 = tbl13.AutoFunc:AddGroupbox({ Side = "Right", Name = "PVP 功能", IconName = "swords", Description = "战斗辅助" })

				obj53:AddToggle("PvpAimbotToggle", {
					Text = "开启自瞄",
					Default = false,
					Callback = function(value)
						if tbl24 and tbl24.toggle then
							tbl24.toggle(value)
						end
					end,
				})

				obj53:AddToggle("PvpSilentToggle", {
					Text = "启用静默",
					Default = false,
					Callback = function(silentMode)
						tbl24.silentMode = silentMode

						if tbl24.aimEnabled then
							if silentMode then
								tbl24.setupSilentHook()
							else
								tbl24.removeSilentHook()
							end
						end
					end,
				})

				obj53:AddDropdown("PvpAimPart", {
					Text = "瞄准部位",
					Values = { "头部", "身体" },
					Value = "头部",
					FormatDisplayValue = function(param21)
						return str2 == "English" and (tbl8[param21] or param21) or param21
					end,
					Callback = function(value)
						if tbl24 and tbl24.setAimPart then
							tbl24.setAimPart(value)
						end
					end,
				})

				obj53:AddSlider("PvpFOVSize", {
					Text = "瞄准大小",
					Default = 90,
					Min = 1,
					Max = 360,
					Suffix = "°",
					Callback = function(value)
						if tbl24 and tbl24.setFOV then
							tbl24.setFOV(value)
						end
					end,
				})

				obj53:AddToggle("PvpTeamCheck", {
					Text = "队伍检测",
					Default = false,
					Callback = function(value)
						if tbl24 and tbl24.toggleTeamCheck then
							tbl24.toggleTeamCheck(value)
						end
					end,
				})

				obj53:AddToggle("PvpWallCheck", {
					Text = "墙体检测",
					Default = true,
					Callback = function(value)
						if tbl24 and tbl24.toggleWallCheck then
							tbl24.toggleWallCheck(value)
						end
					end,
				})

				obj53:AddToggle("PvpPrediction", {
					Text = "子弹预判",
					Default = false,
					Callback = function(value)
						if tbl24 and tbl24.togglePrediction then
							tbl24.togglePrediction(value)
						end
					end,
				})

				obj53:AddToggle("PvpMeleeAura", {
					Text = "杀戮光环（近战）",
					Default = false,
					Tooltip = func13("体验虐杀的快感"),
					Callback = function(value)
						if tbl24 and tbl24.toggleMelee then
							tbl24.toggleMelee(value)
						end
					end,
				})

				obj53:AddToggle("PvpTeleport", {
					Text = "预判传送至敌方身后",
					Default = false,
					Tooltip = func13("预判传送"),
					Callback = function(value)
						if tbl24 and tbl24.toggleTeleport then
							tbl24.toggleTeleport(value)
						end
					end,
				})

				obj53:AddToggle("PvpForceEquip", {
					Text = "强制装备武器",
					Default = false,
					Tooltip = func13("持续装备近战武器"),
					Callback = function(value)
						if tbl24 and tbl24.toggleForceEquip then
							tbl24.toggleForceEquip(value)
						end
					end,
				})

				tbl24.weaponSpeedMap = tbl1.WEAPON_SPEED_MAP

				tbl24.getCurrentBulletSpeed = function()
					return tbl1.sharedGetCurrentBulletSpeed()
				end

				tbl24.getPing = function()
					return tbl1.sharedGetPing()
				end

				tbl24.getShotsLoaded = function()
					local character = localPlayer.Character
					return tbl1.sharedGetShotsLoaded(character and character:FindFirstChildOfClass("Tool"))
				end

				tbl24.aimEnabled = false
				tbl24.aimPart = "Head"
				tbl24.showFov = false
				tbl24.fov = 90
				tbl24.teamCheck = false
				tbl24.prediction = false
				tbl24.wallCheck = true
				tbl24.aimConn = nil
				tbl24.meleeEnabled = false
				tbl24.meleeConn = nil
				tbl24.tpEnabled = false
				tbl24.tpThread = nil
				tbl24.tpTarget = nil
				tbl24.tpHighlight = nil
				tbl24.bulletSpeed = 700
				tbl24.silentMode = false
				tbl24.silentHook = nil
				tbl24.silentTarget = nil
				tbl24._lastDistNotify = 0
				tbl24._velHistory = {}
				tbl24.lastNotifiedPlayer = nil
				tbl24.indicatorData = nil
				tbl24.indicatorPart = nil

				local function func26()
					local character = localPlayer.Character
					return tbl1.sharedIsGun(character and character:FindFirstChildOfClass("Tool"))
				end

				local function func27(num14, num15, param22)
					local tbl25 = {
						Vector3.zero,
						Vector3.new(0.5, 0.5, 0.5),
						Vector3.new(-0.5, 0.5, -0.5),
						Vector3.new(0.5, -0.5, 0.5),
						Vector3.new(-0.5, -0.5, -0.5),
						Vector3.new(0.8, 0, 0),
						Vector3.new(-0.8, 0, 0),
						Vector3.new(0, 0.8, 0),
						Vector3.new(0, -0.8, 0),
					}

					local n4 = #tbl25
					local raycastParams = RaycastParams.new()
					raycastParams.FilterType = Enum.RaycastFilterType.Exclude
					local filterDescendantsInstances = {}

					for _, getPlayer3 in obj4:GetPlayers() do
						if getPlayer3.Character then
							table.insert(filterDescendantsInstances, getPlayer3.Character)
						end
					end

					if param22 then
						table.insert(filterDescendantsInstances, param22)
					end

					raycastParams.FilterDescendantsInstances = filterDescendantsInstances
					local n5 = 0

					for _, value78 in tbl25 do
						local hit = workspace:Raycast(num14, num15 + value78 - num14, raycastParams)

						if hit then
							local instance = hit.Instance

							if instance and instance:IsA("BasePart") and instance.CanCollide then
								n5 += 1
							end
						end
					end

					return n5 > n4 / 2
				end

				local function func28()
					local value79 = localPlayer
					local character = value79.Character
					if not character then
						return nil
					end
					local head = character:FindFirstChild("Head") or character:FindFirstChild("HumanoidRootPart")
					if not head then
						return nil
					end
					local currentCamera = workspace.CurrentCamera
					local n4 = tbl24.getCurrentBulletSpeed()

					if n4 <= 0 then
						n4 = 700
					end

					local n5 = tbl24.getPing() / 1000

					if not tbl24._velHistory then
						tbl24._velHistory = {}
					end

					local huge = math.huge
					local huge2 = math.huge
					local value80 = nil

					for _, getPlayer4 in obj4:GetPlayers() do
						if getPlayer4 ~= value79 then
							if not (tbl1.isMarked and tbl1.isMarked(getPlayer4)) then
								local character2 = getPlayer4.Character

								if character2 then
									local humanoid = character2:FindFirstChildOfClass("Humanoid")

									if not (not humanoid or humanoid.Health <= 0) then
										if not (humanoid.Health > 1000) then
											if tbl24.teamCheck then
												local flag30 = tbl1.getPlayerTeam(value79)
												local flag31 = tbl1.getPlayerTeam(getPlayer4)
												if flag30 and flag31 and flag30 == flag31 then
													continue
												end
											end

											local head2 = character2:FindFirstChild(tbl24.aimPart) or character2:FindFirstChild("Head") or character2:FindFirstChild("HumanoidRootPart")

											if head2 then
												local magnitude = (head2.Position - currentCamera.CFrame.Position).Magnitude

												if not (magnitude > 1000) then
													if tbl24.wallCheck then
														if func27(head.Position, head2.Position, character2) then
															continue
														end
													end

													if tbl24.silentMode then
														if huge <= magnitude then
															continue
														end
														huge = magnitude
													else
														local flag32, flag33 = currentCamera:WorldToViewportPoint(head2.Position)
														if not flag32 or not flag33 then
															continue
														end
														local n6 = currentCamera.ViewportSize / 2
														local magnitude2 = (vector2(flag32.X, flag32.Y) - n6).Magnitude
														if magnitude2 > tbl24.fov or magnitude2 >= huge2 then
															continue
														end
														huge2 = magnitude2
													end

													local position = head2.Position
													local prediction2 = tbl24.prediction and n4 > 0
													local value81 = nil
													local value82

													if prediction2 then
														local humanoidRootPart = character2:FindFirstChild("HumanoidRootPart")
														local value83 = nil

														if humanoidRootPart then
															local assemblyLinearVelocity = humanoidRootPart.AssemblyLinearVelocity
															local flag34 = assemblyLinearVelocity and assemblyLinearVelocity.Magnitude > 0.3
															local value84 = nil

															if flag34 then
																if not tbl24._velHistory[getPlayer4] then
																	tbl24._velHistory[getPlayer4] = {}
																end

																local list7 = tbl24._velHistory[getPlayer4]
																table.insert(list7, assemblyLinearVelocity)

																if #list7 > 8 then
																	table.remove(list7, 1)
																end

																local result7 = vector()
																local n6 = 0

																for i = 1, #list7 do
																	local n7 = i / #list7
																	result7 += list7[i] * n7
																	n6 += n7
																end

																if n6 > 0 then
																	result7 /= n6
																end

																local n7 = 0

																if #list7 >= 2 then
																	local value85 = list7[#list7 - 1].Unit:Dot(list7[#list7].Unit)
																	n7 = 1 - abs(value85)
																end

																local n8 = 0

																if #list7 >= 2 then
																	local magnitude2 = list7[#list7 - 1].Magnitude
																	local magnitude3 = list7[#list7].Magnitude

																	if magnitude2 > 0.1 then
																		n8 = abs(magnitude3 - magnitude2) / magnitude2
																	end
																end

																local n9 = 1.2 * (1 - min(1, n7 * 0.8 + n8 * 0.4) * 0.6)
																local n10 = magnitude / n4 + n5
																local n11 = vector(result7.X, 0, result7.Z) * n10 * n9
																local num16 = min(20, magnitude * 0.1)

																if num16 < n11.Magnitude then
																	n11 = n11.Unit * num16
																end

																local y = result7.Y
																local n12

																if y < -0.5 then
																	n12 = -(0.5 * workspace.Gravity * n10 * n10 * 0.25)
																else
																	n12 = 0

																	if y > 1.5 then
																		n12 = y * n10 * 0.12
																	end
																end

																local n13 = head2.Position + n11 + vector(0, n12, 0)
																value82 = n13
																value81 = n13
															else
																value82 = position
																value81 = value84
															end
														else
															value82 = position
															value81 = value83
														end
													else
														value82 = position
													end

													value80 = {
														player = getPlayer4,
														aimPos = value82,
														part = head2,
														dist = magnitude,
														bulletSpeed = n4,
														predictedPos = value81,
													}
												end
											end
										end
									end
								end
							end
						end
					end

					for k in tbl24._velHistory do
						if not k or not k.Parent then
							tbl24._velHistory[k] = nil
						end
					end

					return value80
				end

				tbl24.updateIndicator = function(position, hasTarget)
					if not position then
						if tbl24.indicatorData then
							if tbl24.indicatorData.billboard then
								tbl24.indicatorData.billboard:Destroy()
							end

							tbl24.indicatorData = nil
						end

						if tbl24.indicatorPart then
							tbl24.indicatorPart:Destroy()
							tbl24.indicatorPart = nil
						end

						return
					end

					if not tbl24.indicatorPart or not tbl24.indicatorPart.Parent then
						tbl24.indicatorPart = Instance.new("Part")
						tbl24.indicatorPart.Name = "AimIndicatorAnchor"
						tbl24.indicatorPart.Size = Vector3.new(0.2, 0.2, 0.2)
						tbl24.indicatorPart.Transparency = 1
						tbl24.indicatorPart.CanCollide = false
						tbl24.indicatorPart.Anchored = true
						tbl24.indicatorPart.Parent = workspace
					end

					tbl24.indicatorPart.Position = position

					if not tbl24.indicatorData or not tbl24.indicatorData.billboard or not tbl24.indicatorData.billboard.Parent then
						local billboardGui = Instance.new("BillboardGui")
						billboardGui.Size = UDim2.new(0, 25, 0, 25)
						billboardGui.StudsOffset = Vector3.zero
						billboardGui.AlwaysOnTop = true
						billboardGui.Adornee = tbl24.indicatorPart
						billboardGui.Parent = tbl24.indicatorPart
						local frame3 = Instance.new("Frame")
						frame3.Size = UDim2.new(1, 0, 1, 0)
						frame3.BackgroundTransparency = 1
						frame3.Parent = billboardGui
						local frame4 = Instance.new("Frame")
						frame4.Size = UDim2.new(1, 0, 1, 0)
						frame4.BackgroundTransparency = 1
						frame4.Parent = frame3
						local uiStroke2 = Instance.new("UIStroke")
						uiStroke2.Thickness = 1
						uiStroke2.Color = color(255, 255, 255)
						uiStroke2.Transparency = 0.2
						uiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
						uiStroke2.Parent = frame4
						local uiCorner2 = Instance.new("UICorner")
						uiCorner2.CornerRadius = UDim.new(1, 0)
						uiCorner2.Parent = frame4
						local frame5 = Instance.new("Frame")
						frame5.Size = UDim2.new(0.65, 0, 0.65, 0)
						frame5.Position = UDim2.new(0.175, 0, 0.175, 0)
						frame5.BackgroundTransparency = 1
						frame5.Parent = frame3
						local uiStroke3 = Instance.new("UIStroke")
						uiStroke3.Thickness = 0.7
						uiStroke3.Color = color(255, 255, 255)
						uiStroke3.Transparency = 0.35
						uiStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
						uiStroke3.Parent = frame5
						local uiCorner3 = Instance.new("UICorner")
						uiCorner3.CornerRadius = UDim.new(1, 0)
						uiCorner3.Parent = frame5
						local frame6 = Instance.new("Frame")
						frame6.Size = UDim2.new(0, 1, 0, 12)
						frame6.Position = UDim2.new(0.5, -0.5, 0.15, 0)
						frame6.BackgroundColor3 = color(255, 255, 255)
						frame6.BackgroundTransparency = 0.3
						frame6.Parent = frame3
						local uiCorner4 = Instance.new("UICorner")
						uiCorner4.CornerRadius = UDim.new(0, 1)
						uiCorner4.Parent = frame6
						local uiGradient = Instance.new("UIGradient")
						local new = NumberSequenceKeypoint.new
						uiGradient.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.9), new(1, 0.1) })
						uiGradient.Rotation = 180
						uiGradient.Parent = frame6
						local tbl26 = {}

						for _, value86 in { { -1, -1, 0 }, { 1, -1, 90 }, { -1, 1, -90 }, { 1, 1, 180 } }, nil, nil do
							local frame7 = Instance.new("Frame")
							frame7.Size = UDim2.new(0, 3.5, 0, 3.5)
							frame7.BackgroundTransparency = 1
							frame7.Position = UDim2.new(0.5 + value86[1] * 0.36, -1.75, 0.5 + value86[2] * 0.36, -1.75)
							frame7.Rotation = value86[3]
							frame7.Parent = frame3
							local frame8 = Instance.new("Frame")
							frame8.Size = UDim2.new(1, 0, 0, 1)
							frame8.BackgroundColor3 = color(255, 255, 255)
							frame8.BackgroundTransparency = 0.4
							frame8.Parent = frame7
							local frame9 = Instance.new("Frame")
							frame9.Size = UDim2.new(0, 1, 1, 0)
							frame9.BackgroundColor3 = color(255, 255, 255)
							frame9.BackgroundTransparency = 0.4
							frame9.Parent = frame7
							table.insert(tbl26, frame7)
						end

						tbl24.indicatorData = {
							billboard = billboardGui,
							container = frame3,
							outer = frame4,
							outerStroke = uiStroke2,
							inner = frame5,
							innerStroke = uiStroke3,
							scanline = frame6,
							corners = tbl26,
							rotation = 0,
							hasTarget = false,
						}

						task.spawn(function()
							local rotation = 0

							while tbl24.indicatorData and tbl24.indicatorData.billboard and tbl24.indicatorData.billboard.Parent do
								rotation += 3

								if tbl24.indicatorData.outer then
									tbl24.indicatorData.outer.Rotation = rotation
								end

								if tbl24.indicatorData.inner then
									tbl24.indicatorData.inner.Rotation = -rotation * 0.6
								end

								if tbl24.indicatorData.scanline then
									tbl24.indicatorData.scanline.Rotation = rotation * 1.5
								end

								local hasTarget2 = tbl24.indicatorData.hasTarget
								local transparency = (math.sin(clock() * 4) + 1) / 2 * 0.2 + 0.15
								local transparency2 = (math.sin(clock() * 4 + 0.5) + 1) / 2 * 0.25 + 0.2

								if hasTarget2 then
									local value87 = color(0, floor((0.7 + (math.sin(clock() * 2) + 1) / 2 * 0.3) * 255), 80)

									if tbl24.indicatorData.outerStroke then
										tbl24.indicatorData.outerStroke.Color = value87
										tbl24.indicatorData.outerStroke.Transparency = transparency
									end

									if tbl24.indicatorData.innerStroke then
										tbl24.indicatorData.innerStroke.Color = value87
										tbl24.indicatorData.innerStroke.Transparency = transparency2
									end

									if tbl24.indicatorData.scanline then
										tbl24.indicatorData.scanline.BackgroundColor3 = value87
										tbl24.indicatorData.scanline.BackgroundTransparency = 0.3
									end

									for _, corner in tbl24.indicatorData.corners do
										for _, value88 in corner:GetChildren() do
											if value88:IsA("Frame") then
												value88.BackgroundColor3 = value87
											end
										end
									end
								else
									local value89 = color(255, 255, 255)

									if tbl24.indicatorData.outerStroke then
										tbl24.indicatorData.outerStroke.Color = value89
										tbl24.indicatorData.outerStroke.Transparency = transparency
									end

									if tbl24.indicatorData.innerStroke then
										tbl24.indicatorData.innerStroke.Color = value89
										tbl24.indicatorData.innerStroke.Transparency = transparency2
									end

									if tbl24.indicatorData.scanline then
										tbl24.indicatorData.scanline.BackgroundColor3 = value89
										tbl24.indicatorData.scanline.BackgroundTransparency = 0.3
									end

									for _, corner2 in tbl24.indicatorData.corners do
										for _, value90 in corner2:GetChildren() do
											if value90:IsA("Frame") then
												value90.BackgroundColor3 = value89
											end
										end
									end
								end

								task.wait(0.02)
							end
						end)
					else
						if tbl24.indicatorData.billboard.Adornee ~= tbl24.indicatorPart then
							tbl24.indicatorData.billboard.Adornee = tbl24.indicatorPart
						end

						tbl24.indicatorData.hasTarget = hasTarget
					end
				end

				tbl24.hideIndicator = function()
					if tbl24.indicatorData then
						if tbl24.indicatorData.billboard then
							tbl24.indicatorData.billboard:Destroy()
						end

						tbl24.indicatorData = nil
					end

					if tbl24.indicatorPart then
						tbl24.indicatorPart:Destroy()
						tbl24.indicatorPart = nil
					end
				end

				tbl24.setupSilentHook = function()
					if tbl24.silentHook then
						return
					end

					if type(hookmetamethod) ~= "function" then
						warn("静默自瞄需要 hookmetamethod")
						return
					end

					tbl24.silentHook = hookmetamethod(game, "__namecall", function(param23, ...)
						local packed1 = table.pack(...)

						if getnamecallmethod() == "FireServer" and tbl24.aimEnabled and tbl24.silentMode then
							local tbl27 = { ... }

							if tbl27[1] == "Fire" and tbl24.silentTarget and tbl24.silentTarget.aimPos then
								if localPlayer.Character then
									local tbl28 = {}

									for i = 1, #tbl27 do
										tbl28[i] = tbl27[i]
									end

									if #tbl28 >= 3 then
										tbl28[3] = tbl24.silentTarget.aimPos
									end

									return tbl24.silentHook(param23, unpack(tbl28))
								end
							end

							return tbl24.silentHook(param23, table.unpack(packed1, 1, packed1.n))
						end

						return tbl24.silentHook(param23, ...)
					end)
				end

				tbl24.removeSilentHook = function()
					if tbl24.silentHook then
						hookmetamethod(game, "__namecall", tbl24.silentHook)
						tbl24.silentHook = nil
					end
				end

				local function func29()
					while tbl24.aimEnabled do
						if not func26() then
							tbl24.hideIndicator()
							task.wait()
						else
							local result8 = func28()

							if result8 and result8.player and result8.player.Character then
								tbl24.silentTarget = result8
								tbl24.updateIndicator(result8.aimPos, true)

								if result8.player ~= tbl24.lastNotifiedPlayer then
									tbl24.lastNotifiedPlayer = result8.player

									pcall(function()
										local bulletSpeed = result8.bulletSpeed or 0
										tbl1.notify(str2 == "English" and "Distance: " .. floor(result8.dist) .. " studs | Speed: " .. bulletSpeed or "距离: " .. floor(result8.dist) .. "格 | 速度: " .. bulletSpeed, 1)
									end)
								end

								if not tbl24.silentMode then
									local currentCamera = workspace.CurrentCamera

									if currentCamera then
										currentCamera.CFrame = cframe(currentCamera.CFrame.Position, result8.aimPos)
									end
								end
							else
								tbl24.silentTarget = nil
								tbl24.lastNotifiedPlayer = nil
								tbl24.updateIndicator(nil, false)
							end

							task.wait()
						end
					end
				end

				tbl24.toggle = function(aimEnabled)
					tbl24.aimEnabled = aimEnabled

					if aimEnabled then
						if not tbl24.aimConn then
							tbl24.aimConn = task.spawn(func29)

							if tbl24.silentMode then
								tbl24.setupSilentHook()
							else
								tbl24.removeSilentHook()
							end
						end
					else
						if tbl24.aimConn then
							task.cancel(tbl24.aimConn)
							tbl24.aimConn = nil
						end

						tbl24.removeSilentHook()
						tbl24.silentTarget = nil
						tbl24.lastNotifiedPlayer = nil
						tbl24.hideIndicator()
					end
				end

				tbl24.setAimPart = function(flag35)
					tbl24.aimPart = flag35 == "身体" and "HumanoidRootPart" or "Head"
				end

				tbl24.toggleFOV = function(showFov)
					tbl24.showFov = showFov
				end

				tbl24.setFOV = function(fov)
					tbl24.fov = fov
				end

				tbl24.toggleTeamCheck = function(teamCheck)
					tbl24.teamCheck = teamCheck
				end

				tbl24.togglePrediction = function(prediction)
					tbl24.prediction = prediction
				end

				tbl24.setBulletSpeed = function(bulletSpeed)
					tbl24.bulletSpeed = bulletSpeed
				end

				tbl24.toggleWallCheck = function(wallCheck)
					tbl24.wallCheck = wallCheck
				end

				tbl24.toggleMelee = function(meleeEnabled)
					tbl24.meleeEnabled = meleeEnabled

					if meleeEnabled then
						if not tbl24.meleeConn then
							tbl24.meleeConn = value2.Heartbeat:Connect(function()
								if not tbl24.meleeEnabled then
									return
								end
								local character = localPlayer.Character
								if not character then
									return
								end
								local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
								if not humanoidRootPart then
									return
								end
								local tool = character:FindFirstChildOfClass("Tool")
								if not tool then
									return
								end
								local remoteEvent = tool:FindFirstChild("RemoteEvent")
								if not remoteEvent then
									return
								end

								for _, getPlayer5 in obj4:GetPlayers() do
									if getPlayer5 ~= localPlayer then
										if not (tbl1.isMarked and tbl1.isMarked(getPlayer5)) then
											if tbl24.teamCheck then
												local flag36 = tbl1.getPlayerTeam(localPlayer)
												local flag37 = tbl1.getPlayerTeam(getPlayer5)
												if flag36 and flag37 and flag36 == flag37 then
													continue
												end
											end

											local character2 = getPlayer5.Character

											if character2 then
												local humanoid = character2:FindFirstChildOfClass("Humanoid")

												if not (not humanoid or humanoid.Health <= 0) then
													if not (humanoid.Health > 1000) then
														local humanoidRootPart2 = character2:FindFirstChild("HumanoidRootPart")

														if humanoidRootPart2 then
															if not ((humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude > 45) then
																local head = character2:FindFirstChild("Head")

																if head then
																	pcall(function()
																		remoteEvent:FireServer("PrepareSwing")
																		remoteEvent:FireServer("Swing", "Side")
																		remoteEvent:FireServer("HitPlayer", humanoid, head.Position)
																	end)
																end
															end
														end
													end
												end
											end
										end
									end
								end
							end)
						end
					elseif tbl24.meleeConn then
						tbl24.meleeConn:Disconnect()
						tbl24.meleeConn = nil
					end
				end

				tbl24.toggleTeleport = function(tpEnabled)
					tbl24.tpEnabled = tpEnabled

					if tpEnabled then
						if tbl24.tpThread then
							return
						end
						tbl24.tpTargetHistory = {}
						tbl24.tpExtraLeadTime = 0.18
						tbl24.tpBackDistance = 4
						tbl24.tpUpOffset = 6
						tbl24.tpMaxPredict = 20

						tbl24.tpThread = task.spawn(function()
							while tbl24.tpEnabled do
								local character = obj4.LocalPlayer.Character

								if character then
									local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

									if humanoidRootPart then
										if tbl24.tpTarget then
											local character2 = tbl24.tpTarget.Character
											local humanoidRootPart2 = character2 and character2:FindFirstChild("HumanoidRootPart")
											local flag38 = false

											if humanoidRootPart2 then
												local humanoid = character2:FindFirstChildOfClass("Humanoid")
												humanoid = humanoid and humanoid.Health > 0
												flag38 = false

												if humanoid then
													local flag39 = tbl1.getPlayerTeam(obj4.LocalPlayer)
													local flag40 = tbl1.getPlayerTeam(tbl24.tpTarget)
													local flag41 = not flag39 or not flag40 or flag39 ~= flag40
													flag38 = false

													if flag41 then
														flag38 = true
													end
												end
											end

											if not flag38 then
												if tbl24.tpHighlight then
													tbl24.tpHighlight:Destroy()
													tbl24.tpHighlight = nil
												end

												tbl24.tpTarget = nil
												tbl24.tpTargetHistory = {}
											end
										end

										if not tbl24.tpTarget then
											local flag42 = tbl1.getPlayerTeam(obj4.LocalPlayer)
											local huge = math.huge
											local value91 = nil

											for _, getPlayer6 in obj4:GetPlayers() do
												if getPlayer6 ~= obj4.LocalPlayer then
													local character2 = getPlayer6.Character

													if character2 then
														local humanoid = character2:FindFirstChildOfClass("Humanoid")

														if not (not humanoid or humanoid.Health <= 0) then
															local humanoidRootPart2 = character2:FindFirstChild("HumanoidRootPart")

															if humanoidRootPart2 then
																local flag43 = tbl1.getPlayerTeam(getPlayer6)

																if not (flag42 and flag43 and flag42 == flag43) then
																	local magnitude = (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude

																	if magnitude < huge then
																		huge = magnitude
																		value91 = getPlayer6
																	end
																end
															end
														end
													end
												end
											end

											if value91 then
												tbl24.tpTarget = value91
												tbl24.tpTargetHistory = {}

												if tbl24.tpHighlight then
													tbl24.tpHighlight:Destroy()
												end

												local highlight = Instance.new("Highlight")
												highlight.FillColor = color(0, 255, 0)
												highlight.OutlineColor = color(0, 255, 0)
												highlight.FillTransparency = 0.3
												highlight.OutlineTransparency = 0.3
												highlight.Adornee = value91.Character
												highlight.Parent = value91.Character
												tbl24.tpHighlight = highlight
											end
										end

										if tbl24.tpTarget and tbl24.tpTarget.Character then
											local humanoidRootPart2 = tbl24.tpTarget.Character:FindFirstChild("HumanoidRootPart")

											if humanoidRootPart2 then
												table.insert(tbl24.tpTargetHistory, { time = clock(), pos = humanoidRootPart2.Position, cframe = humanoidRootPart2.CFrame })

												if #tbl24.tpTargetHistory > 10 then
													table.remove(tbl24.tpTargetHistory, 1)
												end

												local n4 = tbl24.getPing() / 1000

												if #tbl24.tpTargetHistory < 2 then
													local position = humanoidRootPart2.Position
													humanoidRootPart.CFrame = cframe(humanoidRootPart2.Position - humanoidRootPart2.CFrame.LookVector * tbl24.tpBackDistance + vector(0, tbl24.tpUpOffset, 0), position)
													task.wait(0.2)
												else
													local tpTargetHistory = tbl24.tpTargetHistory
													local vector3 = Vector3.zero
													local n5 = 0
													local n6 = 0
													local n7 = 0

													for i = 2, #tpTargetHistory do
														local entry5 = tpTargetHistory[i - 1]
														local entry6 = tpTargetHistory[i]
														local n8 = entry6.time - entry5.time

														if n8 > 0.001 then
															vector3 += (entry6.pos - entry5.pos) / n8
															local lookVector = entry5.cframe.LookVector
															local lookVector2 = entry6.cframe.LookVector
															local value92 = lookVector:Cross(lookVector2)
															local flag44 = lookVector:Dot(lookVector2)
															local n9 = math.atan2(value92.Magnitude, flag44)

															if flag44 < 0 then
																n9 = 3.1415926535897931 - n9
															end

															n5 += n9
															n6 += n8
															n7 += 1
														end
													end

													if n7 > 0 then
														vector3 /= n7
													end

													local n8 = 0
													local n9 = 0

													if #tpTargetHistory >= 2 then
														local n10 = 1 - abs((tpTargetHistory[#tpTargetHistory - 1].pos - tpTargetHistory[#tpTargetHistory].pos).Unit:Dot((tpTargetHistory[#tpTargetHistory].pos - tpTargetHistory[#tpTargetHistory - 1].pos).Unit))
														local magnitude = (tpTargetHistory[#tpTargetHistory].pos - tpTargetHistory[#tpTargetHistory - 1].pos).Magnitude
														local magnitude2 = (tpTargetHistory[#tpTargetHistory].pos - tpTargetHistory[#tpTargetHistory - 1].pos).Magnitude
														local n11 = 0

														if magnitude > 0.1 then
															n8 = n10
															n9 = abs(magnitude2 - magnitude) / magnitude
														else
															n8 = n10
															n9 = n11
														end
													end

													local n10 = 1 - min(1, n8 * 0.8 + n9 * 0.4) * 0.6
													local entry7 = tpTargetHistory[#tpTargetHistory]
													local n11 = entry7.pos + vector3 * n4 * n10

													if tbl24.tpMaxPredict < (n11 - entry7.pos).Magnitude then
														n11 = entry7.pos + (n11 - entry7.pos).Unit * tbl24.tpMaxPredict
													end

													local lookVector = entry7.cframe.LookVector
													local n12 = 0

													if n6 > 0.001 then
														n12 = n5 / n6
													end

													local num17

													if n12 == 0 then
														num17 = lookVector
													else
														local n13 = n12 * n4
														local vector4 = lookVector:Cross(Vector3.new(0, 1, 0))

														if vector4.Magnitude < 0.001 then
															vector4 = Vector3.new(1, 0, 0)
														end

														num17 = CFrame.fromAxisAngle(vector4.Unit, n13):VectorToWorldSpace(lookVector)
													end

													local n13 = n11 - num17 * tbl24.tpBackDistance
													local unit = vector3.Magnitude > 0.5 and vector3.Unit or Vector3.zero

													if unit.Magnitude > 0 then
														n13 += unit * vector3.Magnitude * tbl24.tpExtraLeadTime
													end

													humanoidRootPart.CFrame = cframe(n13 + vector(0, tbl24.tpUpOffset, 0), n11)
													task.wait(1e-09)
												end

												continue
											end
										end
									end
								end

								task.wait(1e-09)
							end
						end)
					else
						tbl24.tpEnabled = false

						if tbl24.tpThread then
							task.cancel(tbl24.tpThread)
							tbl24.tpThread = nil
						end

						if tbl24.tpHighlight then
							tbl24.tpHighlight:Destroy()
							tbl24.tpHighlight = nil
						end

						tbl24.tpTarget = nil
						tbl24.tpTargetHistory = {}
					end
				end

				tbl24.forceEquipEnabled = false
				tbl24.forceEquipConn = nil

				tbl24.toggleForceEquip = function(forceEquipEnabled)
					tbl24.forceEquipEnabled = forceEquipEnabled

					if forceEquipEnabled then
						if not tbl24.forceEquipConn then
							tbl24.forceEquipConn = value2.Heartbeat:Connect(function()
								if not tbl24.forceEquipEnabled then
									return
								end
								local character = obj4.LocalPlayer.Character
								if not character then
									return
								end
								local backpack = obj4.LocalPlayer:FindFirstChild("Backpack")
								if not backpack then
									return
								end
								local flag45 = false

								for _, value93 in character:GetChildren() do
									if value93:IsA("Tool") and value93:GetAttribute("Melee") then
										flag45 = true
										break
									end
								end

								if not flag45 then
									for _, value94 in backpack:GetChildren() do
										if value94:IsA("Tool") and value94:GetAttribute("Melee") then
											value94.Parent = character
											break
										end
									end
								end
							end)
						end
					elseif tbl24.forceEquipConn then
						tbl24.forceEquipConn:Disconnect()
						tbl24.forceEquipConn = nil
					end
				end

				tbl1.onCharacterAdded(function()
					if tbl24.tpHighlight then
						tbl24.tpHighlight:Destroy()
						tbl24.tpHighlight = nil
					end

					tbl24.tpTarget = nil
					tbl24.hideIndicator()

					if tbl24.aimEnabled then
						tbl24.toggle(false)
						task.wait(0.5)
						tbl24.toggle(true)
					end

					if tbl24.meleeEnabled then
						tbl24.toggleMelee(false)
						task.wait(0.5)
						tbl24.toggleMelee(true)
					end

					if tbl24.tpEnabled then
						tbl24.toggleTeleport(false)
						task.wait(0.5)
						tbl24.toggleTeleport(true)
					end
				end)

				tbl1.disguise = {}
				tbl1.disguise.lastVictimName = ""
				tbl1.disguise.active = false

				tbl1.disguise.getUserIdByUsername = function(param24)
					local ok, result = pcall(function()
						return game:HttpGet("https://users.roblox.com/v1/users/search?keyword=" .. obj2:UrlEncode(param24), true)
					end)

					if not ok then
						return nil, nil, nil
					end
					local data = obj2:JSONDecode(result)
					if data and data.data and #data.data > 0 then
						return data.data[1].id, data.data[1].name, data.data[1].displayName
					end
					return nil, nil, nil
				end

				tbl1.disguise.applyCharacterAppearance = function(parent, param25)
					local characterAppearanceAsync = obj4:GetCharacterAppearanceAsync(param25)

					for _, value95 in parent:GetChildren() do
						if value95:IsA("Accessory") or value95:IsA("Shirt") or value95:IsA("Pants") or value95:IsA("BodyColors") then
							value95:Destroy()
						end
					end

					for _, value96 in characterAppearanceAsync:GetChildren() do
						if value96:IsA("Shirt") or value96:IsA("Pants") or value96:IsA("BodyColors") then
							value96:Clone().Parent = parent
						elseif value96:IsA("Accessory") then
							parent.Humanoid:AddAccessory(value96:Clone())
						end
					end

					if characterAppearanceAsync:FindFirstChild("face") then
						if parent:WaitForChild("Head"):FindFirstChild("face") then
							parent.Head.face:Destroy()
						end

						local head = parent.Head
						characterAppearanceAsync.face:Clone().Parent = head
					end

					local parent2 = parent.Parent
					parent.Parent = nil
					parent.Parent = parent2
				end

				tbl1.disguise.applyAppearanceOnly = function(flag46)
					if flag46 == "" then
						lib:Notify({ Title = func12("错误"), Description = func12("请输入目标玩家名字"), Time = 3 })
						return false
					end

					return (pcall(function()
						local flag47 = localPlayer
						local flag48, value97, value98 = tbl1.disguise.getUserIdByUsername(flag46)
						if not flag48 then
							lib:Notify({ Title = func12("错误"), Description = func12("找不到该玩家"), Time = 3 })
							return
						end

						if not flag47.Character then
							flag47.CharacterAdded:Wait()
						end

						while true do
							task.wait()
							if not (flag47.Character and flag47.Character:FindFirstChild("Humanoid")) then
								continue
							end
							break
						end

						local character = flag47.Character
						tbl1.disguise.applyCharacterAppearance(character, flag48)
						task.wait(0.1)

						pcall(function()
							local humanoid = character:FindFirstChildOfClass("Humanoid")

							if humanoid then
								workspace.CurrentCamera[nil ] = humanoid
								workspace.CurrentCamera[nil ] = Enum[nil ][nil ]
							end
						end)

						lib:Notify({
							Title = func12(nil ),
							Description = format(str2 == "English" and nil  or nil , value98),
							Time = 3,
						})
					end))
				end

				tbl1.disguise.changeNameOnly = function(flag49)
					if flag49 == "" then
						lib:Notify({ Title = func12("错误"), Description = func12("请输入新名字"), Time = 3 })
						return false
					end

					return (pcall(function()
						local flag50 = localPlayer
						local flag51, value99, value100 = tbl1.disguise.getUserIdByUsername(flag49)
						if not flag51 then
							lib:Notify({ Title = func12("错误"), Description = func12(nil ), Time = 3 })
							return
						end

						if not flag50.Character then
							flag50.CharacterAdded:Wait()
						end

						while true do
							task.wait()
							if not (flag50.Character and flag50.Character:FindFirstChild("Humanoid")) then
								continue
							end
							break
						end

						flag50.Character:FindFirstChildOfClass("Humanoid")
						error("SL: this block could not be recovered")
					end))
				end

				if hookmetamethod then
					local value101 = nil

					local function func30(flag52, ...)
						if getnamecallmethod() == "Destroy" and tbl1.disguise.active then
							local character = localPlayer.Character
							if character and flag52 == character then
								return nil
							end
						end

						local packed2 = table.pack(...)
						return value101(flag52, table.unpack(packed2, 1, packed2.n))
					end

					value101 = hookmetamethod
					value101 = value101(game, "__namecall", func30)
				end

				tbl1.getPurchaseEvent = function()
					if not obj5 then
						return nil
					end
					local events = obj5:FindFirstChild("Events")
					if not events then
						return nil
					end
					local customize = events:FindFirstChild("Customize")
					if not customize then
						return nil
					end
					return customize:FindFirstChild("PurchaseEvent")
				end

				local function func31()
					local character = localPlayer.Character
					if not character then
						return nil, nil
					end
					local humanoid = character:FindFirstChildOfClass("Humanoid")
					if not humanoid then
						return nil, nil
					end
					local instance = humanoid:FindFirstChildOfClass(nil )

					if not instance then
						instance = Instance.new(nil )
						instance.Parent = humanoid
					end

					return humanoid, instance
				end

				local function func32()
					local humanoid = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")

					if humanoid then
						for k in humanoid[nil ](humanoid) do
							pcall(nil )
						end
					end
				end

				local function func33()
					local humanoid = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")

					if humanoid then
						humanoid[nil ] = 16
					end
				end

				tbl1[nil ] = function()
					func32()
					func33()
				end

