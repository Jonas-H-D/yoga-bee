class LocationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    record.user_id == user(id)
  end

  def destroy?
    record.user_id == user(id)
  end
end
