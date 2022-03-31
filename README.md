# HOW-TO: Generating the ASCT+B Graph Figures

Clone this repository
```
$ git clone https://github.com/hubmapconsortium/asctb-figures.git
```

## Neo4j Instance for the UBERON and CL graph
1. Run the docker command inside the asctb-figures directory to initiate the docker instance:
```
$ cd asctb-figures
$ mkdir uberon_cl
$ docker run -d -p:7474:7474 -p 7687:7687 -v $(pwd)/uberon_cl:/var/lib/neo4j/import/ \
         --env-file ./src/resources/env.list \
         virtualflybrain/vfb-prod:semwebtest
```

2. Open the web browser (e.g., Chrome, Safari or Firefox) and go to http://localhost:7474.

<img width="1791" alt="Screen Shot 2022-03-30 at 4 49 29 PM" src="https://user-images.githubusercontent.com/5062950/160928446-e097e5d0-adcc-40e6-ae73-f946080a6233.png">

3. Click the "Connect" button to connect to the Neo4j instance running through docker. No username or password needed.
 
4. Enter the command below to the Neo4j command prompt:
 
```
CALL ebi.spot.neo4j2owl.owl2Import('file://src/resources/uberon_cl_bm_relaxed_add_sub.owl','https://raw.githubusercontent.com/VirtualFlyBrain/neo4j2owl/master/src/test/resources/minimal-config.yaml')
```
 <img width="1696" alt="Screen Shot 2022-03-30 at 4 53 24 PM" src="https://user-images.githubusercontent.com/5062950/160929056-cfc5d811-56ab-4671-b5cf-674f3772ac41.png">

## Neo4j Instance for the CCF graph
1. The steps are similar to the above. The only difference is you need to change the port number in the tunnelling parameter.
```
$ mkdir ccf_as_ct
$ docker run -d -p:7475:7474 -p 7688:7687 -v $(pwd)/ccf_as_ct:/var/lib/neo4j/import/ \
         --env-file ./src/resources/env.list \
         virtualflybrain/vfb-prod:semwebtest
```

2. Open another tab in the web browser to http://localhost:7475.

3. Check the **Connect URL** paramter and make sure it points to the second docker instance `bolt://localhost:7688`

4. Enter the command below to the Neo4j command prompt:
```
CALL ebi.spot.neo4j2owl.owl2Import('file://src/resources/CCF_AS_CT.owl','https://raw.githubusercontent.com/VirtualFlyBrain/neo4j2owl/master/src/test/resources/minimal-config.yaml')
```
