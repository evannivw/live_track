class Paths {
  // URL uri
  static Uri checkUserPhone = Uri.parse(
      "https://us-central1-retirame-wallet.cloudfunctions.net/authentication-getUserByPhoneNumber");

  // Primary collections
  static const String usersCollection = "users";
  static const String transactionsCollection = "transactions";
  static const String bankCollections = "bank_accounts";
  static const String balanceCollection = "user_balance";
  static const String ticTacToeRoomCollection = "tic_tac_toe_room";
  static const String ticTacToeReadingCollection = "tic_tac_toe_reading";
  static const String reservedTransCollection = "reserved_trans_collection";
  static const String retiroStatisticsCollection = "retiro_statistics";
  static const String boletasCollection = "boletas";
  static const String sessionCollection = "session";
  static const String paypalAccountCollection = "paypal_account";

  // Field values
  static const String uid = "uid";
  static const String created = "created";
  static const String paymentId = "paymentId";
  static const String paypal = "paypal";
  static const String balance = "balance";
  static const String pushToken = "pushToken";
  static const String transactionsLimits = "transactions_limits";
  static const String comissionValue = 'comission_value';
  static const String banksAvailable = 'banks_available';
  static const String minUsd = "min_usd";
  static const String maxUsd = "max_usd";
  static const String usdComission = 'usd_comission';
  static const String percentageComission = 'percentage_comission';
  static const String dayRetiroLimits = 'day_retiro_limits';
  static const String adsConfig = 'ads_config';
  static const String minDay = 'min_day';
  static const String maxDay = 'max_day';
  static const String google = 'google';
  static const String credentialAlreadyInUse = 'credential-already-in-use';
  static const String usd = "usd";
  static const String gtq = "gtq";
  static const String tickets = "tickets";
  static const String ticketBalance = "ticketBalance";
  static const String usdBalance = "usdBalance";
  static const String retiroTypeList = "retiro_type_list";
  static const String gameDataList = "games_data_list";
  static const String gamesConfig = "games_config";
  static const String amount = "amount";
  static const String notificationTickets = "notificationTickets";
  static const String currentRemoteMessage = "currentRemoteMessage";

  // Cloud functions
  static const searchUserFunction = 'authentication-searchUserByPhone';
}
