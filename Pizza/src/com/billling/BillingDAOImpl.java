package com.billling;

public class BillingDAOImpl implements BillingDAO {

	@Override
	public int billCalc(int price, int top, int extra) {
		// TODO Auto-generated method stub
		/*
		 * This method reads the value from the price, crust/extras and toppings
		 * table and calculate the total bill + tax 
		 */
		int tax = 20;
		int total =0;
		total = (price + top + extra);
		return (total+(total/5));
	}

}
