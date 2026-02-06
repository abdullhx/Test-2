-- تحميل WindUI
local WindUI = loadstring(game:HttpGet('https://raw.githubusercontent.com/Footagesus/WindUI/refs/heads/main/main.lua'))()

-- تحميل الواجهة
local WindowUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/abdullhx/Test-2/refs/heads/main/UI/Window.lua"))()
local Tabs = WindowUI.Create(WindUI)

-- تحميل العناصر
local ToggleData   = loadstring(game:HttpGet("https://raw.githubusercontent.com/abdullhx/Test-2/refs/heads/main/Elements/Toggle.lua"))()
local CheckboxData = loadstring(game:HttpGet("https://raw.githubusercontent.com/abdullhx/Test-2/refs/heads/main/Elements/Checkbox.lua"))()
local SliderData   = loadstring(game:HttpGet("https://raw.githubusercontent.com/abdullhx/Test-2/refs/heads/main/Elements/Slider.lua"))()
local DropdownData = loadstring(game:HttpGet("https://raw.githubusercontent.com/abdullhx/Test-2/refs/heads/main/Elements/Dropdown.lua"))()

-- الواجهة الأولى
Tabs.Tab1:AddToggle(ToggleData)
Tabs.Tab1:AddToggle(CheckboxData)

-- الواجهة الثانية
Tabs.Tab2:AddSlider(SliderData)
Tabs.Tab2:AddDropdown(DropdownData)
