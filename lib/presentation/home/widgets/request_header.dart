import 'package:flutter/material.dart';

Widget requestHeader() => Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Row(
        children: const [
          Icon(Icons.notifications_active_rounded, color: Colors.grey),
          SizedBox(width: 8),
          Text(
            'Join Requests',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
