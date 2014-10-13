module ConoStorage
  module RequestMethods
    def get_account(params: {}, headers: {})
      get("/#{@tenant_id}", params, headers)
    end

    def head_account(params: {}, headers: {})
      head("/#{@tenant_id}", params, headers)
    end

    def get_container(container, params: {}, headers: {})
      get("/#{@tenant_id}/#{container}", params, headers)
    end

    def put_container(container, params: {}, headers: {})
      put("/#{@tenant_id}/#{container}", params, headers)
    end

    def delete_container(container, params: {}, headers: {})
      delete("/#{@tenant_id}/#{container}", params, headers)
    end

    def post_container(container, params: {}, headers: {})
      post("/#{@tenant_id}/#{container}", params, headers)
    end

    def head_container(container, params: {}, headers: {})
      head("/#{@tenant_id}/#{container}", params, headers)
    end

    def get_object(container, object, params: {}, headers: {})
      get("/#{@tenant_id}/#{container}/#{object}", params, headers)
    end

    def put_object(container, object, file, params: {}, headers: {})
      upload("/#{@tenant_id}/#{container}/#{object}", file, params, headers)
    end

    def delete_object(container, object, params: {}, headers: {})
      delete("/#{@tenant_id}/#{container}/#{object}", params, headers)
    end

    def post_object(container, object, params: {}, headers: {})
      post("/#{@tenant_id}/#{container}/#{object}", params, headers)
    end

    def head_object(container, object, params: {}, headers: {})
      head("/#{@tenant_id}/#{container}/#{object}", params, headers)
    end
  end
end
