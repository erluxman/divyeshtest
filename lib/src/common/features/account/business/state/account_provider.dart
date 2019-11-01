import 'package:flutter/material.dart';
import 'package:telehealth/src/common/data/model/user_model.dart';
import 'package:telehealth/src/common/features/account/business/usecases/account_usecases.dart';

class AccountProvider with ChangeNotifier {
  AccountUseCases _accountUseCases;

  Stream<Account> get user => _accountUseCases.fetchAccountInfo.getAccount();

  AccountProvider(this._accountUseCases);

  updateFullName(String fullName) {
    _accountUseCases.updateFullName(fullName);
  }
}
