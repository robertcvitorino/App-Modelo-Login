// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchController on _SearchControllerBase, Store {
  final _$valueAtom = Atom(name: '_SearchControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$codigoBarraAtom = Atom(name: '_SearchControllerBase.codigoBarra');

  @override
  String get codigoBarra {
    _$codigoBarraAtom.reportRead();
    return super.codigoBarra;
  }

  @override
  set codigoBarra(String value) {
    _$codigoBarraAtom.reportWrite(value, super.codigoBarra, () {
      super.codigoBarra = value;
    });
  }

  final _$leituraCodigoAsyncAction =
      AsyncAction('_SearchControllerBase.leituraCodigo');

  @override
  Future leituraCodigo() {
    return _$leituraCodigoAsyncAction.run(() => super.leituraCodigo());
  }

  final _$_SearchControllerBaseActionController =
      ActionController(name: '_SearchControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_SearchControllerBaseActionController.startAction(
        name: '_SearchControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_SearchControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value},
codigoBarra: ${codigoBarra}
    ''';
  }
}
