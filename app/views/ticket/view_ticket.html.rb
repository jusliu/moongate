<!DOCTYPE html>
<html>
<head></head>
<body>
<div class="container">
	<div class="ticket">
		<h1 class="ticket-subject">Ticket Subject:</h1>
		<div class="ticket-category">
			<%= f.label :category, "Ticket Category", class: "field_label" %>
			<%= f.text_field :category, placeholder: "ticket category" %>
		</div>
		<div class="ticket-open">
			<%= f.label :opened, "Opened By" class: "field_label" %>
			<%= f.text_field :opened, placeholder: "opened by someone" %>
		</div>
		<div class="ticket-message">
			<%= f.label :message, "Message" class: "field_label" %>
			<%= f.text_field :message, placeholder: "ticket message" %>
		</div>
	</div>
	<div class="response">
		<div class="response-input">
			<%= f.label :response, "Response" class: "field_label" %>
			<%= f.text_field :response, placeholder: "response" %>
		</div>
		<button class="response-button">Add</button>
	</div>
</div>
</body>