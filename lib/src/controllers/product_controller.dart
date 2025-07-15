import 'package:flutter/widgets.dart';
import 'package:utilidades/src/models/product_model.dart';
import 'package:utilidades/src/service/product_services.dart';

class ProductController {
  final ProductServices _service = ProductServices();

  Future<List<ProductModel>> fetchProdutos(BuildContext context) => _service.getAll(context);
  Future<void> criarProduto(ProductModel produto) => _service.create(produto);
  Future<void> atualizarProduto(ProductModel produto) => _service.update(produto);
  Future<void> deletarProduto(int id) => _service.delete(id);
}