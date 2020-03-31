class PicturePolicy < ApplicationPolicy
  attr_reader :user, :picture

  def initialize(user, picture)
    @user = user
    @picture = picture
  end

  class Scope < Scope
    def resolve
      if user.admin? || user.employee
        scope.all
      else
        scope.joins(order: [:customer]).where(customers: { user_id: user.id })
      end
    end
  end

end
