function dumpError(data) {
    console.log(data);
    document.getElementsByTagName("footer")[0].innerHTML = data.responseText;
}
