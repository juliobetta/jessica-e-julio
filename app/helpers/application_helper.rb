module ApplicationHelper
  def twitterized_type(type)
    case type
      when :error
        "alert-error"
      when :notice
        "alert-info"
      when :success
        "alert-success"
      else
        "alert-warning"
    end
  end
end
