class CustomerPolicy < ApplicationPolicy
  attr_reader :user, :customer

  def initialize(user, customer)
    @user = user
    @customer = customer
  end

  class Scope < Scope
    def resolve
      if user.admin? || user.employee?
        scope.all
      else
        @scope.where(user_id: @user.id)
      end
    end
  end

end
