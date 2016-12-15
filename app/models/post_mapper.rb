class PostMapper < Simplemvc::Mapper
  @@table_name = "posts"
  @@model = Post
  @@mappings = {
    id: :id,
    header: :title,
    content: :body,
    created_at: :created_at
  }

  # If this method isn't defined, then method_missing will be used for calling "created_at"
  def created_at
    @model.created_at.to_s
  end
end
