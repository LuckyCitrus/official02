class CarPolicy < ApplicationPolicy
  attr_reader :user, :car

  def initialize(user, car)
    @user = user
    @car = car
  end

  class Scope < Scope
    def resolve
      if user.admin? || user.employee?
        scope.all
      else
        scope.joins(order: [:customer]).where(customers: { user_id: user.id })
      end
    end
  end

end
