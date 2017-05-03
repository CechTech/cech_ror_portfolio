module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    # if loged in act normal, if not do or statement
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: "Guest User",
                  first_name: "Guest",
                  last_name: "User",
                  email: "guest@example.com"
                  )
  end
end
