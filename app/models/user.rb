class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: true

    def password_verified(password)
        verified = authenticate(password)
        errors.add(:password, 'is invalid') unless verified
        verified
    end
end
