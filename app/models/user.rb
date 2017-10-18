class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable
 
protected
	def confirmation_required?
      false
    end

has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/images/user.png"
validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

has_many :listings

end
