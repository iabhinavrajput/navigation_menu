import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class VehicleDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final dateFormatter = DateFormat('dd-MM-yyyy hh:mm:ss a');
    final formattedDate = dateFormatter.format(now);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/car.png', // Replace with your car image asset
                                height: 70,
                                width: 70,
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'CRETA',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    formattedDate, // Use the formatted date here
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Column(
                            children: [
                              Text(
                                '0',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'km/h',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(thickness: 1),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            StatusIcon(
                              icon: Icons.vpn_key,
                              color: Colors.red,
                              label: 'Ignition OFF',
                            ),
                            SizedBox(width: 10), // Space between icons
                            StatusIcon(
                              icon: Icons.power,
                              color: Colors.green,
                              label: 'Power Connected',
                            ),
                            SizedBox(width: 10),
                            StatusIcon(
                              icon: Icons.local_parking,
                              color: Colors.red,
                              label: 'Parking OFF',
                            ),
                            SizedBox(width: 10),
                            StatusIcon(
                              icon: Icons.signal_cellular_alt,
                              color: Colors.green,
                              label: 'GSM Strong',
                            ),
                            SizedBox(width: 10),
                            StatusIcon(
                              icon: Icons.gps_fixed,
                              color: Colors.green,
                              label: 'GPS Fixed',
                            ),
                            SizedBox(width: 10),
                            StatusIcon(
                              icon: Icons.lock_open,
                              color: Colors.green,
                              label: 'Mobile',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class StatusIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;

  const StatusIcon({
    required this.icon,
    required this.color,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
          size: 30,
        ),
        const SizedBox(height: 5),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
