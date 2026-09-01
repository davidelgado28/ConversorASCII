use std::io;

fn numero_para_ascii(numero: u32) -> String {
    if numero > 127 {
        return String::from("Valor invalido!");
    }
    match char::from_u32(numero) {
        Some(c) => c.to_string(),
        None => String::from("Valor invalido!"),
    }
}
fn main() {
    println!("Digite um numero (0-127): ");
    let mut entrada = String::new();
    io::stdin().read_line(&mut entrada).unwrap();
    let numero: u32 = entrada.trim().parse().unwrap();

    println!("ASCII: {}", numero_para_ascii(numero));
}
