import 'package:atividade1/routes.dart';
import 'package:atividade1/widgets/product_cache.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _getWidth(dimensions) {
    return dimensions.maxWidth / 1.1;
  }

  double _getHeight(dimensions) {
    return dimensions.maxHeight / 1.1;
  }

  void _open(BuildContext context) =>
      Navigator.of(context).pushNamed(RouterGenerator.infoPage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: LayoutBuilder(
        builder: (context, dimensions) {
          final width = _getWidth(dimensions);
          final height = _getHeight(dimensions);

          return Center(
            child: SizedBox(
              width: width,
              height: height,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 343,
                      height: 206,
                      decoration: const BoxDecoration(
                          color: Colors.black12,
                          image: DecorationImage(
                            image:
                                AssetImage("assets/images/promotion_image.png"),
                            fit: BoxFit.cover,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 32, left: 24, bottom: 32),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Super Flash Sale',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            const Text(
                              '50% Off',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 29),
                              child: SizedBox(
                                width: 150,
                                height: 41,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 42,
                                      height: 41,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,
                                      ),
                                      child: const Text(
                                        '08',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                0xFF, 0x22, 0x32, 0x63)),
                                      ),
                                    ),
                                    Container(
                                      width: 42,
                                      height: 41,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,
                                      ),
                                      child: const Text(
                                        '34',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                0xFF, 0x22, 0x32, 0x63)),
                                      ),
                                    ),
                                    Container(
                                      width: 42,
                                      height: 41,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,
                                      ),
                                      child: const Text(
                                        '52',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                0xFF, 0x22, 0x32, 0x63)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 72,
                      height: 8,
                      child: Row(
                        children: const [
                          Icon(
                            Icons.circle,
                            size: 8,
                            color: Color.fromARGB(0xFF, 0xEB, 0xF0, 0xFF),
                          ),
                          Icon(
                            Icons.circle,
                            size: 8,
                            color: Color.fromARGB(0xFF, 0xEB, 0xF0, 0xFF),
                          ),
                          Icon(
                            Icons.circle,
                            size: 8,
                            color: Color.fromARGB(0xFF, 0x40, 0xBF, 0xFF),
                          ),
                          Icon(
                            Icons.circle,
                            size: 8,
                            color: Color.fromARGB(0xFF, 0xEB, 0xF0, 0xFF),
                          ),
                          Icon(
                            Icons.circle,
                            size: 8,
                            color: Color.fromARGB(0xFF, 0xEB, 0xF0, 0xFF),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Category",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "More Category",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(0xFF, 0x40, 0xBF, 0xFF)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 141,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 70,
                              height: 70,
                              child: Column(
                                children: [
                                  Image.asset(
                                      "assets/images/man_shirt_icon.png"),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Man Shirt",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 70,
                              height: 70,
                              child: Column(
                                children: [
                                  Image.asset("assets/images/dress_icon.png"),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Dress",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 70,
                              height: 70,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/wallet_icon.png"),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Work Tools",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 70,
                              height: 70,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/bag_icon.png",
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Woman Bag",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 70,
                              height: 70,
                              child: Column(
                                children: [
                                  Image.asset("assets/images/shoes_icon.png"),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Man Shoes",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Flash Sale",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "See More",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(0xFF, 0x40, 0xBF, 0xFF)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.black12,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Consumer<ProductCache>(
                          builder: (context, cache, _) {
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: cache.list.length,
                              itemBuilder: (context, index) {
                                if ((cache.list[index].sale)) {
                                  return SizedBox(
                                    width: 238,
                                    height: 141,
                                    child: ListTile(
                                      leading:
                                          Image.asset(cache.list[index].image),
                                      title: Text(
                                        "${cache.list[index].description}}",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      subtitle: Text(
                                        "${cache.list[index].valueWithDiscount}",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                              0xFF, 0x40, 0xBF, 0xFF),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      onTap: () {
                                        cache.index = index;
                                        _open(context);
                                      },
                                    ),
                                  );
                                } else {
                                  return Container();
                                }
                              },
                            );
                          },
                        ),
                      ),
                      // color: Colors.black26,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 343,
                        height: 206,
                        decoration: const BoxDecoration(
                            color: Colors.black12,
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/images/our_product.png"),
                              fit: BoxFit.cover,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 32, left: 24, bottom: 32),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Ours',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              Text(
                                'Products',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 16, bottom: 48),
                                child: Text(
                                  'We recommend the best for you',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      color: Colors.black12,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Consumer<ProductCache>(
                          builder: (context, cache, _) {
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: cache.list.length,
                              itemBuilder: (context, index) {
                                return SizedBox(
                                  width: 238,
                                  height: 141,
                                  child: ListTile(
                                    leading: Image.asset(cache.list[index].image),
                                    title: Text(
                                      "${cache.list[index].description}}",
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    subtitle: Text(
                                      "${cache.list[index].valueWithDiscount}",
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Color.fromARGB(
                                            0xFF, 0x40, 0xBF, 0xFF),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    onTap: () {
                                      cache.index = index;
                                      _open(context);
                                    },
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                      // color: Colors.black26,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      drawer: Drawer(
        child: Container(
          height: 100,
          color: Colors.black12,
          child: Consumer<ProductCache>(
            builder: (context, cache, _) {
              return ListView.builder(
                itemCount: cache.list.length,
                itemBuilder: (context, index) {
                  if ((cache.list[index].sale)) {
                    return Dismissible(
                      key: Key('${cache.list[index]}'),
                      background: Container(
                        color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: const <Widget>[
                              Icon(Icons.delete, color: Colors.white),
                              Text('Move to trash',
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                      secondaryBackground: Container(
                        color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const <Widget>[
                              Icon(Icons.delete, color: Colors.white),
                              Text('Move to trash',
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                      confirmDismiss: (DismissDirection direction) async {
                        return await showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text("Delete Confirmation"),
                              content: const Text(
                                  "Are you sure you want to delete this item?"),
                              actions: <Widget>[
                                ElevatedButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(true),
                                    child: const Text("Delete")),
                                ElevatedButton(
                                  onPressed: () =>
                                      Navigator.of(context).pop(false),
                                  child: const Text("Cancel"),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      onDismissed: (DismissDirection direction) {
                        if (direction == DismissDirection.startToEnd) {
                          // print("Add to favorite");
                        } else {
                          // print('Remove item');
                        }

                        setState(() {
                          cache.list.removeAt(index);
                        });
                      },
                      child: Container(
                        color: Colors.white,
                        // width: 238,
                        height: 100,
                        child: ListTile(
                          leading: Image.asset(cache.list[index].image),
                          title: Text(
                            "${cache.list[index].description}}",
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          subtitle: Text(
                            "${cache.list[index].valueWithDiscount}",
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(0xFF, 0x40, 0xBF, 0xFF),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          onTap: () {
                            cache.index = index;
                            _open(context);
                          },
                        ),
                      ),
                    );
                  } else {
                    return Container();
                  }
                },
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/home_icon.png")),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/explore_icon.png")),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/cart_icon.png")),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/offer_icon.png")),
            label: 'Offer',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/user_icon.png")),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
