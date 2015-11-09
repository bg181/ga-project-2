class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :read, :all
    can :create, Restaurant
    can :status, Restaurant
    can :update, Restaurant do |r|
      r.try(:user) == user
    end
  end
end