

def draw_button(label_text, x, y, foreground_color, is_dark_mode)
  if is_dark_mode
    # darken foreground color for dark mode
    paint(label_text, x, y, foreground_color - 10, '#111111')
  else
    # lighten foreground color for non-dark mode
    paint(label_text, x, y, foreground_color + 10, '#E0E0E0')
  end
end

class Button
    attr_reader :label_text, :x, :y, :foreground_color, :mode 
    def initialize (label_text, x, y, foreground_color, mode)
        @label_text = label_text
        @x = x
        @y = y
        @foreground_color = foreground_color
        @mode = mode
    end

    def draw_button(label_text, x, y, foreground_color, is_dark_mode)
        if is_dark_mode
            # darken foreground color for dark mode
            paint(label_text, x, y, foreground_color - 10, '#111111')
        else
            # lighten foreground color for non-dark mode
            paint(label_text, x, y, foreground_color + 10, '#E0E0E0')
        end
        end
end
