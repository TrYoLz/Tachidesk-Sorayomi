// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_quick_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sourceQuickSearchMangaListHash() =>
    r'7197c98a64f075ecffb1c416576ad64d1127c385';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef SourceQuickSearchMangaListRef
    = AutoDisposeFutureProviderRef<List<Manga>>;

/// See also [sourceQuickSearchMangaList].
@ProviderFor(sourceQuickSearchMangaList)
const sourceQuickSearchMangaListProvider = SourceQuickSearchMangaListFamily();

/// See also [sourceQuickSearchMangaList].
class SourceQuickSearchMangaListFamily extends Family<AsyncValue<List<Manga>>> {
  /// See also [sourceQuickSearchMangaList].
  const SourceQuickSearchMangaListFamily();

  /// See also [sourceQuickSearchMangaList].
  SourceQuickSearchMangaListProvider call(
    String sourceId, {
    String? query,
  }) {
    return SourceQuickSearchMangaListProvider(
      sourceId,
      query: query,
    );
  }

  @override
  SourceQuickSearchMangaListProvider getProviderOverride(
    covariant SourceQuickSearchMangaListProvider provider,
  ) {
    return call(
      provider.sourceId,
      query: provider.query,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'sourceQuickSearchMangaListProvider';
}

/// See also [sourceQuickSearchMangaList].
class SourceQuickSearchMangaListProvider
    extends AutoDisposeFutureProvider<List<Manga>> {
  /// See also [sourceQuickSearchMangaList].
  SourceQuickSearchMangaListProvider(
    this.sourceId, {
    this.query,
  }) : super.internal(
          (ref) => sourceQuickSearchMangaList(
            ref,
            sourceId,
            query: query,
          ),
          from: sourceQuickSearchMangaListProvider,
          name: r'sourceQuickSearchMangaListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sourceQuickSearchMangaListHash,
          dependencies: SourceQuickSearchMangaListFamily._dependencies,
          allTransitiveDependencies:
              SourceQuickSearchMangaListFamily._allTransitiveDependencies,
        );

  final String sourceId;
  final String? query;

  @override
  bool operator ==(Object other) {
    return other is SourceQuickSearchMangaListProvider &&
        other.sourceId == sourceId &&
        other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sourceId.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$quickSearchResultsHash() =>
    r'95c8745e42306378a3b8981adb88d6d40679966e';
typedef QuickSearchResultsRef = AutoDisposeProviderRef<
    AsyncValue<List<({AsyncValue<List<Manga>> mangaList, Source source})>>>;

/// See also [quickSearchResults].
@ProviderFor(quickSearchResults)
const quickSearchResultsProvider = QuickSearchResultsFamily();

/// See also [quickSearchResults].
class QuickSearchResultsFamily extends Family<
    AsyncValue<List<({AsyncValue<List<Manga>> mangaList, Source source})>>> {
  /// See also [quickSearchResults].
  const QuickSearchResultsFamily();

  /// See also [quickSearchResults].
  QuickSearchResultsProvider call({
    String? query,
  }) {
    return QuickSearchResultsProvider(
      query: query,
    );
  }

  @override
  QuickSearchResultsProvider getProviderOverride(
    covariant QuickSearchResultsProvider provider,
  ) {
    return call(
      query: provider.query,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'quickSearchResultsProvider';
}

/// See also [quickSearchResults].
class QuickSearchResultsProvider extends AutoDisposeProvider<
    AsyncValue<List<({AsyncValue<List<Manga>> mangaList, Source source})>>> {
  /// See also [quickSearchResults].
  QuickSearchResultsProvider({
    this.query,
  }) : super.internal(
          (ref) => quickSearchResults(
            ref,
            query: query,
          ),
          from: quickSearchResultsProvider,
          name: r'quickSearchResultsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$quickSearchResultsHash,
          dependencies: QuickSearchResultsFamily._dependencies,
          allTransitiveDependencies:
              QuickSearchResultsFamily._allTransitiveDependencies,
        );

  final String? query;

  @override
  bool operator ==(Object other) {
    return other is QuickSearchResultsProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
