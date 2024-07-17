### Pizza sales analysis with SQL:

- Following are the questions and the analysis done through MYSQL interface :

  1.Retrieve the total number of orders placed?
    - select count(order_id) as total_orders from orders
     - Answer : 21350

  2.Calculate the total revenue generated from pizza sales?
    - SELECT 
    - round(sum(order_details.quantity * pizzas.price),2) as Total_sales
    - from order_details join pizzas
    - on 	pizzas.pizza_id = order_details.pizza_id
        - Answer : 817860.05

  3.Identify the highest-priced pizza?
    - SELECT pizza_types.name, pizzas.price
    - From pizza_types join pizzas
    - ON pizza_types.pizza_type_id = pizzas.pizza_type_id
    - order by pizzas.price DESC
    - limit 1
       - Answer : The Greek Pizza	priced at $35.95

  4.Identify the most common pizza size ordered?
    - SELECT  pizzas.size, count(order_details.order_detials_id) as Order_count
    - from pizzas join order_details
    - on 	pizzas.pizza_id = order_details.pizza_id
    - group by  pizzas.size 
    - order by Order_count desc;
      - Answer : L	18526
  5.List the top 5 most ordered pizza types along with their quantities?
    - SELECT pizza_types.name, sum(order_details.quantity) as Total_qty
    - from pizza_types join pizzas
    - on pizza_types.pizza_type_id = pizzas.pizza_type_id
    - join order_details
    - On order_details.pizza_id = pizzas.pizza_id
    - Group by  pizza_types.name
    - Order By Total_qty desc
    - limit 5
      - Answer:  . The Classic Deluxe Pizza	2453
                 . The Barbecue Chicken Pizza	2432
                 . The Hawaiian Pizza	2422
                 . The Pepperoni Pizza	2418
                 . The Thai Chicken Pizza	2371












