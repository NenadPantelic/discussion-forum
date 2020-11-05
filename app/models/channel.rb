class Channel < ApplicationRecord
    has_many :discussions
    has_many :users, through: :discussions
    validates :channel_name, presence: true 
end
