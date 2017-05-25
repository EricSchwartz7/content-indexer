class WebsiteSerializer < ActiveModel::Serializer
  attributes :id, :url, :headers, :links
end
