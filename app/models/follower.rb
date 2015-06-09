class Follower < ActiveRecord::Base
  belongs_to :friend , :class_name => "User", :foreign_key => "friend_id"
  belongs_to :user , :class_name => "User", :foreign_key => "user_id"

  validates :user_id, presence: true
  validates :friend_id, presence: true
  validates_uniqueness_of :user_id, :scope => :friend_id
  validate :cannot_add_self
  private
  def cannot_add_self
    errors.add(:user_id, "You cannot follow yourself.") if user_id == friend_id
  end

end
