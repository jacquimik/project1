module ApplicationHelper
	def intellinav
		nav = ''
		if @current_user.present?
      nav += "<li>#{ link_to('Add Item', new_item_path) }</li>"
      nav += "<li>#{ link_to('View all Items', items_path) }                     </li>"
      nav += "<li>#{link_to('Edit profile  ', edit_user_path(@current_user))}</li>" 
      nav += "<li>#{ link_to('Search by Category', new_search_path) }                     </li>"
      nav += "<li>#{link_to('Sign out ' + @current_user.name, login_path, :method => :delete, :data => {:confirm => 'Are you sure?'})}  "

    else 
      nav += "<li>#{link_to('Sign up', new_user_path) }</li>"
      nav += "<li>#{ link_to('Login', login_path) }</li>"
      nav += "<li>#{ link_to('About', about_path) }</li>"

	end
	nav

end
end