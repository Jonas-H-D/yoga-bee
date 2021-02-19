class LocationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def home?
    true
  end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    @record.user == user
  end

  def destroy?
    @record.user == user
  end
end
