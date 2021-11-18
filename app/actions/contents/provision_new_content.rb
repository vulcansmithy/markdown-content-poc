# 1.
class ProvisionNewContent < Actionable::Action
  
  step :build
  step :validate
  step :create
  
  on_failure :on_failure_execute_step
  on_success :on_success_execute_step
  always     :always_execute_step
  
  def initialize(params)
    super()
    @params = params
  end
  
  def build
    puts "@DEBUG L:#{__LINE__}    Running build..."
    @content = Content.new @params 
  end
  
  def validate
    puts "@DEBUG L:#{__LINE__}    @content.valid? = #{@content.valid?}"

    fail :invalid, "Validation error", @content.errors unless @content.valid?
  end

  def create
    puts "@DEBUG L:#{__LINE__}    Running create..."
    @content.save!
  end
  
  def on_failure_execute_step
    puts "@DEBUG L:#{__LINE__}    Running on_failure_execute_step..."
  end
  
  def on_success_execute_step
    puts "@DEBUG L:#{__LINE__}    Running on_success_execute_step..."
  end
  
  def always_execute_step
    puts "@DEBUG L:#{__LINE__}    Running always_execute_step..."
  end

end