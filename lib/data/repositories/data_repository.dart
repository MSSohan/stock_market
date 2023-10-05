import 'dart:async';
import 'dart:convert';

import 'package:stock_market/blocs/load/load_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

getData(BuildContext context) async {
  var jsonString = await rootBundle.loadString("json/stock_market_data.json");
  List<dynamic> jsonResponse = json.decode(jsonString);
  /*List<dynamic> tradeCode = await generateTradeCodes(jsonResponse);
  List<String> tradeCodes = tradeCode.cast<String>();*/
  BlocProvider.of<LoadBloc>(context).add(LoadSuccessEvent(jsonResponse, tradeCodes: []));
}

/*Future generateTradeCodes(var jsonResponse) async =>
    await jsonResponse.map((item) => item['trade_code'] as String).toList();*/
