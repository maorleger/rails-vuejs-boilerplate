module Api
  module V1
    class StatusController < ApplicationController
      def heartbeat
        render json: { status: "ok" }
      end
    end
  end
end
