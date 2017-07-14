package com.pizza;

public class Pizza {
	private String name, type, description;
	private int ID, price;

	public Pizza(String name, int ID, String type, String description, int price) {
		super();
		this.name = name;
		this.ID = ID;
		this.type = type;
		this.description = description;
		this.price = price;
	}

	public Pizza() {
		super();
		name = "default";
		ID = 0;
		type="default";
		description="desc.";
		price = 0;
				
	}

	@Override
	public String toString() {
		return "Pizza [name=" + name + ", ID=" + ID + ", type=" + type + ", description=" + description + ", price="
				+ price + "]";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

}
