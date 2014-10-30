class Mood < ActiveRecord::Base
belongs_to :user

  scope :sorted, -> { order('datetime DESC') }

end
