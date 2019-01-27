FactoryBot.define do
  factory :metric do
    controller_name { "TodoList" }
    action_name { "view" }
    time_process { 28.5 }
    view_runtime { 17.2 }
    db_runtime { 11.3 }
  end
end
