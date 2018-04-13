defmodule Push do
    #require Message
    import ExFCM
    def fire(token) do
        {:ok , result } = ExFCM.Message.put_data("sample", "true")
            #|> ExFCM.Message.put_notification("Mike Albert Fleet Solutions","Oil change is overdue")
            |> ExFCM.Message.put_notification("title", "Mike Albert Fleet Solutions")
            |> ExFCM.Message.put_notification("body", "Ignore this message. This is just your friendly MAFS Engineer testing.")
            |> ExFCM.Message.put_notification("sound", "default")
            |> ExFCM.Message.target_device(token)
            |> ExFCM.Message.send
    end

end
