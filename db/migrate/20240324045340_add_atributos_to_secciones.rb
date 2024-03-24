class AddAtributosToSecciones < ActiveRecord::Migration[7.0]
  def change
    add_column :secciones, :descripcion, :string
    add_column :secciones, :contenido, :string
  end
end
