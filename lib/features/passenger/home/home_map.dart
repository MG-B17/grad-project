import 'package:flutter/material.dart';

class HomeMap extends StatelessWidget {
  const HomeMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(0, -0.2),
          radius: 1.5,
          colors: [
            Color(0xFFE8F5E9),
            Color(0xFFF1F8E9),
            Color(0xFFDCEDC8),
          ],
        ),
      ),
      child: Stack(
        children: [
          _buildMapMarker(context, const Offset(100, 200)),
          _buildMapMarker(context, const Offset(250, 450)),
          _buildMapMarker(context, const Offset(80, 500)),
          _buildUserLocationMarker(context, const Offset(200, 400)),
        ],
      ),
    );
  }

  Widget _buildMapMarker(BuildContext context, Offset position) {
    return Positioned(
      left: position.dx,
      top: position.dy,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(color: Color(0xFF558B2F), shape: BoxShape.circle),
            child: const Icon(Icons.directions_bus, color: Colors.white, size: 16),
          ),
          Container(width: 4, height: 4, decoration: const BoxDecoration(color: Color(0xFF558B2F), shape: BoxShape.circle)),
        ],
      ),
    );
  }

  Widget _buildUserLocationMarker(BuildContext context, Offset position) {
    return Positioned(
      left: position.dx,
      top: position.dy,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color(0xFFF09063).withValues(alpha: 0.2),
          shape: BoxShape.circle,
        ),
        child: Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            color: const Color(0xFFF09063),
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 3),
          ),
        ),
      ),
    );
  }
}
