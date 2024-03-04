#!/usr/bin/env node


//create the index page for DataGroup profiles
//Must be run from the root folder after sushi has run

const fs = require('fs')

let rootPath = "fsh-generated/resources/";

const dgIndexFileName = "input/pagecontent/dgProfileIndex.md"
let arIndex = []

arIndex.push("### Profiles");

let nsText = `
<div>
These are DataGroup models defined in this IG.
</div>
`
arIndex.push(nsText);
arIndex.push("<table class='table table-bordered table-condensed'>");
arIndex.push("<tr><th>Name</th><th>Url</th><th>Description</th></tr>")



let arFiles = fs.readdirSync(rootPath);
arFiles.forEach(function(name){
    if (name.indexOf("StructureDefinition-") > -1 ) {
        let fullFileName = rootPath + name;

// console.log(fullFileName)
    let contents = fs.readFileSync(fullFileName).toString();
        let ext = JSON.parse(contents)
        if (ext.kind == 'resource' && ext.type !== 'Composition') {

            console.log(ext.kind)
            arIndex.push("<tr>")
        
            let link = "StructureDefinition-" + ext.id + ".html";
           
            arIndex.push("<td><a href='"+link+"'>" + ext.id + "</a></td>")
            arIndex.push("<td>" + ext.url + "</td>")
            arIndex.push("<td>" + makeSafeString(ext.description) + "</td>")
            arIndex.push("</tr>")

        }
    }
})

arIndex.push("</table>")
let contents = arIndex.join('\n')
fs.writeFileSync(dgIndexFileName,contents)

function makeSafeString(s) {
    if (s) {
        s = s.replace(/"/g, "'");

        return s
    } else {
        return ""
    }

}
