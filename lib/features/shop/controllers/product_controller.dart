import 'package:get/get.dart';
import 'package:t_store/features/shop/models/product_model.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/popups/loaders.dart';
import 'package:t_store/data/repositories/product/product_repository.dart';

class ProductController extends GetxController {
  static ProductController get instance => Get.find();

  final isLoading = false.obs;
  final productRepository = Get.put(ProductRepository());
  RxList<ProductModel> featuredProducts = <ProductModel>[].obs;

  @override
  void onInit() {
    fetcFeaturedProducts();
    super.onInit();
  }

  void fetcFeaturedProducts() async {
    try {
      // Show loader while loading Products
      isLoading.value = true;

      // Fetch Products
      final products = await productRepository.getFeaturedProducts();

      // Assign Products
      featuredProducts.assignAll(products);
    } catch (e) {
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  /// Get the product price of price range for variations.
  String getProductPrice(ProductModel product) {
    if (product.productType == ProductType.single.toString()) {
      final price = product.salePrice > 0 ? product.salePrice : product.price;

      return price.toString();
    }

    final variations = product.productVariations;

    if (variations == null || variations.isEmpty) {
      final price = product.salePrice > 0 ? product.salePrice : product.price;

      return price.toString();
    }

    double smallestPrice = double.infinity;
    double largestPrice = 0.0;

    for (final variation in variations) {
      final double priceToConsider = variation.salePrice > 0
          ? variation.salePrice
          : variation.price;

      if (priceToConsider < smallestPrice) {
        smallestPrice = priceToConsider;
      }

      if (priceToConsider > largestPrice) {
        largestPrice = priceToConsider;
      }
    }

    if (smallestPrice.isEqual(largestPrice)) {
      return largestPrice.toString();
    }

    return '$smallestPrice - $largestPrice';
  }

  /// -- Calculate Discount Percentage
  String? calculateSalePercentage(double originalPrice, double? salePrice) {
    if (salePrice == null || salePrice <= 0.0) return null;
    if (originalPrice <= 0) return null;
    if (salePrice >= originalPrice) return null;

    double percentage = ((originalPrice - salePrice) / originalPrice) * 100;
    return percentage.toStringAsFixed(0);
  }

  /// -- Check Product Stack Status
  String getProductStockStatus(int stock) {
    return stock > 0 ? 'In Stock' : 'Out Of Stock';
  }

  //   String getProductPrice(ProductModel product) {
  //   // Single product ise indirimli fiyat varsa onu,
  //   // yoksa normal fiyatı döndür.
  //   if (product.productType == ProductType.single.toString()) {
  //     final price = product.salePrice > 0
  //         ? product.salePrice
  //         : product.price;

  //     return price.toString();
  //   }

  //   // Variable olarak işaretlenmiş ama variation yoksa
  //   // ana ürün fiyatına geri dön.
  //   final variations = product.productVariations;

  //   if (variations == null || variations.isEmpty) {
  //     final price = product.salePrice > 0
  //         ? product.salePrice
  //         : product.price;

  //     return price.toString();
  //   }

  //   double smallestPrice = double.infinity;
  //   double largestPrice = 0.0;

  //   // Tüm varyasyonların kullanılacak fiyatlarını kontrol et.
  //   for (final variation in variations) {
  //     final double priceToConsider = variation.salePrice > 0
  //         ? variation.salePrice
  //         : variation.price;

  //     // Geçersiz fiyatları hesaba katma.
  //     if (priceToConsider < 0 ||
  //         priceToConsider.isNaN ||
  //         priceToConsider.isInfinite) {
  //       continue;
  //     }

  //     if (priceToConsider < smallestPrice) {
  //       smallestPrice = priceToConsider;
  //     }

  //     if (priceToConsider > largestPrice) {
  //       largestPrice = priceToConsider;
  //     }
  //   }

  //   // Bütün varyasyon fiyatları geçersizse ana ürün fiyatını kullan.
  //   if (smallestPrice.isInfinite) {
  //     final price = product.salePrice > 0
  //         ? product.salePrice
  //         : product.price;

  //     return price.toString();
  //   }

  //   // GetX extension
  //   if (smallestPrice.isEqual(largestPrice)) {
  //     return largestPrice.toString();
  //   }

  //   // Fiyatlar farklıysa aralık göster.
  //   return '$smallestPrice - $largestPrice';
  // }
}
