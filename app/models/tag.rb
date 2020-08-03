class Tag < ApplicationRecord
  has_many :join_table_gossip_tags #un tag est écrit sur plusieurs gossips et vis versa
  has_many :gossips, through: :join_table_gossip_tags
end
