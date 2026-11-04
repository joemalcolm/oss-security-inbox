X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/04/11
Message-ID: <CAARiyJpgtx8EQePEKPjCf4yFvuPDhLnekxZbgNhrv-mOh_f+4w@mail.gmail.com>
Date: Wed, 4 Nov 2026 19:37:49 +0100
From: Tomasz Kaye <tomasz.brain@...il.com>
To: oss-security@...ts.openwall.com
Subject: GodotSteam 4.17 through 4.23.2: any multiplayer peer can claim the server's peer ID
Content-Type: text/plain; charset=utf-8

GodotSteam lets any player in a session claim to be the server. Godot
names players by a peer ID, and ID 1 means the server. Steam verifies
the account behind each connection, but GodotSteam accepts whatever
peer ID the sender writes into its first packet and never compares the
two. A player who writes 1 is treated as the server and can issue the
commands a server issues. I published this on 2026-11-04 [1].

Affected versions:
GodotSteam v4.17 (2025-12-10) through v4.23.2 (current). The retired
addon godotsteam/multiplayerpeer has the same flaw from v4.11-mp
(2024-09-27) through v4.16.2 (2025-11-10); its first two tags use a
different packet format.

The flaw:
A new connection's first packet carries a four-byte peer ID that the
sender picks. The plugin checks the packet's size and nothing else. It
stores the number as the connection's identity, then installs the peer
in its peer table under that number. A duplicate number silently
overwrites the existing entry.

Impact:
Godot compares the sender's peer ID, as the transport reports it, with
the node's authority. Authority is a per-node setting that starts at
1, the server.

Against a client, a co-player takes the server's place and receives
the traffic that client sends to the server. That shape is from
source; I did not run it.

Against a host or dedicated server, a client claiming 1 fills the
empty ID-1 slot. The host then runs that client's authority-gated
RPCs.

I demonstrated the second shape on 2026-11-04 with two computers and
two Steam accounts. A stock Godot 4.7.2 / GodotSteam 4.23.2 host ran
the attacker's forged grant_gold(1000000) as peer 1. No memory
corruption or code execution is claimed.

Reproduction:
https://github.com/bitbutter/godot-security-pocs/tree/main/2026-11-godotsteam-peer-id-claim
Source: godotsteam v4.23.2, src/steam_packet_peer.cpp and
src/godotsteam_multiplayer_peer.cpp.

Fix status:
Unpatched as of 2026-11-04: v4.23.2 is the newest tag, and the only
commit since it, on the release branch, changes
godotsteam.gdextension. Reported privately to security@...otsteam.com
on 2026-10-21; no reply received as of 2026-11-04. The report proposed
three fixes: reject a claim of 1 on servers, check a client's claim of
1 against the connected server's Steam account, or let the server
assign peer IDs.

CVE status:
Requested from MITRE's CNA-LR on 2026-11-04 (CAN-2026-2042189). This
thread will be self-replied when the record publishes.

[1] https://axeghost.offprint.app/a/3mzhxoqpnh423-any-networked-co-player-can-act-as-the-server-in-a-godotsteam-game
