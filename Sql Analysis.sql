-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.
SELECT category , name, revenue, Rn
From
(SELECT category,name, Revenue,
rank() over(partition by category order by Revenue desc) as Rn
From
(SELECT pizza_types.category,pizza_types.name,
 sum((order_details.quantity) * pizzas.price) as Revenue
from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details
On order_details.pizza_id = pizzas.pizza_id
Group by  pizza_types.category,pizza_types.name) as A)as B
Where Rn <= 3;