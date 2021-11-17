# 1.
class ProvisionNewContent < Actionable::Action
  
  step :build
  step :validate
  step :create
  
  def initialize(params)
    super()
    @params = params
  end
  
  def build
    # @TODO
puts "@DEBUG L:#{__LINE__}    Running build..."
     @content = Content.new @params 
  end
  
  def validate
    # @TODO
puts "@DEBUG L:#{__LINE__}    Running validate..."
  end

  def create
    # @TODO
puts "@DEBUG L:#{__LINE__}    Running create..."
  end

end