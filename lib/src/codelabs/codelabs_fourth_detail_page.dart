// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:dicoding_flutter_beginner/src/codelabs/models/tourism_place.dart';

class CodelabsFourthDetailPage extends StatelessWidget {
  final TourismPlace place;
  const CodelabsFourthDetailPage({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          DetailMobilePage(place: place);
        } else {
          return DetailWebPage(place: place);
        }
        return DetailWebPage(place: place);
      },
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final TourismPlace place;
  const DetailWebPage({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  State<DetailWebPage> createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: SizedBox(
            width: 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "WISATA BANDUNG",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset(widget.place.imageAsset),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 150,
                            padding: const EdgeInsets.only(
                              bottom: 16,
                            ),
                            child: Scrollbar(
                              controller: scrollController,
                              child: Container(
                                height: 150,
                                padding: const EdgeInsets.only(
                                  bottom: 16,
                                ),
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: widget.place.imageUrls.map((url) {
                                    return Padding(
                                      padding: const EdgeInsets.all(4),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(url),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 32,
                    ),
                    Expanded(
                        child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              children: [
                                Text(
                                  widget.place.name,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 30.0,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.calendar_today,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      widget.place.openDays,
                                    ),
                                  ],
                                ),
                                const FavoriteButton(),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.access_time),
                                const SizedBox(width: 8.0),
                                Text(
                                  widget.place.openTime,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.monetization_on,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(widget.place.ticketPrice)
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Text(
                                widget.place.description,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            )
                          ],
                        ),
                      ),
                    ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final TourismPlace place;
  const DetailMobilePage({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Image.asset(
                  place.imageAsset,
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey.withOpacity(0.6),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        CircleAvatar(
                            backgroundColor: Colors.grey.withOpacity(0.7),
                            child: const FavoriteButton()),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Icon(
                        Icons.calendar_today,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(place.openDays)
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(
                        Icons.access_time,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(place.openTime)
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(
                        Icons.monetization_on,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(place.ticketPrice)
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Text(
                place.description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: place.imageUrls.map((url) {
                    return Padding(
                      padding: const EdgeInsets.all(4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          url,
                        ),
                      ),
                    );
                  }).toList()),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      icon: isFavorite
          ? const Icon(Icons.favorite, color: Colors.red)
          : const Icon(
              Icons.favorite_border,
              color: Colors.red,
            ),
    );
  }
}
