class RedirectController < ApplicationController
  def error
    @path = 'http://localhost:3000/redirect/error'
	@fine = 'бля'
end
end
