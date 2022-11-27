package Enum;

public enum Bandeira {
	Visa, Master, Elo, HiperCard, Maestro;

	public static Bandeira ordinal(int parseInt) {
		switch (parseInt) {
		case 1:
			return Visa;
		case 2:
			return Master;
		case 3:
			return Elo;
		case 4:
			return HiperCard;
		case 5:
			return Maestro;
		}
		
		return Visa;
	}
}
