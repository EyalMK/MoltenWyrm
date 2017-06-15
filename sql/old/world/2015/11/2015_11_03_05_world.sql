SET @GUID=147374;

UPDATE creature SET spawndist=0, MovementType = 2 WHERE guid=@GUID;

INSERT IGNORE INTO creature_addon (guid) VALUE (@GUID);
UPDATE creature_addon SET path_id=@GUID WHERE guid=@GUID;

DELETE FROM waypoint_data WHERE id=@GUID;
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, orientation, delay) values
(147374, 0, -52.4524, 370.4732, -50.37509, 2.815571, 3000),
(147374, 1, -42.76655, 354.2386, -47.25697, 5.207113, 0),
(147374, 2, -32.09711, 348.9371, -44.52501, 5.82365, 0),
(147374, 3, -19.73256, 348.9384, -42.31201, 6.271326, 0),
(147374, 4, -12.58132, 346.0929, -40.93461, 5.87863, 0),
(147374, 5, -5.21915, 351.7562, -41.3221, 0.883495, 3000),
(147374, 6, -12.58132, 346.0929, -40.93461, 5.87863, 0),
(147374, 7, -19.73256, 348.9384, -42.31201, 6.271326, 0),
(147374, 8, -32.09711, 348.9371, -44.52501, 5.82365, 0),
(147374, 9, -42.76655, 354.2386, -47.25697, 5.207113, 0);
