Paperclip.interpolates(:s3_domain_url) do |attr, style|
  "#{attr.s3_protocol}://sa-east-1.amazonaws.com/#{attr.bucket}/#{attr.path(style)}"
end