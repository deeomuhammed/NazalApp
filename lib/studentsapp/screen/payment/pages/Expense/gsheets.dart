import 'package:gsheets/gsheets.dart';

class Gsheet {
  static const credentials = r'''
{
  "type": "service_account",
  "project_id": "expensetracker-343817",
  "private_key_id": "adb5119ae6379b97512b2cabc4b62f2ea43f8c8f",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCzYJM5sXD2OmvU\niGRLNtENqNc23XGv9vAqdDlCfnFErgfLqG0AbHRfbk0/aB+/WxVi75pi08Cj9T/5\nGQopNw8QZQh+8GJ52Q6OPRYTn2GUeg+TWJL8pb4G5dScAdfXQBxvvdki81I2QYHg\nEAiyvTkLJJ4irBYlglYcFhnxYUrSJQ9D+wAKzhi1WedBNEFErXrTN2uR4vApbOmy\nUGfbX0R+4RiTCvwIFGVQHvaVRfZsJx/3j07XI/x40KeBYM/vvXwAleRakmqkhgeh\nMaz7zr2XyDyHLiOatX0UrfHjo0vPKPk3oyPqfLo6eFvGluhVwYKfNw2WUFEQURD1\nzqs71Is1AgMBAAECggEADPStPY4E4CvxDN07DTms2MU4oiRVaUW3LAHP/u7+BF1j\nf8Cu+shakWf4mVtOa7ZK8aXnqzqrH8x/beDynG53HpKFjhGTs0RLqldcKFerJxu3\n00ci+q+H7ZydAhWZ/tiJFUMLk1wqtHN/y2ytDCfhnl3rNArk4Jms2YN5JTeHPW1D\n20Ef4Ej9x/EqL5PYtfTu4o691ICFE/Ua3IZypAYXWCaZ0MFzGZObOoQ79xYdPkfX\nR0Eb6aBVPVHIJ6MY+PjrTIUTtTG01E50+hTFl6UU6N8BYEiGv06s6gSuk44+8V61\nbmaB54WIMUrLXDmAqHojU3HESv4AqbggNdPkzA66UwKBgQDZFxmuSWnuglM5kCd0\nUavL/p+GDQlaKPoxp/zW/4RS33isCHeGuNGXzXsUZoL7dula7IOLNYy3XO8xQ4Vl\nzwlljdhAEe22nAmneKikxOh0nWDaMo5o9Yknx60QotLS9j/pm4XY+61hdWImI+qw\nW/qy46MYyij6UG1rp4AWGjQq+wKBgQDThxBdOdA34sU7SzXxHTXTvgi4DKHnUPCv\n5NSZFLXnhfAeexgTm6Q3UPehpRAjat3MA8A6krtgmgb4NN2gQrovMb1+hPonCgL/\nuhy46CVXqgPAJfS33nNprfD5eCaEfu+Px5mjoHKcTS+zgvzctl+o18bqj9Xou8pW\nwOAVxPtLjwKBgHKNY/m5t3Ipxuy7Cnawmey84USFIIg40zzcneh9UD/CuBRfK2Ml\np0NpJCcxqLA0oRJfd1I/4Y7oNTdTn9KHGzhBTvkP/NW9JMMAQk0fsmHGodLBlq//\n0G3zSXlb0c+MLVGBxXEn7OdeX3osvaxt/K3kvK1aD6F2Sybhbg87qId9AoGBAI0+\nRcYKYae/i7WBDh7XQ2cFIKtM/BsKZ/z7jp49Pw2+2Mxxo20MY4XwUbolDvanWDzv\nUD+MVQQ3NWotWsO1ar8ytnax8pt4yvHZY25wzOaRhvmaHqNcLbKmTB84hHe6jtpy\nDHw/GeiWfcCfOZtjR9LlalScANjr9DsjhT3kD2yvAoGAL7/j3+6YFJt431fUaPBB\nDqzfapuh6/TADDp4tE900r96LY/f5HW2yelXnJpHtkBwoZ3rG+WRjeaoQ0crI+71\nRwpyTRjZKoFIkMMSbJzdSKBcjn8rYuzqMOxFyLgCL6iCnqji0MRRgB1EZscGZF3U\n40WLUa+EIWqTiZ8SaSRZ0Pg=\n-----END PRIVATE KEY-----\n",
  "client_email": "expensetracker@expensetracker-343817.iam.gserviceaccount.com",
  "client_id": "116939992333870994378",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/expensetracker%40expensetracker-343817.iam.gserviceaccount.com"
}

''';

  static const spreadsheetid = '1PXCkxd1Hg0i-k6Dufjdem1HOkk8P1vWTrIXnClSzonY';
  static final gsheets = GSheets(credentials);
  static Worksheet? usersheet;

  // some variables to keep track of..
  static int numberOfTransactions = 0;
  static List<List<dynamic>> currentTransactions = [];
  static bool loading = true;

  // initialise the spreadsheet!
  static Future init() async {
    final _spreadsheet = await gsheets.spreadsheet(spreadsheetid);
    usersheet = _spreadsheet.worksheetByTitle('expensetracker');
    loadTransactions();
  }

  // load existing notes from the spreadsheet
  static Future loadTransactions() async {
    if (usersheet == null) return;

    for (int i = 1; i < numberOfTransactions; i++) {
      final String transactionName =
          await usersheet!.values.value(column: 1, row: i + 1);
      final String transactionAmount =
          await usersheet!.values.value(column: 2, row: i + 1);
      final String transactionType =
          await usersheet!.values.value(column: 3, row: i + 1);

      if (currentTransactions.length < numberOfTransactions) {
        currentTransactions.add([
          transactionName,
          transactionAmount,
          transactionType,
        ]);
      }
    }
    print(currentTransactions);
    // this will stop the circular loading indicator
    loading = false;
  }
}
