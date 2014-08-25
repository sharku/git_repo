class JavascriptsController < ApplicationController
  layout false
  def dynamic_states
    @sections = Indexer.find(:all)
  end
end