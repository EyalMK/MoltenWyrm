
SET @GUID=68010;
SET @ID=68010;

DELETE FROM `waypoint_data` WHERE id=@ID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`) VALUES 
(@ID, 1, 2235.450, -5348.520, 117.211, 0.000, 0, 0, 0, 100),
(@ID, 2, 2237.370, -5371.820, 117.211, 0.000, 0, 0, 0, 100),
(@ID, 3, 2242.490, -5384.330, 117.211, 0.000, 0, 0, 0, 100),
(@ID, 4, 2247.050, -5398.400, 117.211, 0.000, 0, 0, 0, 100),
(@ID, 5, 2237.440, -5400.960, 117.211, 0.000, 0, 0, 0, 100),
(@ID, 6, 2235.810, -5394.700, 115.990, 0.000, 0, 0, 0, 100),
(@ID, 7, 2230.970, -5372.340, 115.990, 0.000, 0, 0, 0, 100),
(@ID, 8, 2228.990, -5348.720, 115.990, 0.000, 0, 0, 0, 100),
(@ID, 9, 2227.320, -5325.120, 115.990, 0.000, 0, 0, 0, 100),
(@ID, 10, 2229.280, -5293.240, 115.990, 0.000, 0, 0, 0, 100),
(@ID, 11, 2245.740, -5273.100, 117.211, 0.000, 0, 0, 0, 100),
(@ID, 12, 2271.470, -5248.880, 117.211, 0.000, 0, 0, 0, 100),
(@ID, 13, 2318.810, -5239.940, 117.211, 0.000, 0, 0, 0, 100),
(@ID, 14, 2360.320, -5243.630, 117.211, 0.000, 0, 0, 0, 100),
(@ID, 15, 2375.470, -5257.360, 117.211, 0.000, 0, 0, 0, 100),
(@ID, 16, 2370.160, -5268.680, 117.211, 0.000, 0, 0, 0, 100),
(@ID, 17, 2357.590, -5265.740, 117.211, 0.000, 0, 0, 0, 100),
(@ID, 18, 2341.250, -5247.730, 117.211, 0.000, 0, 0, 0, 100),
(@ID, 19, 2319.020, -5246.360, 117.211, 0.000, 0, 0, 0, 100),
(@ID, 20, 2272.530, -5255.350, 117.211, 0.000, 0, 0, 0, 100),
(@ID, 21, 2250.220, -5277.420, 117.211, 0.000, 0, 0, 0, 100),
(@ID, 22, 2237.290, -5294.230, 117.211, 0.000, 0, 0, 0, 100),
(@ID, 23, 2233.770, -5325.500, 117.211, 0.000, 0, 0, 0, 100),
(@ID, 24, 2235.450, -5348.520, 117.211, 0.000, 0, 0, 0, 100),
(@ID, 25, 2237.370, -5371.820, 117.211, 0.000, 0, 0, 0, 100),
(@ID, 26, 2242.490, -5384.330, 117.211, 0.000, 0, 0, 0, 100);

UPDATE `creature` SET `id`=11099, `MovementType`=2 WHERE `guid`=@GUID;

INSERT IGNORE INTO `creature_addon` (`guid`) VALUE (@GUID);
UPDATE `creature_addon` SET `path_id`=@ID, `mount`=22471, `bytes1`=50331648,`bytes2`=257  WHERE `guid`=@GUID;


