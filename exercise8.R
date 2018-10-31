# BioComputing Exercise 8

rm(list=ls())
setwd("~/Desktop/biocomp2018/exercise8/Biocomp-Fall2018-181026-Exercise8")
game=read.table("UWvMSU_1-22-13.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE)
head(game)

# Question 1
msuScore = 0
uwScore = 0

# Make empty column in table for cumulitive score
game$cumScore=NA

for(i in 1:nrow(game)) {
  if(game$team[i] == "MSU"){
    msuScore=msuScore + (game[i,3])
    game[i,4]=msuScore #adds MSU's scores cumultively in rowif its an MSU row
  }else{
    uwScore=uwScore + (game[i,3])
    game[i,4]=uwScore #adds UW's scores culutively in row if its a UW row
  }
}

print(msuScore)
print(uwScore)
a=ggplot(data=game,aes(x=time,y=cumScore))
a+geom_line(aes(group=team, color=team))+xlab("Minutes")+ylab("Score")+theme_classic()


# Question 2

game=function(){
  n=sample(1:100,1)
  guess=readline(prompt="Guess a number: ")
  while (guess!= n) {
    if(guess > n){
    print("Lower")
    guess=readline(prompt="Guess again: ")
  }else{
    print("Higher")
    guess=readline(prompt="Guess again: ")
  }
  } 
  print("Correct!")
}
