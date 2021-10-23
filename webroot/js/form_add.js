function onAccessRightChange(event) {
    console.log("Adding access rights.");
    const value = document.getElementById("user-account-account-id").value;
    const formAdd = document.getElementById("formAccessRights");
    const children = formAdd.children.length;
    const lastChild = formAdd.children.item(formAdd.children.length - 1).querySelector("select");
    console.log(lastChild);
    console.log(event.target);
    if (lastChild === event.target) { //If the last child is the one that was changed
        fetch(routes["getAccountRights"] + "/" + value + "/" + children).then(response => {
            if (response.ok) {
                return response.text()
            } else {
                console.error(response.status + " " + response.statusText)
            }
        }).then(data => {
            console.log("Added access rights. ", "'", data, "'");
            let div = document.createElement("div");
            div.innerHTML = data;
            formAdd.appendChild(div);
            div.addEventListener("change", onAccessRightChange);
        });
    }
}

window.onload = function () {


    document.getElementById("user-account-account-id").addEventListener("change", (event) => {
        event.stopPropagation();

        const value = event.target.value;
        const formAdd = document.getElementById("formAccessRights");
        const children = formAdd.children.length;

        fetch(routes["getAccountRights"] + "/" + value + "/" + children).then(response => {
            if (response.ok) {
                return response.text()
            } else {
                console.error(response.status + " " + response.statusText)
            }
        }).then(data => {
            formAdd.innerHTML = data;
            formAdd.children.item(formAdd.children.length - 1).addEventListener("change", onAccessRightChange);
        })

    });

};
