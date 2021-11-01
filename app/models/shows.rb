require 'pry'

class Show < ActiveRecord::Base


def self.highest_rating
    Show.maximum(:rating)
end
    
    # This method should return the highest value in the ratings column. Hint: if there is a .minimum Active Record method, might there be a .maximum method?

def self.most_popular_show
    self.order("rating DESC").first
end


# Returns the show with the highest rating.

def self.lowest_rating
    self.minimum(:rating)
end

# Returns the lowest value in the ratings column.

# Returns the show with the lowest rating.

def self.least_popular_show
    self.order("rating ASC").first
end

def self.ratings_sum
    self.sum(:rating)
end

# : Returns the sum of all of the ratings.

def self.popular_shows
    self.where("rating > 5")
end
# : Returns a list of all of the shows that have a rating greater than 5. Hint: use the .where Active Record method.

def self.shows_by_alphabetical_order
    self.order("name ASC")
end

# : Returns an array of all of the shows sorted in alphabetical order according to their names. Hint: use the .order Active Record method.
# binding.pry
end
