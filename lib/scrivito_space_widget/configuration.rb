module ScrivitoSpaceWidget
  class Configuration
    attr_accessor :max_size
    attr_accessor :min_size
    attr_accessor :step_size
    attr_accessor :default
    attr_accessor :default_free_size

    def initialize
      @max_size = "700"
      @min_size = "50"
      @step_size = "10"
      @default = "medium"
      @default_free_size = "100px"
    end
  end
end
