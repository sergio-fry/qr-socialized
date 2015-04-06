module ApplicationHelper
  def qr_code_for(data, options={})
    options[:size] ||= 150

    image_tag "//chart.googleapis.com/chart?cht=qr&chs=#{options[:size]}x#{options[:size]}&chl=#{data}"
  end
end
