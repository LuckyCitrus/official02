class ShipmentPolicy < ApplicationPolicy
  attr_reader :user, :shipment

  def initialize(user, shipment)
    @user = user
    @shipment = shipment
  end

  class Scope < Scope
    def resolve
      if user.admin? || user.employee
        scope.all
      else
        scope.joins(invoiceshipments: [invoice: :customer]).where(customers: { user_id: user.id })
      end
    end
  end

end
