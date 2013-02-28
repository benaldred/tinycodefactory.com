class Message

  include ActiveModel::Validations

  attr_accessor :name, :email, :message, :service

  validates :name, :email, :message, :service, :presence => {:message => "required"}
  validates :email, :format => { :with => %r{.+@.+\..+}, :message => "Please enter an email address." }, :allow_blank => true
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end