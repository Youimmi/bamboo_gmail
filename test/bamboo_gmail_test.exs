defmodule Bamboo.GmailAdapterTest do
  use ExUnit.Case

  alias Bamboo.GmailAdapter
  alias Bamboo.GmailAdapter.Errors.{ConfigError}

  doctest Bamboo.GmailAdapter

  @invalid_config %{
    app: :mailer,
    adapter: :adapter
  }

  test "invalid configuration raises ConfigError" do
    assert_raise ConfigError, fn ->
      GmailAdapter.handle_config(@invalid_config)
    end
  end
end
