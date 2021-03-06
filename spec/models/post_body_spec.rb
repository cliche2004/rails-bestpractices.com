require 'spec_helper'

describe PostBody do
  include RailsBestPractices::Spec::Support

  should_be_markdownable
  should_belong_to :post
  should_validate_presence_of :body
end
