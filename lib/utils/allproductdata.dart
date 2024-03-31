class ProductData {
  static Set<Map<String, dynamic>> cartData = {};
  static List<Map<String, dynamic>> cartProductData = [];

  static Set<Map<String, dynamic>> favData = {};
  static List<Map<String, dynamic>> favProductData = [];

  static List<Map<String, dynamic>> allProductsData = <Map<String, dynamic>>
  [
    {
      'name': 'Fruit Salad',
      'data': [
        {
          "id": 1,
          "title": "Tropical Salad",
          "description": "A delightful blend of tropical fruits that will transport you to a paradise island.It is a delightful blend of sweet and savory flavors, textures, and colors, ",
          "price": 15.00,
          "discountPercentages": 5.00,
          "rating": 4.5,
          "count" : 0,
          "kcl": "150",
          "total" : 15,
          "average": "10-15",
          "time": "10min",
          "category" : "Hot sale",
          "like": true,
          "delivery" : 3.50,
          "Ingradients": [
            "🥑",
            "🍉",
            "🍓",
            "🍒",
            "🥕",
            "🍄",
          ],
          "thumbnail": "https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2021/05/Fruit-Salad-7.jpg",
          "image": [
            "https://healthyfitnessmeals.com/wp-content/uploads/2022/05/Fruit-salad-recipe-4.jpg",
            "https://feelgoodfoodie.net/wp-content/uploads/2017/10/Fresh-Fruit-Salad-06.jpg",
            "https://www.twopeasandtheirpod.com/wp-content/uploads/2020/07/fruit-salad-5.jpg",
          ]
        },
        {
          "id": 2,
          "title": "Berry Blast Salad",
          "description": "Enjoy the burst of freshness and antioxidants from the colorful berries, balanced with the earthy notes of greens and nuts.",
          "price": 12.00,
          "discountPercentages": 0.00,
          "rating": 4.7,
          "total" : 12,
          "count" : 0,
          "kcl": "120",
          "average": "5-10",
          "time": "8min",
          "category" : "Hot sale",
          "delivery" : 3.50,
          "like": true,
          "thumbnail": "https://www.ketofocus.com/wp-content/uploads/taco-salad-2.jpg",
          "Ingradients": [
            "🫐",
            "🧀",
            "🥒",
            "🍄",
            "🥬",
            "🥥",
          ],
          "image": [
            "https://www.kathysvegankitchen.com/wp-content/uploads/2020/07/Blackberry-salad-1024x891.jpg",
            "https://beautifuleatsandthings.com/wp-content/uploads/2019/08/Vegan-Blackberry-Broccoli-Salad5-995x1024.jpg",
            "https://www.kathysvegankitchen.com/wp-content/uploads/2020/07/Blackberry-salad-1024x891.jpg"
          ]
        },
      ],
    },
    {
      'name': 'Maxican Salad',
      'data': [
        {
          "id": 1,
          "title": "Spicy Taco Salad",
          "description": "A zesty and satisfying salad featuring classic taco flavors with a spicy kick. infusing each bite with a satisfying heat. ",
          "price": 16.00,
          "discountPercentages": 0.00,
          "rating": 4.9,
          "count" : 0,
          "kcl": "220",
          "total" : 16,
          "average": "10-15",
          "category" : "Popularity",
          "time": "15min",
          "like": true,
          "delivery" : 3.50,
          "Ingradients": [
            "🥝",
            "🥬",
            "🌽",
            "🫒",
            "🫘",
            "🧀",
          ],
          "thumbnail": "https://www.recipetineats.com/wp-content/uploads/2023/05/Antipasto-chickpea-salad_8.jpg",
          "image": [
            "https://example.com/images/spicy_taco_salad_1.jpg",
            "https://example.com/images/spicy_taco_salad_2.jpg",
            "https://example.com/images/spicy_taco_salad_3.jpg"
          ]
        },
        {
          "id": 2,
          "title": "Fiesta Salad",
          "description": "A vibrant and flavorful salad inspired by the rich culinary heritage of Mexico.vibrant colors, bold flavors, and satisfying textures",
          "price": 18.00,
          "discountPercentages": 8.00,
          "rating": 4.6,
          "count" : 0,
          "kcl": "180",
          "total" : 18,
          "category" : "Popularity",
          "average": "10-15",
          "time": "12min",
          "delivery" : 3.50,
          "like": false,
          "Ingradients": [
            "🍍",
            "🍎",
            "🧆",
            "🌰",
            "🫘",
            "🧀",
          ],
          "thumbnail": "https://shopkrispr.com/cdn/shop/articles/KRISPR_s_Fresh_Fiesta_Salad_Bowl.png?crop=center&height=840&v=1706284696&width=840",
          "image": [
            "https://example.com/images/mexican_fiesta_salad_1.jpg",
            "https://example.com/images/mexican_fiesta_salad_2.jpg",
            "https://example.com/images/mexican_fiesta_salad_3.jpg"
          ]
        }
      ],
    },
    {
      'name': 'Greek Salad',
      'data': [
        {
          "id": 1,
          "title": "Greek Salad",
          "description": "A refreshing and authentic Greek salad featuring crisp vegetables and tangy feta cheese.it offers a burst of Mediterranean flavors in every bite.",
          "price": 14.00,
          "discountPercentages": 5.00,
          "rating": 4.7,
          "total" : 14,
          "kcl": "160",
          "count" : 0,
          "average": "5-10",
          "time": "10min",
          "category" : "Hot sale",
          "delivery" : 3.50,
          "like": true,
          "Ingradients": [
            "🥬",
            "🥥",
            "🍒",
            "🌽",
            "🥔",
            "🧀",
          ],
          "thumbnail": "https://www.aheadofthyme.com/wp-content/uploads/2016/03/the-perfect-greek-salad-7-1173x1536.jpg",
          "image": [
            "https://example.com/images/classic_greek_salad_1.jpg",
            "https://example.com/images/classic_greek_salad_2.jpg",
            "https://example.com/images/classic_greek_salad_3.jpg"
          ]
        },
        {
          "id": 2,
          "title": "Veggie Salad",
          "description": "A vibrant salad bursting with Mediterranean flavors, featuring fresh vegetables and olives. perfect for any meal or occasion.",
          "price": 16.00,
          "discountPercentages": 0.00,
          "rating": 4.8,
          "kcl": "180",
          "count" : 0,
          "total" : 16,
          "average": "10-15",
          "category" : "Hot sale",
          "time": "12min",
          "like": false,
          "delivery" : 3.50,
          "Ingradients": [
            "🥬",
            "🫒",
            "🥕",
            "🥑",
            "🍄",
            "🧀",
          ],
          "thumbnail": "https://cdn.nutritioninthekitch.com/wp-content/uploads/2020/05/IMG_6942.jpg",
          "image": [
            "https://example.com/images/mediterranean_veggie_salad_1.jpg",
            "https://example.com/images/mediterranean_veggie_salad_2.jpg",
            "https://example.com/images/mediterranean_veggie_salad_3.jpg"
          ]
        },
      ],
    },
    {
      'name': 'Vegetable Salad',
      'data': [
        {
          "id": 1,
          "title": "Garden Salad",
          "description": "A vibrant and nutritious salad made with a variety of fresh garden vegetables.making it a versatile and satisfying choice for any meal.",
          "price": 12.00,
          "discountPercentages": 0.00,
          "rating": 4.5,
          "kcl": "120",
          "count" : 0,
          "total" : 12,
          "average": "5-10",
          "time": "10min",
          "category" : "Popularity",
          "delivery" : 3.50,
          "like": true,
          "Ingradients": [
            "🥬",
            "🫒",
            "🥕",
            "🥑",
            "🍄",
            "🧀",
          ],
          "thumbnail": "https://garlicsaltandlime.com/wp-content/uploads/2022/07/Tossed-salad.jpg",
          "image": [
            "https://example.com/images/garden_vegetable_salad_1.jpg",
            "https://example.com/images/garden_vegetable_salad_2.jpg",
            "https://example.com/images/garden_vegetable_salad_3.jpg"
          ]
        },
        {
          "id": 2,
          "title": "Chickpea Salad",
          "description": "A hearty and flavorful salad featuring chickpeas, tomatoes, cucumbers, and Mediterranean herbs.",
          "price": 14.00,
          "discountPercentages": 0.00,
          "rating": 4.6,
          "kcl": "180",
          "average": "10-15",
          "count" : 0,
          "total" : 14,
          "time": "12min",
          "category" : "Popularity",
          "like": false,
          "delivery" : 3.50,
          "Ingradients": [
            "🥩",
            "🍠",
            "🫚",
            "🥑",
            "🧅",
            "🧀",
          ],
          "thumbnail": "https://theplantbasedschool.com/wp-content/uploads/2023/09/Chickpea-salad-6-1152x1536.jpg",
          "image": [
            "https://example.com/images/mediterranean_chickpea_salad_1.jpg",
            "https://example.com/images/mediterranean_chickpea_salad_2.jpg",
            "https://example.com/images/mediterranean_chickpea_salad_3.jpg"
          ]
        },
      ],
    },
    {
      'name': 'Italian Salad',
      'data': [
        {
          "id": 10,
          "title": "Caprese Salad",
          "description": "A classic Italian salad made with fresh tomatoes, mozzarella cheese, basil, and a drizzle of balsamic glaze.",
          "price": 16.00,
          "discountPercentages": 0.00,
          "rating": 4.8,
          "kcl": "150",
          "average": "5-10",
          "total" : 16,
          "count" : 0,
          "time": "10min",
          "category" : "Hot sale",
          "like": true,
          "delivery" : 3.50,
          "Ingradients": [
            "🍅",
            "🥒",
            "🍒",
            "🥬",
            "🥕",
            "🧀",
          ],
          "thumbnail": "https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2019/07/Caprese-Salad-2-2.jpg",
          "image": [
            "https://example.com/images/caprese_salad_1.jpg",
            "https://example.com/images/caprese_salad_2.jpg",
            "https://example.com/images/caprese_salad_3.jpg"
          ]
        },
        {
          "id": 11,
          "title": "Panzanella Salad",
          "description": "A Tuscan-style salad made with stale bread, tomatoes, cucumbers, onions, and fresh basil, tossed in a tangy vinaigrette.",
          "price": 14.00,
          "discountPercentages": 0.00,
          "rating": 4.7,
          "kcl": "170",
          "average": "10-15",
          "count" : 0,
          "total" : 14,
          "time": "12min",
          "like": false,
          "category" : "Hot sale",
          "delivery" : 3.50,
          "Ingradients": [
            "🫘",
            "🍋",
            "🥬",
            "🥑",
            "🍅",
            "🧀",
          ],
          "thumbnail": "https://joyfoodsunshine.com/wp-content/uploads/2022/06/panzanella-salad-recipe-4.jpg",
          "image": [
            "https://example.com/images/panzanella_salad_1.jpg",
            "https://example.com/images/panzanella_salad_2.jpg",
            "https://example.com/images/panzanella_salad_3.jpg"
          ]
        },
      ],
    },
  ];

  static void convertUniiqueData() {
    cartProductData = cartData.toList();
  }
  static void convertData() {
    favProductData = favData.toList();
  }

  static num totalPrice() {
    num sum = 0.0;
    for (var element in cartProductData) {
      sum=sum+element['total'];
    }
    return sum;
  }

  static num grandTotal(){
    num add=0.0;
    for(var element in cartProductData){
      add=totalPrice()+element['delivery'];
    }
    return add;
  }
}