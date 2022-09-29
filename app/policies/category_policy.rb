class CategoryPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      if user.admin
        scope.all
      else 
        raise Pundit::NotAuthorizedError
      end
    end
  end

  # o 'user&.admin?' veirifica se o usuario estiver logado no sistema 
  def index?
    user&.admin?
  end

  def create?
    user.admin?
  end

  def update?
    user.admin?
  end

  def destroy?
    user.admin?
  end
   
end
