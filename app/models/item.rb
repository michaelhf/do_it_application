class Item < ActiveRecord::Base
has_many :item_followers , :class_name => "ItemFollower", :foreign_key => "item_id" , dependent: :destroy
has_many :steps , :class_name => "Step", :foreign_key => "item_id" , dependent: :destroy
belongs_to :user


end
