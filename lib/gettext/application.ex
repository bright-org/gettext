defmodule Gettext.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    # AtomVM: Agent モジュールが未実装のため ExtractorAgent を起動できない。
    # TODO: 削除するのかコメントアウトして残しておくのかの確認が必須
    # children = [Gettext.ExtractorAgent]
    # Supervisor.start_link(children, strategy: :one_for_one)
    Supervisor.start_link([], strategy: :one_for_one, name: Gettext.Supervisor)
  end
end
