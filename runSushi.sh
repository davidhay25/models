
echo "Updating from the LIM"
localScripts/getFsh.js


sushi  -s -o .

if [[ $? -eq 0 ]]
then


echo "Creating Compositions LM summary pages..."
localScripts/makeCompositionLMSummary.js

echo 
echo "Creating Extensions summary pages..."
localScripts/makeExtensionSummary.js

echo "Creating Composition Profiles summary pages..."
localScripts/makeCompositionProfileSummary.js

echo "Creating DG Profiles summary pages..."
localScripts/makeDGProfileSummary.js

echo "Creating DG models summary pages..."
localScripts/makeDGLMSummary.js

echo




else 
echo
echo
echo "There were errors, so the other scripts weren't run..."
fi

