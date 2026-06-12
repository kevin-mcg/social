class Post < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :type, presence: true

  def as_json(options={})
    super(only: [:id, :title])
  end
end
