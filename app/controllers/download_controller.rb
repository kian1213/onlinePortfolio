class DownloadController < ApplicationController

  RESOURCES = {
    resume: "/Galamay_Christian_Angel.docx"
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