function DoctorBagBase:_take(unit)
	local taken = 1
	self._amount = self._amount

	unit:character_damage():recover_health()

	local rally_skill_data = unit:movement():rally_skill_data()

	if rally_skill_data then
		rally_skill_data.morale_boost_delay_t = (managers.player:has_category_upgrade("player", "morale_boost") or managers.player:has_enabled_cooldown_upgrade("cooldown", "long_dis_revive")) and 0 or nil
	end

	return taken
end