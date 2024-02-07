import 'package:advanced_news_app/Core/utils/styles.dart';
import 'package:advanced_news_app/Features/parameters/data/local_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SearchCountry extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: const Icon(Icons.close_rounded),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back_rounded),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return searchMethod();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return searchMethod();
  }

  searchMethod() {
    List filter = query.isEmpty
        ? countries
        : countries
            .where((element) =>
                element.toLowerCase().contains(query.toLowerCase()))
            .toList();
    return filter.isEmpty
        ? Center(
            child: Text(
              "No Country Found!",
              style: Styles.textStyle20,
            ),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: filter.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        countryName = countrySymbols[index];
                        GoRouter.of(context)
                            .push('/categoryView', extra: countryName);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8,right: 15,left: 15),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color.fromARGB(255, 245, 245, 245),
                          ),
                          child: ListTile(
                            title: Text(
                              countries[index],
                              style: Styles.textStyle16,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
  }
}
