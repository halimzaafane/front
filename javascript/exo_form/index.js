/*f[2].onclick = function () {
    f[3].value = f[0].value + " " + f[1].value 
}*/

f[2].onclick = function () {
    const a = f[0].value;
    const b = f[1].value;
    f[3].value = `${a} ${b}`;
}