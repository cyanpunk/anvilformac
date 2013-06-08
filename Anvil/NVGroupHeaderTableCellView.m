//
//  NVGroupHeaderTableCellView.m
//  Anvil
//
//  Created by Elliott Kember on 08/06/2013.
//  Copyright (c) 2013 Riot. All rights reserved.
//

#import "NVGroupHeaderTableCellView.h"
#import "NVLabel.h"
#import "NSImage+Additions.h"
#import "BFImage.h"

@implementation NVGroupHeaderTableCellView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
        // Initialization code here.
        NVLabel *label = [[NVLabel alloc] initWithFrame:NSMakeRect(3, 5, 120, 16)];
        [label setText:@"HAMMER SITES"];
        label.font = [NSFont fontWithName:@"Helvetica Neue" size:10];
        [label setTextColor:[NSColor colorWithDeviceRed:129.0/255.0 green:129.0/255.0 blue:129.0/255.0 alpha:1.0]];
        [label setBold:YES];
        [self addSubview:label];
    }
    
    return self;
}

- (void)showControls {}
- (void)hideControls {}

- (void)drawRect:(NSRect)dirtyRect {
    
    NSImage *titleBarImage = [NSImage imageNamed:@"HammerHeader.png"];
    [titleBarImage drawInRect:dirtyRect withLeftCapWidth:1.0 topCapHeight:1.0];
}

@end