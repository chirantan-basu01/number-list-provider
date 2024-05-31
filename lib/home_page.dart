import 'package:flutter/material.dart';
import 'package:number_list_provider/second_page.dart';
import 'package:provider/provider.dart';
import 'list_provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder: (context, numbersProviderModel, child) => Scaffold(
        appBar: AppBar(),
        body: SizedBox(
          child: Column(
            children: [
              Text(
                "Total count:  ${numbersProviderModel.numbers.last.toString()}",
                style: const TextStyle(fontSize: 50),
              ),
              const SizedBox(height: 50.0),
              Expanded(
                child: ListView.builder(
                    itemCount: numbersProviderModel.numbers.length,
                    itemBuilder: (context, index) {
                      return Text(
                        numbersProviderModel.numbers[index].toString(),
                        style: const TextStyle(fontSize: 30),
                        textAlign: TextAlign.center,
                      );
                    }),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 14.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Second()),
                    );
                  },
                  child: const Text('Second'),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numbersProviderModel.add();
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
