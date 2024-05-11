import 'package:flutter/material.dart';

//stateful widget permite gurdar el estado
class CounterFuntionScreen extends StatefulWidget {
  const CounterFuntionScreen({super.key});

  @override
  State<CounterFuntionScreen> createState() => _CounterFuntionScreenState();
}

class _CounterFuntionScreenState extends State<CounterFuntionScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Contador")),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    counter = 0;
                  });
                },
                icon: const Icon(Icons.refresh_outlined))
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                counter.toString(),
                style:
                    const TextStyle(fontSize: 120, fontWeight: FontWeight.bold),
              ),
              Text(
                counter == 1 ? "Click" : "Clicks",
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.w100),
              )
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.refresh_outlined,
              onPress: () {
                setState(() {
                  counter = 0;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              icon: Icons.plus_one_rounded,
              onPress: () {
                setState(() {
                  counter++;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPress: () {
                setState(() {
                  if (counter > 0) {
                    counter--;
                  }
                });
              },
            ),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPress;

  const CustomButton({
    super.key,
    required this.icon,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPress,
      child: Icon(icon),
    );
  }
}
