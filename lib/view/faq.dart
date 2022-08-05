import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Faq extends StatelessWidget {
  Faq({Key? key}) : super(key: key);

  var data = [
    {
      "title": "What are food additives?",
      "description":
          "A food ingredient is any substance that is added to a food to achieve a desired effect.  Direct food additives are used in foods to impart specific technological or functional qualities. For example, stabilizers are used to help prevent separation of nutrients in milk products, while phosphates are used as a leavening agent in baked goods. Indirect additives are not intentionally added to food, but may be present in trace amounts as a result of processing, packaging, shipping or storage. Both direct and indirect food additives are controlled by national regulatory authorities, such as the U.S. Food and Drug Administration.  Any food ingredient must be proven safe to be used in foods.",
    },
    {
      "title": "Are food additives harmful to my health?",
      "description":
          "Food safety is and always will be the primary objective for food ingredient manufacturers.  Before food additives can be added to foods, they must be reviewed and deemed safe for their intended use by either the Food and Drug Administration or a panel of experts. These experts examine studies and all scientific information related to a particular substance and must conclude that the substance is safe for its intended use. Many food additives actually help make foods safer and more enjoyable by ensuring they do not spoil in transport or storage, maintain desirable characteristics, and remain uniform from batch to batch.  Additives may also have beneficial health effects. For example, some food additives such as stabilizers and emulsifiers help ensure vitamins and nutrients do not separate out of a food or beverage.",
    },
    {
      "title": "Are food ingredients natural?",
      "description":
          "Food ingredients, including food additives, come from a variety of sources using a variety of production methods. Some ingredients are derived from plant and mineral sources, while others are synthesized using chemical processes. However, there is no difference in how the body metabolizes food additives and naturally occurring substance found in foods. For example, the vitamin C found in an orange is metabolized the same as ascorbic acid added to canned and frozen food. Similarly, citric acid produced by fermentation is the same naturally-occurring substance that makes lemons tart. Each of these substances, whether found naturally in a fruit or synthesized in a lab, are metabolized using the same normal pathways of digestion. The body does not discriminate."
    },
    {
      "title": "How do I know what ingredients are in my food?",
      "description":
          "In Nepal, food manufacturers are required to include a list of used ingredients on all packaged foods and beverages. Ingredients are listed in descending order by weight, meaning the ingredient that weighs the most in the final product is listed first and the ingredient that weighs the least is listed last. The ingredient list is placed on the same label panel as the name and address of the manufacturer, packer or distributor, so you can always reach out to a company and ask about ingredients in their products if you have questions.t."
    },
    {
      "title": "Are food colors safe for children?",
      "description":
          "Yes. While a single study in Europe claimed to have found a link between food colors and hyperactivity, the results of the study have been widely criticized by regulatory bodies around the world. The U.S. Food and Drug Administration and European Food Safety Authority both reviewed the study and found that the research did not prove that food colors were the cause of the behavioral effects observed."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'FAQ',
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(bottom: 20),
              padding:
                  EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 60),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemBuilder: ((context, index) {
                    return ExpansionTile(
                      iconColor: Get.isDarkMode
                          ? Colors.purple.shade200
                          : Colors.green,
                      title: Text(
                        '${data[index]["title"]}',
                        style: TextStyle(
                          color: Get.isDarkMode
                              ? Colors.white.withOpacity(0.8)
                              : Colors.black54,
                          letterSpacing: 0.5,
                          wordSpacing: 1,
                          fontSize: 15.0,
                          height: 1.5,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      children: [
                        Text('${data[index]['description']}',
                            style:
                                Theme.of(context).primaryTextTheme.labelMedium),
                      ],
                    );
                  }),
                  itemCount: data.length,
                ),
              ),
            ),
          ),
        ));
  }
}
