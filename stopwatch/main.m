//
//  main.m
//  stopwatch
//
//  Created by Zak on 24/10/2012.
//  Copyright (c) 2012 ZakGrant. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import <MacRuby/MacRuby.h>

int main(int argc, char *argv[])
{
    return macruby_main("rb_main.rb", argc, argv);
}
