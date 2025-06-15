class Message
  include Mongoid::Document
  include Mongoid::Timestamps
  field :phone, type: String
  field :user, type: String
  field :timestamp, type: Time
  field :message, type: String
end
