class CustomerOverviewPolicy < ApplicationPolicy
  attr_reader :user, :customer_overview

  def initialize(user, customer_overview)
    @user = user
    @customer_overview = customer_overview
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
