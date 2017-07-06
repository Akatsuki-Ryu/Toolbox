# CSharpScope Toolbox is now DEPRECATED! 
# Repo was split into 4 different 
# repos, will be later combined into submodules 



## Overview
[unity, c#, js, json]

CsharpScope are a set of tools allowing HCI interfaces to be developed for urban design, architecture, spatial analysis, transportation planning and more.  These tools aim to allow Unity based development of interaction with tangible models, using projection mapping, cloud-based data, color-tagged object detection and more.

## Shell Project 
This shell unity project contains 3 main components for running a basic CityScope table which include:
1. Scanning module [GridDecoder]
2. Data viz of scanned table [CityIO_Unity]
3. Projection mapping [PrjMap]

These modules are later to be extended using urban context model, data and vizualizations 

## CityIO_Unity 
parse JSON data from cityIO server and visualize it in 3d grid form. 
Server readings are done using WWW get method on set intervals. 
Tests could be done locally using attached JSON demo files. 


![](https://github.com/RELNO/CSharpScope_Toolbox/blob/master/gif.gif)

## PrjMap_Unity
A tool to allow 2d/3d multi-angle projection mapping of any unity scene 

## GridDecoder_Unity
A tool for webcam scanning of 2d array of phyiscal objects tagged with colors
