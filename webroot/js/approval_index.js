function getApprovalChain(event) {
    const accountId = document.getElementById("approvalSelect").value;

    $.ajax({
        url: routes["getApprovalChain"],
        type: "post",
        data: {accountId},
        dataType: "html",
        beforeSend: (xhr) => {
            xhr.setRequestHeader('X-CSRF-Token', csrfToken);
        },
        success: (data) => {

            const chainLevels = document.getElementById("chainLevels");
            chainLevels.innerHTML = data;
            const selectElements = chainLevels.querySelectorAll("select");
            const lastSelect = selectElements.item(selectElements.length - 1);
            console.log(lastSelect);
            lastSelect.addEventListener("change", addNewLevel);

        },
        error: dumpError
    })
}

function addNewLevel(event){
    const level = document.getElementById("chainLevels").querySelectorAll("select").length;
    const accountId = document.getElementById("approvalSelect").value;

    $.ajax({
        url: routes["getApprovalChainControl"],
        type: "post",
        data: {level,accountId},
        dataType: "html",
        beforeSend: (xhr) => {
            xhr.setRequestHeader('X-CSRF-Token', csrfToken);
        },
        success: (data) => {
            if(data){
                const div = document.createElement("div");
                div.innerHTML = data;
                document.getElementById("chainLevels").appendChild(div);
                div.querySelector("select").addEventListener("change", addNewLevel);
                event.target.removeEventListener("change", addNewLevel);
            }
        },
        error: dumpError
    });
}


window.onload = () => {

    document.getElementById("approvalSelect").addEventListener("change", getApprovalChain);

};
