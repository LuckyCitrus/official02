class EmployeePolicy < ApplicationPolicy
  attr_reader :user, :employee

  def initialize(user, employee)
    @user = user
    @employee = employee
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