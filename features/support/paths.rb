module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /the home\s?page/
      '/'
    when /the list of doctors/
      doctors_path

    when /the list of departments/
      departments_path

    when /Edit "([^\"]+)"/
      "/doctors/#{Doctor.find_by_full_name($1).id}/edit"

      when /Edit Department "([^\"]+)"/
      "/departments/#{Department.find_by_name($1).id}/edit"

    when /the Show Department "([^\"]+)"/
      "/departments/show_doctors/#{Department.find_by_name($1).id}"



      # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /the (.*) page/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue Object => e
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
