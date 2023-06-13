class BlogPostResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :title, as: :text
  field :subtitle, as: :text
  field :body, as: :textarea
  field :user_id, as: :number
  field :illustration, as: :file
  field :user, as: :belongs_to
  # add fields here
end
