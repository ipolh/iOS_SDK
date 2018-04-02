//
//  UDOfflineForm.h
//  Use_Desk_iOS_SDK_Example
//
//  Created by Maxim Melikhov on 13.02.2018.
//  Copyright © 2018 Maxim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UDOfflineForm : UIViewController <UITextFieldDelegate>{
    IBOutlet UITextField *companyIdTextField;
    IBOutlet UITextField *emailTextField;
    IBOutlet UITextField *nameTextField;
    IBOutlet UITextField *messageTextField;
}

@property (nonatomic,strong) NSString *url;

@end
