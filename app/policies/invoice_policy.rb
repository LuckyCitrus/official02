class InvoicePolicy < ApplicationPolicy
  attr_reader :user, :invoice

  def initialize(user, invoice)
    @user = user
    @invoice = invoice
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
