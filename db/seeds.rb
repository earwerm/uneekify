User.destroy_all

User.create(:name => 'Dave', :age => 35, :gender => 'm')
User.create(:name => 'Emma', :age => 25, :gender => 'f')
User.create(:name => 'Daisy', :age => 32, :gender => 'f')
User.create(:name => 'Dennis', :age => 22, :gender => 'm')