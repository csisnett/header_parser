defmodule HeaderParserWeb.HeaderView do
    use HeaderParserWeb, :view

    def render("show.json", %{header: header}) do
        header
    end
end