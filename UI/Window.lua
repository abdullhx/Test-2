local WindowUI = {}

function WindowUI.Create(WindUI)
    local Window = WindUI:CreateWindow({
        Title = "Demo Script"
    })

    local Tab1 = Window:CreateTab("الواجهة الأولى")
    local Tab2 = Window:CreateTab("الواجهة الثانية")

    return {
        Window = Window,
        Tab1 = Tab1,
        Tab2 = Tab2
    }
end

return WindowUI
