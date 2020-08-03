class User < ApplicationRecord
  belongs_to :city #un user a une seule city
  has_many :gossips #un user peut écrire plusieurs gossips
  has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
  has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage"
end
