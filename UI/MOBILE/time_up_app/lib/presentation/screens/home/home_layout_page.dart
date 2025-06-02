import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeLayoutPage extends StatefulWidget {
  const HomeLayoutPage({super.key});

  @override
  State<HomeLayoutPage> createState() => _HomeLayoutPageState();
}

class _HomeLayoutPageState extends State<HomeLayoutPage> {
  final List<Map<String, String>> projects = [
    {'name': 'Project Alpha', 'deadline': '2024-05-15', 'image': ''},
  ];

  final List<Map<String, String>> assignments = [
    {'title': 'Review Marketing Strategy', 'due': '2024-04-30'},
    {'title': 'Prepare Sales Report', 'due': '2024-05-05'},
    {'title': 'Client Meeting', 'due': '2024-05-10'},
  ];

  final List<double> weeklyHours = [5, 4, 2.5, 6.5, 1.5, 7, 3.5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Dashboard', style: GoogleFonts.inter(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [Icon(Icons.add, color: Colors.black)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SizedBox(height: 10),
            Text('Projects', style: sectionTitleStyle),
            const SizedBox(height: 8),
            SizedBox(
              height: 160,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: projects.length,
                separatorBuilder: (_, __) => const SizedBox(width: 10),
                itemBuilder: (context, index) {
                  final project = projects[index];
                  return SizedBox(
                    width: 140,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            project['image']!,
                            height: 100,
                            width: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(project['name']!, style: projectTitleStyle),
                        Text(
                          'Deadline: ${project['deadline']}',
                          style: dateTextStyle,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            Text('Assignments', style: sectionTitleStyle),
            const SizedBox(height: 10),
            Column(
              children:
                  assignments.map((task) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF1F5F9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              Icons.chat_bubble_outline,
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  task['title']!,
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Due: ${task['due']}',
                                  style: dateTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
            ),
            const SizedBox(height: 20),
            Text('Time Spent', style: sectionTitleStyle),
            const SizedBox(height: 8),
            const Text('Weekly Hours', style: TextStyle(fontSize: 14)),
            const SizedBox(height: 4),
            const Text(
              '35h',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Last 7 Days',
              style: TextStyle(fontSize: 13, color: Colors.blueGrey),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(7, (index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 16,
                        height: weeklyHours[index] * 10,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE2E8F0),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        [
                          'Mon',
                          'Tue',
                          'Wed',
                          'Thu',
                          'Fri',
                          'Sat',
                          'Sun',
                        ][index],
                        style: TextStyle(
                          color: Colors.blueGrey[700],
                          fontSize: 12,
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blueGrey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dashboard'),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Assignments',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  TextStyle get sectionTitleStyle =>
      GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.bold);

  TextStyle get projectTitleStyle =>
      GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600);

  TextStyle get dateTextStyle =>
      GoogleFonts.inter(fontSize: 13, color: Colors.blueGrey[700]);
}
