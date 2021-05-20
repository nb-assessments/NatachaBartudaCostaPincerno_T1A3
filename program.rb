require_relative 'user.rb'
require_relative 'menu.rb'
require_relative 'goal.rb'

# require_relative '../calculate_calories.rb'
# require_relative '../quit_program.rb'

#***********************************************************************
# **user_info**

# 1. welcome message
# 2. ask name from users and store the information
# 3. ask user "what is your goal" and give a 2 suggestion (get fit or lose weight)
# 4. define this information as a number and he/she can choose as a number ( 1. get fit or 2 . lose weight )
# 5. use the information to redirect user.
# 6. classified the information as instance variable ( for use info later)
# 7. use the information on case statement or if statement.

class Program

    def Welcome
        puts "Welcome to Get track on Diet!"
        puts
    end

    def LoadUserData
        puts "What is your name? "
        user_name = gets.chomp
        @user = User.new(user_name)
        puts "what you gender? (Male, Female, Non-Binary)"
        user_gender = gets.chomp
        while (@user.gender(user_gender) == "")
            puts "Ops! Wrong answer try again. (Male, Female, Non-Binary)"
            user_gender = gets.chomp
        end
    end

    def Menu
        
        puts "What is you goal?"
        puts

        menu = Menu.new()
        puts "Choose from menu, please write a number"
        menu.items.each_with_index do |item, index|
            puts "#{index + 1} - #{item}"
        end
        user_info = []
        menu_item_input = gets.chomp.to_i
        while (menu.select(menu_item_input) == "")
            puts "Ops! Wrong answer try again."
            menu_item_input = gets.chomp.to_i
        end
        puts "You choose #{menu.selected}"
        # order.push(menu[menu_item-1])
    end

    def Store_goal
        goal = Goal.new(@user)
        puts "Let's create your body profile!"
        puts
        puts "Please write your weight"
        w = gets.chomp.to_i 
        puts "Please write your age."
        a = gets.chomp.to_i 
    end

    def calculation
    
    end

end      
    
main = Program.new()
main.Welcome
main.LoadUserData
main.Menu
main.Store_goal
#main.GetUserMenu
#main.calculateSoemthing
#main.printReceipt
#main.quit 