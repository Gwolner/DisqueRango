# Disque Rango <img src="logo/mysql.png" width="80" height="40" align="right">

A empresa de entrega de refeições a domicílio Disque-Rango deseja um sistema de informação para melhor atender seus clientes. 

Clientes fazem pedidos, discriminando um ou mais itens de cardápio e suas respectivas quantidades (por exemplo, João faz um pedido para receber em casa 2 lasanhas, 1 filé com fritas e 3 latas de cerveja). De um cliente deseja-se saber: nome, endereço, telefone e ponto de referência.

Itens de cardápio podem ser de três tipos: refeições, sobremesas e bebidas. É necessário saber o nome do item de cardápio e seu tipo e valor, sendo que das bebidas é necessário saber também a quantidade em estoque. Não são aceitos pedidos com quantidades de bebidas superiores às quantidades em estoque. Toda vez que bebidas forem compradas, deve-se atualizar a quantidade em estoque.

Uma vez que um pedido é feito, ele é considerado pendente até que seja passado para um entregador. Quando o entregador retorna com o pagamento, o pedido é considerado atendido. Apenas pedidos ainda pendentes podem ser alterados ou cancelados pelo cliente. No último caso, o pedido é excluído do sistema. Caso o entregador não encontre o cliente em seu endereço e retorne com os produtos, o pedido deve ser considerado devolvido e não deverá ser excluído do sistema. Os clientes com três devoluções de pedidos são desativados e só poderão fazer novos pedidos se forem reativados pelo funcionário.

De um pedido deseja-se saber os itens pedidos, a data, o entregador, o cliente e, caso tenha sido pago em cheque, o número do cheque, conta, agência e banco. De um entregador deseja-se saber nome e placa de seu veículo.

## Diagrama de Classes

<img src="diagrama_uml/diagrama de classes.png" width="1213" height="700" align="right">
