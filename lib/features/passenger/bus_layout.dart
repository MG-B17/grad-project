import 'package:flutter/material.dart';
import 'package:micromasr/core/app_strings.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/size_extensions.dart';
import 'package:micromasr/core/vertical_space.dart';


class BusLayout extends StatelessWidget {
  final Set<int> selectedSeats;
  final Function(int) onSeatToggled;

  const BusLayout({
    super.key,
    required this.selectedSeats,
    required this.onSeatToggled,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.aw),
      padding: EdgeInsets.all(24.aw),
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: context.colors.outline.withValues(alpha: 0.5)),
      ),
      child: Column(
        children: [
          _buildDriverSection(context),
          const VerticalSpace(24),
          const Divider(),
          const VerticalSpace(24),
          Expanded(child: _buildSeatsGrid(context)),
        ],
      ),
    );
  }

  Widget _buildDriverSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            const Icon(Icons.directions_bus, size: 32, color: Color(0xFF757575)),
            Text(AppStrings.driverLabel, style: context.bodySmallTextStyle),
          ],
        ),
      ],
    );
  }

  Widget _buildSeatsGrid(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        if (index % 4 == 2) return const SizedBox.shrink(); // Aisle
        return _buildSeat(context, index);
      },
      itemCount: 20,
    );
  }

  Widget _buildSeat(BuildContext context, int index) {
    final reservedSeats = [0, 4, 11, 14, 15, 18];
    final isReserved = reservedSeats.contains(index);
    final isSelected = selectedSeats.contains(index);
    
    final color = isSelected 
        ? const Color(0xFFF09063) 
        : (isReserved ? context.colors.outline : const Color(0xFF9CCC65));
    final icon = isSelected ? Icons.check : (isReserved ? Icons.person : null);

    return GestureDetector(
      onTap: isReserved ? null : () => onSeatToggled(index),
      child: Container(
        decoration: BoxDecoration(
          color: icon == null ? Colors.white : color,
          shape: BoxShape.circle,
          border: Border.all(color: color, width: 2),
        ),
        child: icon != null ? Icon(icon, size: 16, color: Colors.white) : null,
      ),
    );
  }
}












