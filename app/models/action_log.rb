class ActionLog
  include Mongoid::Document
  include Mongoid::Timestamps
  field :took_time, type: Float
  field :user_id, type: String
  field :project_id, type: String
  field :target_date, type: DateTime

  belongs_to :user
  belongs_to :project
end
