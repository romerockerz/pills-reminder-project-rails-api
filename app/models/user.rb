class User < ApplicationRecord
    has_secure_password
    has_many :dependents
    has_many :medical_histories

    validates :email, presence: true, uniqueness: true
    
    def generate_jwt 
        JWT.encode(
            {
            id: id,
            exp: 60.days.from_now.to_i
            },
            Rails.application.secrets.secret_key_base
            )
    end        
end
