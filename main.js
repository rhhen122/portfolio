// This is your domain.
function main() {
    // this is the code that will be rendered
    style('style.css');
    title('rhhen122');

    header('rhhen122', '', '', '', '1');
    text('hi im rhhen122 and i make software that is mostly useful to me.');

    header('projects', '', '', '', '2');
    raw(`<ul>
            <li><a href="https://github.com/rhhen122/tbhfetch">tbhfetch</a></li>
            <li><a href="https://github.com/rhhen122/fib">fib</a></li>
            <li><a href="https://github.com/rhhen122/angstrom">Angstrom</a></li>
            <li><a href="https://github.com/rhhen122/angstrom-nitro">Angstrom Nitro</a></li>
            <li><a href="https://github.com/rhhen122/gitsmiles">gitsmiles</a></li>
            <li><a href="https://github.com/rhhen122/guduck">Guduck</a></li>
        </ul>`);

    header('software', '', '', '', '2');
    text('this is a list of mostly software that i use and what i like about it - includes some of my own.');
    raw(`<ul>
            <li>vim/neovim</li>
            <li>git/gitsmiles</li>
        </ul>`)

    header('links', '', '', '', '2');
    a('my github', 'https://github.com/rhhen122');


    raw('<p><a href="https://github.com/rhhen122/angstrom-nitro">(powered by angstrom nitro)</a></p>');
}











// NITRO
// Made by Roky Henderson as a Open Source JavaScript web framework
let body = document.getElementById('bo');
let head = document.getElementById('he');
let html = document.getElementById('en');
// Lots of functions (-:
function raw(inner) {
    body.innerHTML +=
    inner;
}
function header(text, id, cl, ot, w) {
    body.innerHTML += 
    "<h"+w+' '+' id="'+id+'" '+' class="'+cl+'" '+' '+' '+ot+">"+text+"</h"+w+">";
}
function text(text) {
    body.innerHTML +=
    "<p>"+text+"</p>";
}
function style(location) {
    head.innerHTML +=
    `<link rel="stylesheet" href=`+location+`>`;
}
function favicon(location) {
    head.innerHTML +=
    `<link rel="icon" type="image/x-icon" href="${location}">`;
}
function title(text) {
    head.innerHTML +=
    `<title>${text}</title>`;
}
function metadata(text) {
    head.innerHTML +=
    `<meta name="description" content="${text}">`;
}
function image(src, height, length, ot) {
    body.innerHTML +=
    "<img "+'src="'+src+'" height="'+height+'" length="'+length+'" '+ot+" >";
}
function ulist(id, cl) {
    body.innerHTML +=
    `<ul id="${id}" class="${cl}">`;
}
function ulistclose() {
    body.innerHTML +=
    "</ul>";
}
function input(placeholder, id, cl, ot) {
    body.innerHTML +=
    `<input placeholder="${placeholder}" id="${id}" class="${cl}" ${ot}>`;
}
function button(text, id, cl, ot) {
    body.innerHTML +=
    `<button id="${id}" class="${cl}" ${ot}>${text}</button>`;
}
function p(text, id, cl, ot) {
    body.innerHTML +=
    `<p id="${id}" class="${cl}" ${ot}>${text}</p>`;
}
function a(text, href, id, cl, ot) {
    body.innerHTML +=
    `<a href="${href}" id="${id}" class="${cl}" ${ot}>${text}</a> `
}
function hr() {body.innerHTML += "<hr>";}
function br() {body.innerHTML += "<br>";}
function breaker() {br();}

main(); // This is where its ran
