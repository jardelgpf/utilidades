import 'package:flutter/material.dart';
import 'package:utilidades/src/controllers/product_controller.dart';
import 'package:utilidades/src/models/product_model.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
final _controller = ProductController();
late Future<List<ProductModel>> _produtos;

@override
  void initState() {
    super.initState();
    _loadProdutos();
  }

void _loadProdutos(){
  setState(() {
    _produtos = _controller.fetchProdutos(context);
  });
}

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}