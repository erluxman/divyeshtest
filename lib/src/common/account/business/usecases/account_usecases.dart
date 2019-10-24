
import 'package:telehealth/src/common/account/data/model/user_model.dart';

abstract class AccountUseCase{

}

class SignIn extends AccountUseCase{

}

class UpdateAccount extends AccountUseCase{
  updateFullName(String fullName){

  }

  updateUserName(String userName){

  }
}

class ResetPassword extends AccountUseCase{

}

class FetchAccountInfo extends AccountUseCase{
  Stream<Account> getAccount() async *{

  }
}

class AccountUseCases{
  SignIn signIn;
  ResetPassword resetPassword;
  FetchAccountInfo fetchAccountInfo;
  UpdateAccount updateAccount;

  updateFullName(String fullName){
    updateAccount.updateFullName(fullName);
  }
}