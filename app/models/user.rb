class User < ActiveRecord::Base
  rolify

  belongs_to :account
  has_one :owned_account, :foreign_key => 'primary_user_id', :class_name => 'Account'

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

  before_create :create_account

  def create_account
    a = Account.new name: "#{name}'s account"
    a.primary_user = self
    self.account = a
  end
  
end
