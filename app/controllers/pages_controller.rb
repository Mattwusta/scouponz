class PagesController < ApplicationController

	http_basic_authenticate_with name: "admin", password: "mattenzo", except: [:onmenu, :dogooder, :pickup, :orderpage, :makemoney, :chef29tv, :hocv, :chefs, :goodcompany, :hoc, :home, :learnvideos, :fruit, :dish4, :dish5, :dish6, :about, :side, :line, :help, :dogood, :lovemeal, :doogood, :hunger,:delivery, :donations, :_home, :faq, :account, :return, :dish1, :dish2, :dish3, :give, :how, :know, :list, :menu, :privacy, :search, :service, :shop, :why, :cancel]

def home
end

def admin
end

def about
end

def why
end

def show
end


def dogooder
end

def pickup
end

def line
end

def delivery
end

def donations
end

def lovmeal
end

def service
end

def privacy
end

def goodcompany
end

def chefs
end

def orderpage
end

def faq
end

def onmenu
end


def fruit
end

def shop
end

def hunger
end

def hocv
end

def dogood
end

def menu
end


def side
end

def lovemeal
end

def help
end

def how
end

def know
end

def give
end 

def account
end 

def return
end 

def hoc
end 

def chef29tv
end 


def makemoney
end 

end