public with sharing class ChatSurveyController {
    public Integer rating { get; set; }
    public Boolean surveySubmitted {get;set;}

    public ChatSurveyController() {
        this.surveySubmitted = false;
    }

    public void save() {
        Survey__c survey = new Survey__c(
            Chat_Transcript__c = ApexPages.currentPage().getParameters().get('transcript'),
            Rating__c = rating
        );

        insert survey;
        this.surveySubmitted = true;
    }
}