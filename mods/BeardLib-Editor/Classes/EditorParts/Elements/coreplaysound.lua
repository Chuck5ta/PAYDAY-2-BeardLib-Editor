EditorPlaySound = EditorPlaySound or class(MissionScriptEditor)
function EditorPlaySound:create_element()
	EditorPlaySound.super.create_element(self)
	self._element.class = "ElementPlaySound"
	self._element.values.elements = {}
	self._element.values.append_prefix = false
	self._element.values.use_instigator = false
end
function EditorPlaySound:_build_panel(panel, panel_sizer)
	self:_create_panel()
	self:_build_element_list("elements", {"ElementSpawnEnemyDummy", "ElementSpawnCivlian"})
	self:_build_value_text("sound_event", nil, nil, "Sound ID")
	self:_build_value_checkbox("append_prefix", "Append unit prefix")
	self:_build_value_checkbox("use_instigator", "Play on instigator")
end
