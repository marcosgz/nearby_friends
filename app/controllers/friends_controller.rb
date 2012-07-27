class FriendsController < InheritedResources::Base
  actions :all
protected
  def collection
    @friends ||= end_of_association_chain.page(params[:page]).per(50)
  end
end
