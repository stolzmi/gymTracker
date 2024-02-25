class Converter{
  static String convertDateTimeToString(DateTime dateTime){
    return '${dateTime.day}.${dateTime.month}.${dateTime.year} ${dateTime.hour}:${dateTime.minute}';
  }
}