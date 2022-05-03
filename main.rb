"""

Smells:

Comments - Extract function

Primitive obsession - Replace primitive with object, Replace type code with subclasses

Data clumps - Extract class, Introduce parameter object

"""

class Label 

  attr_accessor :text, :x, :y, :foreground_color 

  def initialize(text, x, y, foreground_color)
    @text = text
    @x = x
    @y = y
    @foreground_color = foreground_color
  end
end

class LightModeCanvas < Canvas

end

class DarkModeCanvas < Canvas

end

def button_foreground_color_offset(is_dark_mode)
  if is_dark_mode
    -10
  else
    10
  end
end

def button_color(is_dark_mode)
  if is_dark_mode 
    '#111111'
  else
    '#E0E0E0'
  end
end

def draw_button(is_dark_mode, label)
  paint(label.text, label.x, label.y, label.foreground_color + button_foreground_color_offset(is_dark_mode), button_color(is_dark_mode))
end
