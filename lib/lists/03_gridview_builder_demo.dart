import 'package:flutter/material.dart';

class GridviewBuilderDemo extends StatelessWidget {
  const GridviewBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(5),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,
        mainAxisExtent: 150,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),

      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: Text('Some dialog ${index + 1}'),
                    ));
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 3,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            // child: Text(
            //   'item ${index + 3}',
            //   style: Theme.of(context).textTheme.bodyLarge,
            // ),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPw5ZFqUie4s84cJXsEmoi1yHkHUu1nZwH09ABq7XugEAFnPh1bGqtat0Z3PP88vDeFpk&usqp=CAU',
              fit: BoxFit.fill,
            ),
          ),
        );
      },
      itemCount: 20,
    );
  }
}
