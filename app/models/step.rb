class Step < ActiveRecord::Base
belongs_to :user , :class_name => "User", :foreign_key => "user_id"
belongs_to :item , :class_name => "Item", :foreign_key => "item_id"
validates :detail, presence: true
validates :item_id, presence: true
validates :step_number, presence: true
validates :user_id, presence: true



end
