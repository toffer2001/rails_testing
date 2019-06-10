FactoryBot.define do
  factory :student, class: Student do
    name { "Bob" }
    student_number { 222 }
    gpa { 3.5 }
    school
  end
end