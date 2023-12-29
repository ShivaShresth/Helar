
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';



void showMessage(String message){  
  Fluttertoast.showToast(  
    msg:message,
    backgroundColor:Colors.red,
    textColor:Colors.white,
    fontSize:16.0
  );
}


showLoaderDialog(BuildContext context){  
  AlertDialog alert=AlertDialog(  
    content: Builder (builder: (context){  
      return SizedBox(  
        width: 100,
        child: Column (  
          mainAxisSize: MainAxisSize.min,
          children: [  
            CircularProgressIndicator(  
              color: Color(0xffe16555),


            ),
            const SizedBox(  
              height: 18,
            ),
            Container(  
              margin: EdgeInsets.only(left: 7),
              child: Text("Loading..."),
            )
          ],
        ),
      );
    }),
  );
  showDialog(   
  barrierDismissible:false,
  context: context,
  builder:(BuildContext context){  
    return alert;
  }
);
}


String getMessageFromErrorCode(String errorCode){  
  switch(errorCode){  
    case "ERROR_EMAIL_ALREADY_IN_USE":
    return "Email already used. Go to login page.";
    case "account-exists-with-different-credential":
    return "Email already used. Go to login page.";
    case "email-alreaddy-in-use":
    return "Email already used. Go to login page.";
    case "ERROR_WRONG_PASSWORD":
    case "wrong-password":
    return "Wrong Password";
    case "ERROR_USER_NOT_FOUND":  
    return "No user found with this email.";
    case "user-not-found":
    return "No user found with this email.";
    case "ERROR_USER_DISABLED": 
    return "User disabled.";
    case "user-disabled.":  
    return "User disabled.";
    case "ERROR_TOO_MANY_REQUESTS": 
    return "Too many requests to log into this account.";
    default:  
    return "Login failed. Please try agina.";

  }
}



bool loginVaildation(String email,String password){  
  if(email.isEmpty){  
    showMessage("Both Fields are empty");
    return false;
  }
  else if(email.isEmpty){  
    showMessage("Email is Empty");
    return false;

  }
  else if(password.isEmpty){  
    showMessage("Password is Empty");
    return false;
  }else{  
    return true;
  }
}

bool signUpVaildation(String email,String password){  
  if(email.isEmpty&& password.isEmpty ){  
    showMessage("All Fields are empty");
    return false;
  }
 
  else if(email.isEmpty){  
    showMessage("Email is Empty");
    return false;
  } else if(password.isEmpty){  
    showMessage("Password is Empty");
    return false;

  } 
  else{  
    return true;
  }
}