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

class Button

end

class LightModeButton < Button

  def foreground_color_offset
    10
  end

  def color
    '#E0E0E0'
  end
end

class DarkModeButton < Button

  def foreground_color_offset
    -10
  end

  def color
    '#111111'
  end
end

def self.create_canvas(is_dark_mode) 
  if is_dark_mode
    DarkModeCanvas.new
  else
    LightModeCanvas.new 
  end
end

def draw_button(label, button)
  paint(label.text, label.x, label.y, label.foreground_color + button.foreground_color_offset, button.color)
end
