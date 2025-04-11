class PaymentActivityModel {
  String image;
  String ewallet, amount;
  String number, name;

  PaymentActivityModel(
    this.image,
    this.ewallet,
    this.name,
    this.number,
    this.amount,
  );

  static List<PaymentActivityModel> activityData() {
    List<Map<String, dynamic>> datas = [
      {
        "image": "assets/img/gopay.png",
        "ewallet": "Gopay",
        "number": "0971208x2xx4",
        "amount": "1.5\$",
        "name": "Clara Lauren",
      },
      {
        "image": "assets/img/paypal.png",
        "ewallet": "Paypal",
        "number": "@085049",
        "amount": "112.2\$",
        "name": "Kiara",
      },
      {
        "image": "assets/img/gopay.png",
        "ewallet": "Gopay",
        "number": "0923800xx23",
        "amount": "3.2\$",
        "name": "Clara Lauren",
      },
      {
        "image": "assets/img/shopeepay.png",
        "ewallet": "ShopeePay",
        "number": "02323678",
        "amount": "0.7\$",
        "name": "Yosephine",
      },
      {
        "image": "assets/img/paypal.png",
        "ewallet": "PayPal",
        "number": "@208124",
        "amount": "40.0\$",
        "name": "Felicia Rei",
      },
      {
        "image": "assets/img/shopeepay.png",
        "ewallet": "ShopeePay",
        "number": "082323xxx9",
        "amount": "2.4\$",
        "name": "Takashi",
      },
      {
        "image": "assets/img/shopeepay.png",
        "ewallet": "ShopeePay",
        "number": "02323678",
        "amount": "1.0\$",
        "name": "Mas Romo",
      },
      {
        "image": "assets/img/shopeepay.png",
        "ewallet": "ShopeePay",
        "number": "081235xxx59",
        "amount": "5.2\$",
        "name": "Yuuki Himawari",
      },
    ];

    return datas
        .map(
          (data) => PaymentActivityModel(
            data["image"],
            data["ewallet"],
            data["name"],
            data["number"],
            data["amount"],
          ),
        )
        .toList();
  }
}
