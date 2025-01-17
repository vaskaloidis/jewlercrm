FactoryBot.define do
  factory :sprint, class: 'Sprint' do
    payment_due {false}
    description {Faker::ChuckNorris.fact}
    add_attribute(:open) {'true'}
    sequence(:sprint)
    project
    after(:create) do |sprint, evaluator|
      create :project, :seed_tasks_notes
      create_list(:planned_task, 3, sprint: sprint)
      create_list(:note, 2, sprint: sprint)
    end

    factory :regular_sprint do
      after(:create) do |sprint, evaluator|
        create_list(:task, 3, sprint: sprint)
      end
    end

    # TODO: Clean this up or remove it. Make it a trait maybe?
    factory :sprint_with_reported_hours do
      after(:create) do |sprint, evaluator|
        create_list(:task, 5, sprint: sprint, hours: Random.rand(1...20))
      end
    end
  end
end
