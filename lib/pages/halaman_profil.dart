import 'package:flutter/material.dart';

class HalamanProfil extends StatelessWidget {
  const HalamanProfil({super.key});

  final List<Map<String, String>> anggota = const [
    {
      'nama': 'Nur Ikhsan Alfiqodri',
      'ttl': 'Nabire, 10 0ktober 1997',
      'alamat': 'Cibubur, Depok',
      'foto': 'assets/images/Anggota1.jpg',
    },
    {
      'nama': 'Muhammad Septian Farisasmita`',
      'ttl': 'Jakarta, 04 September 2003',
      'alamat': 'Matraman, Jakarta Timur',
      'foto': 'assets/images/Anggota2.jpg',
    },
    {
      'nama': 'Mochamad Zaidan Alrasyid',
      'ttl': 'Jakarta, 13 Juli 2002',
      'alamat': 'Jagakarsa, Jakarta Selatan',
      'foto': 'assets/images/Anggota3.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      appBar: AppBar(
        title: const Text('Profil Anggota'),
        backgroundColor: const Color.fromARGB(255, 176, 176, 87),
      ),
      body: ListView.builder(
        itemCount: anggota.length,
        itemBuilder: (context, index) {
          final item = anggota[index];
          return InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder:
                    (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      title: Text(item['nama']!, textAlign: TextAlign.center),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              item['foto']!,
                              width: 120,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text("TTL: ${item['ttl']}"),
                          Text("Alamat: ${item['alamat']}"),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Tutup'),
                        ),
                      ],
                    ),
              );
            },
            child: Card(
              elevation: 5,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        item['foto']!,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['nama']!,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.cake,
                                size: 16,
                                color: Color.fromARGB(255, 176, 176, 87),
                              ),
                              const SizedBox(width: 6),
                              Expanded(
                                child: Text(
                                  'TTL: ${item['ttl']}',
                                  style: const TextStyle(fontSize: 14),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.location_on,
                                size: 16,
                                color: Color.fromARGB(255, 176, 176, 87),
                              ),
                              const SizedBox(width: 6),
                              Expanded(
                                child: Text(
                                  'Alamat: ${item['alamat']}',
                                  style: const TextStyle(fontSize: 14),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
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
