# Role based access controls

Keycloak has "Authorization" model for each client, however that requires the client actually integrate with keycloak's
authorization model specifically. Many applications don't do that, so we have included something that helps us a little.

## What we have

In the root folder is a `rbac-provider` directory which includes a custom JS authorization script.

Very basically, when included in a keycloak authentication flow, it will ensure the authentiating user has the role of
`access` to the client the user is trying to authenticate to. If not, the user get's a somewhat unhelpful error, but at
least it's an error.

Use `./build-rbac-jar.sh` if you wish to repackage this JS file.

## How to adjust the rbac flow (e.g. if the keycloak config is lost)

1. Login as a realm admin
1. `Authentication` -> `browser (Built-in)` -> `Duplicate`
1. Call it something helpful, e.g `browser - RBAC`, and go to edit
1. Under `browser - RBAC forms` click the Add (➕) and add a new exection
1. Add `RBAC checker (Custom JS)`. This should be added to the bottom of the flow
1. Ensure the step is marked as `Required`

## How to use RBAC

Overview:

- Create an `access` role for the client
- Make sure the RBAC authentication flow is being used
- Assign the Client Role to a group

Setup the role

1. `Clients` -> `<your client>` -> `Roles`
1. `Create Role`

- Role name: `access` (only this word, only this casing)
- Description: `General role given to those that should have access`
- `Save`

Make sure the correct flow is being used

1. `Client Details` -> `Advanced` -> `Authentication flow overrides`
1. Broswer Flow: `browser - RBAC`
1. `Save`

Assign users to the role

1. `Groups` (main menu) -> `<your group>` (or maybe a pre-existing one) -> `Role mapping`
1. `Assign role` -> `Client Role`
1. Search for `access` under the correct client id
1. `Assign`

And make sure the users are assigned to the group.
