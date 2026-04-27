import 'package:flutter/material.dart';
import 'package:micromasr/core/extensions/size_extensions.dart';
import 'package:micromasr/core/widgets/vertical_space.dart';
import 'package:micromasr/features/passenger/profile/presentation/widgets/common/profile_app_bar.dart';
import 'package:micromasr/features/passenger/profile/presentation/widgets/saved_places/saved_place_item.dart';
import 'package:micromasr/core/widgets/app_button.dart';

class SavedPlacesScreen extends StatelessWidget {
  const SavedPlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2EFE8),
      appBar: const ProfileAppBar(title: 'الأماكن المحفوظة'),
      body: Padding(
        padding: EdgeInsets.all(20.aw),
        child: Column(
          children: [
            SavedPlaceItem(
              icon: Icons.home_rounded,
              label: 'المنزل',
              address: '١٥ شارع التحرير، الدقي',
              onDelete: () {},
            ),
            const VerticalSpace(16),
            SavedPlaceItem(
              icon: Icons.work_rounded,
              label: 'العمل',
              address: 'القرية الذكية، طريق مصر اسكندرية',
              onDelete: () {},
            ),
            const Spacer(),
            AppButton(
              label: 'إضافة مكان جديد',
              icon: Icons.add_circle_outline_rounded,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
