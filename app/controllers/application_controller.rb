class ApplicationController < ActionController::Base
  helper_method :hex_color_sample

  def hex_color_sample
    ["FFCCFF", "FAD1FF", "F6D5FF", "F1DAFF", "ECDFFF", "E8E3FF", "E3E8FF", "DFECFF", "DAF1FF", "D5F6FF", "D1FAFF", "CCFFFF"].sample
    "f8f8ff"
  end

end
