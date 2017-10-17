module CCUTool
  class Base
    attr_accessor :queue

    def initialize
      @queue = 'default'
    end

    def arl_purge(objects = [])
      `http --auth-type edgegrid -a default: POST :#{queues_url} objects:='#{objects}'`
    end

    def cp_purge(objects = [])
      `http --auth-type edgegrid -a default: POST :#{queues_url} objects:='#{objects}' action=remove type=cpcode`
    end

    def get_queue_length
      `http --auth-type edgegrid -a default: :#{queues_url}`
    end

    def get_purge_status(purge_id)
      `http --auth-type edgegrid -a default: :#{purges_url(purge_id)}`
    end

    private

    def queues_url
      "/ccu/v2/queues/#{@queue}"
    end

    def purges_url(purge_id)
      "/ccu/v2/purges/#{purge_id}"
    end
  end
end
