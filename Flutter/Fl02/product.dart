void main() {
    // 상품 정보
    String productName = 'book';
    int price = 10000;
    double sale = 0.2;

    // 상품 코드, 재고 수량
    dynamic sku = '1234abc';
    var stock = 20;
    sku = 'abcdef';
    sku = 1234;

    // 상품 카테고리
    const category = 'fancy';
    final salePrice = 8000;

    print('product name: ' + productName);
    print('price: ' + price.toString() + '원');
    print('sale: '+ (sale * 100).toString() + '%');
    print('sku: $sku');
    print('category: $category');
    print('salePrice: $salePrice');
}
