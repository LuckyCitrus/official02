class PaymentPolicy < ApplicationPolicy
  attr_reader :user, :payment

  def initialize(user, payment)
    @user = user
    @payment = payment
  end

  class Scope < Scope
    def resolve
      if user.admin? || user.employee?
        scope.all
      else
        scope.includes(:customer).where(customers: { user_id: user.id })
      end
    end
  end

end
