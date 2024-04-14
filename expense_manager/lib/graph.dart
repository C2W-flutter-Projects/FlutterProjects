import 'package:expense_manager/myutilities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class Graph extends StatefulWidget {
  const Graph({super.key});

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  Map<String, double> data = {
    "Food": 650,
    "Fuel": 600,
    "Medicine": 500,
    "Entertainment": 475,
    "Shopping": 325,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Graphs",
          style: GoogleFonts.poppins(
              textStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        ),
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 20, right: 20),
        child: Column(
          children: [
            PieChart(
              dataMap: data,
              chartType: ChartType.ring,
              ringStrokeWidth: 40,
              chartRadius: 200,
              centerText: 'Total\n₹25000',
              chartValuesOptions: const ChartValuesOptions(
                showChartValues: false,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                          child: SvgPicture.asset("assets/medicine.svg"),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Medicine",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500)),
                        ),
                        const Spacer(),
                        Text(
                          "₹ 650.00",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500)),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 5,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 35.0, left: 35),
              child: Row(
                children: [
                  Text(
                    "Total",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                  ),
                  const Spacer(),
                  Text(
                    "₹ 2,550.00",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
