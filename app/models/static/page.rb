module Static
  class Page
    include Mongoid::Document
    include Mongoid::Timestamps

    field :title, type: String
    validates_presence_of :title

    field :body,  type: String
    validates_presence_of :body
  end
end
