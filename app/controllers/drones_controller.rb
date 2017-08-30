class DronesController < ApplicationController
  def drone_action
    @drones = Drone.all
    render 'drone_page.html.erb'
  end
end
