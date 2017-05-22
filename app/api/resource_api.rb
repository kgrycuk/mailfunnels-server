class ResourceApi < Grape::API
  prefix 'api'
  format :json

  def initialize
    super
  end

  # Apps Resource API
  # -----------------
  resource :apps do
    # Get Routes
    # ----------------

    # returns all Apps
    # GET /apps
    get do
      App.all
    end

    # returns app by Id
    # GET /apps/:id
    params do
      requires :id, type: Integer, desc: 'app id.'
    end
    route_param :id do
      get do
        App.find(params[:id])
      end
    end

    # Post Routes
    # ----------------

    # creates new App
    # POST /apps
    post do
      App.create! params
    end


  end

  # Hooks Resource API
  # ------------------
  resource :hooks do
    # Get Routes
    # ----------------

    # returns all Hooks
    # GET /hooks
    get do
      Hook.all
    end
    # returns hook by Id
    # GET /hooks/:id
    params do
      requires :id, type: Integer, desc: 'hook id.'
    end
    route_param :id do
      get do
        Hook.find(params[:id])
      end
    end

    # Post Routes
    # ----------------

    # creates new Hook
    # POST /hooks
    post do
      Hook.create! params
    end

  end


  # Funnels Resource API
  # --------------------
  resource :funnels do
    # Get Routes
    # ----------------

    # returns all Funnels
    # GET /funnels
    get do
      Funnel.all
    end
    # returns funnel by Id
    # GET /funnels/:id
    params do
      requires :id, type: Integer, desc: 'funnel id.'
    end
    route_param :id do
      get do
        Funnel.find(params[:id])
      end
    end

    # Post Routes
    # ----------------

    # creates new Funnel
    # POST /funnels
    post do
      Funnel.create! params
    end


  end


  # Triggers Resource API
  # ---------------------
  resource :triggers do
    # Get Routes
    # ----------------

    # returns all Triggers
    # GET /triggers
    get do
      Trigger.all
    end

    # returns trigger by Id
    # GET /triggers/:id
    params do
      requires :id, type: Integer, desc: 'trigger id.'
    end
    route_param :id do
      get do
        Trigger.find(params[:id])
      end
    end

    # Post Routes
    # ----------------

    # creates new Trigger
    # POST /triggers
    post do
      Trigger.create! params
    end


  end

  # Links Resource API
  # ------------------
  resource :links do
    # Get Routes
    # ----------------

    # returns all Links
    # GET /links
    get do
      Link.all
    end
    # returns link by Id
    # GET /links/:id
    params do
      requires :id, type: Integer, desc: 'link id.'
    end
    route_param :id do
      get do
        Link.find(params[:id])
      end
    end

    # Post Routes
    # ----------------

    # creates new Link
    # POST /links
    post do
      Link.create! params
    end

  end


  # Nodes Resource API
  # ------------------
  resource :nodes do
    # Get Routes
    # ----------------

    # returns all Nodes
    # GET /nodes
    get do
      Node.all
    end

    # returns Node by Id
    # GET /nodes/:id
    params do
      requires :id, type: Integer, desc: 'node id.'
    end
    route_param :id do
      get do
        Node.find(params[:id])
      end
    end

    # Post Routes
    # ----------------

    # creates new Node
    # POST /nodes
    post do
      Node.create! params
    end

  end

  # EmailList Resource API
  # ----------------------
  resource :email_lists do
    # Get Routes
    # ----------------

    # returns all Email Lists
    # GET /email_lists
    get do
      EmailList.all
    end

    # returns email_list by Id
    # GET /email_lists/:id
    params do
      requires :id, type: Integer, desc: 'email list id.'
    end
    route_param :id do
      get do
        EmailList.find(params[:id])
      end
    end

    # Post Routes
    # ----------------

    # creates new Email List
    # POST /email_lists
    post do
      EmailList.create! params
    end
  end

  # EmailTemplate Resource API
  # --------------------------
  resource :email_templates do
    # Get Routes
    # ----------------

    # returns all Email Templates
    # GET /email_templates
    get do
      EmailTemplate.all
    end

    # returns email_template by ID
    # GET /email_templates/:id
    params do
      requires :id, type: Integer, desc: 'email template id.'
    end
    route_param :id do
      get do
        EmailTemplate.find(params[:id])
      end
    end

    # Post Routes
    # ----------------

    # creates new email_template
    # POST /email_templates
    post do
      EmailTemplate.create! params
    end

  end

  # CapturedHooks Resource API
  # --------------------------
  resource :captured_hooks do
    # Get Routes
    # ----------------

    # returns all Captured Hooks
    # GET /captured_hooks
    get do
      CapturedHook.all
    end

    # returns captured hook by ID
    # GET /captured_hooks/:id
    params do
      requires :id, type: Integer, desc: 'captured hook id.'
    end
    route_param :id do
      get do
        CapturedHook.find(params[:id])
      end
    end

    # Post Routes
    # ----------------

    # creates new Captured Hook
    # POST /api/captured_hooks
    post do
      CapturedHook.create! params
    end


  end

  # Subscriber Resource API
  # ------------------------
  resource :subscribers do
    # Get Routes
    # ----------------

    # returns all Apps
    # GET /subscribers
    get do
      Subscriber.all
    end

    # returns app by ID
    # GET /subscribers/:id
    params do
      requires :id, type: Integer, desc: 'subscriber id.'
    end
    route_param :id do
      get do
        Subscriber.find(params[:id])
      end
    end

    # Post Routes
    # ----------------

    # creates new Subscriber
    # POST /subscribers
    post do
      Subscriber.create! params
    end
  end

end