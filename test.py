
def aws():
    import boto3
    from botocore.exceptions import ClientError

    def create_bucket(bucket_name, region=None):

        # Create bucket
        try:
            if region is None:
                s3_client = boto3.client('s3')
                s3_client.create_bucket(Bucket=bucket_name)
            else:
                print('1' * 10)
                s3_client = boto3.client('s3', region_name=region)
                location = {'LocationConstraint': region}
                print('2' * 10)
                s3_client.create_bucket(Bucket=bucket_name,
                                        CreateBucketConfiguration=location)
                print('3' * 10)
                print("1111111111111:", s3_client)
        except ClientError as e:
            print(e)
            return False
        return True

    bucket = create_bucket("testasdadad", "ap-south-1")
    print(bucket)


if __name__ == '__main__':
    aws()

