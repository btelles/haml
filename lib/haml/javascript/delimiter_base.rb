module Javascript
  class DelimiterBase
    def self.open_interpolate
      @open_interpolate
    end

    def self.close_interpolate
      @close_interpolate
    end

    def self.open_evaluate
      @open_evaluate
    end

    def self.close_evaluate
      @close_evaluate
    end

    def self.open_interpolate= sigil
      @open_interpolate = sigil
    end

    def self.close_interpolate= sigil
      @close_interpolate = sigil
    end

    def self.open_evaluate= sigil
      @open_evaluate = sigil
    end

    def self.close_evaluate= sigil
      @close_evaluate = sigil
    end

    def self.iterate
      @iterate
    end

    def self.iterate= sigil
      @iterate = sigil
    end

    def self.enabled
      @enabled
    end

    def self.enabled= bool
      @enabled = bool
    end
  end
end
