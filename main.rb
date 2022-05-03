"""

Smells:

Comments - Extract function

Primitive obsession - Replace primitive with object

Data clumps - Extract class, Introduce whole object

"""

class Label 

  attr_accessor :text, :x 

  def initialize(text, x)
    @text = text
    @x = x
  end
end


def draw_button(label_text, x, y, foreground_color, is_dark_mode)
  label = Label.new(text, x)
  if is_dark_mode
    # darken foreground color for dark mode
    paint(label.text, label.x, y, foreground_color - 10, '#111111')
  else
    # lighten foreground color for non-dark mode
    paint(label.text, label.x, y, foreground_color + 10, '#E0E0E0')
  end
end
