prezentacja
===========

1. gem 'system_zgloszen',
     git: 'https://github.com/sebah1989/SystemZgloszen'

2. bundle install

3. rake railties:install:migrations

4. rake db:migrate

5. mount SystemZgloszen::Engine => '/system_zgloszen'

6. initializer: SystemZgloszen.user_class = "User"


