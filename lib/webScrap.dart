import 'package:web_scraper/web_scraper.dart';

void webScrap() async {
  final webScraper = WebScraper('https://www.collegesimply.com');

  if (await webScraper
      .loadWebPage('/guides/application-deadlines/?showpast=true')) {
    List<Map<String, dynamic>> elements = webScraper.getElement(
        'div.container > div.row > div.col-lg-8 > span > div.row > div.col > table.table > tbody > tr > td > span > h6.card-title.mb-1 > a',
        ['']);

    // prints out the name of universities on the first page of the above website
    for (final e in elements) {
      print(e['title']);
    }
  }
}
