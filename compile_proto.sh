python -m grpc_tools.protoc -I ./rpc/proto --python_out=./rpc/pb --grpc_python_out=./rpc/pb ./rpc/proto/greeter.proto
python -m grpc_tools.protoc -I ./rpc/proto --python_out=./rpc/pb --grpc_python_out=./rpc/pb ./rpc/proto/user.proto
python -m grpc_tools.protoc -I ./rpc/proto --python_out=./rpc/pb --grpc_python_out=./rpc/pb ./rpc/proto/exce.proto
python -m grpc_tools.protoc -I ./rpc/proto --python_out=./rpc/pb --grpc_python_out=./rpc/pb ./rpc/proto/notification.proto
python -m grpc_tools.protoc -I ./rpc/proto --python_out=./rpc/pb --grpc_python_out=./rpc/pb ./rpc/proto/card.proto
python -m grpc_tools.protoc -I ./rpc/proto --python_out=./rpc/pb --grpc_python_out=./rpc/pb ./rpc/proto/transaction.proto
