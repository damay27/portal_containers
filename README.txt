The repo contains multiple docker files built around the “portal” container
concept. Most of these containers contain development (tool-chains,
simulators, etc).

Portal Containers Concept:
The idea behind portal containers is to keep the target program and all its
dependencies separated from the rest of the system while allowing it to
interact with files on the host. To accomplish this, the container is launched
in interactive mode and a folder on the host (the portal) is volume mapped
into the container. This allows any files already in the portal folder on the
host system, along with any files copied to it from either the host or the
container, to be accessible on both systems. This means you can, for example,
run your text editor on the host system while building with a tool-chain that
lives in the container.
