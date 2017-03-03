json.extract! blog, :id, :title, :image, :description, :category_id, :created_at, :updated_at
json.url blog_url(blog, format: :json)
