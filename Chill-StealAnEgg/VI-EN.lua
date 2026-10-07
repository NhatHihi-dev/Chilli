local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")

local LP = Players.LocalPlayer

local SCRIPT_URL =
    "https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"

local TARGET_FONT = Enum.Font.Cartoon

local TranslationEnabled = false

--// =========================================================
--// DICTIONARY
--// =========================================================

local DICT = {

    -- ==================== GENERAL ====================

    ["Overview"] = "Tổng quan",
    ["Main"] = "Chính",
    ["Home"] = "Trang chủ",
    ["Settings"] = "Cài đặt",
    ["Setting"] = "Cài đặt",
    ["Player"] = "Người chơi",
    ["Players"] = "Người chơi",
    ["Character"] = "Nhân vật",
    ["Characters"] = "Nhân vật",
    ["Inventory"] = "Hành trang",
    ["Item"] = "Vật phẩm",
    ["Items"] = "Vật phẩm",
    ["Event"] = "Sự kiện",
    ["Events"] = "Sự kiện",
    ["Reward"] = "Phần thưởng",
    ["Rewards"] = "Phần thưởng",
    ["Egg"] = "Trứng",
    ["Eggs"] = "Trứng",
    ["Discord"] = "Discord",
    ["Language"] = "Ngôn ngữ",
    ["Vietnamese"] = "Tiếng Việt",
    ["English"] = "Tiếng Anh",
    ["Version"] = "Phiên bản",
    ["Key"] = "Khoá",

    -- ==================== FYY ====================

    ["Steal"] = "Trộm",
    ["Auto Steal"] = "Tự động Trộm",
    ["Steal Mode"] = "Chế độ Trộm",
    ["Bay Mode"] = "Chế độ Bay",
    ["Instant Carry"] = "Mang tức thì",
    ["MoveTo"] = "Di chuyển đến",
    ["Move To"] = "Di chuyển đến",
    ["Last Area"] = "Khu vực cuối",
    ["Rarest"] = "Hiếm nhất",
    ["Enchanted Forest"] = "Rừng Phép Thuật",
    ["Sacred Moth"] = "Bướm Thiêng",
    ["Drop Stolen Egg at Forest"] =
        "Thả Trứng Trộm tại Rừng",
    ["Steal From Other Players"] =
        "Trộm từ người chơi khác",

    -- ==================== FYY - TỪ ĐƠN ====================

    ["Mode"] = "Chế độ",
    ["Bay"] = "Vịnh",
    ["Carry"] = "Mang",
    ["Instant"] = "Tức thì",
    ["Drop"] = "Thả",
    ["Stolen"] = "Bị trộm",
    ["From"] = "Từ",
    ["Other"] = "Khác",
    ["Area"] = "Khu vực",
    ["Forest"] = "Rừng",
    ["Sacred"] = "Thiêng",
    ["Enchanted"] = "Phép Thuật",
    ["Moth"] = "Bướm",

    -- ==================== CHILLI ====================

    ["Mech Tween Speed"] =
        "Tốc độ Mech Tween",

    ["Main Weapon Hold"] =
        "Giữ vũ khí chính",

    ["Scrambler Hold"] =
        "Giữ Scrambler",

    ["Swap Two Weapons"] =
        "Đổi 2 vũ khí",

    ["Boss Server Hop"] =
        "Chuyển máy chủ Boss",

    ["Auto Mech Boss"] =
        "Tự động Mech Boss",

    ["Auto Hop"] =
        "Tự động chuyển",

    ["Server Hop"] =
        "Chuyển máy chủ",

    ["Hop Server"] =
        "Chuyển máy chủ",

    ["Next Mech Portal"] =
        "Cổng Mech tiếp theo",

    ["Quick & Keys"] =
        "Phím nhanh",

    ["Quick Bar"] =
        "Thanh nhanh",

    ["Walk Speed"] =
        "Tốc độ đi",

    ["Jump Power"] =
        "Lực nhảy",

    ["God Mode"] =
        "Bất tử",

    ["Kill All"] =
        "Giết tất cả",

    ["Auto Farm"] =
        "Tự động cày",

    ["Anti Ban"] =
        "Chống ban",

    ["Anti AFK"] =
        "Chống AFK",

    ["Full Bright"] =
        "Ánh sáng đầy",

    ["No Fog"] =
        "Không sương mù",

    ["Copy Link"] =
        "Sao chép liên kết",

    ["Made by"] =
        "Được tạo bởi",

    ["Please wait"] =
        "Vui lòng đợi",

    ["After each boss, hops to a less crowded server to fight again"] =
        "Sau mỗi boss, chuyển sang server ít đông hơn để đánh tiếp",

    -- ==================== ACTIONS ====================

    ["Toggle"] = "Bật/Tắt",
    ["Enable"] = "Bật",
    ["Disable"] = "Tắt",
    ["Enabled"] = "Đã bật",
    ["Disabled"] = "Đã tắt",
    ["On"] = "Bật",
    ["Off"] = "Tắt",
    ["Close"] = "Đóng",
    ["Open"] = "Mở",
    ["Confirm"] = "Xác nhận",
    ["Cancel"] = "Huỷ",
    ["Apply"] = "Áp dụng",
    ["Reset"] = "Đặt lại",
    ["Save"] = "Lưu",
    ["Load"] = "Tải",
    ["Select"] = "Chọn",
    ["Selected"] = "Đã chọn",
    ["Copy"] = "Sao chép",
    ["Copied"] = "Đã sao chép",
    ["Execute"] = "Thực thi",
    ["Start"] = "Bắt đầu",
    ["Stop"] = "Dừng",
    ["Refresh"] = "Làm mới",
    ["Search"] = "Tìm kiếm",
    ["Filter"] = "Lọc",
    ["Sort"] = "Sắp xếp",
    ["Hold"] = "Giữ",
    ["Swap"] = "Đổi",
    ["Hop"] = "Chuyển",
    ["Next"] = "Tiếp theo",
    ["Back"] = "Quay lại",
    ["Previous"] = "Trước",
    ["Continue"] = "Tiếp tục",
    ["Exit"] = "Thoát",
    ["Delete"] = "Xoá",
    ["Remove"] = "Xoá",
    ["Add"] = "Thêm",
    ["Edit"] = "Chỉnh sửa",
    ["Update"] = "Cập nhật",
    ["Use"] = "Sử dụng",
    ["Equip"] = "Trang bị",
    ["Unequip"] = "Tháo",
    ["Buy"] = "Mua",
    ["Sell"] = "Bán",
    ["Claim"] = "Nhận",
    ["Collect"] = "Nhặt",
    ["Teleport"] = "Dịch chuyển",

    -- ==================== FEATURES ====================

    ["Speed"] = "Tốc độ",
    ["Walk"] = "Đi",
    ["Jump"] = "Nhảy",
    ["Fly"] = "Bay",
    ["Infinite"] = "Vô hạn",
    ["Health"] = "Máu",
    ["Ammo"] = "Đạn",
    ["Kill"] = "Giết",
    ["Aimbot"] = "Ngắm tự động",
    ["Aim"] = "Ngắm",
    ["Wallhack"] = "Xuyên tường",
    ["ESP"] = "ESP",
    ["Auto"] = "Tự động",
    ["Farm"] = "Cày",
    ["Noclip"] = "Xuyên vật thể",
    ["NoClip"] = "Xuyên vật thể",
    ["No Clip"] = "Xuyên vật thể",
    ["FOV"] = "Tầm nhìn",
    ["Hitbox"] = "Vùng va chạm",
    ["Invisible"] = "Tàng hình",
    ["Damage"] = "Sát thương",
    ["Range"] = "Phạm vi",
    ["Radius"] = "Bán kính",
    ["Amount"] = "Số lượng",
    ["Value"] = "Giá trị",
    ["Time"] = "Thời gian",
    ["Delay"] = "Độ trễ",
    ["Cooldown"] = "Hồi chiêu",
    ["Weapon"] = "Vũ khí",
    ["Weapons"] = "Vũ khí",
    ["Boss"] = "Boss",
    ["Bosses"] = "Boss",
    ["Mech"] = "Mech",
    ["Tween"] = "Tween",
    ["Portal"] = "Cổng",
    ["Target"] = "Mục tiêu",
    ["Targets"] = "Mục tiêu",
    ["Target Player"] = "Mục tiêu người chơi",
    ["Target Boss"] = "Mục tiêu Boss",
    ["Target Mob"] = "Mục tiêu quái",
    ["Bring"] = "Kéo",
    ["Bring Mob"] = "Kéo quái",
    ["Bring Mobs"] = "Kéo quái",

    -- ==================== FARM ====================

    ["Farming"] = "Cày",
    ["Auto Farming"] = "Tự động cày",
    ["Auto Farm Level"] = "Tự động cày cấp",
    ["Farm Level"] = "Cày cấp",
    ["Mob Farm"] = "Cày quái",
    ["Farm Mob"] = "Cày quái",
    ["Boss Farm"] = "Cày Boss",
    ["Auto Boss"] = "Tự động Boss",
    ["Auto Quest"] = "Tự động nhiệm vụ",
    ["Quest"] = "Nhiệm vụ",
    ["Quests"] = "Nhiệm vụ",
    ["Mission"] = "Nhiệm vụ",
    ["Missions"] = "Nhiệm vụ",
    ["NPC"] = "NPC",
    ["Mobs"] = "Quái",
    ["Mob"] = "Quái",

    -- ==================== TELEPORT ====================

    ["Teleport To Player"] =
        "Dịch chuyển đến người chơi",

    ["Teleport To Island"] =
        "Dịch chuyển đến đảo",

    ["Teleport To NPC"] =
        "Dịch chuyển đến NPC",

    ["Teleport To Boss"] =
        "Dịch chuyển đến Boss",

    ["Teleport To Mob"] =
        "Dịch chuyển đến quái",

    ["Island"] = "Đảo",
    ["Islands"] = "Các đảo",
    ["Sea"] = "Biển",
    ["Sea 1"] = "Biển 1",
    ["Sea 2"] = "Biển 2",
    ["Sea 3"] = "Biển 3",
    ["Location"] = "Vị trí",
    ["Locations"] = "Vị trí",

    -- ==================== SERVER ====================

    ["Server"] = "Máy chủ",
    ["Servers"] = "Máy chủ",
    ["Server Hopping"] = "Đang chuyển máy chủ",
    ["Rejoin"] = "Vào lại",
    ["Join Server"] = "Vào máy chủ",
    ["Leave Server"] = "Rời máy chủ",
    ["Low Server"] = "Máy chủ ít người",
    ["Less Crowded"] = "Ít đông hơn",
    ["Player Count"] = "Số người chơi",
    ["Server Count"] = "Số máy chủ",

    -- ==================== BLOX FRUITS ====================

    ["Blox Fruits"] = "Blox Fruits",
    ["Fruit"] = "Trái",
    ["Fruits"] = "Trái",
    ["Devil Fruit"] = "Trái ác quỷ",
    ["Chest"] = "Rương",
    ["Chests"] = "Rương",
    ["Elite"] = "Elite",
    ["Pirate"] = "Hải tặc",
    ["Marine"] = "Thủy quân",
    ["Race"] = "Tộc",
    ["Races"] = "Tộc",
    ["Fragments"] = "Mảnh",
    ["Money"] = "Tiền",
    ["Cash"] = "Tiền",
    ["Bounty"] = "Tiền thưởng",
    ["Level"] = "Cấp",
    ["Mastery"] = "Thông thạo",
    ["Energy"] = "Năng lượng",
    ["Haki"] = "Haki",
    ["Buso"] = "Buso",
    ["Ken"] = "Ken",
    ["Observation"] = "Quan sát",
    ["Awakening"] = "Thức tỉnh",
    ["Awaken"] = "Thức tỉnh",
    ["Fighting Style"] = "Võ",
    ["Sword"] = "Kiếm",
    ["Swords"] = "Kiếm",
    ["Accessory"] = "Phụ kiện",
    ["Accessories"] = "Phụ kiện",

    -- ==================== EVENTS ====================

    ["Full Moon"] = "Trăng tròn",
    ["Mirage Island"] = "Đảo Mirage",
    ["Mystic Island"] = "Đảo Mystic",
    ["Temple of Time"] = "Đền Thời Gian",
    ["Kitsune"] = "Kitsune",
    ["Kitsune Island"] = "Đảo Kitsune",
    ["Sea Event"] = "Sự kiện biển",
    ["Event Island"] = "Đảo sự kiện",
    ["Factory"] = "Nhà máy",
    ["Castle"] = "Lâu đài",
    ["Temple"] = "Đền",
    ["Island Event"] = "Sự kiện đảo",

    -- ==================== STATUS ====================

    ["Loading"] = "Đang tải",
    ["Loaded"] = "Đã tải",
    ["Loading..."] = "Đang tải...",
    ["Error"] = "Lỗi",
    ["Success"] = "Thành công",
    ["Failed"] = "Thất bại",
    ["Warning"] = "Cảnh báo",
    ["Notice"] = "Thông báo",
    ["Active"] = "Kích hoạt",
    ["Inactive"] = "Không hoạt động",
    ["Running"] = "Đang chạy",
    ["Stopped"] = "Đã dừng",
    ["Ready"] = "Sẵn sàng",
    ["Waiting"] = "Đang chờ",
    ["Please Wait"] = "Vui lòng đợi",
    ["Please wait"] = "Vui lòng đợi",
    ["Connected"] = "Đã kết nối",
    ["Disconnected"] = "Đã ngắt kết nối",
    ["Not Found"] = "Không tìm thấy",
    ["Found"] = "Đã tìm thấy",
    ["Finished"] = "Đã hoàn thành",
    ["Completed"] = "Đã hoàn thành",

    -- ==================== RARITY ====================

    ["Common"] = "Thường",
    ["Uncommon"] = "Ít gặp",
    ["Rare"] = "Hiếm",
    ["Epic"] = "Sử thi",
    ["Legendary"] = "Huyền thoại",
    ["Mythic"] = "Thần thoại",
    ["Mythical"] = "Thần thoại",
    ["Cosmic"] = "Vũ trụ",
    ["Secret"] = "Bí ẩn",
    ["Eternal"] = "Vĩnh cửu",
    ["Divine"] = "Thần thánh",
      -- ==================== UI ====================

    ["UI"] = "Giao diện",
    ["Interface"] = "Giao diện",
    ["Menu"] = "Menu",
    ["Main Menu"] = "Menu chính",
    ["Panel"] = "Bảng",
    ["Tab"] = "Tab",
    ["Tabs"] = "Các tab",
    ["Button"] = "Nút",
    ["Input"] = "Nhập",
    ["Text"] = "Văn bản",
    ["Name"] = "Tên",
    ["Title"] = "Tiêu đề",
    ["Description"] = "Mô tả",
    ["Information"] = "Thông tin",
    ["Info"] = "Thông tin",
    ["Details"] = "Chi tiết",
    ["Search Player"] = "Tìm người chơi",
    ["Search Item"] = "Tìm vật phẩm",

    -- ==================== SETTINGS ====================

    ["Theme"] = "Chủ đề",
    ["Color"] = "Màu",
    ["Size"] = "Kích thước",
    ["Position"] = "Vị trí",
    ["Distance"] = "Khoảng cách",
    ["Height"] = "Độ cao",
    ["Width"] = "Chiều rộng",
    ["Transparency"] = "Độ trong suốt",
    ["Opacity"] = "Độ mờ",
    ["Keybind"] = "Phím tắt",
    ["Keybinds"] = "Phím tắt",
    ["Hotkey"] = "Phím nóng",
    ["Control"] = "Điều khiển",
    ["Controls"] = "Điều khiển",

    -- ==================== EXTRA ====================

    ["Auto Collect"] = "Tự động nhặt",
    ["Auto Collect Fruit"] = "Tự động nhặt trái",
    ["Auto Collect Chest"] = "Tự động nhặt rương",
    ["Auto Collect Money"] = "Tự động nhặt tiền",
    ["Auto Collect Fragments"] = "Tự động nhặt mảnh",
    ["Auto Store Fruit"] = "Tự động cất trái",
    ["Auto Equip"] = "Tự động cầm",
    ["Auto Use"] = "Tự động sử dụng",
    ["Auto Sell"] = "Tự động bán",
    ["Auto Buy"] = "Tự động mua",
    ["Auto Upgrade"] = "Tự động nâng cấp",
    ["Find Fruit"] = "Tìm trái",
    ["Find Chest"] = "Tìm rương",
    ["Find Player"] = "Tìm người chơi",
    ["Find Boss"] = "Tìm Boss",
    ["Full Bright"] = "Ánh sáng đầy",
    ["No Fog"] = "Không sương mù",
    ["Anti AFK"] = "Chống AFK",
    ["Anti Ban"] = "Chống ban",
    ["Infinite Jump"] = "Nhảy vô hạn",
    ["Infinite Health"] = "Máu vô hạn",
    ["Fast Attack"] = "Đánh nhanh",
    ["Auto Attack"] = "Tự động đánh",
    ["Kill Aura"] = "Đánh xung quanh",
    ["Bring Mob"] = "Kéo quái",
    ["Bring Mobs"] = "Kéo quái",

    -- ==================== FYY EXTRA ====================

    ["Auto Steal Egg"] = "Tự động trộm Trứng",
    ["Steal Egg"] = "Trộm Trứng",
    ["Stolen Egg"] = "Trứng bị trộm",
    ["Drop Egg"] = "Thả Trứng",
    ["Carry Egg"] = "Mang Trứng",
    ["Instant Drop"] = "Thả tức thì",
    ["Instant Steal"] = "Trộm tức thì",
    ["Steal From Player"] =
        "Trộm từ người chơi",

    ["Steal From Other Player"] =
        "Trộm từ người chơi khác",

    ["Drop Stolen Egg"] =
        "Thả Trứng bị trộm",

    ["Drop At Forest"] =
        "Thả tại Rừng",

    ["Go To Forest"] =
        "Đi đến Rừng",

    ["Go To Last Area"] =
        "Đi đến khu vực cuối",

    ["Nearest"] = "Gần nhất",
    ["Farthest"] = "Xa nhất",
    ["Lowest"] = "Thấp nhất",
    ["Highest"] = "Cao nhất",
    ["Random"] = "Ngẫu nhiên",

    -- ==================== CHILLI EXTRA ====================

    ["Auto Mech"] = "Tự động Mech",
    ["Mech Boss"] = "Boss Mech",
    ["Mech Portal"] = "Cổng Mech",
    ["Next Portal"] = "Cổng tiếp theo",
    ["Quick Keys"] = "Phím nhanh",
    ["Quick Key"] = "Phím nhanh",
    ["Main Weapon"] = "Vũ khí chính",
    ["Scrambler"] = "Scrambler",
    ["Swap Weapon"] = "Đổi vũ khí",
    ["Swap Weapons"] = "Đổi vũ khí",
    ["Two Weapons"] = "2 vũ khí",
    ["Weapon Hold"] = "Giữ vũ khí",
    ["Boss Hop"] = "Chuyển server Boss",
    ["Auto Boss Hop"] =
        "Tự động chuyển server Boss",

    -- ==================== TIME ====================

    ["Second"] = "Giây",
    ["Seconds"] = "Giây",
    ["Minute"] = "Phút",
    ["Minutes"] = "Phút",
    ["Hour"] = "Giờ",
    ["Hours"] = "Giờ",
    ["Instant"] = "Tức thì",

    -- ==================== DIRECTIONS ====================

    ["Left"] = "Trái",
    ["Right"] = "Phải",
    ["Up"] = "Lên",
    ["Down"] = "Xuống",
    ["Forward"] = "Tiến",
    ["Backward"] = "Lùi",
    ["Front"] = "Phía trước",
    ["Back"] = "Phía sau",
    ["Above"] = "Phía trên",
    ["Below"] = "Phía dưới",
    ["Near"] = "Gần",
    ["Far"] = "Xa",

    -- ==================== MISC ====================

    ["Misc"] = "Khác",
    ["Miscellaneous"] = "Khác",
    ["Visual"] = "Hiển thị",
    ["Visuals"] = "Hiển thị",
    ["Debug"] = "Gỡ lỗi",
    ["Developer"] = "Nhà phát triển",
    ["Credits"] = "Thông tin tác giả",
    ["Author"] = "Tác giả",
    ["Created By"] = "Được tạo bởi",
    ["Made By"] = "Được tạo bởi",
    ["Update Available"] = "Có bản cập nhật",
    ["New Update"] = "Bản cập nhật mới",
    ["Check Update"] = "Kiểm tra cập nhật",
    ["Latest Version"] = "Phiên bản mới nhất",
}

--// =========================================================
--// SORT DICTIONARY
--// CỤM DÀI ĐƯỢC ƯU TIÊN DỊCH TRƯỚC
--// =========================================================

local SortedKeys = {}

for key in pairs(DICT) do
    table.insert(SortedKeys, key)
end

table.sort(SortedKeys, function(a, b)
    return #a > #b
end)

--// =========================================================
--// ESCAPE PATTERN
--// =========================================================

local function EscapePattern(str)
    return str:gsub(
        "([%(%)%.%%%+%-%*%?%[%^%$])",
        "%%%1"
    )
end

--// =========================================================
--// TRANSLATION CACHE
--// =========================================================

local TranslationCache = {}

local function TranslateText(text)

    if not TranslationEnabled then
        return text
    end

    if typeof(text) ~= "string" or text == "" then
        return text
    end

    if TranslationCache[text] ~= nil then
        return TranslationCache[text]
    end

    local result = text

    -- Exact match
    if DICT[text] then

        result = DICT[text]
        TranslationCache[text] = result

        return result
    end

    -- Cụm dài -> cụm ngắn
    for _, english in ipairs(SortedKeys) do

        local vietnamese = DICT[english]

        local pattern =
            "%f[%w]"
            .. EscapePattern(english)
            .. "%f[%W]"

        result = result:gsub(
            pattern,
            vietnamese
        )

    end

    TranslationCache[text] = result

    return result
end

--// =========================================================
--// GUI HOOK
--// =========================================================

local HookedObjects = setmetatable({}, {
    __mode = "k"
})

local HookedContainers = setmetatable({}, {
    __mode = "k"
})

local function IsTextObject(obj)

    return obj:IsA("TextLabel")
        or obj:IsA("TextButton")
        or obj:IsA("TextBox")

end

--// =========================================================
--// FORCE CARTOON
--// =========================================================

local function ForceCartoon(obj)

    if not IsTextObject(obj) then
        return
    end

    pcall(function()

        if obj.Font ~= TARGET_FONT then
            obj.Font = TARGET_FONT
        end

    end)

end

--// =========================================================
--// TRANSLATE OBJECT
--// =========================================================

local function TranslateObject(obj)

    if not IsTextObject(obj) then
        return
    end

    if not TranslationEnabled then
        return
    end

    pcall(function()

        if obj:IsA("TextBox") then

            local oldText = obj.Text
            local newText = TranslateText(oldText)

            if oldText ~= newText then
                obj.Text = newText
            end

            local oldPlaceholder =
                obj.PlaceholderText

            local newPlaceholder =
                TranslateText(oldPlaceholder)

            if oldPlaceholder ~= newPlaceholder then
                obj.PlaceholderText = newPlaceholder
            end

        else

            local oldText = obj.Text
            local newText = TranslateText(oldText)

            if oldText ~= newText then
                obj.Text = newText
            end

        end

    end)

end

--// =========================================================
--// APPLY
--// =========================================================

local function ApplyObject(obj)

    if not IsTextObject(obj) then
        return
    end

    -- Cartoon luôn được bật
    ForceCartoon(obj)

    -- Chỉ dịch khi chọn Việt
    TranslateObject(obj)

end

--// =========================================================
--// HOOK OBJECT
--// =========================================================

local function HookObject(obj)

    if not IsTextObject(obj) then
        return
    end

    if HookedObjects[obj] then

        ApplyObject(obj)

        return
    end

    HookedObjects[obj] = true

    ApplyObject(obj)

    -- Font thay đổi -> ép lại Cartoon
    pcall(function()

        obj:GetPropertyChangedSignal(
            "Font"
        ):Connect(function()

            if obj.Font ~= TARGET_FONT then

                pcall(function()
                    obj.Font = TARGET_FONT
                end)

            end

        end)

    end)

    -- Text thay đổi
    pcall(function()

        obj:GetPropertyChangedSignal(
            "Text"
        ):Connect(function()

            ForceCartoon(obj)

            if TranslationEnabled then

                task.defer(function()

                    if obj.Parent then
                        TranslateObject(obj)
                    end

                end)

            end

        end)

    end)

    -- Placeholder
    if obj:IsA("TextBox") then

        pcall(function()

            obj:GetPropertyChangedSignal(
                "PlaceholderText"
            ):Connect(function()

                ForceCartoon(obj)

                if TranslationEnabled then

                    task.defer(function()

                        if obj.Parent then
                            TranslateObject(obj)
                        end

                    end)

                end

            end)

        end)

    end

end

--// =========================================================
--// HOOK CONTAINER
--// =========================================================

local function HookContainer(container)

    if not container then
        return
    end

    if HookedContainers[container] then
        return
    end

    HookedContainers[container] = true

    -- GUI đã tồn tại
    for _, obj in ipairs(
        container:GetDescendants()
    ) do

        if IsTextObject(obj) then
            HookObject(obj)
        end

    end

    -- GUI tạo sau
    container.DescendantAdded:Connect(
        function(obj)

            if IsTextObject(obj) then

                task.defer(function()

                    if obj.Parent then
                        HookObject(obj)
                    end

                end)

            end

        end
    )

end

--// =========================================================
--// GET HUI
--// =========================================================

local function GetHui()

    local ok, hui = pcall(function()

        if gethui then
            return gethui()
        end

    end)

    if ok and hui then
        return hui
    end

    return nil
end

--// =========================================================
--// HOOK ALL GUI
--// =========================================================

local function HookAllGui()

    -- CoreGui
    pcall(function()
        HookContainer(CoreGui)
    end)

    -- PlayerGui
    pcall(function()

        local PlayerGui =
            LP:FindFirstChildOfClass(
                "PlayerGui"
            )

        if PlayerGui then
            HookContainer(PlayerGui)
        end

    end)

    -- gethui
    pcall(function()

        local hui = GetHui()

        if hui then
            HookContainer(hui)
        end

    end)

end

--// =========================================================
--// PLAYER GUI
--// =========================================================

LP.ChildAdded:Connect(function(child)

    if child:IsA("PlayerGui") then

        task.wait()

        HookContainer(child)

    end

end)

--// =========================================================
--// INITIAL HOOK
--// =========================================================

HookAllGui()

-- Quét lại định kỳ
task.spawn(function()

    while task.wait(1) do

        pcall(HookAllGui)

    end

end)

--// =========================================================
--// HTTP REQUEST
--// =========================================================

local function Request(url)

    -- game:HttpGet
    local ok, result = pcall(function()

        return game:HttpGet(url)

    end)

    if ok and result and #result > 0 then
        return result
    end

    -- Executor request
    local requestFunctions = {
        request,
        http_request,
        syn_request,
        _G.request,
        _G.http_request,
        _G.syn_request
    }

    for _, req in ipairs(
        requestFunctions
    ) do

        if typeof(req) == "function" then

            local success, response =
                pcall(function()

                    return req({
                        Url = url,
                        Method = "GET"
                    })

                end)

            if success and response then

                if typeof(response) == "table" then

                    if response.Body then
                        return response.Body
                    end

                elseif typeof(response) == "string" then

                    return response

                end

            end

        end

    end

    return nil

end

--// =========================================================
--// DOWNLOAD CHILLI
--// =========================================================

local ChilliSource = Request(SCRIPT_URL)

if not ChilliSource then

    warn("[Chilli Loader] Không thể tải Chilli.lua")

    return

end

local LoadFunction = loadstring or load

if not LoadFunction then

    warn("[Chilli Loader] Executor không hỗ trợ loadstring/load")

    return

end

local ChilliFunction

local success, result = pcall(function()

    return LoadFunction(ChilliSource)

end)

if not success
    or typeof(result) ~= "function" then

    warn("[Chilli Loader] Không thể biên dịch Chilli.lua")

    return

end

ChilliFunction = result

--// =========================================================
--// LANGUAGE GUI
--// =========================================================

local OldGui

pcall(function()

    local hui = GetHui()

    if hui then
        OldGui =
            hui:FindFirstChild("ChilliLanguageSelector")
    end

end)

if not OldGui then

    pcall(function()

        OldGui =
            CoreGui:FindFirstChild("ChilliLanguageSelector")
     end)

end

if OldGui then
    OldGui:Destroy()
end

local ScreenGui =
    Instance.new("ScreenGui")

ScreenGui.Name =
    "ChilliLanguageSelector"

ScreenGui.ResetOnSpawn = false

ScreenGui.ZIndexBehavior =
    Enum.ZIndexBehavior.Global

pcall(function()

    local hui = GetHui()

    if hui then

        ScreenGui.Parent = hui

    else

        ScreenGui.Parent = CoreGui

    end

end)

if not ScreenGui.Parent then

    ScreenGui.Parent =
        LP:WaitForChild("PlayerGui")

end

--// =========================================================
--// MAIN
--// =========================================================

local Main =
    Instance.new("Frame")

Main.Name = "Main"

Main.Size =
    UDim2.new(0, 230, 0, 135)

Main.Position =
    UDim2.new(0.5, -115, 0.5, -67)

Main.BackgroundColor3 =
    Color3.fromRGB(20, 20, 25)

Main.BorderSizePixel = 0
Main.Parent = ScreenGui

local Corner =
    Instance.new("UICorner")

Corner.CornerRadius =
    UDim.new(0, 10)

Corner.Parent = Main

local Stroke =
    Instance.new("UIStroke")

Stroke.Color =
    Color3.fromRGB(0, 170, 255)

Stroke.Thickness = 1.5
Stroke.Parent = Main

--// =========================================================
--// TITLE
--// =========================================================

local Title =
    Instance.new("TextLabel")

Title.Name = "Title"

Title.Size =
    UDim2.new(1, -20, 0, 35)

Title.Position =
    UDim2.new(0, 10, 0, 5)

Title.BackgroundTransparency = 1

Title.Text = "CHILLI LANGUAGE"

Title.TextColor3 =
    Color3.fromRGB(100, 200, 255)

Title.TextSize = 18

Title.Font = TARGET_FONT

Title.Parent = Main

--// =========================================================
--// VI BUTTON
--// =========================================================

local Vietnamese =
    Instance.new("TextButton")

Vietnamese.Name =
    "Vietnamese"

Vietnamese.Size =
    UDim2.new(0, 95, 0, 50)

Vietnamese.Position =
    UDim2.new(0, 15, 0, 50)

Vietnamese.BackgroundColor3 =
    Color3.fromRGB(30, 100, 150)

Vietnamese.BorderSizePixel = 0

Vietnamese.Text = "🇻🇳 VIỆT"

Vietnamese.TextColor3 =
    Color3.fromRGB(255, 255, 255)

Vietnamese.TextSize = 16

Vietnamese.Font = TARGET_FONT

Vietnamese.Parent = Main

local VNCorner =
    Instance.new("UICorner")

VNCorner.CornerRadius =
    UDim.new(0, 8)

VNCorner.Parent = Vietnamese

--// =========================================================
--// EN BUTTON
--// =========================================================

local English =
    Instance.new("TextButton")

English.Name =
    "English"

English.Size =
    UDim2.new(0, 95, 0, 50)

English.Position =
    UDim2.new(0, 120, 0, 50)

English.BackgroundColor3 =
    Color3.fromRGB(45, 45, 50)

English.BorderSizePixel = 0

English.Text = "🇬🇧 ENGLISH"

English.TextColor3 =
    Color3.fromRGB(255, 255, 255)

English.TextSize = 16

English.Font = TARGET_FONT

English.Parent = Main

local ENCorner =
    Instance.new("UICorner")

ENCorner.CornerRadius =
    UDim.new(0, 8)

ENCorner.Parent = English

--// =========================================================
--// DRAG
--// =========================================================

local Dragging = false
local DragStart
local StartPosition

Main.InputBegan:Connect(function(input)

    if input.UserInputType ==
        Enum.UserInputType.MouseButton1
        or input.UserInputType ==
        Enum.UserInputType.Touch then

        Dragging = true
        DragStart = input.Position
        StartPosition = Main.Position

    end

end)

Main.InputEnded:Connect(function(input)

    if input.UserInputType ==
        Enum.UserInputType.MouseButton1
        or input.UserInputType ==
        Enum.UserInputType.Touch then

        Dragging = false

    end

end)

UserInputService.InputChanged:Connect(
    function(input)

        if not Dragging then
            return
        end

        if input.UserInputType ~=
            Enum.UserInputType.MouseMovement
            and input.UserInputType ~=
            Enum.UserInputType.Touch then

            return

        end

        local Delta =
            input.Position - DragStart

        Main.Position =
            UDim2.new(
                StartPosition.X.Scale,
                StartPosition.X.Offset + Delta.X,
                StartPosition.Y.Scale,
                StartPosition.Y.Offset + Delta.Y
            )

    end
)

--// =========================================================
--// RUN CHILLI
--// =========================================================

local Started = false

local function RunChilli(language)

    if Started then
        return
    end

    Started = true

    -- Chọn ngôn ngữ trước
    if language == "vi" then

        TranslationEnabled = true

    else

        TranslationEnabled = false

    end

    -- Hook lại GUI
    HookAllGui()

    -- Chạy Chilli
    task.spawn(function()

        local ok, err =
            pcall(function()

                ChilliFunction()

            end)

        if not ok then

            warn("[Chilli Loader] Lỗi khi chạy Chilli:")
