package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func textToASCII(text string) []int {
	var ascii []int
	for i := 0; i < len(text); i++ {
		ascii = append(ascii, int(text[i]))
	}
	return ascii
}

func asciiToText(codes []int) (string, error) {
	var sb strings.Builder
	for _, code := range codes {
		if code < 0 || code > 255 {
			return "", fmt.Errorf("código ASCII inválido: %d (deve estar entre 0 e 255)", code)
		}
		sb.WriteByte(byte(code))
	}
	return sb.String(), nil
}

func main() {
	reader := bufio.NewReader(os.Stdin)

	fmt.Println("=== CONVERSOR ASCII (GO) ===")
	fmt.Println("1. Texto para ASCII")
	fmt.Println("2. ASCII para Texto")
	fmt.Print("Escolha uma opção (1 ou 2): ")

	inputOption, _ := reader.ReadString('\n')
	inputOption = strings.TrimSpace(inputOption)

	if inputOption == "1" {
		fmt.Print("Digite o texto: ")
		text, _ := reader.ReadString('\n')
		text = strings.TrimRight(text, "\r\n")
		
		codes := textToASCII(text)
		fmt.Printf("Texto: %s\n", text)
		fmt.Printf("ASCII: %v\n", codes)
	} else if inputOption == "2" {
		fmt.Print("Digite os códigos ASCII separados por espaço: ")
		line, _ := reader.ReadString('\n')
		line = strings.TrimSpace(line)
		
		parts := strings.Fields(line)
		var codes []int
		for _, p := range parts {
			var val int
			_, err := fmt.Sscanf(p, "%d", &val)
			if err != nil {
				fmt.Printf("Valor inválido ignorado: %s\n", p)
				continue
			}
			codes = append(codes, val)
		}

		text, err := asciiToText(codes)
		if err != nil {
			fmt.Printf("Erro: %v\n", err)
			return
		}
		fmt.Printf("Texto resultante: %s\n", text)
	} else {
		fmt.Println("Opção inválida.")
	}
}
