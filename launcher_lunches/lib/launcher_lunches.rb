require 'pry'

def most_expensive
  price_list = []
  top_restaurant = nil
  top_dish = nil

  restaurants.each do |restaurant, meals |
    meals[:meals].each do |meals, meal|
      meal.each do | dish, info|
         price_list << info[:price_in_cents]
         top_value = price_list.max
          if info[:price_in_cents] == top_value
           top_restaurant = restaurant
           top_dish = dish.to_s.split('_').join(' ').capitalize
          end
      end
    end
  end
"#{top_dish} from #{top_restaurant}"
end

def one_of_everything_from(name)
  prices = []
  restaurants[name][:meals].each do |meals, meal|
    meal.each do | dish, info|
       prices << info[:price_in_cents]
     end
   end
   total = prices.inject {|sum, price| sum + price}
   total/100.to_f
end

def monthly_egg_count
  egg_count = 0

  restaurants.each do |restaurant_name, restaurant_info|
    restaurant_info[:meals].each do |meals, meal|
      meal.each do |dish, item_info|
         if item_info[:ingredients ].include?("eggs")
           egg_count += (((8*restaurant_info[:hours])*2)*30)
         end
       end
     end
   end
  egg_count
end

def lactose_free_items
  tolerant_items = {}
  restaurants.each do |restaurant_name, restaurant_info|
    restaurant_info[:meals].each do |meals, meal|
      meal.each do |dish, item_info|
         unless item_info[:ingredients ].include?("cheese")
           tolerant_items[dish] = item_info[:price_in_cents]
         end
       end
     end
   end

  final_list = []
  tolerant_items = tolerant_items.sort_by { |item_name, price| price }.reverse
  tolerant_items.each do |dish|
    final_list.unshift(dish[0])
  end

  final_list
end


def restaurants
  {
    "Sam's Sandwhiches" => {
      hours: 7,
      meals: {
        breakfast: {
          hamncheese: {
            price_in_cents: 499,
            ingredients: ["ham", "cheese", "english muffin"]
          },
          mcwaffle: {
            price_in_cents: 525,
            ingredients: ["waffles", "syrup", "sausage", "cheese"]
          }
        },
        lunch: {
          meatball_rollup: {
            price_in_cents: 709,
            ingredients: ["meatballs", "cheese", "tortilla"]
          },
          fluffer_nutter_with_bacon: {
            price_in_cents: 639,
            ingredients: ["bread", "fluff", "peanutbutter", "bacon"]
          }
        }
      }
    },
    "Adam's Veggie Express" => {
      hours: 9,
      meals: {
        breakfast: {
          asparagus_omlette: {
            price_in_cents: 688,
            ingredients: ["eggs", "cheese", "asparagus"]
          },
          fajita_frittata: {
            price_in_cents: 500,
            ingredients: ["eggs", "green peppers", "red peppers", "yellow peppers", "onions", "cheese"]
          }
        },
        lunch: {
          veggie_surprise_bag: {
            price_in_cents: 925,
            ingredients: ["tomato", "onion", "squash", "other stuff"]
          },
          corn_on_the_cob: {
            price_in_cents: 229,
            ingredients: ["corn"]
          }
        }
      }
    },
    "Eric's Emo Eats" => {
      hours: 3,
      meals: {
        breakfast: {
          sad_cereal: {
            price_in_cents: 277,
            ingredients: ["cereal", "milk"]
          },
          apathetic_eggs: {
            price_in_cents: 320,
            ingredients: ["eggs"]
          }
        },
        lunch: {
          mopey_falafels: {
            price_in_cents: 625,
            ingredients: ["pita", "falafel", "tahini"]
          },
          tearful_tacos: {
            price_in_cents: 719,
            ingredients: ["beef", "taco shells", "cheese", ]
          }
        }
      }
    }
  }
end
