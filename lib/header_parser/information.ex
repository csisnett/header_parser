defmodule HeaderParser.Information do
    @derive {Jason.Encoder, only: [:ipaddress, :language, :software]}
    defstruct [:ipaddress, :language, :software]
end