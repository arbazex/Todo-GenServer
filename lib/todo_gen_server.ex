defmodule TodoGenServer do
  # use GenServer

  # # Implementation of interface functions
  # def start do
  #   GenServer.start(__MODULE__, %{})
  # end

  # def add(pid, task_number, task_todo) do
  #   GenServer.cast(pid, {:add, task_number, task_todo})
  # end

  # def get(pid, task_number) do
  #   GenServer.call(pid, {:get, task_number})
  # end

  # def delete(pid, task_number) do
  #   GenServer.cast(pid, {:delete, task_number})
  # end

  # def update(pid, task_number, updated_task) do
  #   GenServer.cast(pid, {:update, task_number, updated_task})
  # end


  # # Implementation of GenServer callbacks
  # def init do
  #   {:ok, Map.new}
  # end

  # def handle_call({:get, task_number}, _, state) do
  #   {:reply, Map.get(state, task_number), state}
  # end

  # def handle_cast({:add, task_number, task_todo}, state) do
  #   {:noreply, Map.put(state, task_number, task_todo)}
  # end

  # def handle_cast({:delete, task_number}, state) do
  #   {:noreply, Map.delete(state, task_number)}
  # end

  # def handle_cast({:update, task_number, updated_task}, state) do
  #   {:noreply, Map.replace(state, task_number, updated_task)}
  # end

end
