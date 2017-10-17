# ccu-tool

ccu-tool provides ruby bindings and a CLI to easily interact with the Akamai CCU API(the API used for cache invalidation).

## API

Currently there are bindings for the three methods provided by the CCU API v2.

- POST `/ccu/v2/queues/<queue_name>`: Sends a purge request to the queue, containing the desired objects in JSON format.
- GET `/ccu/v2/queues/<queue_name>`: Gets the length of the queue, informing the objects to be purged.
- GET `/ccu/v2/purges/<purge_id>`: Gets the status of a previous purge request.

## Dependencies

Before start to use the Library or the CLI tool, it's necessary to install the required dependencies.

Install [httpie](https://github.com/jkbrzt/httpie), on Debian-based systems the following installation should satisfy the dependencies.

```
$ sudo apt-get install httpie
```

And on Red Hat-based systems:

```
$ sudo yum install httpie
```

After the system dependencies were installed, you may now proceed to the Akamai's httpie plugin installation.

```
$ pip install httpie-edgegrid
```

## Configuration

Create the `~/.edgerc` file containing the credentials for the API access(provided by Akamai).

## CLI tool usage

As the `--help` option suggests:

```
$ ccu-tool --help
Usage: ccu-tool [option] [argument]
    -a, --arl-purge x,y,z            Send purge request for the desired objects based on ARL
    -c, --cp-purge x,y,z             Send purge request for the desired objects based on CP codes
    -l, --get-queue-length           Get the length of the queue for purge requests
    -s, --get-purge-status id        Get the status of a previous purge request
```

## Library usage

```
require_relative 'src/ccu_tool'

objects = ["http://www.example.com/graphics/picture.gif", "http://www.example.com/documents/brochure.pdf"]
CCUTool.purge(objects)

CCUTool.get_queue_length

CCUTool.get_purge_status(purge_id)
```

## Author

Stephano Zanzin - [@microwaves](https://github.com/microwaves)
