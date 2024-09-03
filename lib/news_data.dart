
class NewsData {
  String url;
  String headline = "";
  String description = "";

  NewsData({
    required this.url,
    required this.headline,
    required this.description
  });
}


List<NewsData> getNewsData() {

  List<NewsData> items = [
    NewsData(url: "assets/images/bangalore.jpeg", headline: "Bangalore", description: "this is bangalore"),
    NewsData(url: "assets/images/delhi.jpeg", headline: "Delhi", description: "this is Delhi"),
    NewsData(url: "assets/images/chennai.jpeg", headline: "Chennai", description: "this is Chennai"),
    NewsData(url: "assets/images/mumbai.jpeg", headline: "Mumbay", description: "this is Mumbay"),
    NewsData(url: "assets/images/agra.jpeg", headline: "Agra", description: "this is Agra"),
    NewsData(url: "assets/images/pune.jpeg", headline: "Pune", description: "this is Pune"),
    NewsData(url: "assets/images/indore.jpeg", headline: "Indore", description: "this is Indore"),
    NewsData(url: "assets/images/kolkata.jpeg", headline: "Kolkata", description: "this is Kolkata"),
    NewsData(url: "assets/images/hyderabad.jpeg", headline: "Hyderabad", description: "this is hyderabad"),
  ];

  return items;
}