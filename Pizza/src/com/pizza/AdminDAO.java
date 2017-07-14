package com.pizza;

public interface AdminDAO {
	
	public Pizza addPizza(Pizza pizza);
	public Pizza deletePizza(String name);
	public Pizza editPizza(Pizza pizza);
	
}
