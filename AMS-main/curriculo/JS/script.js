const botao = document.getElementById("Tema");

         // carregar preferencia
         if (localStorage.getItem("Tema") === "dark") {
            document.body.classList.add("dark")
         }

         //alternar tema
         botao.addEventListener("click",() => {
            document.body.classList.toggle("dark");

            if (document.body.classList.contains("dark")) {
                localStorage.setItem("Tema", "dark");
            } else {
                localStorage.setItem("Tema", "light");
            }
         });
         
         const botao = document.getElementById("tema")

         const updatebuttonIcon = () => {
            if(!botao) return;
            const darkMode= document.body.classList.contains("dark");
            botao.textContent = dark ? "mudar para modo claro" : "Mudar para modo escuro";
         };
         const temaAtual = localStorage.getItem("tema") === "dark" ? "dark" :
         "light";
         if ( temaAtual === "dark"){
            document.body.classList.add("dark");
         }
         updatebuttonIcon();
         if(botao) {
            botao.addEventListener("click",()=>{
                document.body,classList.toggle("dark")
                if (document.body.classList.contains("dark")) {
                    localStorage.setItem("tema", "dark");
                }else{
                    localStorage.setItem("tema", "light");
                }
                updatebuttonIcon();
            });
         }

        
         