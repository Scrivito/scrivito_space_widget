require "scrivito_space_widget/engine"
require "scrivito_space_widget/configuration"


module ScrivitoSpaceWidget
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
