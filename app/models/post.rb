class Post < ActiveRecord::Base #this "activerecord" code lets us interface with DB

validates :title, presence: true, uniqueness: true
validates :body, length: {minimum: 50}

end
