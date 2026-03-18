const commits = [
    "commit0","commit1","commit2","commit3","commit4",
    "commit5","commit6","commit7","commit8","commit9",
    "commit10","commit11","commit12","commit13","commit14"
];

function openCommit(commit) {
    const div = document.getElementById("files");
    div.innerHTML = `<h2>${commit}</h2>`;

    // список файлов автоматически
    const files = ["B.java","E.java","G.java","K.java"];

    files.forEach(file => {
        const link = document.createElement("a");
        link.href = `data/${commit}/${file}`;
        link.download = file;
        link.innerText = file;
        link.style.display = "block";

        div.appendChild(link);
    });

    // пример конфликта
    if (commit === "commit8") {
        div.innerHTML += "<p style='color:red'>⚠ Конфликт версий (merge required)</p>";
    }
}