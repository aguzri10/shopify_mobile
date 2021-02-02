class FlashsaleModel {
  final String id, image, name;
  final double originalPrice, discount;

  FlashsaleModel(
      {this.id, this.image, this.name, this.originalPrice, this.discount});
}

List<FlashsaleModel> flashsales = [
  FlashsaleModel(
    id: '1',
    image:
        'https://www.pngkit.com/png/full/419-4199812_air-max-nike-air-max-270-ultramarine.png',
    name: 'Nike Air Max 270 Ultramarine',
    originalPrice: 1700000,
    discount: 20,
  ),
  FlashsaleModel(
    id: '2',
    image:
        'https://images.footway.com/01/601/60197-58/front/705/705/60197-58.png?auto=format%2Ccompress&dpr=1&fit=max&ixlib=react-13.0.4&h=750',
    name: 'Adidas Questar Ride',
    originalPrice: 1100000,
    discount: 35,
  ),
  FlashsaleModel(
    id: '3',
    image:
        'https://freepngimg.com/thumb/backpack/18-military-backpack-png-image.png',
    name: 'Bodypack Military Backpack',
    originalPrice: 750000,
    discount: 28,
  ),
  FlashsaleModel(
    id: '4',
    image:
        'https://www.pngkey.com/png/full/447-4471888_new-balance-wcoasbk-black-pink-b-black-shoes.png',
    name: 'New Balance Wcoasbk',
    originalPrice: 1500000,
    discount: 24,
  ),
];
