package br.com.emmanuelneri.consumer.model;

import lombok.Getter;
import lombok.ToString;

import java.math.BigDecimal;

@ToString
@Getter
public class Order {

    private String identifier;
    private String customer;
    private BigDecimal value;

}
