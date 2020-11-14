CREATE INDEX index_element
ON element (description, value);

CREATE INDEX index_property
ON property (number, description);

CREATE INDEX index_subfield
ON subfield (value, number);

CREATE INDEX index_tag
ON tag (number, description, repeatability);




CREATE VIEW view_element AS
SELECT description, value
FROM element
WHERE isIndicator=false;

CREATE VIEW view_property AS
SELECT description, position
FROM property
WHERE value<5;

CREATE VIEW view_subfield AS
SELECT value, number
FROM subfield
WHERE field_id>10;

CREATE VIEW view_tag AS
SELECT number, description, repeatability
FROM tag
WHERE field_id>10;





