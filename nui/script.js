const content = document.querySelector(".content")
const list = document.querySelector(".list")

window.addEventListener("message", (e) => {
    if (e.data.action === "open") {
        let players = e.data.players;


        players.sort((a, b) => a.joinTimestamp - b.joinTimestamp);

        list.innerHTML = "";

        players.forEach(player => {

            const hours = Math.floor(player.playTime / 3600);
            const minutes = Math.floor((player.playTime % 3600) / 60);
            const seconds = player.playTime % 60;

            const li = document.createElement("li");
            li.innerHTML = `
                <div class="name">${player.name}</div>
                <div class="playtime">Spelat i ${hours} timmar ${minutes} minuter ${seconds} sekunder</div>
            `;
            list.appendChild(li)
        });

        content.style.display = "block";
    } else {
        content.style.display = "none"
    }


})