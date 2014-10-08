module ApplicationHelper
	def intellinav
		nav = ''
		if @current_user.present?
			nav += "Hello #{ @current_user.name } " 
			# nav +=  link_to('All users  ', users_path) 
			nav +=  link_to('Edit profile  ', edit_user_path(@current_user)) 
      nav += "#{link_to('Sign out', login_path, :method => :delete, :data => {:confirm => 'Are you sure?'})}  "
      nav += "#{ link_to('Add Item', new_item_path) }  "
      nav += "#{ link_to('About', about_path) }  "
      nav += "#{ link_to('View all Items', items_path) }  "


    else 
      nav += "#{link_to('Sign up', new_user_path) }  "
      nav += "#{ link_to('Login', login_path) }  "
      nav += "#{ link_to('About', about_path) }  "

	end
	nav

end
end