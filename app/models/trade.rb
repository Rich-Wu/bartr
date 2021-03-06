class Trade < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  belongs_to :offer
  after_commit :add_default_image, on: [:create, :update]

  private

  def add_default_image
    unless image.attached?
      self.image.attach(io: File.open(Rails.root.join("app", "assets", "images", "default.jpg")), filename: 'default.jpg' , content_type: "image/jpg")
    end
  end
end
