class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store,  presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than: 40, less_than_or_equal_to: 200 }
  before_create :create_a_random_password

  private
    def create_a_random_password
      string_length = 8
      self.password = rand(36**string_length).to_s(36) #generate random string
    end
end
