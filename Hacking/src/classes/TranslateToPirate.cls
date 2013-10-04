public with sharing class TranslateToPirate {

	//Get the map of pirate vocabulary
	//English -> Pirate
	public static Map<String,String> mapTranslate{
		get{
			if(mapTranslate==null){
				mapTranslate = new Map<String,String>();
				List<Pirate_Translation__c> lstPT = Pirate_Translation__c.getAll().values();
				for(Pirate_Translation__c aPT: lstPT){
					mapTranslate.put(aPt.From__c, aPt.To__c);
				}
				return mapTranslate;
			}else{
				return mapTranslate;
			}
			
		}
		set;
	}

	public static string translate(String input){
		String translated = input;
		
		for(String strFrom: TranslateToPirate.mapTranslate.keySet() ){
			
			translated = translated.replaceAll('(?i)\\b' + strFrom + '\\b', TranslateToPirate.mapTranslate.get(strFrom));
		}
		//Look at the string and find any tokens that match our pirate vocab
		translated = translated.capitalize();
		return translated;
	}
}