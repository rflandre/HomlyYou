CREATE OR REPLACE FUNCTION mysalesforcerf.notify_new_enseigne()
  RETURNS trigger AS
$BODY$
    BEGIN
        PERFORM pg_notify('new_enseigne', row_to_json(NEW)::text);
        RETURN NULL;
    END; 
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
