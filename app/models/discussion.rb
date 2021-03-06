class Discussion < ApplicationRecord
    # add unique constraint to discussion title and channel name
    belongs_to :channel
    belongs_to :user
    has_many :replies, dependent: :destroy
    validates :title, :content, presence: true

    
end
