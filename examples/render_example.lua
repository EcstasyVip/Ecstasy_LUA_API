--reflect.codes render functions example with text and font :) by rosewater

local function paintingdrawing()
	
	render.add_poly(vec2.new(10,50))
	render.add_poly(vec2.new(100,10))
	render.add_poly(vec2.new(120,100))
	render.add_poly(vec2.new(30,100))
	render.poly_line_filled(color.new(255,0,255,255))


	render.line_gradient(10, 200, 500, 200, color.new(255,0,255,255), color.new(0,0,0,255), 4)


	render.filled_rect_gradient(10, 300, 100, 100, color.new(255,255,255,255), color.new(0,0,0,255), color.new(0,0,0,255), color.new(255,255,255,255))

	render.text(10, 450, color.new(255,255,255,255), 0, "mainfont", "This is written with main font")

	render.filled_rect(10, 600, 50, 50, color.new(255,0,255,255), 0)

	render.filled_triangle( 300, 500, 400, 500, 350, 550, color.new(255,0,255,255))

	render.circle_filled(200, 300, 50, color.new(255,255,255,255), 64)

end

cheat.register_callback("on_paint", paintingdrawing)
