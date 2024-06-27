// SubView

import 'package:final_assignment/core/common/design_card.dart';
import 'package:final_assignment/features/design/presentation/viewmodel/design_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final designState = ref.watch(designViewModelProvider);

    return NotificationListener(
      onNotification: (notification) {
        if (notification is ScrollEndNotification) {
          if (_scrollController.position.extentAfter == 0) {
            if (designState.hasReachedMax) {
              return false;
            }
            ref.read(designViewModelProvider.notifier).fetchDesigns();
          }
        }
        return true;
      },
      child: SizedBox.expand(
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
                      final designState = ref.watch(designViewModelProvider);
                      return GridView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
                        controller: _scrollController,
                        itemCount: designState.designs.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // Two items per row
                          crossAxisSpacing: 8.0, // Space between columns
                          mainAxisSpacing: 8.0, // Space between rows
                          childAspectRatio: 0.7, // Aspect ratio of each item
                        ),
                        itemBuilder: (context, index) {
                          final design = designState.designs[index];

                          return DesignCard(
                            designEntity: design,
                          );
                        },
                      );
                    },
                  ),
                ),
                if (designState.isLoading)
                  const CircularProgressIndicator()
                else if (designState.hasReachedMax)
                  const Text('No more data')
                else ...{
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(color: Colors.red),
                    ],
                  ),
                }
              ],
            ),
          ),
        ),
      ),
    );
  }
}
