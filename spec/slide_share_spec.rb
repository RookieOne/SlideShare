require 'spec_helper'

describe SlideShare do
  before(:each) do
    SlideShare.API_KEY = "IUKyhLLC"
    SlideShare.SECRET = "PdZ8enD1"  
  end
  
  describe "get slideshows by user" do
    before(:each) do
      @talks = SlideShare.get_slideshows_by_user("rookieone")
    end
    
    it { @talks.should_not be_nil }
    it { @talks.should_not be_empty }
  end


end