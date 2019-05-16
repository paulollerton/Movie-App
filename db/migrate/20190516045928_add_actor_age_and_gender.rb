class AddActorAgeAndGender < ActiveRecord::Migration[5.2]
  def change
    add_column :actors, :age, :integer
    add_column :actors, :gender, :string
  end
end
