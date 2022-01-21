import 'package:deira/common/constants/constants.dart';
import 'package:deira/models/prices_model.dart';
import 'package:deira/networking/prices_networking.dart';
import 'package:get/get.dart';

class PriceController extends GetxController {
  @override
  void onInit() {
    fetchGoldPriceUsd(currency: Helper.usdKey);
    fetchSilverPriceUsd(currency: Helper.usdKey);
    fetchGoldPriceAed(currency: Helper.aedKey);
    fetchSilverPriceAed(currency: Helper.aedKey);
    super.onInit();
  }

  //varibles
  var goldPricesUsd = List<PriceModel>.empty(growable: true).obs;
  var silverPricesUsd = List<PriceModel>.empty(growable: true).obs;
  var goldPricesAed = List<PriceModel>.empty(growable: true).obs;
  var silverPricesAed = List<PriceModel>.empty(growable: true).obs;

//method to fetch price of GOLD
  fetchGoldPriceUsd({required String currency}) async {
    var response = await PricesNetworking().fetchPrice(
      metal: Helper.goldKey,
      currency: currency,
    );
    if (response != null) {
      goldPricesUsd.value = [response];
    } else {}
  }

  //method to fetch price of GOLD
  fetchGoldPriceAed({required String currency}) async {
    var response = await PricesNetworking().fetchPrice(
      metal: Helper.goldKey,
      currency: currency,
    );
    if (response != null) {
      goldPricesAed.value = [response];
    } else {}
  }

  //method to fetch price of SILVER
  fetchSilverPriceUsd({required String currency}) async {
    var response = await PricesNetworking().fetchPrice(
      metal: Helper.silverKey,
      currency: currency,
    );
    if (response != null) {
      silverPricesUsd.value = [response];
    } else {}
  }

  //method to fetch price of SILVER
  fetchSilverPriceAed({required String currency}) async {
    var response = await PricesNetworking().fetchPrice(
      metal: Helper.silverKey,
      currency: currency,
    );
    if (response != null) {
      silverPricesAed.value = [response];
    } else {}
  }
}
