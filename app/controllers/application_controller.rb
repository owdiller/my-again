class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def show
    @gif = Gif.find_by_id(params['id'])
  
  end
  
  def new
  end
  def index
    @gifs = Gif.all
  end
  
  
  def create 
    g = Gif.new
    g.url = params['url']
    g.name = params['name'] 
    g.mem = params['mem'] 
    g.img = params['img'] 
    g.bio = params['bio'] 
    g.town = params['town'] 
    g.per = params['per']
    g.save
    redirect_to "/my/#{g.id}"
  end

def edit
  @gif = Gif.find_by_id(params['id'])
 end
    
    def update
      g = Gif.find_by_id(params['id'])
      g.url = params['url']
    g.name = params['name'] 
    g.mem = params['mem'] 
    g.img = params['img'] 
    g.bio = params['bio'] 
    g.town = params['town'] 
    g.per = params['per']
       g.save
    redirect_to "/my/#{g.id}"
    end
  
  def destroy
    g = Gif.find_by_id(params['id'])
    g.destroy
  
 
  end
  end

