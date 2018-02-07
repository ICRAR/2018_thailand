# Docker tutorial

## Run a hello-world example

```
docker run hello-world
```

```
# List images
docker images
```

## Run an Ubuntu container in interactive mode

```
docker run -it ubuntu
```

Once inside the container you will be:
 * The `root` user
 * Standing in a different filesystem
 * Standing on a different host
 * No other processes will be running

To convince yourself,
run the following commands
inside the running container, and outside of it:

| Outside      | Inside |
| --- | --- |
| `whoami` | `whoami` |
| `ls /home/user` | `ls /home/user` |
| `ps auxf` | `ps auxf` |
| `python -V` | `python -V` |

## Installing things into your container

Let's install something in our running container.
We will install our `pi` and `copier` scripts,
and make sure they run.
Run the following commands:

| Outside      | Inside |
| --- | --- |
|  | `apt update` |
|  | `apt -y install python` |
|  | `python -V` |

This installed python inside our container.

Now let's copy the scripts
into the container and make sure they work:

| Outside      | Inside |
| --- | --- |
| `docker ps` | |
|  `cd /home/user/2018_thailand/tutorials/docker` | |
|  `docker cp pi your_container_name:/usr/local/bin/` | |
|  `docker cp copier your_container_name:/usr/local/bin/` | |
|  | `ls /usr/local/bin/*` |
|  | `pi 10` |
|  | `pi 100` |
|  | `copier /bin/ls` |

Now leave the container:

| Outside      | Inside |
| --- | --- |
|  | `exit` |

The container is now stopped,
and will not run anymore.

## Building a new image out of your container

We stopped the container,
but its contents are still there
(until we remove them),
so if we list containers we should see it there.

```
docker ps -a
```

We will use them to create
**a new image**
that we can later simply start.
At the moment of creating the new image,
we specify what will be its *default command*.

```
# For example, I did: docker commit --change 'CMD ["pi", "10"]' brave_hoover rtobar/pi
docker commit --change 'CMD ["pi", "10"]' your_container_name_or_id new_image_name

# List images, the new one should appear
docker images
```

Now we have a new image!
We can now use it and distribute it,
just like with virtual machines.

```
# For example, I did: docker run rtobar/pi
docker run new_image_name

# Or you can specify a different command
docker run new_image_name ls
docker run new_image_name pi 100
docker run new_image_name pi 500
```

## Accessing external files

So far we have only ran the `pi` program,
which doesn't interact with any files,
it only computes something.
What if we need to read/write files?
We use *volumes*.

Volumes are directories on the host computer
that will appear somewhere on the container.

```
docker run -v /home/user/2018_thailand:/data ubuntu ls /data
```

Or run interactively, and convince yourself that this works

```
docker run -v /home/user/2018_thailand:/data -it ubuntu
```

| Outside      | Inside |
| --- | --- |
|  | `cd /data` |
|  | `echo "testing please" > new_file.txt` |
| `cd /home/user/2018_thailand` | |
| `cat new_file.txt` | |

You can also run our `copier` script:

```
docker run -v /home/user/2018_thailand:/data ubuntu copier /data/README.md
ls /home/user/2018_thailand/
```

# Quick command reference

## Image commands

### Pulling

```
docker pull <tag>
```

### Listing

```
docker images
```

### Removing

```
docker rmi <image_id_or_tag>
```

## Container commands

### Running

```
docker run [options] <image_id_or_tag> [command]
```

```
docker run -v /my/local/directory:/directory/inside/the/container <image_id_or_tag> [command]
```

### Listing

```
docker ps -a
```

### Stopping

```
docker stop <container_id_or_container_name>
```

### Removing

```
docker rm <container_id_or_container_name>
```
