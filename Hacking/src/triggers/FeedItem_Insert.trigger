trigger FeedItem_Insert on FeedItem (before insert) {

	if(Trigger.isBefore && Trigger.isInsert){
		for(FeedItem aFeed: Trigger.new){
			aFeed.Body =TranslateToPirate.translate(aFeed.Body);
		}
	}
}