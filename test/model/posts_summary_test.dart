import 'package:flutter_test/flutter_test.dart';
import 'package:jsonplaceholder/model/api/posts_response.dart';
import 'package:jsonplaceholder/model/api/users_response.dart';
import 'package:jsonplaceholder/model/app/posts_summary.dart';

void main() {
  var postsResponse = const PostsResponse(
    id: 1,
    title: 'some-title',
    body: 'some-body',
    userId: 1,
  );

  List<UsersResponse> userResponse = [
    const UsersResponse(id: 1, username: 'some-username')
  ];

  group('mapper (PostsSummary)', () {
    test('When given a correct PostsResponse it returns correct data', () {
      var postsSummary = PostsSummary.mapper([postsResponse], userResponse);
      var post = postsSummary.first;
      expect(post.id, 1);
      expect(post.title, 'some-title');
      expect(post.body, 'some-body');
      expect(post.userId, '1');
      expect(post.userName, 'some-username');
    });

    group('When given incorrect PostsResponse data it returns false', () {
      test('Field required for id is not supplied', () {
        var postsSummary = PostsSummary.mapper(
            [postsResponse.copyWith(id: null)], userResponse);
        expect(postsSummary, isEmpty);
      });

      test('Field required for title is not supplied', () {
        var postsSummary = PostsSummary.mapper(
            [postsResponse.copyWith(title: null)], userResponse);
        expect(postsSummary, isEmpty);
      });
    });
  });

  group('mapper (List<PostsSummary>)', () {
    test('If PostsSummary list is empty then it returns an empty list', () {
      var postsSummary = PostsSummary.mapper(List.empty(), userResponse);
      expect(postsSummary, isEmpty);
    });

    group(
        'If PostsResponse list is comprised of some number of valid launches it returns that same number of correct PostsSummary objects',
        () {
      test('A single post', () {
        var postsSummary = PostsSummary.mapper([postsResponse], userResponse);
        var post = postsSummary.first;
        expect(post.id, 1);
        expect(post.title, 'some-title');
        expect(post.body, 'some-body');
        expect(post.userId, '1');
        expect(post.userName, 'some-username');
      });

      test('More than one post', () {
        var postsSummary = PostsSummary.mapper([
          postsResponse,
          postsResponse.copyWith(id: 2, title: 'some-other-title')
        ], userResponse);
        expect(postsSummary.first.id, 1);
        expect(postsSummary.first.title, 'some-title');
        expect(postsSummary.first.body, 'some-body');
        expect(postsSummary.first.userId, '1');
        expect(postsSummary.first.userName, 'some-username');
        expect(postsSummary.last.id, 2);
        expect(postsSummary.last.title, 'some-other-title');
      });
    });

    group(
        "If PostsResponse list is comprised of some number of invalid launches it doesn't return that same number of PostsSummary objects",
        () {
      test("If all posts are bad data it returns an empty list", () {
        var postsSummary = PostsSummary.mapper([
          postsResponse.copyWith(id: null),
          postsResponse.copyWith(title: null)
        ], userResponse);
        expect(postsSummary, isEmpty);
      });

      test(
          "More than one post with some good and some bad data will return only the good data",
          () {
        var postsSummary = PostsSummary.mapper([
          postsResponse, // Good data
          postsResponse.copyWith(title: null)
        ], userResponse);
        expect(postsSummary.first.id, 1);
        expect(postsSummary.first.title, 'some-title');
        expect(postsSummary.first.body, 'some-body');
        expect(postsSummary.first.userId, '1');
        expect(postsSummary.first.userName, 'some-username');
      });
    });
  });
}
