X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/21/3
Message-ID: <16FBC1BC-D5CB-4FDE-AA60-2E1B8C42908B.1@smtp-inbound1.duck.com>
Date: Sat, 21 Nov 2026 13:40:34 -0500
From: theknell@...k.com
To: oss-security@...ts.openwall.com
Subject: Dokploy: the fix checks the characters, never the first word — a member's compose command and raw compose file both reach host root, 9.9 each (v0.31.2, live-proven)
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Two doors, same room.

Dokploy's compose feature gives a member two ways to describe a deployment: type a custom command, or supply the compose file raw. The vendor hardened this feature in the 2026 disclosure rounds — the command field got a validator, the structured service definition got a privilege guard. Both hardenings are real. Neither one covers the path it was attached to.

The precondition for both: a non-owner, non-admin organisation member with service:create (the canCreateServices flag, or a custom role granting it) and access to one compose service — the vendor's own member class, scored 9.9 by them in CVE-2026-72867 and CVE-2026-72865, and 8.7 for the metacharacter mechanism in this feature.

Tested against Dokploy v0.31.2, commit a16cf89389f1bcb6fb5b9a78f7e8a28150c5efaa, full history.

Door one — the first word:

1. The compose service command field is free text: z.string().optional() (packages/server/src/db/schema/compose.ts:200, :283). createCommand returns it with no compose prefix (packages/server/src/utils/builders/compose.ts:127-128).
2. The validator, sanitizeCommand (compose.ts:84-123) — added by commit d48037a80 as the fix for CVE-2026-72884, its comment stating it stops a member breaking out "into arbitrary host commands" — rejects shell control characters and requires &&-chained segments after the first to start with "docker compose ". It never validates the first token.
3. getBuildComposeCommand interpolates the result directly: docker ${command} (compose.ts:65). The deploy sinks execute it via /bin/sh -c or SSH (packages/server/src/services/compose.ts:302, :418). The server runs as root and drives the host daemon at /var/run/docker.sock.
4. So no metacharacter is needed. The command "run --rm -v /:/hostfs alpine touch /hostfs/tmp/canary" passes the validator verbatim and executes as docker run with the host's root filesystem mounted read-write. An incomplete fix of CVE-2026-72884.

Door two — the raw file:

5. compose.loadRawCompose and compose.getConvertedCompose (packages/server/src/routers/compose.ts:1256, :1131) feed createComposeFileRaw (packages/server/src/utils/builders/compose.ts:230-276), which checks only structure and writes the parsed YAML to docker-compose.yml essentially verbatim.
6. A full-tree search of the server source for privileged, cap_add, pid:, ipc:, network_mode returns no matches — there is no guard to bypass. The control is inside the same product: updateComposeFile (packages/server/src/services/compose.ts:1018) rejects privileged: true on the structured path. The vendor gates this capability on one door and not the other.

Live proof, against our own rig only:

- - Control: the vendor's own regression suite for the CVE-2026-72884 fix rejects every metacharacter payload — 13 of 13. The fix holds against the attack it imagined.
- - Door one: the real createCommand accepts the docker run payload verbatim (3 of 3); the builder emits the deploy script containing it (2 of 3 checks, 2 of 2 runs); a verbatim standalone harness agrees (6 of 6); a recording docker shim on PATH received the exact argv from the shell.
- - Door two: a raw file carrying privileged: true, /:/host_root:rw, and cap_add SYS_ADMIN round-trips into the emitted specification with every field intact (2 of 2).
- - Final hop, executed against a real Docker daemon on our own rig: a root-owned canary written to the daemon host's root filesystem; a read-only variant returned the daemon host's /etc/hostname.

Severity: each door independently 9.9 — CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:H. Not 10.0; every path is authenticated, stated rather than rounded up.

Scope, stated plainly: door one is an incomplete fix of CVE-2026-72884, present in v0.31.2, the release line that shipped the fix. The metacharacter fix and the structured-path guard both hold and are credited as holding. A third condition on legacy installs — a documented default authentication secret the vendor warns about in their own code — is not claimed here. No third-party or production system was touched.

Paper: https://archive.org/details/knell-two-doors
Key: 133883AB9F6EDE5B9BA6B82E27BEDAF0CE152F25 (knell)

Verify: gpg --import knell-public.asc, then
gpg --verify paper-dokploy-FINAL-2026-11-21.md.asc

— knell
-----BEGIN PGP SIGNATURE-----

wnUEARYIAB0FgmsB5XIWIQQTOIOrn27eW5umuC4nvtrwzhUvJQAKCRAnvtrwzhUv
JfkjAQCMvtBE1h6A1ZC66t5n4Pn3h43439k2nZgTDBgA3FwzcAD+KY9++vg9qHBM
5k7gqZ+b880zWavm3SMevuInYtoxLAg=
=UToJ
-----END PGP SIGNATURE-----
