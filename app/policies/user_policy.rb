class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.tattoo_artist
    end
  end

  def show?
    true
  end

end
