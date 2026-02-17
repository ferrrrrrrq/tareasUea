let cnv;
let myDiv;
let colors = ['red', 'white', 'blue', 'orange', 'purple', 'pink']
let startFrame = 0; 

let port;
let reader;
let serialBuffer = "";

function setup()
{
myDiv = document.getElementById('sketch');
const w = myDiv.clientWidth; //sketch dame el ancho del cliente (navegador web)
const h = myDiv.clientHeight;
let button = createButton("Connect Arduino");
btn.parent('sketch');
btn.mousePressed(initSerial)

cnv = createCanvas(w,h);
cnv.parent('sketch');
textAlign(CENTER, CENTER)
textSize(h/12);
}



function draw()
{
let randomColor = int ( Math.random()*5 );
background (0);

colorIndex = 

fill('yellow');
stroke(colors[randomColor]);
strokeWeight(40);
let d = min(width,height) /2;
circle(width/2, height/2, height/2, d);

let seconds = int((frameCount - startFrame)/60);
stroke(0);
strokeWeight (5);
fill('white');
text(seconds, width/2, height/2)

stroke('white')
line(pmouseX, pmouseY, mouseX, mouseY)

}
function mousePressed(){
let distToCenter = dist(mouseX, mouseY, width/2, height/2)
//console.log('Click:' + distToCenter)

let radius = min(height, width)/4
//console.log('Radio:'+ radius)
if (distToCenter < radius){
    startFrame = frameCount
 myDiv.clientWidth; //sketch dame el ancho del cliente (navegador web)
const h  = myDiv.clientHeight;
resizeCanvas(w,h); 
}
async function initSerial(){

    port = await navigator.serial.requestPort();
    await port.open({baudRate : 9600});

   reader = port.readable.getReader();
   readSerial ();

}
async function readSerial(){
    const decoder = new TextDecoder();

    while(true){
const{value,done}= await reader.read();
if (done) return;

serialBuffer += decoder.decode(value);
const lines = serialBuffer.split("\n")
serialBuffer = lines.pop();

lines.forEach(line => const [pot, btn] = line.trim)
    }


}
}
}

function windowResized()
{
