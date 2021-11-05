class Tweet < ApplicationRecord

    validates :text, presence: true
    validates :image, presence: true

    belongs_to :user
end
