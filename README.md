peregrine cms developer toolbox
----

in case you want to work on peregrine but only have docker (desktop) installed on your computer (no java, maven)

## install the first time

```
docker pull peregrinecms/peregrine-toolbox
```

create an emppty folder somewhere on your computer and change your directory into it

```
mkdir peregrine
cd peregrine
```

then run the docker image: 

- windows: 

```
docker run -it -p 8088:8088 -v "%CD%:/peregrine" peregrinecms/peregrine-toolbox
```

- other platforms

```
docker run -it -p 8088:8088 -v $(pwd):/peregrine peregrinecms/peregrine-toolbox
```

you should get a shell 

to setup a development environment for peregrine execute the following commands: 

```
clone
start-peregrine.sh
build-all.sh
```

_note 1_: start-peregrine.sh is run with &, hit enter to get another command prompt to execute the build-all.sh file

_note 2_: the process takes a while :-( but at least this is only happening the first time

After the install is complete you can go to http://localhost:8088/ and log in with admin/admin to access the instance

If you exit out of the shell peregrine is stopped

## run peregrine at a later point

To run peregrine again just go the folder you created in the beginning and execute

```
docker run -it -p 8088:8088 -v $(pwd):/peregrine peregrinecms/peregrine-toolbox
```

in the resulting shell you can then run

```
start-peregrine.sh
```

to startup peregrine again and open your browser at http://localhost:8088/


