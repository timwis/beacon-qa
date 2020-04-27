class CallLogsController < ApplicationController
  def index
    @call_logs = CallLog.all
                        .order(:latest_attempt_date, :contact_id)
                        .page params[:page]
  end

  def show
    @call_log = CallLog.find(params[:id])
  end

  def update
    @call_log = CallLog.find(params[:id])

    if @call_log.update(call_log_params)
      redirect_to action: :index
    else
      render 'show'
    end
  end

  private

  def call_log_params
    params.require(:call_log).permit(:status)
  end
end
