class GroupController < ApplicationController

  def new
    @group = Group.new
  end

  def create
    # group =.create({group_id: group.id, user_id: user.id})
    group = Group.create(name: params[:name])
    Membership.create({group_id: group.id, user_id: current_user.id})

    # Get all users, probably from email 
    # users.each do |u|
    #   Membership.create({group_id: group.id, user_id: u.id})
    # end

  end

  def show
    @group = Group.find(params[:id])

    render 'groups/show', layout: 'application'
  end
  def add_member
    # User would create group and send email invite for someone to join their group, they get invite, log in, and go to form
    group = Group.find_by_id(params[:id])
    new_member = User.find(current_user.id)
    # membership = Membership.find_by_group_id(group.id)
    Membership.create(user_id: new_member.id, group_id: group.id)
    # can just create like this!
    group.memberships.create({user_id: current_user.id})
  end
end
