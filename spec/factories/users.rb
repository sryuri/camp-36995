FactoryBot.define do
    factory :user do
      nickname              {'test'}
      email                 {'test@etest'}
      password              {'000000'}
      password_confirmation {password}
      profile               {'test'}
    end
  end
  