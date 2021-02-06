class Request < ApplicationRecord
  belongs_to :user
  has_many :repairs, :dependent => :destroy
end
