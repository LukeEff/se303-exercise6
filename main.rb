"""

Smells:

Comments - Extract function

Primitive obsession - Replace primitive with object

Data clumps - Extract class, Introduce whole object

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


def draw_button(label_text, x, y, foreground_color, is_dark_mode)
  label = Label.new(text, x, y, foreground_color)
  if is_dark_mode
    # darken foreground color for dark mode
    paint(label.text, label.x, label.y, label.foreground_color - 10, '#111111')
  else
    # lighten foreground color for non-dark mode
    paint(label.text, label.x, label.y, label.foreground_color + 10, '#E0E0E0')
  end
end
