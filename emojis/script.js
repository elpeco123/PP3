class Carta {
  constructor(emoji) {
    this.emoji = emoji;
    this.estado = "oculta";
  }
}

class Juego {
  constructor() {
    this.tablero = document.getElementById("tablero");
    this.cartas = [];
    this.seleccionadas = [];
    this.bloqueado = false;

    this.iniciar();
  }

  iniciar() {
    const emojis = this.generarEmojis();
    const mezcla = this.mezclar([...emojis, ...emojis]);

    this.cartas = mezcla.map(e => new Carta(e));
    this.render();
  }

  generarEmojis() {
    const base = [
      "😀","😎","🥳","😡","😱","😍","🤖","👻","🎃","🐶",
      "🐱","🦊","🐼","🐸","🦁","🐯","🐨","🐵","🐔","🐧",
      "🐢","🐍","🦋","🐙","🦀","🐬","🐳","🦄","🐝","🌸",
      "🌵","🌻","🌙","⭐","🔥","💧","🍎","🍕","🍔","🍩",
      "🍓","🍇","⚽","🏀","🏈","🎾","🎲","🎮","🚗","✈️"
    ];
    return base.slice(0, 50); // 50 pares
  }


  mezclar(array) {
    for (let i = array.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [array[i], array[j]] = [array[j], array[i]];
    }
    return array;
  }

  render() {
    this.tablero.innerHTML = "";

    this.cartas.forEach((carta, index) => {
      const div = document.createElement("div");
      div.classList.add("carta");

      if (carta.estado === "volteada" || carta.estado === "encontrada") {
        div.classList.add("volteada");
        div.textContent = carta.emoji;
      }

      if (carta.estado === "encontrada") {
        div.classList.add("encontrada");
      }

      div.addEventListener("click", () => this.voltearCarta(index));
      this.tablero.appendChild(div);
    });
  }

  voltearCarta(index) {
   
    if (this.bloqueado || this.seleccionadas.length === 2) return;

    const carta = this.cartas[index];

    if (carta.estado !== "oculta") return;

    carta.estado = "volteada";
    this.seleccionadas.push(index);

    this.render();

    if (this.seleccionadas.length === 2) {
      this.verificar();
    }
  }

  verificar() {
    this.bloqueado = true;

    const [i1, i2] = this.seleccionadas;
    const c1 = this.cartas[i1];
    const c2 = this.cartas[i2];

    if (c1.emoji === c2.emoji) {
      c1.estado = "encontrada";
      c2.estado = "encontrada";

      setTimeout(() => {
        this.resetTurno();
      }, 300);
    } else {
      setTimeout(() => {
        c1.estado = "oculta";
        c2.estado = "oculta";
        this.resetTurno();
      }, 1200); 
    }
  }

  resetTurno() {
    this.seleccionadas = [];
    this.bloqueado = false;
    this.render();
  }
}

// iniciar juego
new Juego();
  
