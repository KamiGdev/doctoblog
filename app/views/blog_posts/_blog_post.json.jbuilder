json.extract! blog_post, :id, :illustration, :title, :subtitle, :body, :user_id, :created_at, :updated_at
json.url blog_post_url(blog_post, format: :json)
json.illustration url_for(blog_post.illustration)
