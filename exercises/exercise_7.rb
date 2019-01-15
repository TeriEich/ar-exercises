require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
# class ApparelValidator < ActiveModel::Validator
#   def validate(record)
#     unless :mens_apparel != true || :womens_apparel != true
#       record.errors[:mens_apparel, :womens_apparel] << 'at least one of mens_apparel or womens_apparel needs to be true'
#     end
#   end
# end


class Employee < ActiveRecord::Base
  validates :first_name,
    presence: true
  validates :last_name,
    presence: true
  validates :hourly_rate,
    numericality: { only_integer: true },
    inclusion: { in: 40..200 }
  validates_associated :store
end

class Store < ActiveRecord::Base
  # include ActiveModel::Validations
  # validates_with ApparelValidator
  validates :name,
    length: { minimum: 3 }
  validates :annual_revenue,
    numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :mens_apparel, inclusion: { in: [true, false] }
  validates :womens_apparel, inclusion: { in: [true, false] }
  validate :apparel_option_must_be_true

  private

  def apparel_option_must_be_true
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, "or womens apparel must be true")
    end
  end

end

puts "Please enter a store name >>"
new_store_name = gets.chomp
store = Store.create(name: new_store_name, annual_revenue: "", mens_apparel: "", womens_apparel: "")
store.valid?
err_arr = store.errors.full_messages

err_arr.each do |msg|
  print "#{msg}\n"
end
