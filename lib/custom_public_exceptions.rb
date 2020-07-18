class CustomPublicExceptions < ActionDispatch::PublicExceptions
  def call(en)
    status = en["PATH_INFO"][1..-1]
    puts "some_change"
    if status == "404"
      Rails.application.routes.call(en)
    else
      super
    end
  end
end
