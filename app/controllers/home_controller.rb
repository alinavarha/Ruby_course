class HomeController < ApplicationController
  before_action :authenticate_user!, except:[:index]
  def index
  end
  def tests
  end
  def rules
    @rules = Rule.all
  end
  def admins
  end
  def show
  end
end
