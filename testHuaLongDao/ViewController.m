//
//  ViewController.m
//  testHuaLongDao
//
//  Created by gwh on 2018/1/23.
//  Copyright © 2018年 gwh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSUInteger emptyTag;
    NSTimer *timer;
    NSDate *date;
    UILabel *timeL;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSMutableArray *nums=[[NSMutableArray alloc]initWithArray:@[@"1",@"2",@"3",@"4",
                              @"5",@"6",@"7",@"8",
                              @"9",@"10",@"11",@"12",
                              @"13",@"14",@"15"]];
    for (int i=0; i<nums.count; i++) {
        [nums exchangeObjectAtIndex:i withObjectAtIndex:arc4random()%nums.count];
    }
    float btw=70;
    for (int i=0; i<nums.count; i++) {
        UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
        button.frame=CGRectMake(i%4*btw, 100+btw*(i/4), btw, btw);
        [button setTitle:nums[i] forState:UIControlStateNormal];
        [button setBackgroundColor:[UIColor colorWithRed:111/255.f green:111/255.f blue:111/255.f alpha:1]];
        [self.view addSubview:button];
        [button setTag:i+11];
        [button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    }
    emptyTag=16;
    
    timeL=[[UILabel alloc]initWithFrame:CGRectMake(0, 400, 300, 60)];
    [self.view addSubview:timeL];
    timeL.textColor=[UIColor blackColor];
    
    {
        UILabel *timeL=[[UILabel alloc]initWithFrame:CGRectMake(0, 470, 300, 60)];
        [self.view addSubview:timeL];
        timeL.textColor=[UIColor blackColor];
        NSString *str=[[NSUserDefaults standardUserDefaults]objectForKey:@"time"];
        if (str) {
            timeL.text=[NSString stringWithFormat:@"最佳记录：%@",str];
        }else{
            timeL.text=[NSString stringWithFormat:@"最佳记录：0"];
        }
    }
    
    date=[NSDate date];
    [timer invalidate];
    timer=[NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(shengchengTimer) userInfo:nil repeats:YES];
    
}

- (void)shengchengTimer{
    NSTimeInterval time = [[NSDate date] timeIntervalSinceDate:date];
    NSLog(@"time:%f",time);
    
    timeL.text=[NSString stringWithFormat:@"%.3f",time];
}

- (void)buttonTapped:(UIButton *)button{
    NSUInteger c=button.tag-10;
    float btw=70;
    NSUInteger i=emptyTag-1;
    NSLog(@"i=%lu c=%lu",(unsigned long)i,(unsigned long)c);
    switch (c) {
        case 1:
            if (emptyTag==2||emptyTag==5) {
                button.frame=CGRectMake(i%4*btw, 100+btw*(i/4), btw, btw);
                button.tag=emptyTag+10;
                emptyTag=c;
            }
            break;
        case 2:
            if (emptyTag==1||emptyTag==3||emptyTag==6) {
                button.frame=CGRectMake(i%4*btw, 100+btw*(i/4), btw, btw);
                button.tag=emptyTag+10;
                emptyTag=c;
            }
            break;
        case 3:
            if (emptyTag==2||emptyTag==4||emptyTag==7) {
                button.frame=CGRectMake(i%4*btw, 100+btw*(i/4), btw, btw);
                button.tag=emptyTag+10;
                emptyTag=c;
            }
            break;
        case 4:
            if (emptyTag==3||emptyTag==8) {
                button.frame=CGRectMake(i%4*btw, 100+btw*(i/4), btw, btw);
                button.tag=emptyTag+10;
                emptyTag=c;
            }
            break;
        case 5:
            if (emptyTag==1||emptyTag==6||emptyTag==9) {
                button.frame=CGRectMake(i%4*btw, 100+btw*(i/4), btw, btw);
                button.tag=emptyTag+10;
                emptyTag=c;
            }
            break;
        case 6:
            if (emptyTag==2||emptyTag==5||emptyTag==7||emptyTag==10) {
                button.frame=CGRectMake(i%4*btw, 100+btw*(i/4), btw, btw);
                button.tag=emptyTag+10;
                emptyTag=c;
            }
            break;
        case 7:
            if (emptyTag==3||emptyTag==6||emptyTag==8||emptyTag==11) {
                button.frame=CGRectMake(i%4*btw, 100+btw*(i/4), btw, btw);
                button.tag=emptyTag+10;
                emptyTag=c;
            }
            break;
        case 8:
            if (emptyTag==4||emptyTag==7||emptyTag==12) {
                button.frame=CGRectMake(i%4*btw, 100+btw*(i/4), btw, btw);
                button.tag=emptyTag+10;
                emptyTag=c;
            }
            break;
        case 9:
            if (emptyTag==5||emptyTag==10||emptyTag==13) {
                button.frame=CGRectMake(i%4*btw, 100+btw*(i/4), btw, btw);
                button.tag=emptyTag+10;
                emptyTag=c;
            }
            break;
        case 10:
            if (emptyTag==6||emptyTag==9||emptyTag==11||emptyTag==14) {
                button.frame=CGRectMake(i%4*btw, 100+btw*(i/4), btw, btw);
                button.tag=emptyTag+10;
                emptyTag=c;
            }
            break;
        case 11:
            if (emptyTag==7||emptyTag==10||emptyTag==12||emptyTag==15) {
                button.frame=CGRectMake(i%4*btw, 100+btw*(i/4), btw, btw);
                button.tag=emptyTag+10;
                emptyTag=c;
            }
            break;
        case 12:
            if (emptyTag==8||emptyTag==11||emptyTag==16) {
                button.frame=CGRectMake(i%4*btw, 100+btw*(i/4), btw, btw);
                button.tag=emptyTag+10;
                emptyTag=c;
            }
            break;
        case 13:
            if (emptyTag==9||emptyTag==14) {
                button.frame=CGRectMake(i%4*btw, 100+btw*(i/4), btw, btw);
                button.tag=emptyTag+10;
                emptyTag=c;
            }
            break;
        case 14:
            if (emptyTag==10||emptyTag==13||emptyTag==15) {
                button.frame=CGRectMake(i%4*btw, 100+btw*(i/4), btw, btw);
                button.tag=emptyTag+10;
                emptyTag=c;
            }
            break;
        case 15:
            if (emptyTag==11||emptyTag==14||emptyTag==16) {
                button.frame=CGRectMake(i%4*btw, 100+btw*(i/4), btw, btw);
                button.tag=emptyTag+10;
                emptyTag=c;
            }
            break;
        case 16:
            if (emptyTag==12||emptyTag==15) {
                button.frame=CGRectMake(i%4*btw, 100+btw*(i/4), btw, btw);
                button.tag=emptyTag+10;
                emptyTag=c;
            }
            break;
            
        default:
            break;
    }
    [self checkSuccess];
}

- (void)checkSuccess{
    if (emptyTag==16) {
        int can=1;
        for (int i=11; i<11+15; i++) {
            UIButton *button=[self.view viewWithTag:i];
            if (button.titleLabel.text.intValue==i-10) {
                
            }else{
                can=0;
            }
        }
        
        if (can==1) {
            UIAlertView *alt=[[UIAlertView alloc]initWithTitle:@"" message:@"成功" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
            [alt show];
            [timer invalidate];
            timer=nil;
            
            float time=[timeL.text floatValue];
            if ([[NSUserDefaults standardUserDefaults]objectForKey:@"time"]) {
                float old=[[[NSUserDefaults standardUserDefaults]objectForKey:@"time"] floatValue];
                if (old>time) {
                    [[NSUserDefaults standardUserDefaults]setObject:@(time) forKey:@"time"];
                    timeL.text=[NSString stringWithFormat:@"破纪录！%@",timeL.text];
                }
            }else{
                [[NSUserDefaults standardUserDefaults]setObject:@(time) forKey:@"time"];
            }
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
