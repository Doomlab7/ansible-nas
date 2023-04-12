# TubeArachivist

Homepage: [https://github.com/tubearchivist/tubearchivist](https://github.com/tubearchivist/tubearchivist)

Tube Archivist is a self-hosted YouTube frontend

## Usage

Set `tubearchivist_enabled: true` in your `inventories/<your_inventory>/nas.yml` file.

The Tube Archivist web interface can be found at http://tubearchivist_hostname:8003.

> tubearchivist_hostname defaults to ansible_nas_hostname

## Specific Configuration

A YouTube directory will be created by default at {{downloads_root}}/youtube

You can change the download location via `inventories/<your_inventory>/nas.yml` file.
