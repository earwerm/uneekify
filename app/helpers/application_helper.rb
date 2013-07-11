module ApplicationHelper
  def intellinav
    links = " "
    if @auth.present?
      if @auth.is_admin
        links << "<li>#{link_to("Show Users", users_path)}</li>"
      end

      links << "<li>#{link_to('Edit', edit_users_path)}</li>" +
      links << "<li>"
      links << "#{link_to('Logout ' + @auth.name, login_path, :method => :delete, :confirm => "Are you sure?")}"
      links << " #{number_to_currency @auth.balance}"
      links << "</li>"
    else
      links << "<li>#{link_to('Create New', new_user_path)}</li>" +
      links << "<li>#{link_to('Login', login_path)}</li>"
    end

    links
  end
end
