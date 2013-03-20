# encoding: utf-8

class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :init

  def init
    @cart = Glysellin::Cart.new(session['glysellin.cart'], customer: current_user)
  end
end
