# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  body       :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  area       :decimal(, )
#  usuario    :string
#

#Scaffold crea un CRUD  => Create, Read, Update, Delete
class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes
end
