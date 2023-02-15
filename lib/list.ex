defmodule TodoGenServer.List do
  # use GenServer
  alias TodoGenServer.Server

  def start do
    Server.start()
  end

  def add(pid, task_number, task_todo) do
    GenServer.cast(pid, {:add, task_number, task_todo})
  end

  def get(pid, task_number) do
    GenServer.call(pid, {:get, task_number})
  end

  def delete(pid, task_number) do
    GenServer.cast(pid, {:delete, task_number})
  end

  def update(pid, task_number, updated_task) do
    GenServer.cast(pid, {:update, task_number, updated_task})
  end
end
