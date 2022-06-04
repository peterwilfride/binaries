#!/usr/bin/python

def convert_to_rgb(list_hex_color):
    # '#ff0000' 
    # R = [1:3]
    # G = [3:5]
    # B = [5:7]

    #number of colors
    num = len(list_hex_color)
    #initialize the value of colors
    R = 0
    G = 0
    B = 0
    #for loop in list of colors in gex
    for hex_color in list_hex_color:
        R = R + int(hex_color[1:3], 16)
        G = G + int(hex_color[3:5], 16)
        B = B + int(hex_color[5:7], 16)

    #calculate the mean color for R, G e B 
    mR = R / num
    mG = G / num
    mB = B / num
    #crate the tuple
    mean_color = (int(mR), int(mG), int(mB))
    #print the mean color
    return mean_color

def read_file(file):
    color_list = []
    #open the file
    try:
        #open the file
        file = open(file, "r")
        #for each line in file
        for line in file:
            #append each color in hex
            if(line != ""):
                color_list.append(line)
    except:
        print("The color file doesn't exist!\n")
    finally:
        #close the file
        file.close()
    #return the object
    return color_list

#main
color_list = read_file("color.txt")
print("The media color is ", convert_to_rgb(color_list))

