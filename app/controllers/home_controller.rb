class HomeController < ApplicationController
  before_action :authenticate_user!, except:[:index]
  def index
  end
  def tests
    @pdrs = Pdr.all
    @count = 1
  end
  def rules
    @rules = Rule.all
  end
  def admins
  end
  def show
  end
end

