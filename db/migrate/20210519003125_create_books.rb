class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.timestamps
    end

    # adding belongs_to creates field "author_id" and adds it's index too
    # the "belongs_to" still has to be explicitly added to the book model
    create_table :books do |t|
      t.belongs_to :author
      t.string :name
      t.datetime :published_at
      t.timestamps
    end
  end
end

