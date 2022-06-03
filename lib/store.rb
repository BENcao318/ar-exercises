class MyValidator < ActiveModel::Validator
  def validate(store)
    unless store.mens_apparel == true || store.womens_apparel == true
      store.errors.add :mens_apparel, "Need to carry either mens apparel or womens apparel"
    end
  end
end

class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  include ActiveModel::Validations
  validates_with MyValidator

  before_destroy :check_store_empty?

  private
    def check_store_empty?
      puts self.employees.size
      if self.employees.size != 0
        throw(:abort)
      end
    end
end
