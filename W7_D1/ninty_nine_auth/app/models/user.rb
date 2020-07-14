class User < ApplicationRecord

    validates :user_name, presence: true, uniqueness: true
    validates :password_digest, presence: true
    validates :session_token, presence: true, uniqueness: true

    after_initialize :ensure_session_token

    # Write yourself a User#reset_session_token! method. Go on, you're worth it! Use yourself a SecureRandom to generate a token.
    # Write a #password=(password) setter method that writes the password_digest attribute with the hash of the given password.
    # Write a #is_password?(password) method that verifies a password.
    # Write a ::find_by_credentials(user_name, password) method that returns the user with the given name if the password is correct.

    attr_reader :password

    def reset_session_token!
        self.session_token = SecureRandom::urlsafe_base64(16)
        self.save!
        self.session_token
    end

    def ensure_session_token
        self.session_token ||= SecureRandom::urlsafe_base64(16)
    end

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        password_object = BCrypt::Password.new(self.password_digest)
        password_object.is_password?(password)
    end

    def self.find_by_credentials(user_name, password) 
        user = User.find_by(user_name: user_name)

        if user && is_password?(password)
            user
        end
        nil
    end

end 