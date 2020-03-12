CREATE DATABASE bd_disque_rango ;

USE  bd_disque_rango ;

CREATE TABLE status_pedido(
	id_status_pedido INT,
	status VARCHAR(45) NOT NULL,
	PRIMARY KEY (id_status_pedido)
);


CREATE TABLE entregador(
	id_entregador INT,
	nome NOT NULL,
	placa_veiculo NOT NULL,
	PRIMARY KEY (id_entregador)
);


CREATE TABLE endereco(
	id_endereco INT,
	rua NOT NULL,
	numero NOT NULL,
	bairro NOT NULL,
	cep NOT NULL,
	cidade NOT NULL,
	ponto_referencia NOT NULL,
	PRIMARY KEY (id_endereco)
);

CREATE TABLE telefone(
	id_telefone INT,
	ddd NOT NULL,
	digitos NOT NULL,
	PRIMARY KEY (id_telefone)
);

CREATE  TABLE status_cliente(
	id_status_cliente INT,
	status_cliente NOT NULL,
	PRIMARY KEY (id_status_cliente)
);



CREATE TABLE funcionario(
	id_funcionario INT,
	matricula NOT NULL,
	nome NOT NULL,
	PRIMARY KEY (id_funcionario)
);

CREATE TABLE cliente(
	id_cliente INT,
	nome NOT NULL,
	numero_devolucoes NOT NULL,
	endereco_id_endereco INT NOT NULL,
	telefone_id_telefone INT NOT NULL,
	status_cliente_id_status_cliente INT NOT NULL,
	funcionario_id_funcionario INT NOT NULL,
	PRIMARY KEY (id_cliente),
    FOREIGN KEY (endereco_id_endereco) REFERENCES endereco (id_endereco),
    FOREIGN KEY (telefone_id_telefone) REFERENCES telefone (id_telefone),
    FOREIGN KEY (status_cliente_id_status_cliente) REFERENCES status_cliente (id_status_cliente),
    FOREIGN KEY (funcionario_id_funcionario) REFERENCES funcionario (id_funcionario)
);

CREATE TABLE pedido(
	id_pedido INT,
	data_pedido DATE NOT NULL,
	quantidade_item_pedido INT NOT NULL,
	status_pedido_id_status_pedido INT NOT NULL,
	entregador_id_entregador INT NOT NULL,
	cliente_id_cliente INT NOT NULL,
	PRIMARY KEY (id_pedido),
    FOREIGN KEY (status_pedido_id_status_pedido) REFERENCES status_pedido (id_status_pedido),
    FOREIGN KEY (entregador_id_entregador) REFERENCES entregador (id_entregador),
    FOREIGN KEY (cliente_id_cliente) REFERENCES cliente (id_cliente)
);



CREATE TABLE pagamento_cheque(
	id_pagamento_cheque INT,
	numero_cheque NOT NULL,
	conta INT NOT NULL,
	agencia NOT NULL,
	banco NOT NULL,
	pedido_id_pedido INT NOT NULL,
	PRIMARY KEY (id_pagamento_cheque),
    FOREIGN KEY (pedido_id_pedido) REFERENCES pedido (id_pedido)
);

CREATE TABLE tipo_item(
	id_tipo_item  INT,
    tipo VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_tipo_item)
);

CREATE TABLE item_cardapio(
	id_item_cardapio  INT,
	nome_item  VARCHAR(45) NOT NULL,
	valor  FLOAT NOT NULL,
	tipo_item_id_tipo_item  INT NOT NULL,
	PRIMARY KEY (id_item_cardapio),
    FOREIGN KEY (tipo_item_id_tipo_item ) REFERENCES tipo_item  (id_tipo_item)
);
CREATE TABLE bebida_estoque(
	id_estoque_bebida INT,
	quantidade_disponivel INT NOT NULL,
	item_cardapio_id_cardapio INT NOT NULL,
	PRIMARY KEY (id_estoque_bebida),
    FOREIGN KEY (item_cardapio_id_cardapio) REFERENCES item_cardapio (id_item_cardapio)
);

CREATE TABLE IF (
	pedido_id_pedido INT,
	item_cardapio_id_item_cardapio INT NOT NULL,
	PRIMARY KEY (pedido_id_pedido),
	FOREIGN KEY (pedido_id_pedido ) REFERENCES pedido (id_pedido),
	FOREIGN KEY (item_cardapio_id_item_cardapio ) REFERENCES item_cardapio (id_item_cardapio)
);

