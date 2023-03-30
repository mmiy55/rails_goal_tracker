class GoalPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    def resolve
     # show only admin goals and current user goals
      admin = User.find_by(email: 'admin@me.com')
      scope.where(user: [admin, user])
    end
  end

    def create?
      true
    end

    def update?
      record.user == user
    end

    def destroy?
      record.user == user
    end
end
