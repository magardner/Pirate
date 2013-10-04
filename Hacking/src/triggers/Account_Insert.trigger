trigger Account_Insert on Account (before insert) {
	if(Trigger.isBefore && Trigger.isInsert){
		for(Account aRec: Trigger.new){
			aRec.Name =TranslateToPirate.translate(aRec.Name);
		}
	}
}