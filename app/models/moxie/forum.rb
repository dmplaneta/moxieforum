module Moxie
  class Forum < ActiveRecord::Base
    set_table_name "moxie_forums"

    has_many :topics
    before_destroy :remove_topics

    validates :title, :presence => true
    
    def remove_topics
      topics.each { |t| t.destroy }
    end
    
  end
  
end