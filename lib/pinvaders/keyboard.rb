module Pinvaders
  class Keyboard

    def initialize
      @key_state = :no_key
    end

    def poll
      @key = getch
      set_key_state
    end

    def set_key_state
      case @key
      when ?Q, ?q
        @key_state = :quit
      when ?P, ?p
        @key_state = :pause
      when ?A, ?a
        @key_state = :left
      when ?D, ?d
        @key_state = :right
      when ?K, ?k
        @key_state = :fire
      end
    end

  end
end
