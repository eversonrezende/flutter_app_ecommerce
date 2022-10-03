import 'package:atividade1/routes.dart';
import 'package:atividade1/widgets/product_cache.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<ProductCache>(
          builder: (context, cache, _) {
            final item = cache.list[cache.index];
            return Scaffold(
              appBar: AppBar(
                title: Text(item.description),
              ),
              body: Column(
                children: [
                  Container(
                    width: 375,
                    height: 238,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        image: DecorationImage(
                          image: AssetImage(item.image),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    item.description,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 96,
                    height: 16,
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 16,
                          color: (int.parse('${item.star}') >= 1)
                              ? const Color.fromARGB(0xFF, 0xFF, 0xC8, 0x33)
                              : Colors.yellow[100],
                        ),
                        Icon(
                          Icons.star,
                          size: 16,
                          color: (int.parse('${item.star}') >= 2)
                              ? const Color.fromARGB(0xFF, 0xFF, 0xC8, 0x33)
                              : Colors.yellow[100],
                        ),
                        Icon(
                          Icons.star,
                          size: 16,
                          color: (int.parse('${item.star}') >= 3)
                              ? const Color.fromARGB(0xFF, 0xFF, 0xC8, 0x33)
                              : Colors.yellow[100],
                        ),
                        Icon(
                          Icons.star,
                          size: 16,
                          color: (int.parse('${item.star}') >= 4)
                              ? const Color.fromARGB(0xFF, 0xFF, 0xC8, 0x33)
                              : Colors.yellow[100],
                        ),
                        Icon(
                          Icons.star,
                          size: 16,
                          color: (int.parse('${item.star}') >= 5)
                              ? const Color.fromARGB(0xFF, 0xFF, 0xC8, 0x33)
                              : Colors.yellow[100],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 84,
                    height: 30,
                    child: Text(
                      "${item.valueWithDiscount}",
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(0xFF, 0x40, 0xBF, 0xFF)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 343,
                      height: 123,
                      child: Text(item.definition),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 57,
                      width: 343,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(0xFF, 0x40, 0xBF, 0xFF)),
                        child: const Text('Buy with one click'),
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed(
                              RouterGenerator.successScreen);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
