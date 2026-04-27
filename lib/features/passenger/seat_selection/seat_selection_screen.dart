import 'package:flutter/material.dart';
import 'package:micromasr/core/extensions/context_extensions.dart';
import 'package:micromasr/core/widgets/vertical_space.dart';
import '../widgets/seats_header.dart';
import '../widgets/seats_legend.dart';
import '../widgets/bus_layout.dart';
import '../widgets/seats_booking_bar.dart';

class SeatSelectionScreen extends StatefulWidget {
  const SeatSelectionScreen({super.key});

  @override
  State<SeatSelectionScreen> createState() => _SeatSelectionScreenState();
}

class _SeatSelectionScreenState extends State<SeatSelectionScreen> {
  final Set<int> _selectedSeats = {};

  void _toggleSeat(int index) {
    setState(() {
      if (_selectedSeats.contains(index)) {
        _selectedSeats.remove(index);
      } else {
        _selectedSeats.add(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: SafeArea(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(20), child: SeatsHeader()),
            const SeatsLegend(),
            const VerticalSpace(24),
            Expanded(
              child: BusLayout(
                selectedSeats: _selectedSeats,
                onSeatToggled: _toggleSeat,
              ),
            ),
            SeatsBookingBar(selectedSeatsCount: _selectedSeats.length),
          ],
        ),
      ),
    );
  }
}

