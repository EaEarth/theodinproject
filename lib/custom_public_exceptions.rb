class CustomPublicExceptions < ActionDispatch::PublicExceptions
  def call(env)
    status = env["PATH_INFO"][1..-1]
    puts "some_change"
    if status == "404"
      Rails.application.routes.call(env)
    else
      super
    end
  end
end
