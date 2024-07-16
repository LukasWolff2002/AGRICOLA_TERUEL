class Comment < ApplicationRecord
    validates :name, presence: true
    validates :mail, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :comment, presence: true
end