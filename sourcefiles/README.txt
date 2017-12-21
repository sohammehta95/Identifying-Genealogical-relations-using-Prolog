How to run the given files:

python convert.py -input read.txt -output final.pl

This command can be used to convert the Cypher text stored in "read.txt" and obtain the Prolog facts in "final.pl".

The relations.pl is a file written with Prolog rules to find the relations among the people. This file already includes the final.pl file obtained above. Hence, you can compile the "relations.pl" file ask queries such as brother/2, mother/2, father/2, grandmother/2, grandfather/2, has_son/1, uncle/2, aunt/2, ancestor/2, married/2 etc.


How to work with Neo4j Graphs:

You can import the Cyper Text or the Neo4j query into the Neo4j Graph online directly without any installation using the Neo4j Sandbox available at https://neo4j.com/sandbox-v2/?ref=hcard. After running the query, you can see all the nodes in the graph using the following query

MATCH (a)-[r]->(b) RETURN * LIMIT 25

The arrow tool is available at http://www.apcjones.com/arrows/# which does nothing but  help create the nodes and transitions which otherwise have to be written individually in the Neo4j graph every-time. 