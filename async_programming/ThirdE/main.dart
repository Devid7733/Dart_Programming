import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchProduct(int id) async {
  final url = Uri.parse("https://fakestoreapi.com/products/$id");
  final response = await http.get(url);

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception("Failed to load product $id");
  }
}

Future<void> loadProducts() async {
  final p1 = await fetchProduct(1);
  final p5 = await fetchProduct(5);
  final p10 = await fetchProduct(10);

  print("...Your Cart...");
  print("1: ${p1['title']}");
  print("Price: \$${p1['price']}");
  print("5: ${p5['title']} ");
  print("Price: \$${p5['price']}");
  print("10: ${p10['title']}");
  print("Price: \$${p10['price']}");
}

Future<void> TotalPrice() async {
  final p1 = await fetchProduct(1);
  final p5 = await fetchProduct(5);
  final p10 = await fetchProduct(10);

  var total = p1['price'] + p5['price'] + p10['price'];
  print("....................");
  print("✅Check out Complete");
  print("Grand Total: \$${total}");
}

void main() async {
  print("Reloading Item");
  await loadProducts();
  await TotalPrice();
}
