class ApplicationController < ActionController::Base
  def Hello
    render html: "hello world"
  end
end
