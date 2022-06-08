class Post < ApplicationRecord

    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}

    validate :not_this_title

    def not_this_title
        if title == "True Facts"
            errors.add(:title, "Invalid title")
        end
    end

end
