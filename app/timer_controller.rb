class TimerController < UIViewController
  attr_reader :timer
  
  def viewDidLoad
    margin = 20
    
    @state                 = UILabel.new
    @state.font            = UIFont.systemFontOfSize(30)
    @state.text            = "Tap to start"
    @state.textAlignment   = UITextAlignmentCenter
    @state.textColor       = UIColor.whiteColor
    @state.backgroundColor = UIColor.clearColor
    
    @action = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @action.setTitle "Start", forState: UIControlStateNormal
    @action.setTitle "Stop",  forState: UIControlStateSelected
    @action.addTarget(self, 
      :action           => 'actionTapped', 
      :forControlEvents => UIControlEventTouchUpInside)
        
    @action.frame = frame(margin, 260)
    @state.frame  = frame(margin, 200)
    
    view.addSubview(@action)
    view.addSubview(@state)
  end
  
  #-------------------------
  
  def actionTapped
    if @timer
      @timer.invalidate
      @timer = nil
    else
      @duration = 0

      @timer = NSTimer.scheduledTimerWithTimeInterval(0.1, 
        :target   => self, 
        :selector => 'timerFired',
        :userInfo => nil,
        :repeats  => true)
    end
    
    @action.selected = !@action.selected?
  end
  
  #-------------------------
  
  def timerFired
    @duration += 0.1
    @state.text = "%.1f" % @duration
  end

  #-------------------------
  
  private
  
  def frame(margin, number)
    [[margin, number], [view.frame.size.width - margin * 2, 40]]
  end
end
