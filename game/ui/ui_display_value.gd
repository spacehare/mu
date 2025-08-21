extends BoxContainer

@onready var label: Label = $Label2

func update_float(value: float) -> void:
	label.text = str(value)

func update_span_int(value: SpanInt) -> void:
	label.text = str(value.current)
