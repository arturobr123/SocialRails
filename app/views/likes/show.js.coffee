$("#likes_<%=@postt.id%>").show()
$("#likes_<%=@postt.id%>").html("<%= @postt.likes.count %>")
