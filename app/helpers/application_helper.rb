# module ApplicationHelper
# 	def intellinav
# 		nav = ''
# 		if @current_user.present?
# 			nav += "Hello #{ @current_user } "
# 			nav += " link_to('Edit profile', edit_user_path) "
#       nav += "#{link_to('Sign out', users_path, :method => :delete, :data => {:confirm => 'Are you sure?'})} "
#       nav += " link_to('Add Item', new_item_path) "
#     else 
#       nav += "#{link_to('Sign Up', new_user_path) } "
#       nav += "#{ link_to('Sign In', new_session_path) } "
#       nav += "#{ link_to('About', page_path) } "
#       nav += "#{ link_to('Add Item', new_page_path) } "
# 	end
# 	nav
# end
# end


module ApplicationHelper
	def intellinav
		nav = ''
		if @current_user.present?
			nav += "<li>Hello #{ @current_user.name }</li> "
			nav += "<li>" + link_to('All users', users_path) + "</li> "
			nav += "<li>" + link_to('Edit profile', edit_user_path(@current_user))
      nav += "<li>#{link_to('Sign out', login_path, :method => :delete, :data => {:confirm => 'Are you sure?'})}</li> "

    else 
      nav += "<li>#{link_to('Sign up', new_user_path) } </li> "
      nav += "<li>#{ link_to('Login', login_path) } </li> "
      nav += "#{ link_to('About', about_path) } "
		 	# nav += "#{ link_to('Add Item', new_page_path) } "
	end
	nav

end
end