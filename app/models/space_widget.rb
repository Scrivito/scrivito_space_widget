class SpaceWidget < Widget
  attribute :size, :enum, values: ["small","medium","large"]

  def space_size
    self.size || "medium"
  end
end
