EditorVariable = EditorVariable or class(MissionScriptEditor)
EditorVariable.SAVE_UNIT_POSITION = false
EditorVariable.SAVE_UNIT_ROTATION = false
function EditorVariable:create_element()
	self.super.create_element(self)
	self._element.class = "ElementVariable"
	self._element.values.elements = {}
	self._element.values.variable = ""
	self._element.values.activated = true
end
function EditorVariable:_build_panel()
	self:_create_panel()
    self:_build_value_text("variable")
	self:_build_value_checkbox("activated", "Set if the variable is active and uncheck if the variable is disabled.")
end
