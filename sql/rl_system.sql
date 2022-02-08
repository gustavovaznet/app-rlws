CREATE TABLE `tb_customers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cpf` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `tb_customers` (`id`, `name`, `cpf`, `address`, `phone`, `mail`, `dob`) VALUES
(12, 'Marcos Oliveira da Silva', '520.658.963-58', 'Rua Natal 254 Prado Velho Curitiba-PR', '(41) 9 8854-5525', 'marcos2018@gmail.com', '1987-02-25'),
(16, 'Roseli Maria de Oliveira', '777.111.111-11', 'Rua Prof. Rodolfo Belz 297 Sta. Cândida Curitiba-PR (Casa dos Fundos)', '(41) 9 9999-9999', 'roselimaria@gmail.com', '2021-03-24');

CREATE TABLE `tb_os` (
  `id` int(11) NOT NULL,
  `id_status` int(11) NOT NULL DEFAULT 1,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `service` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_register` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `tb_os_status` (
  `id` int(11) NOT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `tb_os_status` (`id`, `status`) VALUES
(1, 'ABERTA'),
(2, 'FECHADA');

CREATE TABLE `tb_products` (
  `id` int(11) NOT NULL,
  `id_status` int(11) NOT NULL DEFAULT 1,
  `product` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(255) NOT NULL,
  `value` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_register` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `tb_status` (
  `id` int(11) NOT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `tb_status` (`id`, `status`) VALUES
(1, 'DISPONÍVEL'),
(2, 'INDISPONÍVEL');

CREATE TABLE `tb_users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `post` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `tb_users` (`id`, `name`, `surname`, `post`, `address`, `phone`, `mail`, `password`) VALUES
(15, 'Administrador', 'Administrador', 'Administrador', 'Administrador', '(11) 1 1111-1111', 'adm@adm.com', '25d55ad283aa400af464c76d713c07ad'),
(16, 'Renata', 'Martins Gomes', 'Gerente Geral', 'Rua Rei Salomão 229 Sta Cândida Curitiba-PR', '(41) 9 8888-8888', 'renatalacos@hotmail.com', '25d55ad283aa400af464c76d713c07ad');

ALTER TABLE `tb_customers`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tb_os`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_status` (`id_status`);

ALTER TABLE `tb_os_status`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tb_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_status` (`id_status`);

ALTER TABLE `tb_status`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tb_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

ALTER TABLE `tb_os`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

ALTER TABLE `tb_os_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `tb_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

ALTER TABLE `tb_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `tb_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

ALTER TABLE `tb_os`
  ADD CONSTRAINT `id_status` FOREIGN KEY (`id_status`) REFERENCES `tb_os_status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `tb_products`
  ADD CONSTRAINT `tb_products_ibfk_1` FOREIGN KEY (`id_status`) REFERENCES `tb_status` (`id`);
COMMIT;
