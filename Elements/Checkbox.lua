return function()
    return {
        Title = "CheckBox",
        Default = false,
        Callback = function(state)
            print("Checkbox:", state)
        end
    }
end
