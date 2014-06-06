module Pinvaders
  class Game
    def initialize
      init_screen
      cbreak
      curs_set(0)
      noecho
      stdscr.keypad(true)
      stdscr.nodelay = 1

      if has_colors?
        start_color
        use_default_colors
      end

      @vp = Viewport.new
      @bg = Background.new(@vp)
    end

    def do_loop
      begin
        loop do
          key = getch

          @vp.set_up_screen
          @bg.draw

          #if @background.cols != @width
            #@background = nil
            #@background = Background.new
            #@cols = @background.cols
            #clear
          #end

          sleep(1.0 / 60.0) # frames per second

          @vp.refresh
        end
      ensure
        close_screen
      end
    end
  end
end
