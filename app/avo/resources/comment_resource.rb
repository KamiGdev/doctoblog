class CommentResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :content, as: :textarea
  field :user, as: :text
  field :blog_post, as: :text
  # add fields here
end