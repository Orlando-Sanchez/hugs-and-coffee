class Appreciation < ApplicationRecord
  belongs_to :user
  enum appreciation_kind: { hug: 0, coffee: 1 }
end
