UPDATE ModifierArguments
SET Value = (SELECT YieldChange FROM Resource_YieldChanges WHERE YieldType == 'YIELD_PRODUCTION' AND ResourceType == 'RESOURCE_COAL')
WHERE ModifierId == 'TOXIC_MINES__COAL_MINE_COMPENSATED_PRODUCTION' AND Name == 'Amount';

UPDATE ModifierArguments
SET Value = (SELECT YieldChange FROM Resource_YieldChanges WHERE YieldType == 'YIELD_PRODUCTION' AND ResourceType == 'RESOURCE_URANIUM')
WHERE ModifierId == 'TOXIC_MINES__URANIUM_MINE_COMPENSATED_PRODUCTION' AND Name == 'Amount';

UPDATE ModifierArguments
SET Value = (SELECT YieldChange FROM Resource_YieldChanges WHERE YieldType == 'YIELD_PRODUCTION' AND ResourceType == 'RESOURCE_OIL')
WHERE ModifierId == 'TOXIC_MINES__EXPLOITED_OIL_COMPENSATED_PRODUCTION' AND Name == 'Amount';