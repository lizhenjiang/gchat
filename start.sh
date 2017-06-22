bundle exec puma -p 28080 cable/config.ru -d
bundle exec rails s -p 3006 -b 0.0.0.0 -e development -d
