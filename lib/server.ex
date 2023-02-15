defmodule TodoGenServer.Server do
   use GenServer

  def start do
    GenServer.start(__MODULE__, %{})
  end

  @impl true
  def init(_) do
    {:ok, Map.new}
  end

  def handle_call({:get, task_number}, _, state) do
    {:reply, Map.get(state, task_number), state}
  end

  def handle_cast({:add, task_number, task_todo}, state) do
    {:noreply, Map.put(state, task_number, task_todo)}
  end

  def handle_cast({:delete, task_number}, state) do
    {:noreply, Map.delete(state, task_number)}
  end

  def handle_cast({:update, task_number, updated_task}, state) do
    {:noreply, Map.replace(state, task_number, updated_task)}
  end
end
