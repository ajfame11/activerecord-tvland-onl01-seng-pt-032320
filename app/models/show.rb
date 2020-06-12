class Show < ActiveRecord::Base

  belongs_to :network
  
  has_many :characters
  
  has_many :actors, through: :characters
  
  def actors_list
    self.acters.collect do |acter|
     "#{acter.full_name} - #{acter.show.name}"
    end
  end
  
end