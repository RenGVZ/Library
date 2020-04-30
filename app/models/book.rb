class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :pages, presence: true
  validates :rating, inclusion: {  in: 1..5 }
end
