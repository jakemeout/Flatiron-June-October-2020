require 'pry'
require 'tty-prompt'
require 'colorize'
require 'pp'


#********************************************************************************
#Current Time initialize
def cur_time
    current = Time.new
    return current
end
#********************************************************************************
#Exit message
def exit_statement
    puts"-------------------------------------------------------------------------------------------
    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWKkkOKNWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWOlc:;;cxKWMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWWWX0d;,lKWMMMMMMMMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNKKXWMMMMWOlcoONWNx,,OWMMMMMMMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMMMMMMMMMWWWWMNx,...:kNMMWKkdc,:OWW0,,OMMMMMMMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMMMMMMMXx:,,ckKo.    .;kKNMMMWO,'OMWd.lNMMMMMMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMMMMMMWO'     ;xkl.     .;kNMMWk:kWM0cdNX00KWMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMMWXOxxOOc.     ;xkc.      ;kNMWNWMMWWKd'...:0WMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMMO,   .;xkl.     ;xkl.      ;kNMMMMMWx.     :XMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMWKl.     ;xkl.     ;xkl,.     ;xNMMMWd.     ;KMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMMMW0l.     ;xkl.     ;xOkl.     ,xNMWd.     ;KMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMMMMWN0l.     ;xkl.     .,l,       ;xXd.     ;XMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMMKo,,:xOl.     ,xkl.              .c0o      ;KMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMWd.    ;xkl.     ,xk,           .:xkc.      ;KMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMMXl.     ;xOl.     ..         .:kkc.        ;KMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMMMWKo.     ;xOl.             .dOc.          ;KMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMMMMMWKo'     ,l,            .o0:            ;KMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMKxOWMNkkNWXd'                  'Ox.            ;KMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMk.:XMX;'kWMWXd'                .Ox.            ;KMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMK;.kWWO;'o0XNWXx,               l0c            :XMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMWO,'xNWXxc;:oXMMXx,             .o0l.         .dWMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMW0c':kXWWNXXWMMMMNk;.            ';.         cXMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMNOl;;codxONMMMMMMNk:.                    .oXMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMMMWN0xoccdXMMMMMMMMNO:.                .:OWMMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMW0xo;..       ..:d0WMMMMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWX0kxdddxk0XWMMMMMMMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
\n\nPlease stay safe, wear a mask, and come back shortly and help stop the pandemic!
\n-------------------------------------------------------------------------------------------"
exit
end 

#exit at any point in prompts
def exit_anything(input)
    if input.downcase == "exit"
        exit_statement
    end
end

#Menu or exit Prompt (For the end of any section after search or submission)
def menu_exit
    puts "\nPlease type 'Menu' to navigate to the menu, or 'Exit' to exit"
    puts"\n-------------------------------------------------------------------------------------------"
    input = gets.strip.downcase
    if  input == "menu"
        menu_items
    elsif input == "exit"
        exit_statement
    else
        puts "\nDid you mean to type 'menu' or 'exit'?" # Or do they want to re enter info(next iteration)
        menu_exit
    end
end
#Return to the main menu at any point
def return_to_menu(input)
    if input.downcase == "menu"
       menu_items
    end
end

    

#HELPER METHODS
# pcr test prompt in share tests method
def pcr_prompt
    puts "\n***************For the following questions, Please provide which test you have receieved.***********************************"
    puts "\n\nDid you receive a PCR swab test? Please type 'yes' or 'no'. (For informaiton about PCR or other testing types, please visit https://www.cdc.gov/coronavirus/2019-ncov/lab/testing.html"
    pcr_response = gets.strip.downcase
    return_to_menu(pcr_response)
    exit_anything(pcr_response)
        if pcr_response == "yes"
            pcr_test = true
        elsif pcr_response == "no"
            pcr_test = false
        else puts "\nDid you mean to hit 'yes', 'no', 'menu', or 'exit'?"
            pcr_prompt
        end
    pcr_test
end

#pcr test result prompt in share tests method
def pcr_result_prompt
    puts "\nIf you know the PCR test result, please enter if it was positive or negative by typing 'positive' or 'negative'."
    pcr_res_response = gets.strip.downcase
    return_to_menu(pcr_res_response)
    exit_anything(pcr_res_response)
        if pcr_res_response == "positive" 
            pcr_test_result = true
        elsif pcr_res_response == "negative" 
            pcr_test_result = false
        else puts "\nDid you mean to hit 'yes', 'no', 'menu', or 'exit'?"
            pcr_result_prompt
        end
    pcr_test_result
end

#antibody test prompt in share tests method
def antibody_test_prompt
    puts "\nDid you receive an antibody test? Please type 'yes' or 'no'. (For informaiton about antibody testing or other testing types, please visit https://www.cdc.gov/coronavirus/2019-ncov/lab/resources/antibody-tests.html"
    antibody_response = gets.strip.downcase
    return_to_menu(antibody_response)
    exit_anything(antibody_response)
        if antibody_response == "yes"
           anti_body_test = true
        elsif antibody_response == "no"
            anti_body_test = false
        else puts "\nDid you mean to hit 'yes', 'no', 'menu', or 'exit'?"
            antibody_test_prompt
        end
    anti_body_test
end

#antibody test result in share tests method
def antibody_test_result_prompt
    puts "\nIf you know the antibody test result, please enter if it was positive or negative by typing 'positive' or 'negative'."
    antibody_res_response = gets.strip.downcase
    return_to_menu(antibody_res_response)
    exit_anything(antibody_res_response)
        if antibody_res_response == "positive" 
           anti_body_test_result = true
        elsif antibody_res_response == "negative"
            anti_body_test_result = false
        else puts "\nDid you mean to hit 'positive', 'negative', 'menu', or 'exit'?"
            antibody_test_result_prompt
        end
    anti_body_test_result
end
#test submission in share tests method
def test_submission_date_prompt
    puts "\n\nWhen did you have your test? Please add the most recent test submission date." 
    puts "\n\nNOTE: The format should be like this for June 22, 2020: '2020-06-22'".colorize(:red)
    sub_date = gets.strip
    return_to_menu(sub_date)
    exit_anything(sub_date)
        if sub_date.is_a? String
            test_sub_date = sub_date
        else
            puts "\n\nlooks like you meant to put a format like June 22, 2020: '2020-06-22".colorize(:red)
            test_submission_date_promp
        end
    test_sub_date
end
# Submission date prompt in share exposure method
def date_prompt(puts_statement)
    puts  puts_statement
    sub_date = gets.strip
    return_to_menu(sub_date)
    exit_anything(sub_date)
        if sub_date.is_a? String
           sub_date_input = sub_date
        else
            puts "\n\nlooks like you meant to put a format like June 22, 2020: '2020-06-22".colorize(:red)
            date_promp
        end
    sub_date_input
end

# not necessary any longer, as you don't need this date to provide useful information
# def test_results_date_prompt
#     puts "If you entered that you received a test result please add the date most recent that you received test results" 
#     puts "The format should be like this for June 22, 2020: '2020-06-22'".colorize(:red)
#     res_date = gets.strip
#     return_to_menu(res_date)
#     exit_anything(res_date)
#         if res_date.is_a? Integer
#             test_result_date = res_date.to_s 
#         elsif res_date.is_a? String
#             puts "looks like you meant to put a format like June 22, 2020: '2020-06-22"
#             test_results_date_prompt
#         else
#         end
#         test_result_date
# end


#********************************************************************************
#Runner
    def run
        welcome
        menu_exit
    end
#********************************************************************************    
    def welcome
        puts "-------------------------------------------------------------------------------------------
    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWWWWWWWWWWWWWMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMMMWX0xoollloONMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMWXxc,,cdkOOxl::xNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    MMMMMMMWNXKko:'.:xXWMMMMMMNx;cXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    MMMW0o:;,....;o0WMMMMMMMMMMWk,lNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMW0ddk0NMMMM
    MMM0;..  .lOXWMMMMMMMMMMMMMMX:,0MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNOl'....lNMMM
    MMWk'... .xWMMMMMMMMMMMMMMMMNc.kMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWXkc.......:XMMM
    MMMO,.....cXMMMMMMMMMMMMMMMMX;.kMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN0o,....,ol..lNMMM
    MMMO,......:d0NMMMMMMMMMMMMMO''0MMMMMMMMMMMMMMMMMMMMMMMMMMMN0d:.....;dKNo..xWMMM
    MMWk,.........;ok0KNNWWWWWWXc.lXWWWWWWNNNNNXXXXKKKKK0OOkxol;.....'lONMMK; ,0MMMM
    MMMk,.............',;;:::::;..,:::::;;;;,,,''''................;dKWMMMWd..lNMMMM
    MMM0;................            .. ..........................oXMMMMMMK; 'OMMMMM
    MMMKc...................  .     ..........   ................:KMMMMMMWd..lNMMMMM
    MMMXl.......................................................'kWMMMMMMO, ,OMMMMMM
    MMMWd'............................ .........................:KMMMMMMX:..dWMMMMMM
    MMMMO;.................................................. ...dWMMMMMNo..oNMMMMMMM
    MMMMXc............................  .......................,OMMMMMWx..cXMMMMMMMM
    MMMMWx,............... ...........   ......................cXMMMMNx'.cKMMMMMMMMM
    MMMMMKc''.................  ...............................dWMMMNd..lXMMMMMMMMMM
    MMMMMWk,..................................................,OMMWKc.'dNMMMMMMMMMMM
    MMMMMMXl'.................................................:KMNk,.;OWMMMMMMMMMMMM
    MMMMMMM0:'............................................ ...lX0c.'oXMMMMMMMMMMMMMM
    MMMMMMMWO:................................................:c'.l0WMMMMMMMMMMMMMMM
    MMMMMMMMWk;.................................................c0WMMMMMMMMMMMMMMMMM
    MMMMMMMMMNx,.............................................;o0WMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMNd'.........................................'lkXWMMMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMNd'.....................................':xKWMMMMMMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMNd'.................................;lkKWMMMMMMMMMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMNx,............................,cx0NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMW0o,....................':cox0NWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMWWWWN0d:,............':lxOXWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMWWWWNNXXK0Oxolc::;;:ccox0KXNWWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMWWWWNNNXXKKK0000OOOOOOOO00KKXXNNWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    MMMMMMMMMMMMMMWWWWWNNNXXXXXKKKKKKKKKKKKKKKKXXNWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    
            \n                          Welcome to the COVID19 Tracer app!!
            \nThis app is designed to help you find and share information about COVID19 to help you, your friends, and your family members 
           stay mindful and aware of possible infections, testing submission and results, and potential exposures.
            
            \nThe hope is that with the following information provided, this app can be used to help users be aware of who may 
            be infected, has symptoms, has had COVID19 tests, which tests they have receieved, and if they were exposed to you or vice versa. 
            
            \nFor any questions, please reachout to the creator Jake Hyde -- Jhyde@me.com
            \nThank you for checking us out! Wear a mask, stay at least 6 feet apart, and stay healthy!
            \n*******************************************************************************************
            \n-------------------------------------------------------------------------------------------" #.colorize(:red).on_white
    end
#********************************************************************************
#Main Menu    
def menu_items
        puts "-------------------------------------------------------------------------------------------"
        puts "\n\n⬡ 1. Create an account and enter some basic health information.
             \n⬡ 2. Share Test results: Did you get a COVID test? Please share your test results using this option.
             \n⬡ 3. Share or report an Exposure: Enter if you were exposed to or if you exposed someone with COVID19. 
             \n⬡ 4. Find Test results: Find the test results of yourself, a friend, or family members.
             \n⬡ 5. Find exposures: Find out who you may be exposed to or if you have exposed someone to COVID19.(In Development -- Not functional)
             \n⬡ 6. Update your email
             \n⬡ 7. Delete you account and all your information. Respects GDPR compliance.
             \n-------------------------------------------------------------------------------------------".colorize(:red).on_white
        #5. maybe more soon...
 
        puts "\nPlease enter your choice below"
        response = gets.chomp
    
        case response.strip.downcase
        when "exit"
            return exit_statement
        when '1'
            get_user_info
        when '2'
            share_test_results
        when '3'
            share_exposure
        when '4'
            find_test_results
        when '5'
        #Would like to complete this feature as the main saught after feature. Needs more development on associations as real worl example is too abstract deliverable unknown
        when '6'
            update_email
        when '7'
            delete_account
        else
            puts "\nSorry, the choice you made wasn't available. Returning you to the menu to try again"
            menu_items 
        end
    end
#********************************************************************************

#option 1 method
    def get_user_info
        puts "-------------------------------------------------------------------------------------------"
        puts "\nThanks for choosing the COVID Tracer app! Let's get started and have you add some information to get an account created. \nYou can exit at any time by typing 'Exit'. or retun to the Menu by typing 'Menu'"
        puts"\nPlease enter your first name (without special symbols or characters)\n"
        puts "-------------------------------------------------------------------------------------------"
        first_name = gets.strip.capitalize
        return_to_menu(first_name)
        exit_anything(first_name)
    
        puts "\nPlase enter your last name (without special symbols or characters)\n"
        last_name = gets.strip.capitalize
        return_to_menu(last_name)
        exit_anything(last_name)
    
        puts "\nPlease enter your email address\n"
        email = gets.strip.downcase
        return_to_menu(email)
        exit_anything(email)
    
        puts "\nPlease enter your city of your address\n"
        address = gets.strip.capitalize
        return_to_menu(address)
        exit_anything(address)
    
        puts "\nYay, almost there here's the last bit of personal information to create your account."
        puts "\nPlease enter a brief history of health related issues you have had.\n"
            health_history = gets.strip.downcase
            return_to_menu(health_history)
            exit_anything(health_history)
        
        User.create(first_name:first_name, last_name:last_name, address: address, health_history: health_history, created_date: cur_time, email: email)
        
        puts"\n*******************************************************************************************".colorize(:green)
        puts "\nThank you #{first_name} #{last_name}, you now have an account created.".colorize(:green)
        puts "\nYour user id is #{User.find_by(email: email).id}. Please make sure to use this or email when using the share features, so that we can know it is you!".colorize(:green)
        puts"\n*******************************************************************************************".colorize(:green)
        menu_exit
    end

    

#option 2 method
    def share_test_results
        puts "-------------------------------------------------------------------------------------------"
        puts "\n\nThank you for choosing the share test results option! \n\nYou will now have a few prompts that will guide you through sharing your most recent test results"
        puts "\nIf you are in the wrong spot please type 'Menu' to return to the menu or 'Exit' to exit"
        puts "-------------------------------------------------------------------------------------------"
        puts "\n\nWhy are you going to get a test, if you already receieved a test why did you get one?(please provide a brief description)\n"
        
        test_reason = gets.strip
        return_to_menu(test_reason)
        exit_anything(test_reason)
        
        puts "\nPlease enter the email address you used to setup your account"
        identifier = gets.strip.downcase
        return_to_menu(identifier)
        exit_anything(identifier)
        if User.exists?(email:identifier)
            user_id = User.find_by(email:identifier).id
        else
            puts "\n\n******Invalid identity, if you do not have an account or entered the wrong email, \nyou will be directed back to the main menu to create an account or re-enter this information".colorize(:red)
        menu_items
        end

        puts "\nPlease provide the facility where you are going to or have received the test. Example: CityMD in FortGreen, Brooklyn\n"
        facility_name = gets.strip
        return_to_menu(facility_name)
        exit_anything(facility_name)
        
        test_sub_date = test_submission_date_prompt
        
        pcr_test = pcr_prompt
        return_to_menu(facility_name)
        exit_anything(facility_name)
        
        pcr_test_result = nil
        if pcr_test == true 
           pcr_test_result = pcr_result_prompt
        end
        
        antibody_test_result = nil
        antibody_test = antibody_test_prompt
        if antibody_test == true
            antibody_test_result = antibody_test_result_prompt
        end

        
        
        
        Test.create(facility_name:facility_name, pcr_test:pcr_test, pcr_result:pcr_test_result, anti_body_test:antibody_test, anti_body_result:antibody_test_result, test_sub_date:test_sub_date, user_id:user_id)
        puts"\n*******************************************************************************************".colorize(:green)
        puts "\nThank you #{User.find_by(id: user_id).first_name} #{User.find_by(id: user_id).last_name}, your test information has been entered!".colorize(:green)
        puts "\nPlease navigate back to the menu to add exposure information or use the features to search others".colorize(:green)
        puts"\n*******************************************************************************************".colorize(:green)
        menu_exit
    end


#option 3 method
    def share_exposure 
        puts "-------------------------------------------------------------------------------------------"
        puts "This is a key part of the COVID tracer, you chose the share exposure option!
        \nYou will now have a few prompts that will guide you through sharing an exposure report regarding information possibly exposing another individual.
        \nYou can submit only one report per person"
        puts "-------------------------------------------------------------------------------------------"
    
        puts "\nPlease enter the email you used to setup your account"
        e_identifier = gets.strip.downcase
        return_to_menu(e_identifier)
        exit_anything(e_identifier)
        if User.exists?(email:e_identifier)
            user_id = User.find_by(email:e_identifier).id
            e_email = e_identifier
        else
            puts "\n\n******Invalid identity, if you do not have an account or entered the wrong email, \nyou will be directed back to the main menu to create an account or re-enter this information".colorize(:red)
            menu_items
        end
        
        puts "\nPlease enter the name of the virus you believe you are exposing to others or have been exposed to. For example: SARS-COV-2."
        name_input = gets.strip.downcase
        return_to_menu(name_input)
        exit_anything(name_input)
        name = name_input

        
        
        puts "\nDo you have any symptoms? Please enter the symptoms you have, if you do not have any please enter how you feel anyway."
        symptom_input = gets.strip.downcase
        return_to_menu(symptom_input)
        exit_anything(symptom_input)
        symptom = symptom_input

        symptom_start_date = date_prompt("\nIf you have symptoms, when did they start?, if none enter 'skip'")
            if symptom_start_date == "skip"
               symptom_start_date = nil
            end

        symptom_end_date = date_prompt("\nWhen did they end? If none enter 'skip'")
            if symptom_end_date == "skip"
               symptom_end_date = nil
            end
        puts "\nWere you hospitalized, please enter 'yes' or 'no'?"
        hospit_input = gets.strip.downcase
        return_to_menu(hospit_input)
        exit_anything(hospit_input)
        if hospit_input == "yes"
            hospitalization = true
            hospitalization_start_date = date_prompt("\nif you were hospitalized, when were you hospitalized? Please enter in this format 2020-06-22\nOtherwise type 
            'skip' to skip")
            if hospitalization_start_date == "skip"
               hospitalization_start_date = nil
            end
            hospitalization_end_date = date_prompt("\nWhen were you released from the hospital? Please enter in this format 2020-06-22\n\nOtherwise type 
            'skip' to skip")
            if hospitalization_end_date == "skip"
                hospitalization_end_date = nil
            end
        elsif hospit_input == "no"
            hospitalization = false
        end

       
        puts "\nWho were you exposed to or Who was exposed to you? Please enter the first and last name with a space. For example 'Jake Hyde'"
        exposed_input = gets.strip.capitalize
        exposed_to = exposed_input
        return_to_menu(exposed_input)
        exit_anything(exposed_input)
        
        exposed_date = date_prompt("\nWhen were you exposed to this person? Please enter a date in this format 2020-06-22")
        
        if Test.find_by(user:user_id).anti_body_result == true || Test.find_by(user:user_id).pcr_result == true
            infected = true
        else
            infected = false
        end      



        Exposure.create(name: name, infected: infected, symptom: symptom, symptom_start_date: symptom_start_date, symptom_end_date: symptom_end_date , hospitalization: hospitalization, hospitalization_start_date: hospitalization_start_date, hospitalization_end_date: hospitalization_end_date, exposed_to: exposed_to, date_exposed: exposed_date, user_id: user_id)
        
        puts"\n*******************************************************************************************".colorize(:green)
        puts "\nThank you #{User.find_by(id: user_id).first_name} #{User.find_by(id: user_id).last_name}, your exposure information has been entered!".colorize(:green)
        puts "\nPlease navigate back to the menu to add exposure information or use the features to search others".colorize(:green)
        puts"\n*******************************************************************************************".colorize(:green)
        menu_exit
    end
    

   
#option 4 method  
    def find_test_results
        puts "-------------------------------------------------------------------------------------------"
        puts "So you are interested in some test results eh? You will have a few prompts to guide you through your search (as you have noticed, we really like prompts here)."
        puts "-------------------------------------------------------------------------------------------"

        puts "\n\nPlease enter the first and last name or email of the person you would like to see test results for. For example: 'Jake Hyde' or 'jhyde@me.com'"
        person_to_search = gets.strip
        return_to_menu(person_to_search)
        exit_anything(person_to_search)
        person_to_search = person_to_search.split(" ")
        
        #searches by first and last name input
        if person_to_search.count > 1
            first_name = person_to_search[0].capitalize
            last_name = person_to_search[1].capitalize
            full_name = "#{first_name} #{last_name}"
            
            email_of_search_query = User.find_by("first_name = ? OR last_name = ?", first_name, last_name)
            email_of_search_query = email_of_search_query.email
            if User.exists?(email:email_of_search_query)
                puts"\nHere are the results for #{full_name}!".colorize(:green)
                search_results = User.find_by(email:email_of_search_query).tests
                
                pp search_results #pretty print the object! easier to reach than printing each attribute via each or map
            else 
                puts "\nLooks like the name you entered doesn't match any in our system, please try again".colorize(:red)
                find_test_results
            end
    
        #searches by email input
        else email_of_email_search = person_to_search[0].downcase
            if User.exists?(email:email_of_email_search) 
            search_by_email_results = User.find_by(email:email_of_email_search).tests
            puts"\nHere are the results for #{email_of_email_search}!".colorize(:green)
            pp search_by_email_results #pretty print the object! easier to reach than printing each attribute via each or map
            else
                puts "\nLooks like the email you entered doesn't match any in our system, please try again".colorize(:red)
                find_test_results
            end
        end
        menu_exit
    end

#option 5 method (Have to do this in V2 poorly scoped work and need to do this association and db better)
    # def find_exposures
    #     puts "-------------------------------------------------------------------------------------------"
    #     puts "So you are interested in seeming if you were exposed to someont You will have a few prompts to guide you through your search (as you have noticed, we like prompts here)."
    #     puts "-------------------------------------------------------------------------------------------"
    # end

#option 6 method
    def update_email
        puts "-------------------------------------------------------------------------------------------"
        puts "You have chose to update your email! Please follow the prompts! Again, we love prompts here :)"
        puts "\nRemember you can go back to the menu or exit at any time by typing 'menu' or 'exit'"
        puts "-------------------------------------------------------------------------------------------"
        
        puts "\n\nPlease enter the current email you used to setup with your account."
            
            old_email = gets.strip.downcase
            return_to_menu(old_email)
            exit_anything(old_email)
            
            if User.exists?(email:old_email)
                email_to_change = old_email
            puts "Great! Thank you #{User.find_by(email:old_email).first_name}, looks like we have you in our system.".colorize(:green)
            else
                puts "\nWhoops, looks like we didn't recognize that email. Let's try again."
                update_email
            end
            
            puts "\nPlease enter the new email address you'd like us to update your account to"
            new_email = gets.strip.downcase
            return_to_menu(new_email)
            exit_anything(new_email)
            if User.exists?(email:new_email)
                email_to_change = old_email
            puts "\nOOhhhh Noooo, looks like we may have an account that already has that email.".colorize(:red)
            else
                user = User.find_by(email:old_email)
                user.email = new_email
                user.save
                puts"\n-------------------------------------------------------------------------------------------".colorize(:green)
                puts "Nice! Looks like we were able to update your account from #{old_email} to #{User.find_by(email:new_email).email}.".colorize(:green)
                puts"-------------------------------------------------------------------------------------------".colorize(:green)
            end
            menu_exit
    end

    
# option 7 method
    def delete_account
        puts "-------------------------------------------------------------------------------------------"
        puts "You chose to delete your account! \nWe are sad to see you go, but we take GDPR very seriously here. So once we remove your account, all associated information with it will be gone... We hope to see you again in the future, as you can always create another account to help stop the pandemic. Again, please follow the prompts!"
        puts "\nRemember you can go back to the menu or exit at any time by typing 'menu' or 'exit'"
        puts "-------------------------------------------------------------------------------------------"
        
        
        puts "\n\nPlease enter the current email you used to setup with your account."
            acount_to_delete = gets.strip.downcase
            return_to_menu(acount_to_delete)
            exit_anything(acount_to_delete)
            if User.exists?(email:acount_to_delete)
                user_id = User.find_by(email:acount_to_delete).id
                user = User.find_by(id:user_id)
                user.destroy 
                puts "\n*******************************************************************************************".colorize(:green)
                puts "Deleting user account".colorize(:green)
                puts "*******************************************************************************************".colorize(:green)
                
                if Test.find_by(user:user_id)
                    tests = Test.find_by(user:user_id)
                    tests.destroy
                    puts "\n*******************************************************************************************".colorize(:green)
                    puts "Deleting Tests submitted".colorize(:green)
                    puts "*******************************************************************************************".colorize(:green)
                else
                    puts "\nLooks like you did not submit any tests, therefore nothing to delete here".colorize(:red)
                end

                if Exposure.find_by(users:user_id)
                   exposures = Exposure.find_by(users:user_id)
                   exposures.destroy
                   puts "\n*******************************************************************************************".colorize(:green)
                   puts "\nDeleting exposure reports submitted".colorize(:green)
                   puts "\n*******************************************************************************************".colorize(:green)
                else
                    puts "\nLooks like you did not submit any exposure reports, therefore nothing to delete here"
                end
            else
                puts "\nIt looks like the account you entered is not in our system, please try again"
            delete_account
            end 
        menu_exit
    end


 

