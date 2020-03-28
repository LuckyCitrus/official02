class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    #user.present?
    user.admin? || user.employee?
  end

  def show?
    scope.where(:id => record.id).exists?
    #index?
  end

  def create?
    user.admin? || user.employee?
  end

  def new?
    user.admin? || user.employee?
  end

  def update?
    user.admin? || user.employee?
  end

  def edit?
    user.admin? || user.employee?
  end

  def destroy?
    user.admin? || user.employee?
  end

  def scope
    Pundit.policy_scope!(user, record.class)
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.all
    end
  end
end
