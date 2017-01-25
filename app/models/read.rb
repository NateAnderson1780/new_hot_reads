class Read < ApplicationRecord
  scope :hot, -> {
      where('created_at > ?', Time.now - 1.day)
      .order('count DESC').limit(10)
  }
end