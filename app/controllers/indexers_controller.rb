class IndexersController < ApplicationController
  layout 'application'
  def index
    @indexers = Indexer.all
    @data_from_documentsbox = params[:documentsbox]
    flash[:notice] = params[:ggd2]
  end

  def getdata
    @data_from_documentsbox = params[:document]
    @data_from_sectionbox = params[:section]
    @data_from_subsection = params[:subsection]
    
    if @data_from_subsection.include? "null"
      puts "null"
      @data_from_subsection=""
    end
      
   # @data_from_sectionbox = Indexer.uniq.pluck(@data_from_documentsbox)
    #@get_ggd2 = Indexer.find_by(document: @data_from_documentsbox, section: @data_from_sectionbox, subsection: @data_from_subsection)
    @get_ggd2 = Indexer.find_by_document_and_section_and_subsection(@data_from_documentsbox, @data_from_sectionbox, @data_from_subsection)
       
      respond_to do |format|
        format.html
        format.json { render :json => {:ggd => @get_ggd2['taek_ggd2'], :usnrc => @get_ggd2['usnrc'], :acpt_criteria => @get_ggd2['acpt_criteria']}}
      end
 
#    puts @get_ggd2[1]
#    puts @get_ggd2.section
#    puts @get_ggd2.subsection
#    puts @get_ggd2.acpt_criteria
#    puts @get_ggd2.usnrc
#    puts @get_ggd2.ds_430
#    puts @get_ggd2.related_standarts
#    puts @get_ggd2.ggd1
#    puts @get_ggd2.taek_ggd2
    
  end
  
  def show
  end
  
  
end
