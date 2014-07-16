class CreateSpaceWidget < ::Scrivito::Migration
  def up
    create_obj_class(
      name: 'SpaceWidget',
      type: 'publication',
      title: 'SpaceWidget',
      attributes: [
        {:name=>"size", :type=>"enum", values: ["small","medium","large"]},
      ],
    )
  end
end
