class EventsController < ApplicationController
    before_action :set_event, only: [:show, :edit, :update, :destroy]

    # GET /events
    # GET /events.json
    def index
        @events = Event.all
    end

    # GET /events/1
    # GET /events/1.json
    def show
    end

    # GET /events/new
    def new
        @event = Event.new
    end

    # GET /events/1/edit
    def edit
      @details = Event.find(params['id'])
      if current_user.username != @details.user.username
        redirect_to '/'
      end
    end

    # POST /events
    # POST /events.json
    def create
        @event = Event.new(event_params)
        @event.cause_type = params[:cause_type]
        current_user.events.append(@event)
        respond_to do |format|
            if @event.save
                format.html { redirect_to '/events' }
                format.json { render :show, status: :created, location: @event }
            else
                format.html { render :new }
                format.json { render json: @event.errors, status: :unprocessable_entity }
            end
        end
    end

    # PATCH/PUT /events/1
    # PATCH/PUT /events/1.json
    def update
        @event.cause_type = params[:cause_type]
        respond_to do |format|
            if @event.update(event_params)
                format.html { redirect_to @event, notice: 'Event was successfully updated.' }
                format.json { render :show, status: :ok, location: @event }
            else
                format.html { render :edit }
                format.json { render json: @event.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /events/1
    # DELETE /events/1.json
    def destroy
        @event.destroy
        respond_to do |format|
            format.html { redirect_to '/users/' + @event.user_id.to_s }
            format.json { head :no_content }
        end
    end

    def distance(s, t)
        m = s.length
        n = t.length
        return m if n == 0
        return n if m == 0
        d = Array.new(m+1) {Array.new(n+1)}

        (0..m).each {|i| d[i][0] = i}
        (0..n).each {|j| d[0][j] = j}
        (1..n).each do |j|
            (1..m).each do |i|
                d[i][j] = if s[i-1] == t[j-1]  # adjust index into string
                              d[i-1][j-1]       # no operation required
                          else
                              [ d[i-1][j]+1,    # deletion
                                d[i][j-1]+1,    # insertion
                                d[i-1][j-1]+1,  # substitution
                              ].min
                          end
            end
        end
        d[m][n]
    end

    def search
        @query = params['query']
        @events = Array.new
        @dist = Array.new
        Event.all.each do |e|
                @dist.push([ ([distance(e.title.downcase, @query.downcase), distance(e.user.org_name.downcase, @query.downcase)].min)/(1.0 * [e.title.length, e.user.org_name.length].max) , e])
        end
        @dist.sort_by! {|i| i.first}
        @dist.each do |i|
            if i.first < 1
               @events.push(i[1])
            end
        end
	@cat = Array.new
	switch = false
	self.class.helpers.cause().each do |title, pic|
		if (pic[0..-5] == @query.downcase)
			switch = true
		end
	end
	Event.all.each do |event|
		event.cause_type.each do |p, v| 
			if p ==  @query.downcase && v == "1"
				@cat.push(event)
			end
		end
	end
	if switch
		@events = @cat
	end
        render :results

    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
        @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
        params.require(:event).permit(:title, :org_email, :description, :date, :time, :location, :url, :deadline, :cause_type, :query)
    end
end
