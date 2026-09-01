import { useState } from 'react';

function ConversorASCII() {
    const [numero, setNumero] = useState('');
    const [resultado, setResultado] = useState('');

    const converter = () => {
        const num = parseInt(numero);
        if (isNaN(num) || num < 0 || num > 127) {
            setResultado('Valor invalido! Use 0 a 127.');
            return;
        }
        setResultado(`ASCII: ${String.fromCharCode(num)}`);
    };

    return (
        <div style={{ padding: 20, fontFamily: 'sans-serif' }}>
            <h2>Conversor Número → ASCII</h2>
            <input
                type="number"
                min="0" max="127"
                value={numero}
                onChange={(e) => setNumero(e.target.value)}
                placeholder="Digite um numero (0-127)"
            />
            <button onClick={converter}>Converter</button>
            {resultado && <h3>{resultado}</h3>}
        </div>
    );
}

export default ConversorASCII;
