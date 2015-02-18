insert_into_file "Gemfile", :after => /gem "bcrypt".*\n/ do
  <<-GEMS.strip_heredoc
    gem "bootstrap_form", "~> 2.3.0"
    gem "bootstrap-sass", "~> 3.2.0"
  GEMS
end

insert_into_file "Gemfile", :after => /gem "dotenv-rails".*\n/ do
  <<-GEMS.strip_heredoc
    gem "font-awesome-rails"
  GEMS
end
