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

  def button_foreground_color_offset
    10
  end

  def button_color
    '#E0E0E0'
  end
end

class DarkModeCanvas < Canvas
  def button_foreground_color_offset
    -10
  end

  def button_color
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

def button_foreground_color_offset; raise "Subclass Responsibility"; end

def button_color; raise "Subclass Responsibility"; end

def draw_button(is_dark_mode, label)
  paint(label.text, label.x, label.y, label.foreground_color + button_foreground_color_offset, button_color)
end
