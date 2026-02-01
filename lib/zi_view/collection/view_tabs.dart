import 'package:flutter/material.dart';
import 'package:zi_core/zi_core.dart';

class ViewTabs extends StatefulWidget {
  const ViewTabs({super.key});

  @override
  State<ViewTabs> createState() => _ViewTabsState();
}

class _ViewTabsState extends State<ViewTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<String> selectedStatus = [];

  final List<String> statusOptions = [
    'Active',
    'Pending',
    'Completed',
    'Cancelled',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  // void _openStatusFilter() {
  //   ZiFilterPopup.show(
  //     context,
  //     popup: ZiFilterSelectionPopup <String>(
  //       title: 'Filter by Status',
  //       options: statusOptions,
  //       initialValues: selectedStatus,
  //       multiSelect: true,
  //       labelBuilder: (e) => e,
  //       onApply: (values) {
  //         setState(() => selectedStatus = values);
  //       },
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ZiAppBar(
        title: 'Zi Components',
        leadingType: ZiLeadingType.back,
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_alt_outlined),
            onPressed: () {},
            // onPressed: _openStatusFilter,
          ),
        ],
        bottom: ZiTabBar(
          controller: _tabController,
          tabs: const [
            ZiTab(label: 'Overview', icon: Icons.dashboard),
            ZiTab(label: 'Orders', icon: Icons.shopping_bag),
            ZiTab(label: 'Settings', icon: Icons.settings),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [_overviewTab(), _ordersTab(), _settingsTab()],
      ),
    );
  }

  // -----------------------------
  // TAB VIEWS
  // -----------------------------

  Widget _overviewTab() {
    return _section(
      title: 'Overview',
      child: const Text(
        'Use this tab to showcase dashboards, metrics, summaries.',
      ),
    );
  }

  Widget _ordersTab() {
    return _section(
      title: 'Orders',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Applied Filters:'),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            children:
                selectedStatus.isEmpty
                    ? [const Chip(label: Text('None'))]
                    : selectedStatus.map((e) => Chip(label: Text(e))).toList(),
          ),
          const SizedBox(height: 24),
          const Text(
            'This tab demonstrates:\n'
            '• Filter popup\n'
            '• Multi-select filters\n'
            '• Chips as applied filters',
          ),
        ],
      ),
    );
  }

  Widget _settingsTab() {
    return _section(
      title: 'Settings',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('• App preferences'),
          Text('• Theme switching'),
          Text('• Account settings'),
        ],
      ),
    );
  }

  // -----------------------------
  // COMMON SECTION WRAPPER
  // -----------------------------

  Widget _section({required String title, required Widget child}) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16),
          child,
        ],
      ),
    );
  }
}
