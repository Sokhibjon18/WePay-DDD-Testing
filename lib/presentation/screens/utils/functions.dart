String priceFixer(String price) {
  String newPrice = '';
  if (price.length > 3) {
    newPrice =
        '${priceFixer(price.substring(0, price.length - 3))} ${price.substring(price.length - 3)}';
    return newPrice;
  } else {
    return price;
  }
}

String getMonthAndYear(DateTime? date) {
  date = date ?? DateTime.now();
  String month;
  switch (date.month) {
    case 1:
      month = 'January';
      break;
    case 2:
      month = 'February';
      break;
    case 3:
      month = 'March';
      break;
    case 4:
      month = 'April';
      break;
    case 5:
      month = 'May';
      break;
    case 6:
      month = 'June';
      break;
    case 7:
      month = 'July';
      break;
    case 8:
      month = 'August';
      break;
    case 9:
      month = 'September';
      break;
    case 10:
      month = 'October';
      break;
    case 11:
      month = 'November';
      break;
    case 12:
      month = 'December';
      break;
    default:
      month = 'Error';
  }
  return '$month, ${date.year}';
}

String getDayMonthYear(DateTime? time) {
  time = time ?? DateTime.now();
  String day = time.day < 10 ? '0${time.day}' : time.day.toString();
  String month = time.month < 10 ? '0${time.month}' : time.month.toString();
  return '$day.$month.${time.year}';
}
