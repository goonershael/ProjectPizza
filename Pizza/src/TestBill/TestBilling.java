package TestBill;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.billling.BillingDAO;
import com.billling.BillingDAOImpl;

public class TestBilling {

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testBillCalc() {
		//fail("Not yet implemented");
		BillingDAO dao = new BillingDAOImpl();
		int actual = dao.billCalc(200, 50, 20);
		assertEquals(324, actual);
	}
	
	@Test
	public void testBillCalcNegative() {
		//fail("Not yet implemented");
		BillingDAO dao = new BillingDAOImpl();
		int actual = dao.billCalc(200, 50, 20);
		//assertEquals(325, actual);
		assertTrue(actual!=325);
	}
	

}
