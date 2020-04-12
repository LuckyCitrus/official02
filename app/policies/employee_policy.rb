class EmployeePolicy < ApplicationPolicy
  attr_reader :user, :employee

  def initialize(user, employee)
    @user = user
    @employee = employee

  def destroy?
    false
  end

  end

  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
        @scope.where(user_id: @user.id)
      end
    end
  end
end