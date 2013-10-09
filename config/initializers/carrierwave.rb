CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAJQBYUAIC4DUHLJOA',
    :aws_secret_access_key  => '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'
  }
  config.fog_directory  = 'fit-workshop.herokuapp.com'
end
