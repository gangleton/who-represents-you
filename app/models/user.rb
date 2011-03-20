class User < ActiveRecord::Base

  def get_congressperson
      congresspeople = Sunlight::Legislator.all_for(:address => self.location)
	    #senior_senator = congresspeople[:senior_senator]
	    #junior_senator = congresspeople[:junior_senator]
	    #representative = congresspeople[:representative]    
  end

end

