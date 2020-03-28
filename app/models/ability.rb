# frozen_string_literal: true
class Ability
  include CanCan::Ability

  def initialize(user)
=begin   
    if user.present?
          if user.customer?
            #can :read, [Customer, Order, Invoice, Payment]
            can :read, Customer, user_id: user.id
          elsif user.employee?
            can :manage, :all
            cannot :manage, :users
          elsif user.admin?
            can :manage, :all
            cannot :destroy, User, id: user.id
          end
        end
=end
      end
end
