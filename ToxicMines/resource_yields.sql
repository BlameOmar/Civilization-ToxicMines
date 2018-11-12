-- Coal
INSERT INTO Resource_YieldChanges (ResourceType, YieldType, YieldChange)
SELECT 'RESOURCE_COAL', 'YIELD_SCIENCE', 0
WHERE NOT EXISTS (SELECT 1 FROM Resource_YieldChanges WHERE ResourceType = 'RESOURCE_COAL' AND 'YieldType' = 'YIELD_SCIENCE');

UPDATE Resource_YieldChanges
SET YieldChange = YieldChange + (SELECT YieldChange FROM Resource_YieldChanges WHERE YieldType == 'YIELD_PRODUCTION' AND ResourceType == 'RESOURCE_COAL')
WHERE ResourceType == 'RESOURCE_COAL' AND YieldType == 'YIELD_SCIENCE';

DELETE FROM Resource_YieldChanges WHERE ResourceType == 'RESOURCE_COAL' AND YieldType == 'YIELD_PRODUCTION';

-- Uranium
INSERT INTO Resource_YieldChanges (ResourceType, YieldType, YieldChange)
SELECT 'RESOURCE_URANIUM', 'YIELD_SCIENCE', 0
WHERE NOT EXISTS (SELECT 1 FROM Resource_YieldChanges WHERE ResourceType = 'RESOURCE_URANIUM' AND 'YieldType' = 'YIELD_SCIENCE');

UPDATE Resource_YieldChanges
SET YieldChange = YieldChange + (SELECT YieldChange FROM Resource_YieldChanges WHERE YieldType == 'YIELD_PRODUCTION' AND ResourceType == 'RESOURCE_URANIUM')
WHERE ResourceType == 'RESOURCE_URANIUM' AND YieldType == 'YIELD_SCIENCE';

DELETE FROM Resource_YieldChanges WHERE ResourceType == 'RESOURCE_URANIUM' AND YieldType == 'YIELD_PRODUCTION';

-- Oil
INSERT INTO Resource_YieldChanges (ResourceType, YieldType, YieldChange)
SELECT 'RESOURCE_OIL', 'YIELD_SCIENCE', 0
WHERE NOT EXISTS (SELECT 1 FROM Resource_YieldChanges WHERE ResourceType = 'RESOURCE_OIL' AND 'YieldType' = 'YIELD_SCIENCE');

UPDATE Resource_YieldChanges
SET YieldChange = YieldChange + (SELECT YieldChange FROM Resource_YieldChanges WHERE YieldType == 'YIELD_PRODUCTION' AND ResourceType == 'RESOURCE_OIL')
WHERE ResourceType == 'RESOURCE_OIL' AND YieldType == 'YIELD_SCIENCE';

DELETE FROM Resource_YieldChanges WHERE ResourceType == 'RESOURCE_OIL' AND YieldType == 'YIELD_PRODUCTION';
