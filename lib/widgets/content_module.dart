class UnboardContent {
  String image;
  String title;
  String description;
  UnboardContent(
      {required this.description, required this.image, required this.title});
}

List<UnboardContent> contents = [
  UnboardContent(
      description: "Pick our food from our menu\n   More than 34 times ",
      image: "images/screen1.png",
      title: "Select from our\n   best Menu"),
  UnboardContent(
      description: "you can pay cash on delivery and card payment is available",
      image: "images/screen2.png",
      title: "Easy and online payment"),
  UnboardContent(
      description: "Deliver your food at your door step",
      image: "images/screen3.png",
      title: "Quick Delivery at your door step"),
];
