class SpaceWidget < Widget
  attribute :size, :enum, values: ['free','xs-small','small','medium','large','xl-large','xxl-large'], default: 'medium'
  attribute :free_size, :string

  def space_free_size
    size == 'free' ? self.free_size : ''
  end

  def space_size
    self.size || 'medium'
  end
end
