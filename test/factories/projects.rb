FactoryBot.define do
  factory :project, class: 'Project' do
    transient do
      phases 5
    end
    name { 'Project Application Name' }
    language { 5 }
    sprint_total { 5 }
    sprint_current { 1 }
    # sprint_total { phases }
    # sprint_current { Random.rand(phases) }
    description { 'Project Description' }
    github_repo_id { nil }
    github_webhook_id { nil }
    stage_website_url { 'http://staging.website.com/example' }
    demo_url { 'http://demo.website.com/example' }
    prod_url { 'http://website.com' }
    complete { false }
    association :owner, factory: :owner
    # heroku_token Faker::Omniauth.github['uid']
    # google_analytics_tracking_code Faker::Omniauth.google[:credentials][:token]
    # after(:create) do |project, evaluator|
    #   create_list(:sprint, evaluator.phases, project: project)
    # end

    trait :seed_owner do
      after(:create) do |project, evaluator|
        project.owner = create(:user)
      end
    end

    trait :seed_project_users do
      after(:create) do |project, evaluator|
        create_list(:project_customer, 2, project: project)
        create_list(:project_developer, 2, project: project)
      end
    end

    trait :seed_tasks_notes do
      after(:create) do |project, evaluator|
        # TODO: Refactor - Iterate over Sprints here, creating tasks cleaner
        create_list(:task, 2, created_by: project.owner, sprint: evaluator.get_sprint(1))
        create_list(:note, 2, sprint: evaluator.get_sprint(1))
        create_list(:task, 2, created_by: project.owner, sprint: evaluator.get_sprint(2))
        create_list(:note, 2, sprint: evaluator.get_sprint(2))
        create_list(:task, 2, created_by: project.owner, sprint: evaluator.get_sprint(3))
        create_list(:note, 2, sprint: evaluator.get_sprint(3))
        create_list(:task, 2, created_by: project.owner, sprint: evaluator.get_sprint(4))
        create_list(:note, 2, sprint: evaluator.get_sprint(4))
        create_list(:task, 2, created_by: project.owner, sprint: evaluator.get_sprint(5))
        create_list(:note, 2, sprint: evaluator.get_sprint(5))
      end
    end
    factory :project_with_github_test_repo do
      github_repo_id {12345}
    end
    factory :project_with_current_task do
      after(:create) do |project, evaluator|
        project.current_task || create(:task, sprint: evaluator.current_sprint)
      end
    end
  end

  # TODO: Remove these 3 factories, instead convert to small traits
  factory :project_only, class: 'Project' do
    transient do
      phases 5
    end
    name { 'Project Name' }
    language 2
    sprint_total { 5 }
    sprint_current { 1 }
    description { 'Project Description' }
    github_repo_id { nil }
    github_webhook_id { nil }
    stage_website_url { 'http://www.staging.example.com' }
    demo_url { 'http://demo.www.example.com' }
    prod_url { 'http://www.example.com' }
    complete { false }
    association :owner, factory: :owner
  end

  factory :new_project, class: 'Project' do
    name { 'new project name' }
    language { 2 }
    sprint_total { 10 }
    sprint_current { 1 }
    description { 'new project desc' }
    stage_website_url { 'project stage url' }
    demo_url { 'project demo url' }
    prod_url { 'project prod url' }
    owner
  end

  factory :update_project, class: 'Project' do
    name { 'update project name' }
    language { 3 }
    sprint_total { 12 }
    sprint_current { 2 }
    description { 'update project desc' }
    stage_website_url { 'project update stage url' }
    demo_url { 'project update demo url' }
    prod_url { 'project update prod url' }
    owner
  end

end
