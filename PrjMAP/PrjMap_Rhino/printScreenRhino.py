import rhinoscriptsyntax as rs
import scriptcontext
import os
import time

fileFolder = rs.BrowseForFolder()
x = 0.5


while True:
    scriptcontext.escape_test() #break operation
    
    time.sleep(x) #export screenshot every interval
    imgDrop = '"' + fileFolder + "\image" + '.jpg"'
    rs.Command("-_ViewCaptureToFile " + imgDrop + " _Width=" + "1000" + " _Height=" + "1000" + " _Enter")