--// GUI TRANSLATOR VI/EN - NO EXTERNAL SCRIPT
--// Fixed Cartoon Font - Compact Version

local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")

local LP = Players.LocalPlayer
local TARGET_FONT = Enum.Font.Cartoon
local TranslationEnabled = false

local DICT = {
	--// GENERAL
	["Overview"]="Tổng quan",["Main"]="Chính",["Home"]="Trang chủ",["Settings"]="Cài đặt",["Setting"]="Cài đặt",
	["Player"]="Người chơi",["Players"]="Người chơi",["Character"]="Nhân vật",["Characters"]="Nhân vật",
	["Inventory"]="Kho đồ",["Item"]="Vật phẩm",["Items"]="Vật phẩm",["Event"]="Sự kiện",["Events"]="Sự kiện",
	["Reward"]="Phần thưởng",["Rewards"]="Phần thưởng",["Egg"]="Trứng",["Eggs"]="Trứng",["Discord"]="Discord",
	["Language"]="Ngôn ngữ",["Vietnamese"]="Tiếng Việt",["English"]="Tiếng Anh",["Version"]="Phiên bản",["Key"]="Key",

	--// FYY
	["Steal"]="Trộm",["Auto Steal"]="Tự động trộm",["Auto Steal Egg"]="Tự động trộm trứng",["Steal Egg"]="Trộm trứng",
	["Stolen Egg"]="Trứng đã trộm",["Drop Egg"]="Thả trứng",["Carry Egg"]="Mang trứng",["Instant Drop"]="Thả ngay",
	["Instant Steal"]="Trộm ngay",["Instant Carry"]="Mang ngay",["Steal From Player"]="Trộm từ người chơi",
	["Steal From Other Player"]="Trộm từ người chơi khác",["Steal From Other Players"]="Trộm từ người chơi khác",
	["Drop Stolen Egg"]="Thả trứng đã trộm",["Drop At Forest"]="Thả tại rừng",["Go To Forest"]="Đi đến rừng",
	["Go To Last Area"]="Đi đến khu vực cuối",["Last Area"]="Khu vực cuối",["Rarest"]="Hiếm nhất",
	["Enchanted Forest"]="Rừng Enchanted",["Sacred Moth"]="Sacred Moth",["Drop Stolen Egg at Forest"]="Thả trứng đã trộm tại rừng",
	["MoveTo"]="Di chuyển đến",["Move To"]="Di chuyển đến",["Steal Mode"]="Chế độ trộm",["Bay Mode"]="Chế độ bay",
	["Mode"]="Chế độ",["Bay"]="Bay",["Carry"]="Mang",["Instant"]="Ngay lập tức",["Drop"]="Thả",
	["Stolen"]="Đã trộm",["From"]="Từ",["Other"]="Khác",["Area"]="Khu vực",["Forest"]="Rừng",
	["Nearest"]="Gần nhất",["Farthest"]="Xa nhất",["Lowest"]="Thấp nhất",["Highest"]="Cao nhất",["Random"]="Ngẫu nhiên",

	--// CHILLI
	["Mech Tween Speed"]="Tốc độ Tween Mech",["Main Weapon Hold"]="Giữ vũ khí chính",["Scrambler Hold"]="Giữ Scrambler",
	["Swap Two Weapons"]="Đổi qua lại hai vũ khí",["Boss Server Hop"]="Hop server Boss",["Auto Mech Boss"]="Tự động Mech Boss",
	["Auto Mech"]="Tự động Mech",["Mech Boss"]="Mech Boss",["Mech Portal"]="Cổng Mech",["Next Mech Portal"]="Cổng Mech tiếp theo",
	["Auto Hop"]="Tự động Hop",["Server Hop"]="Hop Server",["Next Portal"]="Cổng tiếp theo",["Quick & Keys"]="Phím nhanh",
	["Quick Bar"]="Thanh phím nhanh",["Quick Keys"]="Phím nhanh",["Quick Key"]="Phím nhanh",["Walk Speed"]="Tốc độ đi bộ",
	["Jump Power"]="Lực nhảy",["God Mode"]="Bất tử",["Kill All"]="Giết tất cả",["Auto Farm"]="Tự động Farm",
	["Anti Ban"]="Chống Ban",["Anti AFK"]="Chống AFK",["Full Bright"]="Sáng tối đa",["No Fog"]="Tắt sương mù",
	["Copy Link"]="Sao chép Link",["Made by"]="Được tạo bởi",
	["After each boss, hops to a less crowded server to fight again"]="Sau mỗi boss, chuyển sang server ít đông hơn để đánh tiếp",

	--// ACTIONS
	["Toggle"]="Bật/Tắt",["Enable"]="Bật",["Disable"]="Tắt",["Enabled"]="Đã bật",["Disabled"]="Đã tắt",
	["On"]="Bật",["Off"]="Tắt",["Close"]="Đóng",["Open"]="Mở",["Confirm"]="Xác nhận",["Cancel"]="Hủy",
	["Apply"]="Áp dụng",["Reset"]="Đặt lại",["Save"]="Lưu",["Load"]="Tải",["Select"]="Chọn",["Selected"]="Đã chọn",
	["Copy"]="Sao chép",["Copied"]="Đã sao chép",["Execute"]="Thực thi",["Start"]="Bắt đầu",["Stop"]="Dừng",
	["Refresh"]="Làm mới",["Search"]="Tìm kiếm",["Filter"]="Lọc",["Sort"]="Sắp xếp",["Hold"]="Giữ",
	["Swap"]="Đổi",["Hop"]="Hop",["Next"]="Tiếp theo",["Back"]="Quay lại",["Previous"]="Trước đó",
	["Continue"]="Tiếp tục",["Exit"]="Thoát",["Delete"]="Xóa",["Remove"]="Xóa bỏ",["Add"]="Thêm",["Edit"]="Chỉnh sửa",
	["Update"]="Cập nhật",["Use"]="Sử dụng",["Equip"]="Trang bị",["Unequip"]="Tháo",["Buy"]="Mua",["Sell"]="Bán",
	["Claim"]="Nhận",["Collect"]="Thu thập",["Teleport"]="Dịch chuyển",

	--// FEATURES
	["Speed"]="Tốc độ",["Walk"]="Đi bộ",["Jump"]="Nhảy",["Fly"]="Bay",["Infinite"]="Vô hạn",["Health"]="Máu",
	["Ammo"]="Đạn",["Kill"]="Giết",["Aimbot"]="Tự ngắm",["Aim"]="Ngắm",["Wallhack"]="Xuyên tường",["ESP"]="ESP",
	["Auto"]="Tự động",["Farm"]="Farm",["Noclip"]="Xuyên tường",["NoClip"]="Xuyên tường",["No Clip"]="Xuyên tường",
	["FOV"]="Góc nhìn",["Hitbox"]="Hitbox",["Invisible"]="Tàng hình",["Damage"]="Sát thương",["Range"]="Tầm",
	["Radius"]="Bán kính",["Amount"]="Số lượng",["Value"]="Giá trị",["Time"]="Thời gian",["Delay"]="Độ trễ",
	["Cooldown"]="Hồi chiêu",["Weapon"]="Vũ khí",["Weapons"]="Vũ khí",["Boss"]="Boss",["Bosses"]="Boss",
	["Mech"]="Mech",["Tween"]="Tween",["Portal"]="Cổng",["Target"]="Mục tiêu",["Targets"]="Mục tiêu",
	["Target Player"]="Mục tiêu người chơi",["Target Boss"]="Mục tiêu Boss",["Target Mob"]="Mục tiêu Mob",
	["Bring"]="Kéo",["Bring Mob"]="Kéo Mob",["Bring Mobs"]="Kéo Mob",

	--// FARMING
	["Farming"]="Đang Farm",["Auto Farming"]="Tự động Farm",["Auto Farm Level"]="Tự động Farm Level",
	["Farm Level"]="Farm Level",["Mob Farm"]="Farm Mob",["Farm Mob"]="Farm Mob",["Boss Farm"]="Farm Boss",
	["Auto Boss"]="Tự động Boss",["Auto Quest"]="Tự động nhiệm vụ",["Quest"]="Nhiệm vụ",["Quests"]="Nhiệm vụ",
	["Mission"]="Nhiệm vụ",["Missions"]="Nhiệm vụ",["NPC"]="NPC",["Mobs"]="Mob",["Mob"]="Mob",

	--// TELEPORT
	["Teleport To Player"]="Dịch chuyển đến người chơi",["Teleport To Island"]="Dịch chuyển đến đảo",
	["Teleport To NPC"]="Dịch chuyển đến NPC",["Teleport To Boss"]="Dịch chuyển đến Boss",
	["Teleport To Mob"]="Dịch chuyển đến Mob",["Island"]="Đảo",["Islands"]="Các đảo",["Sea"]="Biển",
	["Sea 1"]="Biển 1",["Sea 2"]="Biển 2",["Sea 3"]="Biển 3",["Location"]="Vị trí",["Locations"]="Các vị trí",

	--// SERVER
	["Server"]="Server",["Servers"]="Các Server",["Server Hopping"]="Hop Server",["Rejoin"]="Vào lại",
	["Join Server"]="Vào Server",["Leave Server"]="Rời Server",["Low Server"]="Server ít người",
	["Less Crowded"]="Ít đông",["Player Count"]="Số người chơi",["Server Count"]="Số Server",

	--// BLOX FRUITS
	["Blox Fruits"]="Blox Fruits",["Fruit"]="Trái",["Fruits"]="Trái",["Devil Fruit"]="Trái ác quỷ",
	["Chest"]="Rương",["Chests"]="Rương",["Elite"]="Elite",["Pirate"]="Hải tặc",["Marine"]="Marine",
	["Race"]="Tộc",["Races"]="Các tộc",["Fragments"]="Mảnh",["Money"]="Tiền",["Cash"]="Tiền",
	["Bounty"]="Bounty",["Level"]="Cấp độ",["Mastery"]="Thông thạo",["Energy"]="Năng lượng",["Haki"]="Haki",
	["Buso"]="Buso",["Ken"]="Ken",["Observation"]="Quan sát",["Awakening"]="Thức tỉnh",["Awaken"]="Thức tỉnh",
	["Fighting Style"]="Phong cách chiến đấu",["Sword"]="Kiếm",["Swords"]="Kiếm",["Accessory"]="Phụ kiện",
	["Accessories"]="Phụ kiện",

	--// EVENTS
	["Full Moon"]="Trăng tròn",["Mirage Island"]="Đảo Mirage",["Mystic Island"]="Đảo Mystic",
	["Temple of Time"]="Đền Thời Gian",["Kitsune"]="Kitsune",["Kitsune Island"]="Đảo Kitsune",
	["Sea Event"]="Sự kiện biển",["Event Island"]="Đảo sự kiện",["Factory"]="Nhà máy",["Castle"]="Lâu đài",
	["Temple"]="Đền",["Island Event"]="Sự kiện đảo",

	--// STATUS
	["Loading"]="Đang tải",["Loaded"]="Đã tải",["Loading..."]="Đang tải...",["Error"]="Lỗi",["Success"]="Thành công",
	["Failed"]="Thất bại",["Warning"]="Cảnh báo",["Notice"]="Thông báo",["Active"]="Đang hoạt động",
	["Inactive"]="Không hoạt động",["Running"]="Đang chạy",["Stopped"]="Đã dừng",["Ready"]="Sẵn sàng",
	["Waiting"]="Đang chờ",["Please Wait"]="Vui lòng chờ",["Please wait"]="Vui lòng chờ",["Connected"]="Đã kết nối",
	["Disconnected"]="Đã ngắt kết nối",["Not Found"]="Không tìm thấy",["Found"]="Đã tìm thấy",["Finished"]="Đã hoàn tất",
	["Completed"]="Hoàn thành",

	--// RARITY
	["Common"]="Thường",["Uncommon"]="Không phổ biến",["Rare"]="Hiếm",["Epic"]="Sử thi",["Legendary"]="Huyền thoại",
	["Mythic"]="Thần thoại",["Mythical"]="Thần thoại",["Cosmic"]="Vũ trụ",["Secret"]="Bí mật",
	["Eternal"]="Vĩnh hằng",["Divine"]="Thần thánh",
}
--// UI
DICT["UI"]="Giao diện"; DICT["Interface"]="Giao diện"; DICT["Menu"]="Menu"; DICT["Main Menu"]="Menu chính"
DICT["Panel"]="Bảng"; DICT["Tab"]="Tab"; DICT["Tabs"]="Các Tab"; DICT["Button"]="Nút"; DICT["Input"]="Ô nhập"
DICT["Text"]="Văn bản"; DICT["Name"]="Tên"; DICT["Title"]="Tiêu đề"; DICT["Description"]="Mô tả"
DICT["Information"]="Thông tin"; DICT["Info"]="Thông tin"; DICT["Details"]="Chi tiết"
DICT["Search Player"]="Tìm người chơi"; DICT["Search Item"]="Tìm vật phẩm"

--// SETTINGS
DICT["Theme"]="Chủ đề"; DICT["Color"]="Màu"; DICT["Size"]="Kích thước"; DICT["Position"]="Vị trí"
DICT["Distance"]="Khoảng cách"; DICT["Height"]="Chiều cao"; DICT["Width"]="Chiều rộng"
DICT["Transparency"]="Độ trong suốt"; DICT["Opacity"]="Độ mờ"; DICT["Keybind"]="Phím tắt"
DICT["Keybinds"]="Phím tắt"; DICT["Hotkey"]="Phím nóng"; DICT["Control"]="Điều khiển"; DICT["Controls"]="Điều khiển"

--// EXTRA
DICT["Auto Collect"]="Tự động thu thập"; DICT["Auto Collect Fruit"]="Tự động nhặt trái"
DICT["Auto Collect Chest"]="Tự động nhặt rương"; DICT["Auto Collect Money"]="Tự động nhặt tiền"
DICT["Auto Collect Fragments"]="Tự động nhặt mảnh"; DICT["Auto Store Fruit"]="Tự động cất trái"
DICT["Auto Equip"]="Tự động trang bị"; DICT["Auto Use"]="Tự động sử dụng"; DICT["Auto Sell"]="Tự động bán"
DICT["Auto Buy"]="Tự động mua"; DICT["Auto Upgrade"]="Tự động nâng cấp"; DICT["Find Fruit"]="Tìm trái"
DICT["Find Chest"]="Tìm rương"; DICT["Find Player"]="Tìm người chơi"; DICT["Find Boss"]="Tìm Boss"
DICT["Infinite Jump"]="Nhảy vô hạn"; DICT["Infinite Health"]="Máu vô hạn"; DICT["Fast Attack"]="Đánh nhanh"
DICT["Auto Attack"]="Tự động đánh"; DICT["Kill Aura"]="Aura giết"

--// FYY EXTRA
DICT["Drop Stolen Egg"]="Thả trứng đã trộm"; DICT["Go To Forest"]="Đi đến rừng"; DICT["Go To Last Area"]="Đi đến khu vực cuối"
DICT["Steal From Other Player"]="Trộm từ người chơi khác"; DICT["Instant Steal"]="Trộm ngay"
DICT["Instant Drop"]="Thả ngay"; DICT["Carry Egg"]="Mang trứng"; DICT["Drop Egg"]="Thả trứng"

--// CHILLI EXTRA
DICT["Auto Mech"]="Tự động Mech"; DICT["Mech Boss"]="Mech Boss"; DICT["Mech Portal"]="Cổng Mech"
DICT["Next Portal"]="Cổng tiếp theo"; DICT["Quick Keys"]="Phím nhanh"; DICT["Quick Key"]="Phím nhanh"
DICT["Main Weapon"]="Vũ khí chính"; DICT["Scrambler"]="Scrambler"; DICT["Swap Weapons"]="Đổi vũ khí"
DICT["Two Weapons"]="Hai vũ khí"; DICT["Weapon Hold"]="Giữ vũ khí"; DICT["Boss Hop"]="Hop Boss"
DICT["Auto Boss Hop"]="Tự động Hop Boss"

--// TIME
DICT["Second"]="Giây"; DICT["Seconds"]="Giây"; DICT["Minute"]="Phút"; DICT["Minutes"]="Phút"
DICT["Hour"]="Giờ"; DICT["Hours"]="Giờ"

--// DIRECTIONS
DICT["Left"]="Trái"; DICT["Right"]="Phải"; DICT["Up"]="Lên"; DICT["Down"]="Xuống"; DICT["Forward"]="Tiến"
DICT["Backward"]="Lùi"; DICT["Front"]="Phía trước"; DICT["Back"]="Phía sau"; DICT["Above"]="Bên trên"
DICT["Below"]="Bên dưới"; DICT["Near"]="Gần"; DICT["Far"]="Xa"

--// MISC
DICT["Misc"]="Khác"; DICT["Miscellaneous"]="Linh tinh"; DICT["Visual"]="Hiển thị"; DICT["Visuals"]="Hiển thị"
DICT["Debug"]="Debug"; DICT["Developer"]="Nhà phát triển"; DICT["Credits"]="Thông tin tác giả"; DICT["Author"]="Tác giả"
DICT["Created By"]="Được tạo bởi"; DICT["Made By"]="Được tạo bởi"; DICT["Update Available"]="Có bản cập nhật"
DICT["New Update"]="Bản cập nhật mới"; DICT["Check Update"]="Kiểm tra cập nhật"; DICT["Latest Version"]="Phiên bản mới nhất"

--// SORT DICTIONARY
local Keys = {}
for k in pairs(DICT) do Keys[#Keys + 1] = k end
table.sort(Keys,function(a,b) return #a > #b end)

local function EscapePattern(s) return s:gsub("(%W)","%%%1") end

local function TranslateText(text)
	if not TranslationEnabled or type(text) ~= "string" or text == "" then return text end
	if DICT[text] then return DICT[text] end
	local result = text
	for _,k in ipairs(Keys) do result = result:gsub("%f[%a]"..EscapePattern(k).."%f[%A]",DICT[k]) end
	return result
end

--// FONT + TRANSLATE
local function IsTextObject(obj) return obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") end

local function ForceCartoon(obj)
	if not IsTextObject(obj) then return end
	pcall(function() obj.Font = TARGET_FONT end)
end

local function TranslateObject(obj)
	if not IsTextObject(obj) then return end
	ForceCartoon(obj)
	if not TranslationEnabled then return end
	pcall(function()
		if obj.Text and obj.Text ~= "" then obj.Text = TranslateText(obj.Text) end
	end)
	pcall(function()
		if obj.PlaceholderText and obj.PlaceholderText ~= "" then obj.PlaceholderText = TranslateText(obj.PlaceholderText) end
	end)
end

local Connections = {}

local function HookObject(obj)
	if not IsTextObject(obj) then return end
	TranslateObject(obj)
	if Connections[obj] then return end
	Connections[obj] = true

	obj:GetPropertyChangedSignal("Font"):Connect(function()
		ForceCartoon(obj)
	end)

	obj:GetPropertyChangedSignal("Text"):Connect(function()
		task.defer(function()
			if obj.Parent then TranslateObject(obj) end
		end)
	end)

	if obj:IsA("TextBox") then
		obj:GetPropertyChangedSignal("PlaceholderText"):Connect(function()
			task.defer(function()
				if obj.Parent then TranslateObject(obj) end
			end)
		end)
	end
end

local HookedContainers = {}

local function HookContainer(container)
	if not container then return end

	for _,obj in ipairs(container:GetDescendants()) do
		HookObject(obj)
	end

	if not HookedContainers[container] then
		HookedContainers[container] = true
		container.DescendantAdded:Connect(function(obj)
			task.defer(function()
				HookObject(obj)
				for _,child in ipairs(obj:GetDescendants()) do HookObject(child) end
			end)
		end)
	end
end

local function GetHUI()
	local ok,result = pcall(function()
		if gethui then return gethui() end
	end)
	return ok and result or nil
end

local function HookAllGui()
	pcall(function() HookContainer(CoreGui) end)
	pcall(function() HookContainer(LP:FindFirstChildOfClass("PlayerGui")) end)
	local hui = GetHUI()
	if hui then pcall(function() HookContainer(hui) end) end
end

--// LANGUAGE MENU
local old = CoreGui:FindFirstChild("NhatTranslator")
if old then old:Destroy() end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "NhatTranslator"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

pcall(function() ScreenGui.Parent = CoreGui end)
if not ScreenGui.Parent then ScreenGui.Parent = LP:WaitForChild("PlayerGui") end

local Main = Instance.new("Frame")
Main.Size = UDim2.new(0,220,0,135)
Main.Position = UDim2.new(0.5,-110,0.5,-67)
Main.BackgroundColor3 = Color3.fromRGB(20,25,35)
Main.BorderSizePixel = 0
Main.Active = true
Main.Parent = ScreenGui

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0,10)
Corner.Parent = Main

local Stroke = Instance.new("UIStroke")
Stroke.Color = Color3.fromRGB(0,170,255)
Stroke.Thickness = 1.5
Stroke.Parent = Main

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1,0,0,40)
Title.BackgroundTransparency = 1
Title.Text = "Chọn ngôn ngữ"
Title.TextColor3 = Color3.fromRGB(100,200,255)
Title.TextSize = 18
Title.Font = TARGET_FONT
Title.Parent = Main

local VI = Instance.new("TextButton")
VI.Size = UDim2.new(0,90,0,48)
VI.Position = UDim2.new(0,15,0,58)
VI.BackgroundColor3 = Color3.fromRGB(0,170,255)
VI.TextColor3 = Color3.fromRGB(255,255,255)
VI.Text = "Tiếng Việt"
VI.TextSize = 16
VI.Font = TARGET_FONT
VI.Parent = Main

local VICorner = Instance.new("UICorner")
VICorner.CornerRadius = UDim.new(0,7)
VICorner.Parent = VI

local EN = Instance.new("TextButton")
EN.Size = UDim2.new(0,90,0,48)
EN.Position = UDim2.new(0,115,0,58)
EN.BackgroundColor3 = Color3.fromRGB(45,50,60)
EN.TextColor3 = Color3.fromRGB(255,255,255)
EN.Text = "English"
EN.TextSize = 16
EN.Font = TARGET_FONT
EN.Parent = Main

local ENCorner = Instance.new("UICorner")
ENCorner.CornerRadius = UDim.new(0,7)
ENCorner.Parent = EN

--// DRAG
local dragging = false
local dragStart
local startPos

Main.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = Main.Position
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if not dragging then return end
	if input.UserInputType ~= Enum.UserInputType.MouseMovement and input.UserInputType ~= Enum.UserInputType.Touch then return end
	local delta = input.Position - dragStart
	Main.Position = UDim2.new(startPos.X.Scale,startPos.X.Offset + delta.X,startPos.Y.Scale,startPos.Y.Offset + delta.Y)
end)

UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then dragging = false end
end)

--// LANGUAGE SWITCH
local function SetLanguage(lang)
	TranslationEnabled = lang == "vi"
	HookAllGui()

	for _,container in ipairs({CoreGui,LP:FindFirstChildOfClass("PlayerGui"),GetHUI()}) do
		if container then
			for _,obj in ipairs(container:GetDescendants()) do
				if IsTextObject(obj) then
					if TranslationEnabled then TranslateObject(obj) else ForceCartoon(obj) end
				end
			end
		end
	end
end

VI.MouseButton1Click:Connect(function()
	VI.BackgroundColor3 = Color3.fromRGB(0,170,255)
	EN.BackgroundColor3 = Color3.fromRGB(45,50,60)
	SetLanguage("vi")
end)

EN.MouseButton1Click:Connect(function()
	EN.BackgroundColor3 = Color3.fromRGB(0,170,255)
	VI.BackgroundColor3 = Color3.fromRGB(45,50,60)
	SetLanguage("en")
end)

--// AUTO HOOK
HookAllGui()

task.spawn(function()
	while task.wait(1) do
		HookAllGui()
		if TranslationEnabled then
			for _,container in ipairs({CoreGui,LP:FindFirstChildOfClass("PlayerGui"),GetHUI()}) do
				if container then
					for _,obj in ipairs(container:GetDescendants()) do
						if IsTextObject(obj) then
							ForceCartoon(obj)
						end
					end
				end
			end
		end
	end
end)
