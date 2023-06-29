import 'dart:async';
import 'package:coochie_clicker/pages/navpages/shop_page.dart' show ShopPage;

double counter = 700;
double fingerPower = 1;
double timPunten = 0;
double multiplier = 1;

void autoIncrement() {
  Timer.periodic(const Duration(seconds: 1), (_) {
    counter += timPunten; // Add timPunten to counter every second
    print(counter);
  });
}

void buyFinger() {
  counter -= ShopPage.shopItems[0].price;
  ShopPage.shopItems[0].price = ShopPage.shopItems[0].price * 1.05;
  fingerPower++;

  print(fingerPower);
  print(ShopPage.shopItems[0].price);
}

void buyTim() {
  counter -= ShopPage.shopItems[1].price;
  ShopPage.shopItems[1].price = ShopPage.shopItems[1].price * 1.05;
  timPunten++;

  autoIncrement();
  print("Auto increment started");
  print(timPunten);
  print(ShopPage.shopItems[1].price);
}

void buyAlcohol() {
  counter -= ShopPage.shopItems[2].price;
  ShopPage.shopItems[2].price = ShopPage.shopItems[2].price * 1.05;
  multiplier ++;

  print(multiplier);
  print(ShopPage.shopItems[2].price);
}