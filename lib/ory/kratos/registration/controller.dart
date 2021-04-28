import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'service.dart';
import 'model.dart';

class RegistrationController extends GetxController {
  RxBool isLoading = true.obs;
  Rx<InitRegistration> initRegistration = InitRegistration(
          '',
          '',
          DateTime.now(),
          DateTime.now(),
          '',
          null,
          Methods(Password('', Config('', '', null))))
      .obs;
  Rx<InitRegistration> registrationFlow = InitRegistration(
          '',
          '',
          DateTime.now(),
          DateTime.now(),
          '',
          null,
          Methods(Password('', Config('', '', null))))
      .obs;
  Rx<Registration> registration = Registration('', null, null).obs;

  @override
  void onInit() {
    isLoading(true);
    if (kIsWeb) {
      fetchInitRegistrationBrowser();
    } else {
      fetchInitRegistrationApi();
    }
    // fetchRegistrationFlow(initRegistration.value.id);
    isLoading(false);
    super.onInit();
  }

  Future<InitRegistration?> fetchRegistrationFlow(String id) async {
    try {
      InitRegistration? result =
          await RegistrationService.getRegistrationFlow(id);
      if (result != null) {
        registrationFlow = result.obs;
      }
    } catch (e) {
      throw Exception(e);
    } finally {}
  }

  Future<InitRegistration?> fetchInitRegistrationApi() async {
    try {
      InitRegistration? result =
          await RegistrationService.getInitRegistrationApi();
      if (result != null) {
        initRegistration = result.obs;
      }
    } catch (e) {
      throw Exception(e);
    } finally {}
  }

  Future<void> fetchInitRegistrationBrowser() async {
    try {
      await RegistrationService.getInitRegitrationBrowser();
    } catch (e) {
      throw Exception(e);
    } finally {}
  }
}
