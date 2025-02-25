package baseClass;

import com.ftp.generated.FtpServiceGrpc;
import com.ftp.generated.Response;
import com.google.protobuf.Empty;
import io.grpc.ManagedChannel;
import io.grpc.ManagedChannelBuilder;

public class GRPC {
    static ManagedChannel channel;
    public static void connectChannel(String host) {
        channel = ManagedChannelBuilder.forTarget(host).usePlaintext().build();
        System.out.println(channel);
    }
    public static String downloadftp() {
        FtpServiceGrpc.FtpServiceBlockingStub blockingStub = FtpServiceGrpc.newBlockingStub(channel);
        Response response = blockingStub.downloadFile(Empty.getDefaultInstance());
        String status = response.getStatus();
        System.out.println("Download File Status: " + status);
        channel.shutdown();
        return status;
    }
}
