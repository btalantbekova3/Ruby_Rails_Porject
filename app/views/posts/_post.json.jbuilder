json.extract! post, :id, :title, :description, :thumbnail_url, :video_url, :string, :pro, :created_at, :updated_at
json.url post_url(post, format: :json)
