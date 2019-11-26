CREATE TRIGGER notify_new_enseigne
  AFTER INSERT or UPDATE
  ON mysalesforcerf.enseigne__c
  FOR EACH ROW
  EXECUTE PROCEDURE mysalesforcerf.notify_new_enseigne();
