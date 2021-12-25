// Sobirov Ibrohim
main(List<String> args) {
  print("2 - misol");
  print(getBiggestNumber([45,65,22,11,85]));
  
  
  print("3 - misol");
  print(getLongestWord(["olma", "ananas"]));
  print(getLongestWord(["koptok", "futbol"]));
  

  print("4 - misol");
  greet();
  

  print("5 - misol");
  var fruits = ["banan", "olcha", "nok"];
  print(fruits.reversed);


  print("6 - misol");
  hasSecretWord("Ichimlikni yoqtirasanmi?","true");
  
  
  print("8 - misol");
  print(getLetterCount("aloy", "a"));
  
}


//print("2 - misol");
int getBiggestNumber(List<int> son2) {
  int katta = 0;
  for (var i in son2) {
    if (i > katta) katta = i;

  }
  return katta;
}


//print("3 - misol");
getLongestWord(List<String> ishlar) {
  List<String> lst1 = [];
  String longest = ishlar[0];
  int uzunlik = longest.length;

  for(var ishlar in ishlar) {
    if (uzunlik < ishlar.length) {
      longest = ishlar;
    }
  }
  uzunlik = longest.length;
  ishlar.forEach((e) {
    if(e.length == uzunlik) {
      lst1.add(e);
    }
  });
  if (lst1.length > 1) {
    return lst1;
  }
  return longest;
}


//print("4 - misol");
var ism = "Ibrohim";
greet () {
  var ism = "Doston";
  print("Assalomu Alaykum, " + ism);
}


//print("6 - misol");
hasSecretWord(String matn, String kalit) {
  if(matn.indexOf(kalit) != -1) {
    print(true); 
  } else {
    print(false);
  }
}


//print("8 - misol");
int getLetterCount(String a, String b) {
  int j = 0;
  for (var i = 0; i < a.length; i++) {
    if (b.contains(a[i].toLowerCase()) || b.contains(a[i].toLowerCase())) {
      j += 1;
    }
  }
  return j;
}
