X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/27/8
Message-ID: <CAARiyJrBX9Z8P918RfAmtFe0QCoJyYN6yQMoX_wmE9JY42DGNg@mail.gmail.com>
Date: Tue, 27 Oct 2026 17:49:01 +0100
From: Tomasz Kaye <tomasz.brain@...il.com>
To: oss-security@...ts.openwall.com
Subject: Godot 4.x: remote client crash via multiplayer spawn packet sync_len overflow
Content-Type: text/plain; charset=utf-8

A remote denial-of-service vulnerability in Godot 4.x multiplayer was
publicly disclosed on 2026-10-27 [1].

Affected versions:
Godot 4.0.0 through 4.7.2 and current master (vulnerable check
introduced in commit 32a62af648, 2022-10-03). Runtime-confirmed on the
official 4.7-stable Windows binary.

Description:
The spawn-packet bounds check in
SceneReplicationInterface::on_spawn_receive
(modules/multiplayer/scene_replication_interface.cpp:586) computes
name_len + (sync_len * 4) in 32-bit unsigned arithmetic, with both
values read from the packet (lines 582-584). A crafted sync_len of
0x40000000 wraps the product to 0 and passes the check; the sync-ids
loop (lines 588-591) then reads past the packet buffer until the
process faults. decode_uint32 performs no bounds check of its own
(core/io/marshalls.h:167).

Impact:
One crafted packet from a peer holding multiplayer spawn authority —
the game server in the standard client-server setup, any peer in a
mesh that grants peers spawning authority — crashes joining clients
running an affected engine build, about one second after connecting.
Demonstrated on a stock 4.7-stable binary in 5/5 runs with a clean
control case (sync_len 0x10000000, no wrap, rejected; client exits
normally). The demonstrated effect is a crash via out-of-bounds read;
no code execution or information disclosure is claimed.

Reproduction:
https://github.com/bitbutter/godot-security-pocs/tree/main/2026-10-spawn-sync-len-oob
(malicious WebSocket server, victim project, captured crash and
control output, fuzz-found trigger variants, SHA-256 manifest)

Fix status:
Unpatched as of 2026-10-27 (master, 4.7.2, 4.7.1, 4.7). Publicly
reported as Godot issue #121640 on 2026-07-22 (ASan reproduction on
4.4.1, 4.7 reproduction supplied the same day; issue open, labeled
needs testing); independently found and privately reported to
security@...otengine.org on 2026-10-07. PR #118043 (closed unmerged
2026-07-06) guards a different overflow in the same check and would
not have stopped this reproduction.

CVE status:
Requested from MITRE's CNA-LR on 2026-10-27 (CAN-2026-2040954), filed
after publication. This thread will be self-replied when the record
publishes.

[1] https://axeghost.offprint.app/a/3myukb53ww723-a-malicious-game-server-can-crash-the-godot-clients-that-join-it
