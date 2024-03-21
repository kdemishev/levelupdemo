create table aircraft (
    code text
    added_on date
    type text
    number text
);

create or replace procedure test_fillAircrafts()
as $$
begin
	truncate table aircraft;

	INSERT INTO aircraft (code, added_on, "type", "number") VALUES 
	('B743', now(), 'Airbus', '33A'),
    ('B734', now(), 'Airbus', 'D899'),
    ('B744', now(), 'Airbus', '337A'),
    ('RX85', now(), 'Airbus', 'AX8'),
    ('CVLT', now(), 'Airbus', 'CV-580'),
    ('DC10', now(), 'Airbus', 'D120'),
    ('DC93', now(), 'Airbus', 'G701'),
    ('DC4', now(), 'Airbus', '6A83'),
    ('G73T', now(), 'Airbus', 'GMT33'),
    ('I114', now(), 'Airbus', 'IL12'),
    ('N262', now(), 'Airbus', '173N'),
    ('PC6T', now(), 'Airbus', 'P637'),
    ('S58T', now(), 'Airbus', '898S');
end;$$ 
language plpgsql;