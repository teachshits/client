class ActivitiesController < ApplicationController
  before_filter :handle_activity, :if => :activity_is_provoking?

  def receive
    render :nothing => true
  end

  protected

  def activity_is_provoking?
    params[:activity_name] == "provoke"
  end

  def handle_activity
    # do some stuff
    render :text => "Did some stuff"
  end
end
