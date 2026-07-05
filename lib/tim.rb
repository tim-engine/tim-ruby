require 'json'

# Locate the platform-specific native extension
dir = __dir__
arch = `uname -m`.strip
os = RbConfig::CONFIG["host_os"]
plat =
  case os
  when /darwin/ then "#{arch}-darwin"
  when /linux/  then "#{arch}-linux"
  else raise "Tim Engine: unsupported platform #{os}"
  end

ext = os =~ /darwin/ ? "bundle" : "so"
native = File.join(dir, "tim_engine-#{plat}.#{ext}")
if File.exist?(native)
  require_relative "tim_engine-#{plat}"
elsif File.exist?(File.join(dir, "tim_engine.#{ext}"))
  require_relative "tim_engine"
else
  raise "Tim Engine native module not found for #{plat}"
end

module Tim
  @initialized = false
  @mutex = Mutex.new

  def self.init(src = "templates", output = "storage", basepath = nil)
    @mutex.synchronize do
      unless @initialized
        basepath ||= Dir.pwd
        Tim.init(src, output, basepath)
        @initialized = true
      end
    end
  end

  def self.render(view, data = {})
    init
    Tim.render(view, data.to_json)
  end

  def self.render_view(view, data = {})
    init
    Tim.renderView(view, data.to_json)
  end
end
