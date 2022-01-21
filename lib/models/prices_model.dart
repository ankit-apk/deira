// To parse this JSON data, do
//
//     final priceModel = priceModelFromJson(jsonString);

import 'dart:convert';

PriceModel priceModelFromJson(String str) =>
    PriceModel.fromJson(json.decode(str));

String priceModelToJson(PriceModel data) => json.encode(data.toJson());

class PriceModel {
  PriceModel({
    required this.timestamp,
    required this.metal,
    required this.currency,
    required this.exchange,
    required this.symbol,
    required this.prevClosePrice,
    required this.openPrice,
    required this.lowPrice,
    required this.highPrice,
    required this.openTime,
    required this.price,
    required this.ch,
    required this.chp,
    required this.ask,
    required this.bid,
  });

  int timestamp;
  String metal;
  String currency;
  String exchange;
  String symbol;
  double prevClosePrice;
  double openPrice;
  double lowPrice;
  double highPrice;
  int openTime;
  double price;
  double ch;
  double chp;
  double ask;
  double bid;

  factory PriceModel.fromJson(Map<String, dynamic> json) => PriceModel(
        timestamp: json["timestamp"],
        metal: json["metal"],
        currency: json["currency"],
        exchange: json["exchange"],
        symbol: json["symbol"],
        prevClosePrice: json["prev_close_price"].toDouble(),
        openPrice: json["open_price"].toDouble(),
        lowPrice: json["low_price"].toDouble(),
        highPrice: json["high_price"].toDouble(),
        openTime: json["open_time"],
        price: json["price"].toDouble(),
        ch: json["ch"].toDouble(),
        chp: json["chp"].toDouble(),
        ask: json["ask"].toDouble(),
        bid: json["bid"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "timestamp": timestamp,
        "metal": metal,
        "currency": currency,
        "exchange": exchange,
        "symbol": symbol,
        "prev_close_price": prevClosePrice,
        "open_price": openPrice,
        "low_price": lowPrice,
        "high_price": highPrice,
        "open_time": openTime,
        "price": price,
        "ch": ch,
        "chp": chp,
        "ask": ask,
        "bid": bid,
      };
}
