defmodule EjemploAppTest do
  use ExUnit.Case
  doctest EjemploApp

  test "greets the world" do
    assert EjemploApp.hello() == :world
  end
end
