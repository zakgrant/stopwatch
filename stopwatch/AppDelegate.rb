#
#  AppDelegate.rb
#  stopwatch
#
#  Created by Zak on 24/10/2012.
#  Copyright 2012 ZakGrant. All rights reserved.
#

class AppDelegate
    attr_accessor :window
    attr_accessor :textField # This creates an outlet named textField

    def applicationDidFinishLaunching(a_notification)
        # Insert code here to initialize your application
    end
    
    def startTimer(sender)
        if @timer.nil?
            @time = 0.0
            @timer = NSTimer
            .scheduledTimerWithTimeInterval(0.1,
                                            target: self,
                                            selector: "timerHandler:",
                                            userInfo: nil,
                                            repeats: true)
        end
    end
    
    def stopTimer(sender)
        if @timer
            @timer.invalidate
            @timer = nil
        end
    end
    
    def timerHandler(userInfo)
        @time += 0.1
        string = sprintf("%.1f", @time)
        textField.setStringValue(string)
    end
end

