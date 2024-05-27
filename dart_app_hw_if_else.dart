import 'dart:io';
import 'dart:math';

void main() {
  //firstTask();
  //secondTask();
  thirdTask();
  fourthTask();
  fifthTask();
  sixthTask();
  seventhTask();
  eigthTask();
  ninthTask();
  tenthTask();
}
void firstTask() {
  List<String> fingers = ["Большой палец", "Указательный палец", "Средний палец", "Безымянный палец", "Мизинец"];
  print("Введите номер пальца руки (1-5): ");
  int? fingerNum = int.tryParse(stdin.readLineSync()!);
  if (fingerNum != null && fingerNum >= 1 && fingerNum <= 5) {
    print('Палец = $fingerNum -> ${fingers[fingerNum - 1]}');
  }else {
    print("Неверный номер. Введите число от 1 до 5.");
  }
}
void secondTask() {
  print('Введите число от 0 до 59: ');
  int? min = int.tryParse(stdin.readLineSync()!);

  if(min != null && min >=0 && min <=59){
    if(min >= 0 && min <= 15){
      print('Число $min попадает в 1/4 часа');
    } else if(min >= 16 && min <= 30){
      print('Число $min попадает в 2/4 часа');
    } else if(min >= 31 && min <=45){
      print('Число $min попадает в 3/4 часа');
    } else if(min >= 46 && min <=60){
      print('Число $min попадает в 4/4 часа');
    }
  }else{
    print('Некорректный ввод. Введите число от 0 до 59.');
  }
}
void thirdTask() {
  String lang = 'ru';
  List<String> arr;
  if(lang == 'ru'){
    arr = ['Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб', 'Вс']; 
  }else if(lang == 'en'){
    arr = ['Mon', 'Tue', 'Wen', 'Thu', 'Fri', 'Sat', 'Sun']; 
  }else{
    arr = [];
    print('Некорректное значение');
  }
  print(arr);
}
void fourthTask() {
  String string = 'abcde';
  bool check = string.startsWith('a');
  if(check == true){
    print('да');
  }else{
    print('нет');
  }
}
void fifthTask() {
  int num = 1; // 1-4
  String result;
  if(num == 1){
    result = 'зима';
  }else if(num == 2){
    result = 'весна';
  }else if(num == 3){
    result = 'лето';
  }else if(num == 4){
    result = 'осень';
  }else{
    result = [] as String;
    print('Некорректный ввод. Введиет число от 1 до 4.');
  }
  print(result);
}
void sixthTask() {
  int a = 1;
  if(a <= 0){
    print('Верно');
  }else{
    print('неверно');
  }
}
void seventhTask() {
  String seventhString = '123456';
  if(seventhString.length == 6 && int.tryParse(seventhString) !=null){
    List<int> digits = seventhString.split('').map(int.parse).toList();
    int sum1 = digits[0] + digits[1] + digits[2];
    int sum2 = digits[3] + digits[4] + digits[5];
    if(sum1 == sum2){
      print("да");
    } else {
      print("нет");
    }
  } else {
    print("Некорректный ввод. Введите строку из 6 цифр.");
  }
}
void eigthTask() {
  String trafficLight = 'Красный';
  if(trafficLight == 'Красный'){
    print('Стоять');
  } else if(trafficLight == 'Желтый'){
    print('Надо пригтовиться');
  } else if(trafficLight == 'Желтый'){
    print('Можно идти');
  } else {
    print('Некорректный цвет.');
  }
}
void ninthTask() {
  Random random = Random();
  int randomZP = random.nextInt(500000) + 10000;
  double nalog5 = (5/100);
  double nalog7 = (7/100);
  double nalog10 = (10/100);
  if(randomZP >= 10000 && randomZP <= 100000 ){ 
    print('Заработная плата: $randomZP. Процент налога: ${(nalog5*100).toInt()}%. Сумма налога равна: ${nalog5*randomZP}');
  } else if(randomZP >= 100000 && randomZP <= 200000) {
    print('Заработная плата: $randomZP. Процент налога: ${(nalog7*100).toInt()}%. Сумма налога равна: ${nalog7*randomZP}');
  } else if(randomZP >= 200000){
    print('Заработная плата: $randomZP. Процент налога: ${(nalog10*100).toInt()}%. Сумма налога равна: ${nalog10*randomZP}');
  } else{
    print('Некорректное значение');
  }
}
void tenthTask() {
  Random random = Random();
  int monthNum = random.nextInt(12) +1;
  String month = '';
  String season = '';
  if(monthNum == 1){
    month = 'Январь';
  }else if(monthNum == 2){
    month = 'Февраль';
  }else if(monthNum == 3){
    month = 'Март';
  }else if(monthNum == 4){
    month = 'Апрель';
  }else if(monthNum == 5){
    month = 'Май';
  }else if(monthNum == 6){
    month = 'Июнь';
  }else if(monthNum == 7){
    month = 'Июль';
  }else if(monthNum == 8){
    month = 'Август';
  }else if(monthNum == 9){
    month = 'Сентябрь';
  }else if(monthNum == 10){
    month = 'Октябрь';
  }else if(monthNum == 11){
    month = 'Ноябрь';
  }else if(monthNum == 12){
    month = 'Декабрь';
  } else{
    print('Некорректное число');
  }

  if(monthNum == 1 || monthNum == 2 || monthNum == 12){
    season = 'зима';
  }else if(monthNum >= 3 && monthNum <= 5){
    season = 'весна';
  }else if(monthNum >= 6 && monthNum <= 8){
    season = 'лето';
  }else if(monthNum >= 9 && monthNum <= 11){
    season = 'осень';
  }else{
    print('Некорректное число');
  }
  print('Число: $monthNum - $month, $season');
}