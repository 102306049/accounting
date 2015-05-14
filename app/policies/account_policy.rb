class AccountPolicy < ApplicationPolicy
  attr_reader :user, :account

  def initialize(user, account)
    @user = user
    @account = account
  end

  def update?
    user.admin? or not account.published?
  end
end
