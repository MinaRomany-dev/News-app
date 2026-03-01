import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/apptheme.dart';
import 'package:newsapp/news/data/models/articles.dart';

import 'package:timeago/timeago.dart' as timeago;

class News_item extends StatelessWidget {
 final  Article article;
const   News_item({required this.article});
  @override
  Widget build(BuildContext context) {
    final hasimage = article.urlToImage?.trim().isNotEmpty == true;
//  final fifteenago = DateTime.now().subtract(DateFormat('yyyy-MM-dd').format());

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: hasimage
                ? CachedNetworkImage(
                    //  height: 180,
                    fit: BoxFit.fill,
                    width: double.infinity,
                    placeholder: (context, url) => Center(
                            child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.green,
                        )),
                    errorWidget: (_, __, ___) =>
                        const Icon(Icons.image_not_supported),
                    imageUrl: article.urlToImage!)
                : Container(
                    color: Colors.grey[300],
                    child: Icon(Icons.image),
                    width: double.infinity,
                  ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
              article.source?.name?.trim().isNotEmpty == true
                  ? article.source!.name!
                  : " Unknowen",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontSize: 10, color: Color(0XFF42505C))),
          Text(
              article.title?.trim().isNotEmpty == true
                  ? article.title!
                  : 'No Title',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Apptheme.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14)),
          SizedBox(
            height: 4,
          ),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
                article.publishedAt != null
                    ? timeago.format( article.publishedAt!)
                    : "",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontSize: 13, color: Color(0XFF42505C))),
          ),
        ],
      ),
    );
  }
}
