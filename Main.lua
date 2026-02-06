-- تحميل WindUI
local WindUI = loadstring(game:HttpGet("LINK/WindUI.lua"))()

-- تحميل الواجهة
local WindowUI = loadstring(game:HttpGet("LINK/UI/Window.lua"))()
local Tabs = WindowUI.Create(WindUI)

-- تحميل العناصر
local ToggleData   = loadstring(game:HttpGet("LINK/Elements/Toggle.lua"))()
local CheckboxData = loadstring(game:HttpGet("LINK/Elements/Checkbox.lua"))()
local SliderData   = loadstring(game:HttpGet("LINK/Elements/Slider.lua"))()
local DropdownData = loadstring(game:HttpGet("LINK/Elements/Dropdown.lua"))()

-- الواجهة الأولى
Tabs.Tab1:AddToggle(ToggleData)
Tabs.Tab1:AddToggle(CheckboxData)

-- الواجهة الثانية
Tabs.Tab2:AddSlider(SliderData)
Tabs.Tab2:AddDropdown(DropdownData)
