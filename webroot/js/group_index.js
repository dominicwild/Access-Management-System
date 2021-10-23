function addGroup(event) {

    const input = document.getElementById("name")
    const name = input.value;

    const node = getByName(document.getElementById("groupList").childNodes, name);

    if (!node) {
        $.ajax({
            url: routes["addGroup"],
            type: "post",
            data: {name},
            dataType: "html",
            beforeSend: (xhr) => {
                xhr.setRequestHeader('X-CSRF-Token', csrfToken);
            },
            success: (data) => {
                if (data > 0) {
                    const option = document.createElement("option");
                    option.value = data;
                    option.innerText = name;
                    const groupList = document.getElementById("groupList");
                    groupList.appendChild(option);
                    groupList.selectedIndex = groupList.length - 1;
                    updateUserList();
                    input.value = "";
                }
            }
        });
    } else {
        toastr.error("That group already exists.");
    }

}

function removeGroup(event) {
    const groupList = (document.getElementById("groupList"));
    const id = groupList.value;
    const groupName = Array.from(groupList.childNodes).find(child => {
        return child.value === id
    }).innerText;

    if (confirm(`Are you sure you want to delete the ${groupName} group?`)) {
        $.ajax({
            url: routes["removeGroup"],
            type: "post",
            data: {id},
            dataType: "html",
            beforeSend: (xhr) => {
                xhr.setRequestHeader('X-CSRF-Token', csrfToken);
            },
            success: (data) => {
                if (data === "true") {
                    const removedChild = Array.from(groupList.childNodes).find(child => {
                        return child.value === id
                    });
                    removedChild.parentNode.removeChild(removedChild);
                    updateUserList()
                } else {
                    const div = document.createElement("script");
                    div.innerHTML = data;
                    document.body.appendChild(div);
                }
            },
            error: dumpError
        });
    }
}

function updateUserList(event) {
    const groupList = document.getElementById("groupList");
    const id = groupList.value;

    if (groupList.selectedIndex !== -1) {
        $.ajax({
            url: routes["updateUserList"],
            type: "post",
            data: {id},
            dataType: "html",
            beforeSend: (xhr) => {
                xhr.setRequestHeader('X-CSRF-Token', csrfToken);
            },
            success: (data) => {
                if (data) {
                    document.getElementById("user-select-group").innerHTML = data;
                }
            },
            error: dumpError
        })
    } else {
        document.getElementById("user-select-group").innerHTML = "<i><h2>Select a group to add users to them.</h2></i>";
    }
}

function addUser(event) {
    const userSelect = document.getElementById("userSelect");
    const userList = document.getElementById("userList");
    const userId = userSelect.value;
    const userName = Array.from(userSelect).find(child => {
        return child.value === userId
    }).innerText;
    const groupId = document.getElementById("groupList").value;

    const exists = getByValue(userList.childNodes, userId);

    if (!exists) {
        $.ajax({
            url: routes["addUserToGroup"],
            type: "post",
            data: {userId, groupId},
            dataType: "html",
            beforeSend: (xhr) => {
                xhr.setRequestHeader('X-CSRF-Token', csrfToken);
            },
            success: (data) => {
                if (data === "true") {
                    const option = document.createElement("option");
                    option.value = userId;
                    option.innerText = userName;
                    document.getElementById("userList").appendChild(option);
                }
            },
            error: dumpError
        })
    } else {
        toastr.error("That user already exists in that group.");
    }
}

function removeUser(event) {

    const userList = document.getElementById("userList");
    const userId = userList.value;
    const groupList = document.getElementById("groupList");
    const groupId = groupList.value;

    $.ajax({
        url: routes["removeUserFromGroup"],
        type: "post",
        data: {userId, groupId},
        dataType: "html",
        beforeSend: (xhr) => {
            xhr.setRequestHeader('X-CSRF-Token', csrfToken);
        },
        success: (data) => {
            if (data === "true") {
                const option = Array.from(userList.childNodes).find(child => {
                    return child.value === userId
                });
                option.parentNode.removeChild(option);
            } else {
                document.body.appendChild(data);
            }
        },
        error: dumpError
    })
}

function getByName(nodeList, name) {
    return Array.from(nodeList).find(child => {
        return child.innerText === name
    });
}

function getByValue(nodeList, value) {
    return Array.from(nodeList).find(child => {
        return child.value === value
    });
}

window.onload = function () {

    document.getElementById("btn-add-group").addEventListener("click", addGroup);
    document.getElementById("name").addEventListener("keydown", event => {
        if (event.key === "Enter") {
            document.getElementById("btn-add-group").click();
        }
    });
    document.getElementById("btn-remove-group").addEventListener("click", removeGroup);

    document.getElementById("btn-add-user").addEventListener("click", addUser);
    document.getElementById("btn-remove-user").addEventListener("click", removeUser);

    document.getElementById("groupList").addEventListener("change", updateUserList);

    updateUserList()

};
