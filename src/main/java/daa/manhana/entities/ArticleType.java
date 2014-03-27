package daa.manhana.entities;


public enum ArticleType {
	COMIC	("COMIC"),
	BOOK	("BOOK"),
	MOVIE	("MOVIE"),
	CD 		("CD");
	
	private final String tag;
	
	private ArticleType(String tag) {
		this.tag = tag;
	}
	
	public String getTag() {
		return tag;
	}
}
