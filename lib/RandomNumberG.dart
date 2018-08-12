import 'dart:math';

int generateRandomNo({int min,int max}){
  return min + Random().nextInt(max-min);
}