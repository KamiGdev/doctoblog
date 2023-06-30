class UserResource < Avo::BaseResource
  self.title = :email
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :email, as: :text
  field :job, as: :select, enum: ::User.job_types
  field :role, as: :number
  field :firstname, as: :text
  field :lastname, as: :text
  field :password, as: :password
  # add fields here
end
