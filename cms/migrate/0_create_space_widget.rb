class CreateSpaceWidget < ::Scrivito::Migration
  def up
    Scrivito::ObjClass.create(
      name: 'SpaceWidget',
      type: 'publication',
      is_binary: false,
      title: 'SpaceWidget',
      attributes: [
        {:name=>"size", :type=>"enum", values: ["small","medium","large"]},
      ],
    )
  end
end
