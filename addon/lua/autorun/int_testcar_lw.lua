 	AddCSLuaFile()

local name = "Test Vehicle (LW's Police Package)"
local entName = "int_testcar_lw"

local EMV = {}

EMV.Auto = {
	{
		ID = "Internet LW Matrixboard",
		Scale = 1,
		Pos = Vector(0, -100, 32),
		Ang = Angle(0, -90, 0),
	},
	{
		ID = "Internet LW Interior Lightbar Clear/Red",
		Scale = 1,
		Pos = Vector(0, 15, 43),
		Ang = Angle(0, -90, 0),
	},
	{
		ID = "Internet LW Interior Lightbar Blue/Red",
		Scale = 1,
		Pos = Vector(0, 17, 47.5),
		Ang = Angle(0, -90, 0),
	},
	{
		ID = "Internet LW Interior Lightbar Red",
		Scale = 1,
		Pos = Vector(0, 19, 52),
		Ang = Angle(0, -90, 0),
	},
	{
		ID = "Internet LW Interior Lightbar Amber",
		Scale = 1,
		Pos = Vector(0, 21, 56.5),
		Ang = Angle(0, -90, 0),
	},
	{
		ID = "Internet LW Interior Lightbar Clear",
		Scale = 1,
		Pos = Vector(0, 23, 61),
		Ang = Angle(0, -90, 0)
	},
	{
		ID = "Internet LW Interior Lightbar Blue/Red Alt",
		Scale = 1,
		Pos = Vector(0, 25, 65.5),
		Ang = Angle(0, -90, 0),
	},
	{
		ID = "Internet LW Interior Lightbar Clear/Red Alt",
		Scale = 1,
		Pos = Vector(0, 27, 70),
		Ang = Angle(0, -90, 0),
	},
	{
		ID = "Internet LW Interior Lightbar Clear/Blue Alt",
		Scale = 1,
		Pos = Vector(0, 29, 74.5),
		Ang = Angle(0, -90, 0),
	},
	{
		ID = "Internet LW Arrowboard",
		Scale = 1,
		Pos = Vector(0, 0, 0),
		Ang = Angle(0, -90, 0),
 	},
}

EMV.Sequences = {
	Sequences = {
		{Name = "CODE 1", Stage = "M1", Components = {}, Disconnect = {}},
		{Name = "CODE 2", Stage = "M2", Components = {}, Disconnect = {}},
		{Name = "CODE 3", Stage = "M3", Components = {}, Disconnect = {}}
	},
	Traffic = {
		{Name = "LEFT", Stage = "L", Components = {}, Disconnect = {}},
		{Name = "DIVERGE", Stage = "D", Components = {}, Disconnect = {}},
		{Name = "RIGHT", Stage = "R", Components = {}, Disconnect = {}}
	}
}

local V = {
	Name =	name,
	Class = "prop_vehicle_jeep",
	Category = "Internet's Emergency - Component Test Vehicles",
	Author = "Doctor Internet",
	Model =	"models/buggy.mdl",
	KeyValues = {vehiclescript = "scripts/vehicles/jeep_test.txt"},

	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}

list.Set("Vehicles", entName, V)

if EMVU then EMVU:OverwriteIndex(name, EMV) end
if Photon then Photon:OverwriteIndex(name, PI) end