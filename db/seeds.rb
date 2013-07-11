User.destroy_all

User.create(:name => 'Dave', :age => 35, :gender => 'm', :password => 'a', :password_confirmation => 'a')
User.create(:name => 'Emma', :age => 25, :gender => 'f', :password => 'a', :password_confirmation => 'a')
User.create(:name => 'Daisy', :age => 32, :gender => 'f', :password => 'a', :password_confirmation => 'a')
User.create(:name => 'Dennis', :age => 22, :gender => 'm', :password => 'a', :password_confirmation => 'a')