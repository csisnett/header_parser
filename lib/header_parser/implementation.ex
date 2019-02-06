defmodule HeaderParser.Implementation do
    
    alias HeaderParser.Information

    def parse(conn) do
        conn.req_headers
        |> get_request_headers(conn.remote_ip)
    end

    def get_request_headers(headers, remote_ip) do
        %Information{
            ipaddress: format_ip(remote_ip),
            language: get_language(headers),
            software: get_software(headers)
        }
    end

    def format_ip({a, b, c, d}) do
        Integer.to_string(a) <> ":" <> Integer.to_string(b) <> ":" <> Integer.to_string(c) <> ":" <> Integer.to_string(d)
    end


    def get_language([{"accept-language", language} | t]) do
        language
    end

    def get_software([{"user-agent", software} | t]) do
        software
    end


    def get_language([hd | tail]) do
        get_language(tail)
    end

    def get_software([hd | tail]) do
        get_software(tail)
    end

end