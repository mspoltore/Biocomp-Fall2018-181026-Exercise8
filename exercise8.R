# BioComputing Exercise 6

rm(list=ls())
setwd("~/Desktop/biocomp2018/exercise8/Biocomp-Fall2018-181026-Exercise8")
game=read.table("UWvMSU_1-22-13.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE)
head(game)

# Question 1
msuScore = 0
uwScore = 0

game$cumScore=NA
for(i in 1:nrow(game)) {
  if(game$team[i] == "MSU"){
    msuScore=msuScore + (game[i,3])
    game[i,4]=msuScore
  }else{
    uwScore=uwScore + (game[i,3])
    game[i,4]=uwScore
  }
}

print(msuScore)
print(uwScore)
a=ggplot(data=game,aes(x=time,y=cumScore))
a+geom_line(aes(group=team, color=team))+xlab("Minutes")+ylab("Score")

# Question 2


game=function(number){
  n=sample(1:100,1)
  guess=readline(prompt=" Guess a number")
  if(guess > n){
    print("Lower")
  } else if(guess = n) {
    print("Correct!")
  } else {
    print("Higher")
  }
    
}
  
#ask user to make guess
#while guess != random number
#if/else 

