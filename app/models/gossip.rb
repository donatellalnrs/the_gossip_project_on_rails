class Gossip < ApplicationRecord
  belongs_to :user #un gossip n'est écrit que par un seul user
  has_many :join_table_gossip_tags #un gossip a plusieurs tags et vis versa
  has_many :tags, through: :join_table_gossip_tags
end
