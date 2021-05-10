button = Button.new("dark", 2, 5, 20, '#111111')
button.draw_button

class Button
    attr_reader :label_text, :x, :y, :foreground_color, :mode 
    
    @@light_mode == '#E0E0E0'
    @@dark_mode == '#111111'
    
    def initialize (label_text, x, y, foreground_color, mode)
        @label_text = label_text
        @x = x
        @y = y
        @foreground_color = foreground_color
        @mode = mode
    end

    def draw_button
        if mode == @@dark_mode
            mode = @@dark_mode
            # darken foreground color for dark mode
            paint(label_text, x, y, foreground_color - 10, mode)
        else
            mode == @light_mode
            # lighten foreground color for non-dark mode
            paint(label_text, x, y, foreground_color + 10, mode)
        end
        end
end
