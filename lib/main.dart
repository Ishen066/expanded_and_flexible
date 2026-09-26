import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded, Flexible & Flex"),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "1. Expanded (Forces child to stretch)",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),

            Row(
              children: [
                Container(color: Colors.grey, width: 50, height: 50),

                // TODO 1: Wrap this cyan Container in an Expanded widget.
                // - Expanded forces it to stretch and fill all remaining space!
                Expanded(
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.cyan,
                    child: const Center(
                      child: Text(
                        "Expanded",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                Container(color: Colors.grey, width: 50, height: 50),
              ],
            ),

            const Divider(height: 30, thickness: 2),

            const Text(
              "2. Flexible (Lets child keep its size)",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),

            Row(
              children: [
                Container(color: Colors.grey, width: 50, height: 50),

                // TODO 2: Wrap this pink Container in a Flexible widget.
                // - Flexible DOES NOT stretch it, but prevents layout overflows on small screens.
                Flexible(
                  child: Container(
                    width: 120,
                    height: 50,
                    color: Colors.pinkAccent,
                    child: const Center(
                      child: Text(
                        "Flexible",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                Container(color: Colors.grey, width: 50, height: 50),
              ],
            ),

            const Divider(height: 30, thickness: 2),

            const Text(
              "3. Flex Ratios (flex: 1 vs flex: 2)",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),

            Row(
              children: [
                // TODO 3: Wrap this amber Container in an Expanded widget.
                // - Give it a property of `flex: 1`.
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 50,
                    color: Colors.amber,
                    child: const Center(child: Text("flex: 1")),
                  ),
                ),

                // TODO 4: Wrap this purple Container in an Expanded widget.
                // - Give it a property of `flex: 2`.
                // - Notice how it becomes exactly twice as wide as the flex 1 boxes!
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 50,
                    color: Colors.purple,
                    child: const Center(
                      child: Text(
                        "flex: 2",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                // TODO 5: Wrap this green Container in an Expanded widget.
                // - Give it a property of `flex: 1`.
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 50,
                    color: Colors.green,
                    child: const Center(child: Text("flex: 1")),
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
