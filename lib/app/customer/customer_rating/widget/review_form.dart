import 'package:flutter/material.dart';

class ReviewForm extends StatelessWidget {
  final String title;
  final String subtitle;
  final String ratingLabel;
  final Function(int) onRatingChanged;
  final TextEditingController tipController;
  final TextEditingController reviewController;
  final VoidCallback onSubmit;
  final int initialRating;

  const ReviewForm({
    super.key,
    this.title = "How was your experience?",
    this.subtitle =
    "Your review helps other customers and our operators.",
    this.ratingLabel = "Rate Your Drone Operator",
    required this.onRatingChanged,
    required this.tipController,
    required this.reviewController,
    required this.onSubmit,
    this.initialRating = 0,
  });

  @override
  Widget build(BuildContext context) {
    int currentRating = initialRating;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF0FFF5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(height: 16),

          // Rating label
          Text(
            ratingLabel,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 8),

          // Star Rating
          StatefulBuilder(
            builder: (context, setState) {
              return Row(
                children: List.generate(5, (index) {
                  return IconButton(
                    onPressed: () {
                      setState(() => currentRating = index + 1);
                      onRatingChanged(currentRating);
                    },
                    icon: Icon(
                      index < currentRating
                          ? Icons.star
                          : Icons.star_border,
                      color: Colors.amber,
                      size: 32,
                    ),
                  );
                }),
              );
            },
          ),
          const SizedBox(height: 12),

          // Review
          const Text(
            "Review",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: reviewController,
            maxLines: 5,
            decoration: InputDecoration(
              hintText: "Write here",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            ),
          ),
          const SizedBox(height: 20),

          // Submit button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onSubmit,
              child: const Text(
                "Submit",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
