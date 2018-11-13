UPDATE ModifierArguments
SET Value = (SELECT YieldChange FROM Resource_YieldChanges WHERE YieldType == 'YIELD_SCIENCE' AND ResourceType == 'RESOURCE_IRON')
WHERE ModifierId == 'TOXIC_MINES__IRON_MINE_BONUS_PRODUCTION' AND Name == 'Amount';

UPDATE ModifierArguments
SET Value = (SELECT YieldChange FROM Resource_YieldChanges WHERE YieldType == 'YIELD_SCIENCE' AND ResourceType == 'RESOURCE_ALUMINUM')
WHERE ModifierId == 'TOXIC_MINES__ALUMINUM_MINE_BONUS_PRODUCTION' AND Name == 'Amount';

UPDATE ModifierArguments
SET Value = (SELECT YieldChange FROM Resource_YieldChanges WHERE YieldType == 'YIELD_SCIENCE' AND ResourceType == 'RESOURCE_COAL')
WHERE ModifierId == 'TOXIC_MINES__COAL_MINE_COMPENSATED_PRODUCTION' AND Name == 'Amount';

UPDATE ModifierArguments
SET Value = (SELECT YieldChange FROM Resource_YieldChanges WHERE YieldType == 'YIELD_SCIENCE' AND ResourceType == 'RESOURCE_URANIUM')
WHERE ModifierId == 'TOXIC_MINES__URANIUM_MINE_COMPENSATED_PRODUCTION' AND Name == 'Amount';

UPDATE ModifierArguments
SET Value = (SELECT YieldChange FROM Resource_YieldChanges WHERE YieldType == 'YIELD_SCIENCE' AND ResourceType == 'RESOURCE_OIL')
WHERE ModifierId == 'TOXIC_MINES__EXPLOITED_OIL_COMPENSATED_PRODUCTION' AND Name == 'Amount';