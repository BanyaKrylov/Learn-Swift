import UIKit

//Homework 6

let statusOk = (200, "OK", true)
let statusNok: (Int, String, Bool) = (500, "Not available", false)

var (code, status, work) = statusOk

print("Server code - \(code)")
print("Server status - \(status)")
print("Server work? - \(work)")

statusNok.1

let statusUnknown = (codes:100, statuses:"Unknown", works:false)

print(statusUnknown.statuses)

let statusPanic: (cods:Int, stats:String, wrks:Bool)
statusPanic.cods = 666
statusPanic.stats = "Panic"
statusPanic.wrks = false

print(statusPanic)

var myFavorites: (movie:String, num:Int, food:String) = ("Myaw", 8, "Burger")
let myMovie = myFavorites.movie, myNumber = myFavorites.num, myFood = myFavorites.food

var itFavorites: (movie:String, num:Int, food:String) = ("Gaw", 4, "Pelmeni")

var ourFavorites: (movie:String, num:Int, food:String)

ourFavorites = myFavorites
myFavorites = itFavorites
itFavorites = ourFavorites

var finishFavorites: (num1:Int, num2:Int, num3:Int) = (myFavorites.num, itFavorites.num, myFavorites.num - itFavorites.num)
