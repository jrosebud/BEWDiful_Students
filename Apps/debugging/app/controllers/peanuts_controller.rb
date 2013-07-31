class PeanutsController < ApplicationController
  def index
    peanut = Peanut.new(flavor_value: '1', calories: nil)
    
    peanut.save!
    
    render text: "hello!"
  end
end