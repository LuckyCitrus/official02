class ImagePolicy < ApplicationPolicy
  attr_reader :user, :image

  def initialize(user, image)
    @user = user
    @image = image
  end

  class Scope < Scope
    def resolve
      if user.admin? || user.employee
        scope.all
      else
        # scope.includes(:user).where(users: { user_id: @user.id })
        scope.includes(:user).where(user_id: @user.id)
      end

    end
  end
end
