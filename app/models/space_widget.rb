class SpaceWidget < Widget
  attribute :size, :enum, values: ['free','xs-small','small','medium','large','xl-large','xxl-large']
  attribute :free_size, :string

  default_for :free_size do |a,b|
    ScrivitoSpaceWidget.configuration.default_free_size
  end

  default_for :size do |a,b|
    ScrivitoSpaceWidget.configuration.default
  end

  def space_free_size
    size == 'free' ? self.free_size : ''
  end

  def space_size
    self.size || 'medium'
  end
end
