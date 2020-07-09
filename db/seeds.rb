#PLEASE USE THE CLI INSTEAD OF SEEDING TEST DATA. BE AWARE THIS MAY BE OUTDATED



User.destroy_all
Test.destroy_all
Exposure.destroy_all


def cur_time
    current =  Time.new 
    return current
end
 #current time for timestamp of created_at date. Should be created at time of entering user account information - Might want to add this to gets of all user info in runner for CLI

def rand_date
    rand_date = Date.today-rand(200)
    return rand_date
end  

#random time within the last 200 days (apprx time of covid)
later_random_date = rand_date + 14
another_later_date = cur_time + 14 #random time plus 14 day period (hopefullly not sick anylonger....)

jake = User.create(id:1, first_name:"Jake", last_name:"Hyde", address:"214 50th Av, Long Island City, 11101", created_date: cur_time, health_history: "I had blahstones in 1994")
keenan = User.create(id:2, first_name: "Keenan", last_name: "Jarmush",address: "somewhere, Brooklyn, 11222", created_date: cur_time, health_history: "I had blahsomething in 3001")
thomas = User.create(id:3, first_name: "Thomas",last_name:"Radcliff",address: "I dunno, 93544", created_date: cur_time, health_history: "I hadffasg 34401")

test1 = Test.create(facility_name: "CityMD", pcr_test:nil, pcr_result:nil, anti_body_test:true, anti_body_result:false, test_sub_date:rand_date, test_result_date:nil, user_id:1, exposure_id:2)
test2 = Test.create(facility_name: "OneMedical", pcr_test:nil, pcr_result:nil, anti_body_test:true, anti_body_result:true, test_sub_date:rand_date, test_result_date:nil, user_id:2,exposure_id:4)
test3 = Test.create(facility_name: "CVS", pcr_test:nil, pcr_result:nil, anti_body_test:true, anti_body_result:true, test_sub_date:rand_date, test_result_date:another_later_date, user_id:3,exposure_id:1)
test4 = Test.create(facility_name: "DriveIn", pcr_test:true, pcr_result:true, anti_body_test:false, anti_body_result:nil, test_sub_date:rand_date, test_result_date:another_later_date, user_id:1,exposure_id:5)

user_case_1 = Exposure.create(name:"COVID 19 strain A", infected:true, symptom:"fever, cough", symptom_start_date: rand_date, symptom_end_date: later_random_date, hospitalization:true, hospitalization_start_date:later_random_date, hospitalization_end_date:nil, exposed_to:"Keenan Jarmush", date_exposed:rand_date, user_id:3)
user_case_2 = Exposure.create(name:"COVID 19 strain B", infected:false, symptom:"fever, cough, sweating", symptom_start_date: rand_date, symptom_end_date: later_random_date, hospitalization:false, hospitalization_start_date:nil, hospitalization_end_date:nil, exposed_to:"Jake Hyde", date_exposed:rand_date, user_id:5)
user_case_3 = Exposure.create(name:"COVID 19 strain A", infected:true, symptom:"fever, cough", symptom_start_date: rand_date, symptom_end_date: later_random_date, hospitalization:false, hospitalization_start_date:nil, hospitalization_end_date:nil, exposed_to:"Keenan Jarmush", date_exposed:rand_date, user_id:2)
user_case_4 = Exposure.create(name:"COVID 19 strain B", infected:true, symptom:"fever, cough", symptom_start_date: rand_date, symptom_end_date: later_random_date, hospitalization:false, hospitalization_start_date:nil, hospitalization_end_date:nil, exposed_to:"Thomas Radcliff", date_exposed:rand_date, user_id:4)
    