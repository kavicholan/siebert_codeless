package com.ftp.generated;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/**
 */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.41.0)",
    comments = "Source: ftp.proto")
@io.grpc.stub.annotations.GrpcGenerated
public final class FtpServiceGrpc {

  private FtpServiceGrpc() {}

  public static final String SERVICE_NAME = "ftp.FtpService";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<com.google.protobuf.Empty,
      Response> getUploadFileMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "uploadFile",
      requestType = com.google.protobuf.Empty.class,
      responseType = Response.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<com.google.protobuf.Empty,
      Response> getUploadFileMethod() {
    io.grpc.MethodDescriptor<com.google.protobuf.Empty, Response> getUploadFileMethod;
    if ((getUploadFileMethod = FtpServiceGrpc.getUploadFileMethod) == null) {
      synchronized (FtpServiceGrpc.class) {
        if ((getUploadFileMethod = FtpServiceGrpc.getUploadFileMethod) == null) {
          FtpServiceGrpc.getUploadFileMethod = getUploadFileMethod =
              io.grpc.MethodDescriptor.<com.google.protobuf.Empty, Response>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "uploadFile"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.google.protobuf.Empty.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  Response.getDefaultInstance()))
              .setSchemaDescriptor(new FtpServiceMethodDescriptorSupplier("uploadFile"))
              .build();
        }
      }
    }
    return getUploadFileMethod;
  }

  private static volatile io.grpc.MethodDescriptor<com.google.protobuf.Empty,
      Response> getDownloadFileMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "downloadFile",
      requestType = com.google.protobuf.Empty.class,
      responseType = Response.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<com.google.protobuf.Empty,
      Response> getDownloadFileMethod() {
    io.grpc.MethodDescriptor<com.google.protobuf.Empty, Response> getDownloadFileMethod;
    if ((getDownloadFileMethod = FtpServiceGrpc.getDownloadFileMethod) == null) {
      synchronized (FtpServiceGrpc.class) {
        if ((getDownloadFileMethod = FtpServiceGrpc.getDownloadFileMethod) == null) {
          FtpServiceGrpc.getDownloadFileMethod = getDownloadFileMethod =
              io.grpc.MethodDescriptor.<com.google.protobuf.Empty, Response>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "downloadFile"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.google.protobuf.Empty.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  Response.getDefaultInstance()))
              .setSchemaDescriptor(new FtpServiceMethodDescriptorSupplier("downloadFile"))
              .build();
        }
      }
    }
    return getDownloadFileMethod;
  }

  /**
   * Creates a new async stub that supports all call types for the service
   */
  public static FtpServiceStub newStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<FtpServiceStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<FtpServiceStub>() {
        @Override
        public FtpServiceStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new FtpServiceStub(channel, callOptions);
        }
      };
    return FtpServiceStub.newStub(factory, channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static FtpServiceBlockingStub newBlockingStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<FtpServiceBlockingStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<FtpServiceBlockingStub>() {
        @Override
        public FtpServiceBlockingStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new FtpServiceBlockingStub(channel, callOptions);
        }
      };
    return FtpServiceBlockingStub.newStub(factory, channel);
  }

  /**
   * Creates a new ListenableFuture-style stub that supports unary calls on the service
   */
  public static FtpServiceFutureStub newFutureStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<FtpServiceFutureStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<FtpServiceFutureStub>() {
        @Override
        public FtpServiceFutureStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new FtpServiceFutureStub(channel, callOptions);
        }
      };
    return FtpServiceFutureStub.newStub(factory, channel);
  }

  /**
   */
  public static abstract class FtpServiceImplBase implements io.grpc.BindableService {

    /**
     */
    public void uploadFile(com.google.protobuf.Empty request,
        io.grpc.stub.StreamObserver<Response> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getUploadFileMethod(), responseObserver);
    }

    /**
     */
    public void downloadFile(com.google.protobuf.Empty request,
        io.grpc.stub.StreamObserver<Response> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getDownloadFileMethod(), responseObserver);
    }

    @Override public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
            getUploadFileMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                com.google.protobuf.Empty,
                Response>(
                  this, METHODID_UPLOAD_FILE)))
          .addMethod(
            getDownloadFileMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                com.google.protobuf.Empty,
                Response>(
                  this, METHODID_DOWNLOAD_FILE)))
          .build();
    }
  }

  /**
   */
  public static final class FtpServiceStub extends io.grpc.stub.AbstractAsyncStub<FtpServiceStub> {
    private FtpServiceStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @Override
    protected FtpServiceStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new FtpServiceStub(channel, callOptions);
    }

    /**
     */
    public void uploadFile(com.google.protobuf.Empty request,
        io.grpc.stub.StreamObserver<Response> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getUploadFileMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void downloadFile(com.google.protobuf.Empty request,
        io.grpc.stub.StreamObserver<Response> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getDownloadFileMethod(), getCallOptions()), request, responseObserver);
    }
  }

  /**
   */
  public static final class FtpServiceBlockingStub extends io.grpc.stub.AbstractBlockingStub<FtpServiceBlockingStub> {
    private FtpServiceBlockingStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @Override
    protected FtpServiceBlockingStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new FtpServiceBlockingStub(channel, callOptions);
    }

    /**
     */
    public Response uploadFile(com.google.protobuf.Empty request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getUploadFileMethod(), getCallOptions(), request);
    }

    /**
     */
    public Response downloadFile(com.google.protobuf.Empty request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getDownloadFileMethod(), getCallOptions(), request);
    }
  }

  /**
   */
  public static final class FtpServiceFutureStub extends io.grpc.stub.AbstractFutureStub<FtpServiceFutureStub> {
    private FtpServiceFutureStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @Override
    protected FtpServiceFutureStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new FtpServiceFutureStub(channel, callOptions);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<Response> uploadFile(
        com.google.protobuf.Empty request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getUploadFileMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<Response> downloadFile(
        com.google.protobuf.Empty request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getDownloadFileMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_UPLOAD_FILE = 0;
  private static final int METHODID_DOWNLOAD_FILE = 1;

  private static final class MethodHandlers<Req, Resp> implements
      io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ServerStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ClientStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.BidiStreamingMethod<Req, Resp> {
    private final FtpServiceImplBase serviceImpl;
    private final int methodId;

    MethodHandlers(FtpServiceImplBase serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @Override
    @SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_UPLOAD_FILE:
          serviceImpl.uploadFile((com.google.protobuf.Empty) request,
              (io.grpc.stub.StreamObserver<Response>) responseObserver);
          break;
        case METHODID_DOWNLOAD_FILE:
          serviceImpl.downloadFile((com.google.protobuf.Empty) request,
              (io.grpc.stub.StreamObserver<Response>) responseObserver);
          break;
        default:
          throw new AssertionError();
      }
    }

    @Override
    @SuppressWarnings("unchecked")
    public io.grpc.stub.StreamObserver<Req> invoke(
        io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        default:
          throw new AssertionError();
      }
    }
  }

  private static abstract class FtpServiceBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoFileDescriptorSupplier, io.grpc.protobuf.ProtoServiceDescriptorSupplier {
    FtpServiceBaseDescriptorSupplier() {}

    @Override
    public com.google.protobuf.Descriptors.FileDescriptor getFileDescriptor() {
      return Ftp.getDescriptor();
    }

    @Override
    public com.google.protobuf.Descriptors.ServiceDescriptor getServiceDescriptor() {
      return getFileDescriptor().findServiceByName("FtpService");
    }
  }

  private static final class FtpServiceFileDescriptorSupplier
      extends FtpServiceBaseDescriptorSupplier {
    FtpServiceFileDescriptorSupplier() {}
  }

  private static final class FtpServiceMethodDescriptorSupplier
      extends FtpServiceBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoMethodDescriptorSupplier {
    private final String methodName;

    FtpServiceMethodDescriptorSupplier(String methodName) {
      this.methodName = methodName;
    }

    @Override
    public com.google.protobuf.Descriptors.MethodDescriptor getMethodDescriptor() {
      return getServiceDescriptor().findMethodByName(methodName);
    }
  }

  private static volatile io.grpc.ServiceDescriptor serviceDescriptor;

  public static io.grpc.ServiceDescriptor getServiceDescriptor() {
    io.grpc.ServiceDescriptor result = serviceDescriptor;
    if (result == null) {
      synchronized (FtpServiceGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor = result = io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
              .setSchemaDescriptor(new FtpServiceFileDescriptorSupplier())
              .addMethod(getUploadFileMethod())
              .addMethod(getDownloadFileMethod())
              .build();
        }
      }
    }
    return result;
  }
}
