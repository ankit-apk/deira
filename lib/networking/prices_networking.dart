import 'package:deira/common/constants/constants.dart';
import 'package:deira/models/prices_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class PricesNetworking {
  var client = http.Client();

  fetchPrice({required String metal, required String currency}) async {
    var response = await client.get(
      Uri.parse(
        Helper.apiBaseUrl + metal + currency,
      ),
      headers: {
        "x-access-token": Helper.apiKey,
        "Content-Type": "application/json",
      },
    );
    if (response.statusCode == 200) {
      return priceModelFromJson(response.body);
    } else {
      Get.snackbar("Oops", "Something went wrong");
    }
  }
}
