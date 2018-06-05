FactoryBot.define do
  factory :note, class: 'Note' do
    content Faker::ChuckNorris.fact
    note_type 1
    author
    # task
    # sprint { task.sprint }
    # project { task.sprint.project }
    project { sprint.project }
    sprint
  end
end