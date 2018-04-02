//
//  UDOfflineForm.m
//  Use_Desk_iOS_SDK_Example
//
//  Created by Maxim Melikhov on 13.02.2018.
//  Copyright © 2018 Maxim. All rights reserved.
//

#import "UDOfflineForm.h"
#import "MBProgressHUD.h"
#import "UseDeskSDK.h"
#import "AFHTTPSessionManager.h"


@interface UDOfflineForm ()

@end

@implementation UDOfflineForm

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Offline form";
    UITapGestureRecognizer *singleTapGestureRecognizer = [[UITapGestureRecognizer alloc]
                                                          initWithTarget:self action:@selector(handleSingleTap:)];
    
    singleTapGestureRecognizer.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:singleTapGestureRecognizer];
    
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
//********** VIEW TAPPED **********
-(void) handleSingleTap:(UITapGestureRecognizer *)sender
{
    NSLog(@"Touched and hide keyboard");
    [self.view endEditing:YES];
}


-(IBAction)sendMessage:(id)sender{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.mode = MBProgressHUDModeIndeterminate;
    hud.label.text = @"Sending Message...";
    NSDictionary *body = [self getPostData];
    dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
        [manager.requestSerializer setTimeoutInterval:15.0];
        
        //manager.securityPolicy.allowInvalidCertificates = YES;
        
        [manager.responseSerializer setAcceptableContentTypes:[NSSet setWithArray:@[@"application/json"]]];
        manager.responseSerializer = [AFJSONResponseSerializer serializerWithReadingOptions:NSJSONReadingAllowFragments];
        NSString *urlStr = [NSString stringWithFormat:@"%@/widget.js/post",self.url];
        [manager POST:urlStr parameters:body progress:^(NSProgress * _Nonnull uploadProgress) {
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSLog(@"autorization JSON: %@", responseObject);
            dispatch_async(dispatch_get_main_queue(), ^{
                [hud hideAnimated:YES];
                [self dismissViewControllerAnimated:YES completion:nil];
                // }];
            });
           
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            [self showAlert:@"Error" text:error.description];
            [hud hideAnimated:YES];
           
        }];
        
                           
    });
}

-(NSDictionary*)getPostData{
    NSDictionary *dic = [[NSDictionary alloc] initWithObjectsAndKeys: companyIdTextField.text,@"company_id",
                                                                      nameTextField.text,@"name",
                                                                      emailTextField.text,@"email",
                                                                      messageTextField.text,@"message",
                                                                         nil];
    return dic;
    
}

-(IBAction)cancelMessage:(id)sender{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)showAlert:(NSString*)title text:(NSString*)text{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:text preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action)
                         {
                             //BUTTON OK CLICK EVENT
                         }];
   // UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
   // [alert addAction:cancel];
    [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
