//
//  suMegaSenaViewController.m
//  Surpresinha
//
//  Created by Henri Michel on 17/10/12.
//  Copyright (c) 2012 Henri Michel. All rights reserved.
//

#import "suMegaSenaViewController.h"


@implementation suMegaSenaViewController
@synthesize lblNumerosMegaSena, btnSurpresaMegaSena, lblNumerosQuina, btnSurpresaQuina;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    
        
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)btnSurpresaMegaSenaClick:(id)sender
{
    
    NSMutableArray * arr = [[NSMutableArray alloc] init];
    
    while ([arr count] < 6) {
        
        NSString * randomNumber = [NSString stringWithFormat:@"%d", arc4random()%60];
        
        if (![arr containsObject:randomNumber])
        {
            [arr addObject:randomNumber];
            
        }
        
    }
    
    NSString * num = @"";
    
    NSString * traco = @"";
    
    for (int i = 0; i < [arr count]; i++) {
        
        num = [NSString stringWithFormat:@"%@%@%@",num,traco, [arr objectAtIndex:i] ];
        
        traco = @" - ";
    }
    
    [lblNumerosMegaSena setText:num];
    
    
}

-(IBAction)btnSurpresaQuinaClick:(id)sender
{
    
    NSMutableArray * arr = [[NSMutableArray alloc] init];
    
    while ([arr count] < 5) {
        
        NSString * randomNumber = [NSString stringWithFormat:@"%d", arc4random()%60];
        
        if (![arr containsObject:randomNumber])
        {
            [arr addObject:randomNumber];
            
        }
        
    }
    
    NSString * num = @"";
    
    NSString * traco = @"";
    
    for (int i = 0; i < [arr count]; i++) {
        
        num = [NSString stringWithFormat:@"%@%@%@",num,traco, [arr objectAtIndex:i] ];
        
        traco = @" - ";
    }
    
    [lblNumerosQuina setText:num];
    
    
}

@end
