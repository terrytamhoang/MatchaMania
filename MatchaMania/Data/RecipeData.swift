//
//  RecipeData.swift
//  MatchaMania
//
//  Created by Terry Hoang on 10/26/23.
//

import SwiftUI

let recipeData: [Recipe] = [
    Recipe(
        id: 1,
      title: "Matcha Cookies",
      headline: "Irresistible Green Tea Cookies for Every Sweet Tooth",
      image: "recipeCookies",
      rating: 5,
      serves: 4,
      preparation: 35,
      cooking: 2,
      instructions: [
        "Combine 2 cups all-purpose flour (plain flour) and 2½ Tbsp matcha green tea powder in a large bowl.",
        "Sift the flour and the matcha powder.",
        "In a stand mixer with a paddle attachment or in a large bowl with a hand mixer, beat ¾ cup unsalted butter until smooth and creamy. Tip: It’s important to soften the butter ahead of time. Leave the butter out on the counter for 1 hour or microwave it in 5-second increments until it‘s softened.",
        "Add 1 pinch Diamond Crystal kosher salt and blend.",
        "Add 130 g confectioners’ sugar (1 cup + 2 tsp) and beat well until soft and light. As you blend, stop the mixer and scrape down the bowl occasionally.",
      "Add 2 large egg yolks and mix well until combined.",
        "Gradually add the flour and matcha mixture and mix until just combined.",
        "Add 1/4 cup white chocolate chips and mix until just incorporated.",
        "Divide the dough into 2 equal pieces. Shape each piece into a cylinder about 1 1/2 inches (4 cm) in diameter and 7 inches (18 cm) long.",
        "Wrap the logs in plastic wrap and chill in the refrigerator until firm, at least 2 hours.",
        "Bake the cookies at 350ºF (175ºC) for about 15 minutes, or until the edges of the cookies start to get slightly golden brown.",
        "Remove from the oven and let the cookies cool on the baking sheet for 5 minutes"
      ],
      ingredients: [
        "2 cups all-purpose flour (plain flour)",
        "2 and a half Tbsp matcha green tea powder",
        "3/4 cup unsalted butter",
        "1 pinch Diamond Crystal kosher salt",
        "130 g confectioners’ sugar",
        "2 large egg yolks",
        "¼ cup white chocolate chips"
        
      ]
    ),
    Recipe(
        id: 2,
        title: "Matcha Basque Cheesecake",
        headline: "A Creamy Matcha Delight with a Caramelized Crust",
        image: "recipeCheesecake",
        rating: 4,
        serves: 8,
        preparation: 40,
        cooking: 3,
        instructions: [
            "Preheat your oven to 350°F (175°C) and line a 9-inch round cake pan with parchment paper, allowing some overhang for easy removal.",
            "In a mixing bowl, combine 2 tablespoons of matcha powder with 1/4 cup of hot water. Stir until you have a smooth matcha paste. Set it aside to cool.",
            "In a large mixing bowl, beat 2 cups of cream cheese until smooth and creamy.",
            "Gradually add 1 cup of granulated sugar while continuing to beat the cream cheese.",
            "Mix in 3 large eggs, one at a time, ensuring each is fully incorporated before adding the next.",
            "Fold in the matcha paste you prepared earlier, combining it with the cheesecake batter.",
            "Pour the cheesecake batter into the prepared cake pan.",
            "Bake for about 50 minutes or until the top is set, and the edges are caramelized.",
            "Remove from the oven and let it cool in the pan for about 20 minutes. Then, transfer it to the refrigerator and chill for at least 4 hours or until it's firm.",
            "Once chilled, carefully remove the cheesecake from the pan using the parchment paper overhang.",
            "Slice, serve, and enjoy your Matcha Basque Cheesecake!"
        ],
        ingredients: [
            "2 tablespoons matcha powder",
            "1/4 cup hot water",
            "2 cups cream cheese (Philadelphia, NOT whipped cream cheese or reduced-fat)",
            "1 cup granulated sugar (Standard granulated sugar, I used organic cane sugar)",
            "3 large eggs (Large eggs, 50 g each without shell)",
            "Parchment paper for lining the pan",
            "Heavy (whipping) cream (36-38% fat)",
            "Flour (I used cake flour + corn starch)",
            "Salt (to intensify the flavors)"
        ]
        ),
    Recipe(
        id: 3,
        title: "Souffle Pancakes",
        headline: "Fluffy Pancakes with a Delicate Soufflé Texture",
        image: "recipeSouffle",
        rating: 4,
        serves: 4,
        preparation: 30,
        cooking: 3,
        instructions: [
            "In a large mixing bowl, sift together 30g of cake flour, 1 tsp of matcha powder, ½ tsp of baking powder, and a pinch of salt. Mix well and set aside.",
            "In a separate bowl, whisk together 2 large eggs, 2 Tbsp of whole milk, ¼ tsp of pure vanilla extract, and 2 Tbsp of sugar until well combined.",
            "Gently fold the egg mixture into the dry ingredients until fully incorporated.",
            "In a separate clean, dry bowl, whip 2 large egg whites until stiff peaks form. Be careful not to overmix.",
            "Gently fold the whipped egg whites into the batter until smooth and fluffy.",
            "Heat a non-stick pan over low heat and add a small amount of oil or butter.",
            "Spoon the pancake batter onto the pan, creating small, thick pancakes. Cook for about 2-3 minutes on each side until they are golden and fluffy.",
            "Serve the matcha soufflé pancakes with your favorite toppings, such as fresh berries, maple syrup, confectioners’ sugar, and fresh whipped cream (if desired)."
        ],
        ingredients: [
            "2 large eggs (50 g each without shell)",
            "2 Tbsp whole milk",
            "1/4 tsp pure vanilla extract",
            "30 g cake flour (¼ cup minus 1 tsp; weigh your flour or use the “fluff and sprinkle“ method and level it off)",
            "1 tsp matcha (green tea powder) (1 tsp matcha is 2 g)",
            "1/2 tsp baking powder (1 tsp baking powder is 2 g)",
            "2 Tbsp sugar",
            "1 Tbsp neutral oil",
            "2 Tbsp water (for steaming)",
            "For the Fresh Whipped Cream (optional):",
            "½ cup heavy (whipping) cream",
            "1½ Tbsp sugar",
            "For the Toppings:",
            "1 Tbsp confectioners’ sugar",
            "Maple syrup",
            "Fresh berries (strawberries, blueberries, etc.; optional)"
        ]
    ),
    Recipe(
        id: 4,
        title: "Matcha Swiss Roll",
        headline: "A Delightful Matcha Swiss Roll with Creamy Filling",
        image: "recipeSwiss",
        rating: 4,
        serves: 6,
        preparation: 90,
        cooking: 2,
        instructions: [
            "Preheat your oven to 350°F (175°C) and line a 10x15-inch (25x38 cm) jelly roll pan with parchment paper.",
            "In a large mixing bowl, sift together ¾ cup of cake flour, 2 Tbsp of matcha powder, and ½ tsp of baking powder. Mix well and set aside.",
            "In a separate bowl, beat 4 large eggs and gradually add ¼ cup of sugar, continuing to beat until the mixture is thick and pale.",
            "Gently fold the egg mixture into the dry ingredients until fully incorporated.",
            "Stir in 3 Tbsp of whole milk that has been microwaved until warm to the touch.",
            "Pour the batter into the prepared jelly roll pan and spread it evenly.",
            "Bake for about 10-12 minutes or until the cake is set and springs back when touched.",
            "While the cake is still warm, dust the surface with confectioners’ sugar and place a clean kitchen towel on top.",
            "Carefully flip the cake onto the towel, remove the parchment paper, and roll the cake with the towel. Allow it to cool completely.",
            "For the Matcha Cream Filling, whip ¾ cup of chilled heavy cream with 1½ Tbsp of sugar and 2 tsp of matcha powder until you have a creamy consistency.",
            "Unroll the cooled cake, spread the matcha cream filling evenly, and roll it back up without the towel.",
            "Chill the Matcha Swiss Roll in the refrigerator for at least 30 minutes before serving."
        ],
        ingredients: [
            "4 large eggs (50 g each without shell)",
            "¾ cup cake flour (weigh your flour or use the 'fluff and sprinkle' method and level it off)",
            "½ tsp baking powder",
            "2 Tbsp matcha (green tea powder) (1 Tbsp matcha is 6 g)",
            "½ cup sugar (divided)",
            "3 Tbsp whole milk (microwave until warm to the touch)",
            "For the Matcha Cream Filling:",
            "3/4 cup heavy (whipping) cream (chilled)",
            "1½ Tbsp sugar",
            "2 tsp matcha (green tea powder)"
        ]
    ),
    Recipe(
        id: 5,
        title: "Matcha Latte",
        headline: "A Creamy and Energizing Green Tea Latte",
        image: "recipeLatte",
        rating: 5,
        serves: 1,
        preparation: 5,
        cooking: 1,
        instructions: [
            "In a small bowl, whisk 1-2 teaspoons of high-quality matcha powder with 2 tablespoons of hot (but not boiling) water until it forms a smooth matcha paste.",
            "In a separate small saucepan, heat 1 cup of milk of your choice (e.g., almond milk, soy milk, or dairy milk) over low heat until it's hot but not boiling.",
            "Add the matcha paste to a mug and pour the heated milk over it. Use a whisk to stir until well combined and frothy.",
            "Sweeten your matcha latte with honey, maple syrup, or your preferred sweetener to taste.",
            "Sprinkle a little extra matcha powder on top for garnish if desired.",
            "Serve your Matcha Latte hot and enjoy!"
        ],
        ingredients: [
            "1-2 teaspoons high-quality matcha powder",
            "2 tablespoons hot (but not boiling) water",
            "1 cup milk of your choice (e.g., almond milk, soy milk, or dairy milk)",
            "Sweetener of your choice (e.g., honey, maple syrup)",
        ]
    ),
    Recipe(
        id: 6,
        title: "Matcha Smoothie",
        headline: "A Refreshing and Nutrient-Packed Green Tea Smoothie",
        image: "recipeSmoothie",
        rating: 4,
        serves: 1,
        preparation: 5,
        cooking: 1,
        instructions: [
            "In a blender, combine 1 banana, 5 ice cubes, and ¾-1 cup of unsweetened almond milk (or your milk of choice). Adjust the amount of milk based on your desired consistency.",
            "Add 1 tsp of high-quality matcha powder to the blender.",
            "Blend all the ingredients until smooth and creamy.",
            "Taste the smoothie and adjust the sweetness by adding honey, maple syrup, or a sweetener of your choice if desired.",
            "Pour your Matcha Smoothie into a glass, garnish with an extra sprinkle of matcha powder, and enjoy!"
        ],
        ingredients: [
            "1 banana",
            "5 ice cubes",
            "3/4-1 cup unsweetened almond milk (or cow's milk, coconut milk, etc.)",
            "1 tsp matcha (green tea powder)"
        ]
    ),
    Recipe(
        id: 7,
        title: "Matcha Ice Cream",
        headline: "Homemade Green Tea Delight: Creamy Matcha Ice Cream",
        image: "recipeIcecream",
        rating: 5,
        serves: 4,
        preparation: 15,
        cooking: 2,
        instructions: [
            "In a mixing bowl, whisk together 2 teaspoons of matcha powder and 2 tablespoons of hot (but not boiling) water until you have a smooth matcha paste.",
            "In a separate mixing bowl, combine 1 cup of whole milk and 1/2 cup of granulated sugar. Stir until the sugar is dissolved.",
            "Add 2 cups of heavy cream and the matcha paste to the milk-sugar mixture and mix well.",
            "Pour the mixture into an ice cream maker and churn according to the manufacturer's instructions until it reaches a soft-serve consistency.",
            "Transfer the churned ice cream to a lidded container and freeze for at least 2 hours to firm up.",
            "Serve your homemade Matcha Ice Cream in bowls or cones and enjoy!"
        ],
        ingredients: [
            "2 teaspoons matcha powder",
            "2 tablespoons hot (but not boiling) water",
            "1 cup whole milk",
            "1/2 cup granulated sugar",
            "2 cups heavy cream"
        ]
    ),
    Recipe(
        id: 8,
        title: "Matcha Tiramisu",
        headline: "A Green Tea Twist on the Classic Italian Dessert",
        image: "recipeTiramisu",
        rating: 5,
        serves: 6,
        preparation: 60,
        cooking: 4,
        instructions: [
            "In a heatproof bowl, whisk together 3 large egg yolks and 1/4 cup of sugar until the mixture becomes pale and creamy. Place the bowl over a pot of simmering water and continue to whisk for about 5 minutes. Remove from heat and let it cool.",
            "Stir in 2 tablespoons of marsala wine (or a suitable substitute) into the egg yolk mixture.",
            "In a separate bowl, beat 8 oz of mascarpone cheese until smooth and creamy. Gently fold the mascarpone into the egg yolk mixture until well combined.",
            "In a chilled mixing bowl, whip 1 1/2 cups of heavy cream until stiff peaks form. Gently fold the whipped cream into the mascarpone mixture, creating a creamy filling.",
            "In a small bowl, whisk 1 1/2 tablespoons of matcha powder into 1/2 cup of hot water until it's fully dissolved. Allow it to cool.",
            "Quickly dip 12 ladyfingers into the matcha mixture and arrange them in the bottom of a serving dish to form the first layer.",
            "Spread half of the mascarpone mixture over the ladyfingers to create the first filling layer.",
            "Repeat the process with another layer of dipped ladyfingers and the remaining mascarpone mixture.",
            "For the final layer, dip the last 12 ladyfingers into the matcha mixture and place them on top.",
            "Cover the dish and refrigerate for at least 4 hours or overnight to allow the flavors to meld.",
            "Before serving, dust the top with 2 tablespoons of matcha powder.",
            "Serve your Matcha Tiramisu chilled and enjoy!"
        ],
        ingredients: [
            "3 large egg yolks (one egg yolk is about 19 g; at room temperature)",
            "1/3 cup sugar (divided)",
            "2 tablespoons marsala wine (highly recommended; can substitute with dark rum or brandy)",
            "8 oz mascarpone cheese (at room temperature)",
            "1 1/2 cups heavy (whipping) cream (chilled)",
            "For the Cookie Layer:",
            "1/2 cup water (heated to 175ºF/80ºC)",
            "1 1/2 tablespoons matcha (green tea powder) (9 g)",
            "24 ladyfingers (divided, for 2 layers; you will need 36 cookies for 3 layers)",
            "For Serving:",
            "2 tablespoons matcha (green tea powder) (for dusting)"
        ]
    )
    ]
