defmodule HeaderParserWeb.HeaderController do
    use HeaderParserWeb, :controller

    alias HeaderParser.Implementation

    def index(conn, _params) do
        header = Implementation.parse(conn)
        render(conn, "show.json", header: header)
    end
end