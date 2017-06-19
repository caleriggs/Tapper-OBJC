//
//  ViewController.m
//  Tapper-OBJc
//
//  Created by Cale Riggs on 5/22/17.
//  Copyright © 2017 Cale Riggs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *tapperLogo;
@property (weak, nonatomic) IBOutlet UIButton *playBtn;
@property (weak, nonatomic) IBOutlet UIButton *tapperBtn;
@property (weak, nonatomic) IBOutlet UITextField *numberTapsTextField;

@property (nonatomic) NSInteger maxTaps;
@property (nonatomic) NSInteger currentTaps;
@property (nonatomic,strong) NSString *textFieldText;


@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playButtonPressed:(id)sender {
    
    _tapperBtn.hidden = NO;
    _playBtn.hidden = YES;
    _numberTapsTextField.hidden = !_numberTapsTextField.hidden;
    _tapperLogo.hidden = !_tapperLogo.hidden;
    _textFieldText = _numberTapsTextField.text;
    _maxTaps = [_textFieldText integerValue];
    _currentTaps = 0;
    
}

- (IBAction)tapperBtnPressed:(id)sender {
    
    if (_currentTaps == _maxTaps-1) {
        [self resetGame];
    } else {
        _currentTaps++;
    }
    
}

-(void)resetGame {
    _tapperBtn.hidden = !_tapperBtn.hidden;
    _playBtn.hidden = !_playBtn.hidden;
    _numberTapsTextField.hidden = !_numberTapsTextField.hidden;
    _tapperLogo.hidden = !_tapperLogo.hidden;
    _maxTaps = 0;
    _currentTaps = 0;
}






@end
