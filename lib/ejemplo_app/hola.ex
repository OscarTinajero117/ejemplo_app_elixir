defmodule EjemploApp.Hola do
    use GenServer

    def start_link(:ok) do
        GenServer.start_link(__MODULE__, :ok, name: __MODULE__)
    end

    def init(:ok) do
       IO.puts("Hola mundo")
       {:ok, []}
    end
end