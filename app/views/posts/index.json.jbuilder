json.array!(@posts) do |post|
  json.extract! post, :id, :en_title, :en_author, :en_content
  json.url post_url(post, format: :json)
end
