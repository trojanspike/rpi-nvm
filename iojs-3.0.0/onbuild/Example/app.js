var express = require("express"),
exec = require("child_process").exec,
app = express();

app.get("/i2cdetect", (req, res)=>{
    res.set('Content-Type', 'text/plain');
    exec("i2cdetect -y 1", (err, result)=>{
        if (err){
            // handle errir
        } else {
            res.send(result);
        }
    });
});

app.get("/", (req, res)=>{
    res.json( process.env );
})

app.listen( process.env.PORT || 1374 );