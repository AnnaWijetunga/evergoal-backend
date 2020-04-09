class Goal < ApplicationRecord
    has_many :objectives, dependent: :destroy
    validates :aim, :strategy, presence: true
end

# If you destroy a record that has_many associated records, by default, those associated records will be left in the database. 
# If you want associated records to be removed when their parent is removed, add the dependent: :destroy option to the has_many association in the model class.