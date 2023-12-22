// import 'package:dio/dio.dart';
// import 'package:flutter_alice/alice.dart';
// import 'package:get_it/get_it.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:socialmedia/common/constants.dart';
// import 'package:socialmedia/common/models/post_model.dart';
// import 'package:socialmedia/core/platform/network_info.dart';
// import 'package:socialmedia/core/platform/pretty_dio_logger.dart';
// import 'package:socialmedia/features/create_post/data/data_sources/create_remote_data_source.dart';
// import 'package:socialmedia/features/create_post/data/repositories/create_repository_impl.dart';
// import 'package:socialmedia/features/create_post/domain/create_post_repository.dart';
// import 'package:socialmedia/features/create_post/presentation/bloc/create_post_bloc.dart';
// import 'package:socialmedia/features/home/data/data_sources/home_remote_data_source.dart';
// import 'package:socialmedia/features/home/data/model/replay_post_model.dart';
// import 'package:socialmedia/features/home/data/repositories/home_repository_impl.dart';
// import 'package:socialmedia/features/home/domain/repositories/home_repository.dart';
// import 'package:socialmedia/features/home/pages/bloc/home_bloc.dart';
// import 'package:socialmedia/features/login/data/data_sources/login_remote_data_source.dart';
// import 'package:socialmedia/features/login/data/repositories/login_repository_impl.dart';
// import 'package:socialmedia/features/login/domain/repositories/login_repository.dart';
// import 'package:socialmedia/features/login/presentation/bloc/login_bloc.dart';
// import 'package:socialmedia/features/messanger/data/data_sources/message_remote_data_source.dart';
// import 'package:socialmedia/features/messanger/data/models/chat_message_model.dart';
// import 'package:socialmedia/features/messanger/data/models/getchats.dart';
// import 'package:socialmedia/features/messanger/data/models/group_message_model.dart';
// import 'package:socialmedia/features/messanger/data/models/group_model.dart';
// import 'package:socialmedia/features/messanger/data/models/send_message_model.dart';
// import 'package:socialmedia/features/messanger/data/repositories/message_repository_impl.dart';
// import 'package:socialmedia/features/messanger/domain/repositories/message_repository.dart';
// import 'package:socialmedia/features/messanger/pages/bloc/messenger_bloc.dart';
// import 'package:socialmedia/features/music/data/data_sources/music_remote_data_source.dart';
// import 'package:socialmedia/features/music/data/repositories/music_repository_impl.dart';
// import 'package:socialmedia/features/music/domain/repositories/music_repository.dart';
// import 'package:socialmedia/features/music/presentation/bloc/music_bloc_bloc.dart';
// import 'package:socialmedia/features/profile/data/data_sources/profile_remote_data_source.dart';
// import 'package:socialmedia/features/profile/data/repositories/profile_repository_impl.dart';
// import 'package:socialmedia/features/profile/domain/repositories/profile_repository.dart';
// import 'package:socialmedia/features/profile/presentation/bloc/profile_bloc.dart';
// import 'package:socialmedia/features/shorts_page/data/data_sources/shorts_remote_data_source.dart';
// import 'package:socialmedia/features/shorts_page/data/repositories/shorts_repository_impl.dart';
// import 'package:socialmedia/features/shorts_page/domain/repositories/short_repository.dart';
// import 'package:socialmedia/features/shorts_page/pages/bloc/shorts_bloc.dart';
// import 'package:socialmedia/features/stories_page/data/data_sources/stories_remote_data_source.dart';
// import 'package:socialmedia/features/stories_page/data/repositories/stories_repository_impl.dart';
// import 'package:socialmedia/features/stories_page/domain/repositories/stories_repository.dart';
// import 'package:socialmedia/features/stories_page/pages/bloc/stories_bloc.dart';
// import 'package:socialmedia/services/comment/bloc/comment_bloc.dart';
// import 'package:socialmedia/services/comment/data/data_sources/comment_remote_data_source.dart';
// import 'package:socialmedia/services/comment/data/repositories/comment_repository_impl.dart';
// import 'package:socialmedia/services/comment/domain/repositories/comment_repository.dart';
// import 'package:socialmedia/services/follow_user/bloc/follow_bloc.dart';
// import 'package:socialmedia/services/follow_user/data/data_sources/follow_remote_data_source.dart';
// import 'package:socialmedia/services/follow_user/data/repositories/follow_repository_impl.dart';
// import 'package:socialmedia/services/follow_user/domain/repositories/follow_repository.dart';

// import '../features/messanger/data/models/locale_messages_model.dart';

// final di = GetIt.instance;
// Alice alice = Alice();

// Future<void> init() async {
//   di.registerFactory(() => LoginBloc(repository: di()));
//   di.registerFactory(
//       () => ProfileBloc(followRepository: di(), repository: di()));
//   di.registerFactory(() => CommentBloc(repository: di()));
//   di.registerFactory(() => HomeBloc(repository: di(), followRepository: di()));
//   di.registerFactory(
//       () => FollowBloc(followRepository: di(), homeRepository: di()));
//   di.registerFactory(() => CreatePostBloc(repository: di()));
//   di.registerFactory(() => ShortsBloc(repository: di()));
//   di.registerFactory(() => StoriesBloc(repository: di()));
//   di.registerFactory(() => MessengerBloc(repository: di()));

//   di.registerFactory(() => MusicBlocBloc(repository: di()));

// //UseCases
//   // di.registerLazySingleton(() => LoginUseCase(repository: di()));

//   ///Repository
//   di.registerFactory<LoginRepository>(
//     () => LoginRepositoryImpl(
//       remoteDataSourceImpl: di(),
//       networkInfo: di(),
//     ),
//   );
//   di.registerFactory<ProfileRepository>(
//     () => ProfileRepositoryImpl(
//       remoteDataSourceImpl: di(),
//       networkInfo: di(),
//     ),
//   );
//   di.registerFactory<HomeRepository>(
//     () => HomeRepositoryImpl(
//       remoteDataSourceImpl: di(),
//       networkInfo: di(),
//     ),
//   );
//   di.registerFactory<FollowRepository>(
//     () => FollowRepositoryImpl(
//       remoteDataSourceImpl: di(),
//       networkInfo: di(),
//     ),
//   );
//   di.registerFactory<CommentRepository>(
//     () => CommentRepositoryImpl(
//       remoteDataSourceImpl: di(),
//       networkInfo: di(),
//     ),
//   );

//   di.registerFactory<CreatePostRepository>(
//     () => CreatePostRepositoryImpl(
//       remoteDataSourceImpl: di(),
//       networkInfo: di(),
//     ),
//   );
//   di.registerFactory<ShortsRepository>(
//     () => ShortsRepositoryImpl(
//       remoteDataSourceImpl: di(),
//       networkInfo: di(),
//     ),
//   );
//   di.registerFactory<StoriesRepository>(
//     () => StoriesRepositoryImpl(
//       remoteDataSourceImpl: di(),
//       networkInfo: di(),
//     ),
//   );

//   di.registerFactory<MessageRepository>(
//     () => MessageRepositoryImpl(
//       remoteDataSourceImpl: di(),
//       networkInfo: di(),
//     ),
//   );
//   di.registerFactory<MusicRepository>(
//     () => MusicRepositoryImpl(
//       remoteDataSourceImpl: di(),
//       networkInfo: di(),
//     ),
//   );

//   /// DataSource
//   di.registerLazySingleton<LoginRemoteDataSourceImpl>(
//       () => LoginRemoteDataSourceImpl(dio: di()));
//   di.registerLazySingleton<ProfileRemoteDataSourceImpl>(
//       () => ProfileRemoteDataSourceImpl(dio: di()));
//   di.registerLazySingleton<HomeRemoteDataSourceImpl>(
//       () => HomeRemoteDataSourceImpl(dio: di()));
//   di.registerLazySingleton<FollowRemoteDataSourceImpl>(
//       () => FollowRemoteDataSourceImpl(dio: di()));
//   di.registerLazySingleton<CommentRemoteDataSourceImpl>(
//       () => CommentRemoteDataSourceImpl(dio: di()));
//   di.registerLazySingleton<CreatePostRemoteDataSourceImpl>(
//       () => CreatePostRemoteDataSourceImpl(dio: di()));
//   di.registerLazySingleton<ShortsRemoteDataSourceImpl>(
//       () => ShortsRemoteDataSourceImpl(dio: di()));
//   di.registerLazySingleton<StoriesRemoteDataSourceImpl>(
//       () => StoriesRemoteDataSourceImpl(dio: di()));
//   di.registerLazySingleton<MessageRemoteDataSourceImpl>(
//       () => MessageRemoteDataSourceImpl(dio: di()));
//   di.registerLazySingleton<MusicRemoteDataSourceImpl>(
//       () => MusicRemoteDataSourceImpl(dio: di()));

//   /// Network
//   final options = BaseOptions(
//       baseUrl: 'https://api.timtim.uz/api2',
//       connectTimeout: const Duration(seconds: 50),
//       receiveTimeout: const Duration(seconds: 30),
//       headers: {
//         // 'Content-Type': 'application/x-www-form-urlencoded',
//         'accept': 'application/json'
//       });

//   Dio dio = Dio(options);

//   dio.interceptors.add(alice.getDioInterceptor());

//   di.registerSingleton<Dio>(dio);
//   dio.interceptors.add(PrettyDioLogger(
//       requestHeader: true,
//       requestBody: true,
//       responseBody: true,
//       responseHeader: false,
//       error: true,
//       compact: true,
//       maxWidth: 90));

//   /// Network Info
//   di.registerLazySingleton(() => InternetConnectionChecker());

//   di.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(di()));

//   /// Local cache

//   final SharedPreferences sharedPreferences =
//       await SharedPreferences.getInstance();
//   di.registerLazySingleton(() => sharedPreferences);
//   //
//   // /// Local datasource

//   final document = await getApplicationDocumentsDirectory();
//   await Hive.initFlutter(document.path);
//   //GetChats ui
//   if (!Hive.isAdapterRegistered(2)) {
//     Hive.registerAdapter<GetChats>(GetChatsAdapter());

//   }
//   if (!Hive.isAdapterRegistered(3)) {
//     Hive.registerAdapter<Person>(PersonAdapter());
//   }
//   if (!Hive.isAdapterRegistered(4)) {
//     Hive.registerAdapter<LastMessage>(LastMessageAdapter());
//     // await Hive.openBox<LastMessage>(HiveKey.chatLastMessage);
//   }
//   //GroupModel UI
//   if (!Hive.isAdapterRegistered(0)) {
//     Hive.registerAdapter<GroupModel>(GroupModelAdapter());
//   }
//   if (!Hive.isAdapterRegistered(1)) {
//     Hive.registerAdapter<Group>(GroupAdapter());
//   }
//   //MessageModel UI
//   if (!Hive.isAdapterRegistered(5)) {
//     Hive.registerAdapter<ChatMessageModel>(ChatMessageModelAdapter());
//   }
//   if (!Hive.isAdapterRegistered(6)) {
//     Hive.registerAdapter<Message>(MessageAdapter());
//   }
//   if (!Hive.isAdapterRegistered(7)) {
//     Hive.registerAdapter<SendMessageModel>(SendMessageModelAdapter());
//   }
//   if (!Hive.isAdapterRegistered(8)) {
//     Hive.registerAdapter<PostUser>(PostUserAdapter());
//   }
//   //userChats and user group all messages
//   if (!Hive.isAdapterRegistered(11)) {
//     Hive.registerAdapter<LocaleMessagesModel>(LocaleMessagesModelAdapter());
//   }
//   if (!Hive.isAdapterRegistered(12)) {
//     Hive.registerAdapter<LocaleGroupMessagesModel>(LocaleGroupMessagesModelAdapter());
//   }

//   //group messagemodel
//   if (!Hive.isAdapterRegistered(13)) {
//     Hive.registerAdapter<GroupMessageModel>(GroupMessageModelAdapter());
//   }
//   if (!Hive.isAdapterRegistered(14)) {
//     Hive.registerAdapter<SenderId>(SenderIdAdapter());
//   }

//   await Hive.openBox<GroupModel>(HiveKey.groupModel);
//   await Hive.openBox<GetChats>(HiveKey.chats);
//   await Hive.openBox<LocaleMessagesModel>(HiveKey.userChatMessages);
//   await Hive.openBox<LocaleGroupMessagesModel>(HiveKey.userGroupModelMessages);
// }
