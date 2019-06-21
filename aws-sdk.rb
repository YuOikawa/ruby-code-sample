# ここで補えない場合はここ
# AWSドキュメント
# https://docs.aws.amazon.com/index.html

# aws-sdkを呼ぶ際必須
require "aws-sdk"

# awsを扱う際の設定情報
resource = Aws::S3::Resource.new(
  :region => 'region',
  :access_key_id => 'xxxxxx',
  :secret_access_key => 'xxxxxx',
)

# bucket名指定
bucket = resource.bucket('bucket-name')

# オブジェクトチェック
bucket.object('object-name').exists?

# object指定
object = resource.bucket('bucket-name').object('object-name')

# objectのアップロード
object.upload_file('file-path')

# object取得
bucket.object('object-name').get.body.read

# object削除
bucket.object('object-name').delete
