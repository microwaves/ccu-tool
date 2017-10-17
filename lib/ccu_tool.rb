require 'yaml'
require 'json'
require 'ccu_tool/base'

module CCUTool
  @base = Base.new

  def self.purge(type, objects = [])
    if type == 'arl'
      @base.arl_purge(objects)
    elsif type == 'cp'
      @base.cp_purge(objects)
    end
  end

  def self.get_queue_length
    @base.get_queue_length
  end

  def self.get_purge_status(purge_id)
    @base.get_purge_status(purge_id)
  end
end
