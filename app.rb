require 'sinatra'
# require 'sinatra/reloader'
require 'httparty'
require './products.rb'


# make an array that initializes every cupcakes object
cupcakes = [
    Cupcake.new('Classic Chocolate', 'Soft, moist and delicious. A classic favorite.', 3, '/img/ccchoc.jpg'), 
    Cupcake.new('Cookies & Cream', 'Naturally, we had to turn the classic cookie into a cupcake.', 3, '/img/cccookiesncream.jpg'), 
    Cupcake.new('Lemon Buttercream', 'Perfect lemon cupcakes with a light lemon buttercream frosting.', 3, '/img/cclemon.jpg'), 
    Cupcake.new('Sangria Cupcakes', 'Made with fruit in the batter and a red wine buttercream, perfect!', 4, '/img/ccsangria.jpg'),
    Cupcake.new('Classic White', 'Super moist and flavorful. Avaiable with chocolate and vanilla buttercream frosting', 3, '/img/classicwhitecc2.jpg')
]

# make an array that initializes every cookie object
cookies = [
    Cookie.new('Coco Chocolate Chip', 'Full of toasted coconut and dark chocolate chunks', 1.5, '/img/cookiecocochoc.jpg'), 
    Cookie.new('Cookie Monsters', 'Soft & chewy cookies with oatmeal, chocolate chips, and m&ms!', 1.5, '/img/cookiemonster.jpg'), 
    Cookie.new('Oreo Cookie', 'These cookies are loaded with tons of chopped oreos!', 1.5, '/img/cookieoreo.jpg'),
    Cookie.new('Turtle Cookie', 'Chocolate batter loaded with pecans, chocolate chips and caramel bits', 1.5, '/img/cookieturtle.jpg')
]

# make an array that initializes every object
muffins = [
    Muffin.new('Cherry Chocolate', 'Cherries and chocolate chip, what more do you need.', 2, '/img/muffincherrychochip.jpg'), 
    Muffin.new('Cinnamon Sugar', 'Caramel coffee creamer in the batter, tops dipped in cinnamon sugar.', 2, '/img/muffincinnamonsugar.jpg'), 
    Muffin.new('Clementine Oat', 'Moist and light, yummy citrus flavor paired well with oats.', 2, '/img/muffinclemnoat.jpg'), 
    Muffin.new('Galaxy MonkeyBread', 'Monkey bread turned into muffins with galaxy sprinkles and black cream cheese glaze', 2.5, '/img/muffingalaxymoneybread.jpg'),
    Muffin.new('Healthy Mini Choc Chip', 'No sugar, butter or oil in the recipe! With bananas, greek yogurt, and honey.', 1.5, '/img/healthyminichoc.jpg'), 
]

get '/' do
    erb :index, :layout => :home_layout
end

#individual cupcakes, cookies & muffin pages, also scale-able to add more pages
get '/:name' do
    @item_type = params[:name]

    if @item_type == "cupcakes"
        @results = cupcakes
        erb :page   
    elsif @item_type == "cookies"
        @results = cookies
        erb :page
    elsif @item_type == "muffins"
        @results = muffins
        erb :page
    else erb :index, :layout => :home_layout
    end
end