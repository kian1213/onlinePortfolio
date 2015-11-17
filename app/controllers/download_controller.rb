class DownloadController < ApplicationController
  RESOURCES = {
    resume: "/doc/Galamay, Christian Angel - Resume.docx"
  }

  def show
    resume = RESOURCES[params[:id].to_sym]
    if resume
      redirect_to resume
    else
      render nothing: true, status: '404'
    end
  end
end