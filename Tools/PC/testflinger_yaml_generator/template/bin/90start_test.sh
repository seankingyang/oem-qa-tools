echo "Starting Test"
PYTHONUNBUFFERED=1 checkbox-cli remote $DEVICE_IP checkbox-launcher
EXITCODE=$?
echo "Copy submission tar file to artifacts folder"
mkdir -p artifacts
mv /home/ubuntu/c3-local-submission.tar.xz artifacts/
echo "Files in artifacts:"
ls artifacts
