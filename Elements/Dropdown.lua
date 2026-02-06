return function()
    return {
        Title = "قائمة منبثقة",
        Options = { "الخيار الأول", "الخيار الثاني" },
        Default = "الخيار الأول",
        Callback = function(selected)
            print("Selected:", selected)
        end
    }
end
