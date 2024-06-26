// SubView

import 'package:final_assignment/core/common/design_card.dart';
import 'package:final_assignment/features/design/presentation/viewmodel/design_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});
@override
  ConsumerState<ConsumerStatefulWidget> createState() => _DesignViewState();
}

class _DesignViewState extends ConsumerState<HomeView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
final state = ref.watch(designViewModelProvider);

return NotificationListener(
      onNotification: (notification) {
        if (notification is ScrollEndNotification) {
          if (_scrollController.position.extentAfter == 0) {
            ref.read(designViewModelProvider.notifier).getDesigns();
          }
        }
        return true;
      },
      child:  SizedBox.expand(
child: RefreshIndicator(
          color: Colors.green,
          backgroundColor: Colors.amberAccent,
          onRefresh: () async {
            ref.read(designViewModelProvider.notifier).resetState();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: Consumer(
                    builder: (context, ref, child) {
                      final state = ref.watch(designViewModelProvider);
                      return GridView.builder(
                    controller: _scrollController,
                    itemCount: state.design.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Two items per row
                      crossAxisSpacing: 8.0, // Space between columns
                      mainAxisSpacing: 8.0, // Space between rows
                      childAspectRatio: 0.7, // Aspect ratio of each item
                    ),
                    itemBuilder: (context, index) {
                      final design = state.design[index];
                      return DesignCard(
                        designName: design.designName,
                        designImage: design.designImage,
                        designPrice: design.designPrice,
                        designCategory: design.designCategory,
                        designDescription: design.designDescription,
                        
                          );
                        },
                      );
                    },
                  ),
                ),
                if (state.isLoading)
                  const CircularProgressIndicator(color: Colors.red),
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}