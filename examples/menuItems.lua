local checkboxval = false
local sliderval = 10
local comboitem = 0
local colorval = color.new(255,255,255,255)
local textval = "Lorem Ipsum Something"

local function menucallback()

    checkboxval = menu.checkbox("This is a checkbox", checkboxval)
    sliderval = menu.slider("This is a slider", sliderval, 0, 100, "%.2f", 1)
    menu.text("This is some text and below we have a spacing and a separator")
    menu.spacing()
    menu.separator()
    comboitem = menu.combo("This is a combo", comboitem, "Item1\0Item2\0Item3\0")
    colorval = menu.color_picker("This is a color picker", colorval)
    textval = menu.input_text("This is a textbox", textval)

    if menu.button("This is a Button") == true then
        cheat.print("Button pressed!")
    end

    if checkboxval == true then
        cheat.print(textval)
    end
end

cheat.register_callback("menu_items", menucallback)
