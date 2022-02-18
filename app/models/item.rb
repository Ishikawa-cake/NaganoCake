class Item < ApplicationRecord

  has_many :order_items, dependent: :destroy
  has_many :cart_items, dependent: :destroy

  has_one_attached :image
  def get_profile_image(size)
  unless profile_image.attached?
    file_path = Rails.root.join('app/assets/images/sample-author1.jpg')
    profile_image.attach(io: File.open(file_path), filename: 'no_.jpg', content_type: 'image/jpeg')
  end
  profile_image.variant(resize: size).processed
  end

end
