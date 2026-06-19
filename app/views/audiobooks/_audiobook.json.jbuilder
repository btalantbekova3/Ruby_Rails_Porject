json.extract! audiobook, :id, :title, :description, :thumbnail_url, :video_url, :pro, :created_at, :updated_at
json.url audiobook_url(audiobook, format: :json)
