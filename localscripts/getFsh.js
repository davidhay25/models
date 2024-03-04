#!/usr/bin/env node

const axios = require('axios')
const fs = require('fs')

const profileDgFileName = "input/fsh/dgProfiles.fsh"
const profileCompFileName = "input/fsh/compProfiles.fsh"
const extensionFileName = "input/fsh/dgExtensions.fsh"


async function getCompProfiles() {
    console.log("Downloading profiles")
    let profileFileContents = ""
    
    let qry = "http://localhost:9500/fsh/profile/allComp"
    let contents = await axios.get(qry)
    //console.log(contents.data)
    let profiles = contents.data

    for (const entry of profiles) {
        
        //save the profiles
        if (entry.fsh) {
            profileFileContents = profileFileContents + "\n" + entry.fsh
        }
       
    }

    fs.writeFileSync(profileCompFileName,profileFileContents)
    
}



async function getDGProfiles() {
    console.log("Downloading DG & extensions")
    let profileFileContents = ""
    let extensionFileContents = ""
    let hashExtensionUrls = {}      //Only allow an extension to be defined once. Will do this better as time passes...

    let qry = "http://localhost:9500/fsh/profile/allDG"
    let contents = await axios.get(qry)
    //console.log(contents.data)
    let profiles = contents.data
    for (const entry of profiles) {
        //console.log(entry.fsh)

        //save the profiles
        profileFileContents = profileFileContents + "\n" + entry.fsh

        //now, any extensions
        if (entry.extensions) {
            Object.keys(entry.extensions).forEach(function(key){
                if (! hashExtensionUrls[key]) {
                    //only the first instance of an extension is saved. Will improve...
                    extensionFileContents = extensionFileContents + '\n\n' + entry.extensions[key].join('\n')
                    hashExtensionUrls[key] = true
                }
            })
        }


    }

    fs.writeFileSync(profileDgFileName,profileFileContents)
    fs.writeFileSync(extensionFileName,extensionFileContents)

}



getDGProfiles()
getCompProfiles()