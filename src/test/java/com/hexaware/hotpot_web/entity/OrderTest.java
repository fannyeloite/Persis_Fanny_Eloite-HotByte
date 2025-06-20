package com.hexaware.hotpot_web.entity;

import static org.junit.jupiter.api.Assertions.*;
import java.time.LocalDateTime;
import org.junit.jupiter.api.Test;
import com.hexaware.hotpot_web.entity.Order;

public class OrderTest {


@Test
void testOrderEntity() {
    LocalDateTime now = LocalDateTime.now();
    Order order = new Order("customer@example.com", 101, 2, 250.0, now, "Pending");

    assertEquals("customer@example.com", order.getCustomerEmail());
    assertEquals(101, order.getFoodId());
    assertEquals(2, order.getQuantity());
    assertEquals(250.0, order.getTotalPrice());
    assertEquals(now, order.getOrderTime());
    assertEquals("Pending", order.getStatus());
}
}

