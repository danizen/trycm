module ApplicationHelper

  def bootstrap_alert_class (type)
    case type
      when :success
        return 'success'
      when :notice
        return 'info'
      when :error
        return 'danger'
      when :alert
        return 'warning'
      else
        return 'warning'
    end
  end

end
