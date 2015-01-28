def add_error!(error_msg)
  if session[:errors]
    session[:errors] << error_msg
  else
    session[:errors] = [error_msg]
  end
end

def display_errors!
  errors = session[:errors]
  session[:errors] = nil
  errors
end

def parse_ar_errors_for_display!(messages)
  messages.each do |key, arr|
    add_error!("#{key}: #{arr}")
  end
end
