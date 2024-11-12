// lib/ui/widgets/product_card.dart
import 'package:flutter/material.dart';

import '../models/products.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            if (product.imageUrl != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  product.imageUrl!,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.broken_image, size: 150),
                ),
              )
            else
              Container(
                height: 150,
                color: Colors.grey[200],
                child: const Icon(Icons.image_not_supported, size: 100),
              ),
            const SizedBox(height: 12),
            // Product Name
            Text(
              product.name ?? "Unknown Product",
              style: Theme.of(context).textTheme.headlineLarge,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            // Product Description
            Text(
              product.description ?? "No description available",
              style: Theme.of(context).textTheme.bodyMedium,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 12),
            // Price and Stock Information
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Product Price
                Text(
                  "\$${product.price ?? 'N/A'}",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[700],
                  ),
                ),
                // Stock Availability
                Text(
                  product.stock != null && product.stock! > 0
                      ? "In Stock: ${product.stock}"
                      : "Out of Stock",
                  style: TextStyle(
                    color: product.stock != null && product.stock! > 0
                        ? Colors.blue
                        : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
