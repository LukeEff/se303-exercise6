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

def button_foreground_color_offset()
  
end

def draw_button(is_dark_mode, label)
  if is_dark_mode
    # darken foreground color for dark mode
    paint(label.text, label.x, label.y, label.foreground_color - 10, '#111111')
  else
    # lighten foreground color for non-dark mode
    paint(label.text, label.x, label.y, label.foreground_color + 10, '#E0E0E0')
  end
end
