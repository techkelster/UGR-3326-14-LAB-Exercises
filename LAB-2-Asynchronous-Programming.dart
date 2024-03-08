import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    File(savePath).writeAsBytesSync(response.bodyBytes);
    print("File downloaded successfully!");
  } else {
    print("Failed to download the file. Status code: ${response.statusCode}");
  }
}

void main() async {
  String fileUrl =
      "https://international.unime.it/sites/sten/files/2024-02/EXE%20%5B%20Data%20Analysis%20%5D%2024.pdf";
  String savePath = "sample.pdf";
  await downloadFile(fileUrl, savePath);
}
