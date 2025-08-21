extends BoxContainer
class_name DisplayValue

@export var text_hint: String
@onready var label_hint: Label = $Label
@onready var label_number: Label = $Label2

func _ready():
	label_hint.text = text_hint

func update_float(value: float) -> void:
	label_number.text = str(value)

func update_span_int(span: SpanInt) -> void:
	printt('update_span_int', span.current, label_number.text)
	label_number.text = "%s" % span.current
