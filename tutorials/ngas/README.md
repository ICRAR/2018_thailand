# NGAS tutorial

# Links

 * [Travis CI builds](https://travis-ci.org/ICRAR/ngas).
 * [Coverage information](https://coveralls.io/github/ICRAR/ngas).
 * [Full documentation](https://ngas.readthedocs.io).
 * [Docker images](https://hub.docker.com/r/icrar/ngas).
 * [Presentation](https://docs.google.com/presentation/d/1O5UUXLreCLtQtE7TJf7Lqt4IhUttyAhJELsDl_q9TQk/edit?usp=sharing)

# Installation

To install, we will:

 * Create a virtual environment
 * Install NGAS on it
 * Prepare an NGAS root directory

The following scripts under in the root of the ngas repository
do exactly that:

 * `./create_venv.sh`: it creates a virtual environment in the indicated location
 * `./build.sh`: builds and installs NGAS
 * `./prepare_ngas_root.sh`: creates and prepares an NGAS root directory

All scripts include some help if the `-h` flag is used.

An example:

```
$> cd ~/ngas
$> ./create_venv.sh /home/user/venvs/ngas
$> source /home/user/venvs/ngas/bin/activate
$> ./build.sh -d
$> ./prepare_ngas_root.sh /home/user/NGAS_ROOT
```

*Make sure to read the output of the final script*.
It will show you where the configuration file is generated,
and how to run the server.

# Running the server

```
$> ngamsServer -cfg <config file> -v 4 -autoonline
```

# Client usage

Use ``ngamsPClient --help`` for help.

## Archiving

```
$> ngamsPClient ARCHIVE --file-uri <file>
```

## Retrieving

```
$> ngamsPClient RETRIEVE --file-id <file_id>
```

## Creating subscription

```
$> ngamsPClient SUBSCRIBE --url <subscription url>
```

# Other examples

## Using wget

See the status of the server

```
wget "http://127.0.0.1:7777/STATUS" -O /dev/stdout
```

Retrieve a file called `file.fits`

```
wget "http://127.0.0.1:7777/RETRIEVE?file_id=file.fits" -O file.fits
```

Retrieve a specific version of `file.fits`

```
wget "http://127.0.0.1:7777/RETRIEVE?file_id=file.fits&file_version=2" -O file.fits
```

## Using curl

Archive a file

```
curl -X POST -i -H "Content-Type: application/octet-stream" --data-binary "@/tmp/file.fits" "http://127.0.0.1:7777/QARCHIVE?filename=file.fits"
```

Create a subscription

```
curl "http://127.0.0.1:7777/SUBSCRIBE?subscr_id=TEST&url=http://127.0.0.1:7778/QARCHIVE&priority=1&start_date=2016-03-01T00:00:00.000&concurrent_threads=4"
```
