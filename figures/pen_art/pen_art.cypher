MATCH (c:Class { short_form: 'UBERON_0013132' } )-[r]->(d:Class) where not type(r) = 'SUBCLASSOF' return p
