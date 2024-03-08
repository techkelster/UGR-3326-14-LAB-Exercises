import 'dart:io';

void main() {
  try {
    File file = File('file.txt');
    String contents = file.readAsStringSync();
    print("File contents: $contents");
  } catch (FileSystemException) {
    print("Error reading file: File not found or could not be read.");
  }
}
