class ChatroomPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user).or(scope.where(owner: user))
    end
  end

  def show?
    true
  end

  def create?
    record.user == user
  end

  def my_chatrooms?
    true
  end
end
