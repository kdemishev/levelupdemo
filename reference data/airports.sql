create table airport (
	code text,
	name text, 
	address text,
	latitude decimal,
	longitude decimal
);


select * from airport;

create or replace procedure test_fillAirports()
as $$
begin
	truncate table airport;

	INSERT INTO airport (code, "name", address, latitude, longitude) VALUES 
	('LHR', 'Heathrow Airport', 'Longford TW6, United Kingdom', 51.4694, -0.4509),
	('CDG', 'Charles de Gaulle Airport', 'Route de la Commune, 95700 Roissy-en-France, France', 49.0097, 2.5479),
	('FRA', 'Frankfurt Airport', 'Frankfurt Airport, 60547 Frankfurt am Main, Germany', 50.0333, 8.5706),
	('AMS', 'Amsterdam Airport Schiphol', 'Evert van de Beekstraat 202, 1118 CP Schiphol, Netherlands', 52.3081, 4.7642),
	('BCN', 'Barcelona–El Prat Airport', '08820 El Prat de Llobregat, Barcelona, Spain', 41.2971, 2.0785),
	('MAD', 'Adolfo Suárez Madrid–Barajas Airport', 'Av de la Hispanidad, s/n, 28042 Madrid, Spain', 40.4901, -3.5661),
	('FCO', 'Leonardo da Vinci–Fiumicino Airport', 'Via dell'' Aeroporto di Fiumicino, 320, 54, 00054 Fiumicino RM, Italy', 41.8003, 12.2388),
	('MUC', 'Munich Airport', 'Nordallee 25, 85356 München-Flughafen, Germany', 48.3537, 11.7750),
	('ZRH', 'Zurich Airport', '8058 Zürich, Switzerland', 47.4647, 8.5492),
	('CPH', 'Copenhagen Airport', 'Lufthavnsboulevarden 6, 2770 Kastrup, Denmark', 55.6180, 12.6497),
	('IEV', 'Kyiv (Zhuliany) International Airport', 'Medova str., Kyiv 03048, Ukraine', 50.2460, 30.276);
end;$$ 
language plpgsql;