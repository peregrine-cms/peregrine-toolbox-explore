# Peregrine CMS Developer Toolbox

The Peregrine CMS Developer Toolbox (Peregrine Toolbox) is intended for developers who do 
not have a full development toolchain installed on their local machines or do not want a 
full toolchain installed. In general, the toolchain for Peregrine CMS consists of Java, 
Maven and Node.

Peregrine Toolbox has the following benefits:
1. Contains full set of development tools for building Peregrine
2. Avoids the installation of dev tools on your host system
3. Allows you to use your preferred IDE 

Peregrine Toolbox achieves the goals above by packaging all development tools
on a Docker image. Once started, the Docker container writes all source code
projects to a directory on your host system. This allows you to use any IDE or
editor on your system. When you are ready to build, simply run the build using 
the interactive shell that the Peregrine Toolbox provides.

## Install Peregrine Toolbox

1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop).

2. Create an empty folder somewhere on your computer and change into it.
   This directory will be used to store the source code for Peregrine CMS. 
    
        $ mkdir peregrine
        $ cd peregrine

3. Run the Peregrine Toolbox. This will give you a shell with all the tools needed to 
   start developing for Peregrine CMS.

   **Windows:**
   
        > docker run --name peregrine-toolbox --network host -it --rm -v "%CD%:/peregrine" peregrinecms/peregrine-toolbox:develop-sling12

   **Linux and OS X**

        $ docker run --name peregrine-toolbox --network host -it --rm -v $(pwd):/peregrine peregrinecms/peregrine-toolbox:develop-sling12

4. At this point, you should be in the Peregrine Toolbox shell. Now, clone the Peregrine
   projects, by running:

        $ clone
        
   This will take some time, but it's only required once.
   
## Install Peregrine CMS

In this section, we'll pull another Docker image from DockerHub. This image provides a
fully configured Peregrine instance. If you're an advanced user of Peregrine and already
have Peregrine CMS installed, you can skip this section.

1. Start Peregrine CMS as a Docker container. 

        $ docker run --name peregrine-cms -it --rm -p 8080:8080 peregrinecms/peregrine-cms:develop-sling12 

2. Open a browser and visit http://localhost:8080. Log in with `admin` / `admin`.

Congratulations, you have a full Peregrine development system running. Let's use the
Toolbox to deploy the code.

## Deploy code to Peregrine

1. Go back to the terminal which is running the Toolbox shell.

2. Run a build.

        $ build
