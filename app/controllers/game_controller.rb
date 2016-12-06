class GameController < ApplicationController

  def index
  end

  def try

    @random_number = Random.new.rand(100)

    cookies[:random] = @random_number if cookies[:random].nil?

    if params[:guess].to_i == cookies[:random].to_i
      @result = "win"
    elsif params[:guess].to_i < cookies[:random].to_i
      @result = "low"
    else
      @result = "high"

    end

    if cookies[:tries].nil?
      cookies[:tries] = 0
    else
      cookies[:tries] = cookies[:tries].to_i + 1
    end

    render "try.html.erb"
  end

  def reset
    @random_number = Random.new.rand(100)
    cookies[:random] = @random_number
    cookies[:tries] = 0

    render "try.html.erb"
  end

end
