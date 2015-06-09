class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



         has_many :steps , :class_name => "Step", :foreign_key => "user_id"
has_many :followers , :class_name => "Follower", :foreign_key => "user_id" , dependent: :destroy
has_many :items , dependent: :destroy
has_one :ranking, dependent: :destroy
validates :email, presence: true
validates :username, presence: true

end
