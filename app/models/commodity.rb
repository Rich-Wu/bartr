class Commodity < ApplicationRecord
  has_many :offers, dependent: :destroy
  has_many :users, through: :offers
  has_one_attached :image
  after_commit :add_default_image, on: [:create, :update]


  private

  def add_default_image
    unless image.attached?
      self.image.attach(io: File.open(Rails.root.join("app", "assets", "images", "default.jpeg")), filename: 'default.jpg' , content_type: "image/jpg")
    end
  end
end
