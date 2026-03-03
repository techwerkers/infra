# Matrix operator

Some small scripts for updating things

## Usage

Set an `API_TOKEN` env var:

```bash
export API_TOKEN="your_token_here"
```

...then run a script

## Scripts

### `update-room-permissions.sh`

Reads `room-power-levels.json` and updates a specific room by ID

```
$ ./update-room-permissions.sh 
Usage: ./update-room-permissions.sh <room_id>
```

### `update-room-power-level-tags.sh`

Note: This is specific to app.cinny.in

Reads `room-power-level-tags.json` and updates a specific room by ID

```bash
$ ./update-room-power-level-tags.sh
Usage: ./update-room-power-level-tags.sh <room_id>
```
