import 'package:flutter/material.dart';

// 앱의 라우트를 나타내는 클래스
class AppRoute {
  final String name;
  final String? id;

  AppRoute({required this.name, this.id});
}

// RouterDelegate 구현
class MyRouterDelegate extends RouterDelegate<AppRoute>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRoute> {
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  MyRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  String? _selectedId;

  List<Page> get pages {
    return [
      MaterialPage(
        key: ValueKey('HomeScreen'),
        child: HomeScreen(
          onItemTapped: (String id) {
            _selectedId = id;
            notifyListeners();
          },
        ),
      ),
      if (_selectedId != null)
        MaterialPage(
          key: ValueKey('DetailScreen'),
          child: DetailScreen(id: _selectedId!),
        ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: pages,
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        _selectedId = null;
        notifyListeners();
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(AppRoute configuration) async {
    if (configuration.name == 'detail') {
      _selectedId = configuration.id;
    } else {
      _selectedId = null;
    }
    notifyListeners();
  }
}

// RouteInformationParser 구현
class MyRouteInformationParser extends RouteInformationParser<AppRoute> {
  @override
  Future<AppRoute> parseRouteInformation(RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location!);
    if (uri.pathSegments.length == 2 && uri.pathSegments[0] == 'detail') {
      return AppRoute(name: 'detail', id: uri.pathSegments[1]);
    } else {
      return AppRoute(name: 'home');
    }
  }

  @override
  RouteInformation? restoreRouteInformation(AppRoute configuration) {
    if (configuration.name == 'home') {
      return RouteInformation(location: '/');
    }
    if (configuration.name == 'detail') {
      return RouteInformation(location: '/detail/${configuration.id}');
    }
    return null;
  }
}

// Home 화면
class HomeScreen extends StatelessWidget {
  final Function(String) onItemTapped;

  HomeScreen({required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Item 1'),
            onTap: () => onItemTapped('1'),
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () => onItemTapped('2'),
          ),
        ],
      ),
    );
  }
}

// Detail 화면
class DetailScreen extends StatelessWidget {
  final String id;

  DetailScreen({required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail')),
      body: Center(child: Text("Detail for item's id:  $id")),
    );
  }
}

// 메인 앱
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: MyRouterDelegate(),
      routeInformationParser: MyRouteInformationParser(),
    );
  }
}

void main() {
  runApp(MyApp());
}