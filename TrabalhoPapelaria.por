programa
{
	funcao inicio()
	{
		inteiro quantidade
		inteiro pagamento
		inteiro resposta
    cadeia nomeProduto
    real preco
		real total

		total = 0 //isso seria o valor que inicia em valor no carrinho, ou seja, esta zerado
		resposta = 1 // esse seria o loop de repetiçao, se o cliente apertar o 1, continua a compra, se apertar 2 ele finaliza e vai pro pagamento

		enquanto (resposta == 1)
		{
			escreva("===== PAPELARIA Os'Mar =====\n")
			escreva("Produtos: Caneta, Caderno, Lapis, Borracha, Regua\n")
			escreva("Produto: ")
			leia(nomeProduto)

			se (nomeProduto == "caneta" ou nomeProduto == "Caneta" ou nomeProduto == "CANETA")
			{
				preco = 5.00
			}
			senao se (nomeProduto == "caderno" ou nomeProduto == "Caderno" ou nomeProduto == "CADERNO")
			{
				preco = 15.00
			}
			senao se (nomeProduto == "lapis" ou nomeProduto == "Lapis" ou nomeProduto == "LAPIS")
			{
				preco = 2.50
			}
			senao se (nomeProduto == "borracha" ou nomeProduto == "Borracha" ou nomeProduto == "BORRACHA")
			{
				preco = 3.00
			}
			senao se (nomeProduto == "regua" ou nomeProduto == "Regua" ou nomeProduto == "REGUA")
			{
				preco = 3.50
			}
			senao
			{
				escreva("Produto invalido\n")
				preco = 0
			}

			se (preco > 0)
			{
				escreva("Quantidade: ")
				leia(quantidade)

				total = total + (preco * quantidade)

				escreva("Total ate agora: R$ ", total, "\n")
			}

			escreva("\nDeseja continuar?\n")
			escreva("1 - Sim\n")
			escreva("2 - Nao\n")
			leia(resposta)

			escreva("\n")
		}

		se (total > 0)
		{
			escreva("Forma de pagamento:\n")
			escreva("1 - Dinheiro\n")
			escreva("2 - Cartao\n")
			escreva("3 - PIX\n")
			leia(pagamento)

			se (pagamento == 1)
			{
				escreva("Pagamento em Dinheiro\n")
			}
			senao se (pagamento == 2)
			{
				escreva("Pagamento em Cartao\n")
			}
			senao se (pagamento == 3)
			{
				escreva("Pagamento em PIX\n")
			}
			senao
			{
				escreva("Forma de pagamento invalida\n")
			}

			se (pagamento >= 1 e pagamento <= 3)
			{
				escreva("\nCompra finalizada!\n")
				escreva("Total: R$ ", total, "\n")
			}
		}
	}
}