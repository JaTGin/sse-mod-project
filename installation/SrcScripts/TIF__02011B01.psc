;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__02011B01 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
game.EnableFastTravel()
game.FastTravel(Location1)
Groynin.MoveTo(Location1)
GetOwningQuest().SetObjectiveCompleted(5)
GetOwningQuest().SetObjectiveDisplayed(10)
GetOwningQuest().SetStage(10)
if GetOwningQuest().GetStage() <= 50
TimeScale.SetValue(0.0)
TimeOfDay.SetValue(1.0)
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ObjectReference Property Location1 Auto
ObjectReference Property Groynin Auto

GlobalVariable Property TimeOfDay  Auto  

GlobalVariable Property TimeScale  Auto  
