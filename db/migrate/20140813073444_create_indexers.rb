class CreateIndexers < ActiveRecord::Migration
  def change
    create_table :indexers do |t|
      t.column "document", :string, :limit => 25
      t.column "section", :string, :limit => 30
      t.column "subsection",:string, :limit => 35
      t.column "acpt_criteria", :text, :limit => 65536
      t.column "usnrc", :text, :limit => 65536
      t.column "ds_430", :text, :limit => 65536
      t.column "related_standarts", :text, :limit => 65536
      t.column "ggd1", :text, :limit => 65536
      t.column "taek_ggd2", :text, :limit => 65536
      t.timestamps
    end
    
    add_index(:indexers,[:document, :section, :subsection])
  end
end
