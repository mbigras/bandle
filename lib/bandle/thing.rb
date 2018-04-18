module Bandle
  class Thing
    attr_reader :name
    
    def initialize name
      @name = name
    end

    def to_s
      name.to_s
    end
  end
end