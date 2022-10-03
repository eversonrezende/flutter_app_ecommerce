import 'dart:collection';

import 'package:atividade1/widgets/product.dart';

class ProductCache {
  var _index = -1;

  final List<Product> _products = [
    const Product(
      'assets/images/tenis_colorido.png',
      'Nike Air Max 270 React ENG',
      299.43,
      534.33,
      4,
      "Borracha com formulação especial para resistir ao desgaste, localizada no calcanhar. "
          "Gel: Sistema de amortecimento em GEL que oferece melhor absorção de impacto.",
      true,
    ),
    const Product(
      'assets/images/tenis_amarelo.png',
      'Nike Air Max AP Masculino',
      250.00,
      500.59,
      5,
      "Detalhes descontraídos e cores frescas proporcionam um clima de dia de praia. "
          "Os tecidos ventilados para o verão são feitos com pelo menos 20% de materiais reciclados "
          "por peso e mantêm a estética clássica de corrida que você conhece tão bem.",
      true,
    ),
    const Product(
        'assets/images/bolsa_preta.png',
        'Bolsa Chanel Vintage Verniz Quilted Chain Preta',
        540.25,
        720.13,
        3,
        "Bolsa Chanel Verniz Quilted Chain Preta Vintage, confeccionada em couro com ferragens na cor "
            "preta. Modelo retangular com alça dupla de ombro em couro e corrente entrelaçados, "
            "compartimento único com fechamento por zíper e tag da marca no puxador.",
        true),
    const Product(
      'assets/images/bolsa_vermelha.png',
      'Bolsa Chanel Double Flap',
      520.20,
      700.10,
      4,
      "Bolsa Chanel Double Flap Jumbo Vermelha, confeccionado em couro envernizado. "
          "Modelo possui alça em corrente entrelaçada com couro, um bolso externo posterior, "
          "primeira aba fecho por dispositivo de encaixe e aba interior fecho por botão de pressão.",
      true,
    ),
    const Product(
      'assets/images/bolsa_clara.png',
      'Bolsa Chanel Shopper Grand Bege',
      600.25,
      890.50,
      5,
      "Bolsa Chanel Shopper Grand Bege, confeccionada em couro caviar e ferragens douradas. "
          "Modelo retangular, tamanho grande, possui três compartimentos, um central com fechamento por "
          "zíper, e dois laterais com um bolso interno cada.",
      false,
    ),
    const Product(
      'assets/images/tenis_azul.png',
      'Nike Air Max Alpha Trainer',
      715.15,
      890.95,
      4,
      "Termine sua última repetição com força e acelere com um rugido que atordoa o chão da "
          "academia no Nike Air Max Alpha Trainer 5.",
      false,
    ),
  ];

  void addItem(
    String image,
    String description,
    double valueWithDiscount,
    double oldValue,
    int star,
    String definition,
    bool sale,
  ) {
    _products.add(Product(
      image,
      description,
      valueWithDiscount,
      oldValue,
      star,
      definition,
      sale,
    ));
  }

  int get index => _index;

  set index(int value) {
    if ((value >= 0) && (value < _products.length)) {
      _index = value;
    } else {
      _index = -1;
    }
  }

  UnmodifiableListView<Product> get list =>
      UnmodifiableListView<Product>(_products);
}
