## Timer

This is basically a copy of 
[this example application](https://github.com/HipByte/RubyMotionSamples/tree/master/Timer) 
from the [RubyMotionSamples](https://github.com/HipByte/RubyMotionSamples)
repository. It's a timer which counts in 0.1 second intervals. Fascinating.

I rewrote it manually as an exercise for my first RubyMotion application. I also made 
the syntax nicer and wrote it more idiomatic Ruby because, otherwise, what's the point
of using Ruby?

If you're really super interested in running this app (or its specs), for some reason, you
can do it like this:

1. [Buy a RubyMotion License.](http://www.rubymotion.com/)
2. Make sure you have RubyMotion setup properly (including iOS simulator and Command Line
Tools)
3. Clone this repository.
4. Run the specs: `rake spec`
5. Build the application and run in the iOS Simulator: `rake`
6. Plug in your iOS device via USB, build the application and run it on your iphone: `rake device`

... but why would anybody in the world want to do that?

Well, that's it.

![Nice job, bro](http://i.imgur.com/gfepl.gif)
