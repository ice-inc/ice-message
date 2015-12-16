class Project
  include Mongoid::Document
  field :name, type: String

  def getTotalTime(from=nil, to=nil)
    action_logs = ActionLog
      .where(:project_id => self.id)
      .where(:target_date.gte => from)
      .where(:target_date.lte => to)

    total_time = 0

    action_logs.each do |action_log|
      total_time += action_log.took_time
    end

    return total_time
  end
end
