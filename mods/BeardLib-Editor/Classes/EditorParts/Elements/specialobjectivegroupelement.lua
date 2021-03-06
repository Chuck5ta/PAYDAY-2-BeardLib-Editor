EditorSpecialObjectiveGroup = EditorSpecialObjectiveGroup or class(MissionScriptEditor)
function EditorSpecialObjectiveGroup:init(unit)
	EditorSpecialObjectiveGroup.super.init(self, unit)
end 
function EditorSpecialObjectiveGroup:create_element()
    self.super.create_element(self)
	self._element.class = "ElementSpecialObjectiveGroup"
	self._element.values.base_chance = 1
	self._element.values.use_instigator = false
	self._element.values.followup_elements = nil
	self._element.values.spawn_instigator_ids = nil
	self._element.values.mode = "randomizer"
end
function EditorSpecialObjectiveGroup:_build_panel()
	self:_create_panel()
	self:_build_value_combobox("mode", {"randomizer","forced_spawn","recurring_cloaker_spawn","recurring_spawn_1"}, "Randomizer: assigns SOs to instigators. Forced Spawn: Will spawn a new group of choice. Recurring: Spawns new group. After failure, a new group will be spawned with a delay.")
	self:_build_value_checkbox("use_instigator")
	self:_build_value_number("base_chance", {min = 0, max = 1, floats = 2}, "Used to specify chance to happen (1==absolutely!)")
	self:_build_element_list("spawn_instigator_ids", {"ElementSpawnEnemyGroup"})
	self:_build_element_list("followup_elements", {"ElementSpeicalObjective"})
end
