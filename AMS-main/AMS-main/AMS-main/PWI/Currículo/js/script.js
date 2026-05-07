const botao = document.getElementById("tema");

// carregar preferencia
if (localStorage.getItem("tema") === "dark") {
    document.body.classList.add("dark")
}

//alterar tema
botao.addEventListener("click",() => {
    document.body.classList.toggle("dark");

    if (document.body.classList.contains("dark")) {
        localStorage.setItem("tema", "dark");
    } else {
        localStorage.setItem("tema", "light");

    }
});




const botao=document.getElementById("tema");

const updateButtonIcon=()=>{
    if (! botao) return;
    const darkMode=document.body.classList.contains("dark");
    botao.textContent=darkMode? "☀️" : "🌕";
    botao.title=darkMode? "mudar para o claro" : "mudar para modo escuro";

};

const temaAtual=localStorage.getItem("tema")==="dark" ? "dark":
"light";
if(temaAtual=== "dark"){
    document.body.classList.add("dark");
}


updateButtonIcon(); 

if (botao){
    botao.addEventListener("click", () =>{
        document.body.classList.toggle("dark");

        if (document.body.classList.contains("dark")){
            localStorage.setItem("tema", "light");

        }
        
        updateButtonIcon();

    } );
}