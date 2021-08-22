import 'package:gea/navigator/root_navigator.dart';
import 'package:grpc/grpc.dart';

class AuthGuardInterceptor implements ClientInterceptor {
  @override
  ResponseFuture<R> interceptUnary<Q, R>(
      ClientMethod<Q, R> method, Q request, CallOptions options, invoker) {
    var req = invoker(method, request, options);

    req.onError<GrpcError>((error, stackTrace) {
      if (error.code == 7) {
        navigatorKey.currentState?.pushReplacementNamed('/login');
      }

      return req;
    });

    return req;
  }

  @override
  ResponseStream<R> interceptStreaming<Q, R>(
      ClientMethod<Q, R> method,
      Stream<Q> requests,
      CallOptions options,
      ClientStreamingInvoker<Q, R> invoker) {
    var req = invoker(method, requests, options);

    req.handleError((error, stackTrace) {
      if (error.code == 7) {
        navigatorKey.currentState?.pushReplacementNamed('/login');
      }

      return req;
    });

    return req;
  }
}
