class Post < ActiveRecord::Base

  has_many :comments
  
  validates :title, presence: true, length: { minimum: 5 }
=begin equivalente a has many
  def comments
    Coment.where "post_id = #{ id }"
  end
  def ultimo
    comments.last
  end
=end      
            
end
