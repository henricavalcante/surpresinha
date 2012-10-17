//
//  suMegaSenaViewController.h
//  Surpresinha
//
//  Created by Henri Michel on 17/10/12.
//  Copyright (c) 2012 Henri Michel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface suMegaSenaViewController : UIViewController
{
    IBOutlet UILabel * lblNumerosMegaSena;
    IBOutlet UIButton * btnSurpresaMegaSena;
    IBOutlet UILabel * lblNumerosQuina;
    IBOutlet UIButton * btnSurpresaQuina;
}

@property (nonatomic, retain) UILabel * lblNumerosMegaSena;
@property (nonatomic, retain) UIButton * btnSurpresaMegaSena;
@property (nonatomic, retain) UILabel * lblNumerosQuina;
@property (nonatomic, retain) UIButton * btnSurpresaQuina;


-(IBAction)btnSurpresaMegaSenaClick:(id)sender;
-(IBAction)btnSurpresaQuinaClick:(id)sender;

@end
