puts "Nettoyage DB"
Restaurant.destroy_all

prevert = { name: "Le Prévert", address: "Lille", category: "French" }
fer_a_cheval = { name: "Le fer à cheval", address: "Lille", category: "Chinese" }
ycy = { name: "YCY", address: "Paris", category: "Japanese"  }
coucou = { name: "Coucou", address: "Bruxelles", category: "Belgian"  }
petite_perruche = { name: "Petite perruche", address: "Bruxelles", category: "Belgian"  }
bacchus = { name: "Le Bacchus", address: "Croix", category: "French"  }

[prevert, fer_a_cheval, ycy, coucou, petite_perruche, bacchus].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "J'ai crée #{restaurant.name}"
end

puts "C'est fini"
