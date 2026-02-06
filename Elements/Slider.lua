return function()
    return {
        Title = "Slider",
        Min = 50,
        Max = 200,
        Default = 50,
        Callback = function(value)
            print("Slider Value:", value)
        end
    }
end
