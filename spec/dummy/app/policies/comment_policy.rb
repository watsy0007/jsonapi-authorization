class CommentPolicy
  class Scope < Struct.new(:user, :scope)
    def resolve
      scope.all
    end
  end

  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  # This makes no sense architecturally... a blacklist once again, compared to whitelist
  # def allow_relationship?(*args)
  #   require 'pry'
  #   binding.pry
  # end

  def allow_relationship_article?(article)
    article.external_id != 'article-1'
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    true
  end

  def destroy?
    true
  end
end
