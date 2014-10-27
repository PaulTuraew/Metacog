class User < ActiveRecord::Base
belongs_to :industry
belongs_to :company
has_many :moods
end
