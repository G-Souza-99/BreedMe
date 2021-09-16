class PetPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def show?
    return true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  def my_pets?
    true
  end

  def favorites?
    true
  end

  def change_heat?
    true
  end

  def make_favorite?
    true
  end
end
