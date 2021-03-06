module ConoStorage
  module RequestMethods

    # GET（アカウント）
    #
    # 指定したアカウント及びアカウントが保持するコンテナの詳細を取得します。
    #
    def get_account(params: {}, headers: {})
      get("", params, headers)
    end

    # POST（アカウント）
    #
    # アカウントのメタデータを作成、更新、削除します。
    #
    def post_account(params: {}, headers: {})
      post("", params, headers)
    end

    # HEAD（アカウント）
    #
    # アカウントのメタデータを取得します。
    #
    def head_account(params: {}, headers: {})
      head("", params, headers)
    end

    # GET（コンテナ）
    #
    # コンテナの詳細と、コンテナ内のオブジェクトの一覧を取得します。
    #
    def get_container(container, params: {}, headers: {})
      get("/#{container}", params, headers)
    end

    # PUT（コンテナ）
    #
    # コンテナの作成、または既存のコンテナの更新をします。
    #
    def put_container(container, params: {}, headers: {})
      put("/#{container}", params, headers)
    end

    # DELETE（コンテナ）
    #
    # コンテナを削除します。
    #
    def delete_container(container, params: {}, headers: {})
      delete("/#{container}", params, headers)
    end

    # POST（コンテナ）
    #
    # コンテナのメタデータを作成、更新、削除します。
    #
    def post_container(container, params: {}, headers: {})
      post("/#{container}", params, headers)
    end

    # HEAD（コンテナ）
    #
    # コンテナのメタデータを取得します。
    #
    def head_container(container, params: {}, headers: {})
      head("/#{container}", params, headers)
    end

    # GET（オブジェクト）
    #
    # オブジェクトのダウンロードと、オブジェクトのメタデータの取得をします。
    #
    def get_object(container, object, params: {}, headers: {})
      get("/#{container}/#{object}", params, headers)
    end

    # PUT（オブジェクト）
    #
    # メタデータを含むオブジェクトを作成します。
    # オブジェクトが既に存在する場合はオブジェクト、またはメタデータを置き換えます。
    #
    def put_object(container, object, file, params: {}, headers: {})
      upload("/#{container}/#{object}", file, params, headers)
    end

    # DELETE（オブジェクト）
    #
    # アップロード済みのオブジェクトを削除します。
    #
    def delete_object(container, object, params: {}, headers: {})
      delete("/#{container}/#{object}", params, headers)
    end

    # POST（オブジェクト）
    #
    # オブジェクトにメタデータを付与、またはメタデータを更新します。
    #
    def post_object(container, object, params: {}, headers: {})
      post("/#{container}/#{object}", params, headers)
    end

    # HEAD（オブジェクト）
    #
    # オブジェクトのメタデータを取得します。
    #
    def head_object(container, object, params: {}, headers: {})
      head("/#{container}/#{object}", params, headers)
    end
  end
end
