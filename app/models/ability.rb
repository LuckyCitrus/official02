# frozen_string_literal: true
class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?
      if user.customer?
        can :read, :all
      elsif user.employee?
        can :manage :all
        cannot :manage :users
      elsif user.admin?
        can :manage, :all
        cannot :destroy, User, id: user.id
      end
    end
  end

end