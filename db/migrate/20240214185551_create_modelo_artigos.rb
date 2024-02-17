class CreateModeloArtigos < ActiveRecord::Migration[7.1]
  def change
    create_table :modelo_artigos do |t|
      t.string :titulo
      t.text :corpo

      t.timestamps
    end
  end
end
