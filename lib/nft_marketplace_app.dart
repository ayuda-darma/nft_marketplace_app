import 'package:flutter/material.dart';
import 'package:nft_marketplace_app/ui/nft_profile_page.dart';

class NFTMarketplaceApp extends StatelessWidget {
  const NFTMarketplaceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NFTProfilePage(),
    );
  }
}
