class OrderPolicy < ApplicationPolicy
  attr_reader :user, :order

  def initialize(user, order)
    @user = user
    @order = order
  end

  class Scope < Scope
    def resolve
      if user.admin? || user.employee
        scope.all
      else
        scope.includes(:customer).where(customers: { user_id: user.id })
      end
    end
  end

end
