X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/27/9
Message-ID: <CAARiyJrUwuptN=jq8iO5qDY4yx3d4kOHT_XXrz7hGtBPq6DsYg@mail.gmail.com>
Date: Tue, 27 Oct 2026 21:02:52 +0100
From: Tomasz Kaye <tomasz.brain@...il.com>
To: oss-security@...ts.openwall.com
Subject: Godot 3.x/4.x: remote crash via DTLS receive-callback heap buffer overflow
Content-Type: text/plain; charset=utf-8

A remote denial-of-service vulnerability in Godot's DTLS networking
was publicly disclosed on 2026-10-27 [1].

Affected versions:
Godot 3.2.2 through 4.7.2 and current master (source inspection per
tag). Runtime-confirmed on the official 4.7-stable Windows release
template. DTLS is opt-in; the DTLS-over-ENet configuration exists from
4.0 onward, the raw PacketPeerDTLS path from 3.2.2.

Description:
The DTLS receive callback PacketPeerMbedDTLS::bio_recv
(modules/mbedtls/packet_peer_mbed_dtls.cpp:75) ignores the buffer
capacity that mbedTLS passes it and copies the entire received UDP
datagram — up to 65,507 bytes over IPv4 — into a 16,765-byte heap
input buffer, before certificate verification or any authentication.
Up to 48,742 attacker-chosen bytes land past the allocation.

Impact:
One unauthenticated datagram kills a game server using the documented
UDPServer + DTLSServer community-server pattern (20 of 21 runs in the
original verification; the remaining run left a process whose main
loop was dead), and kills a player who joins a hostile server. On 4.7
the measured kill threshold is 16,776 bytes processed cleanly versus
16,777 bytes fatal. The demonstrated effect is memory corruption and
process death; no code execution is claimed. On the server side the
process exit code reads zero while the system event log records the
crash, so exit-code monitors see a clean shutdown.

Reproduction:
https://github.com/bitbutter/godot-security-pocs/tree/main/2026-10-dtls-bio-recv-overflow
(victim project, attack script, SHA-256 manifest; all kit files
byte-identical to the archive sent in the private report)
Narrated video: https://www.youtube.com/watch?v=Outi7jvU2VY

Fix status:
Unpatched as of 2026-10-27 (master, 4.7.2, 4.7.1, 4.7, 3.2.2).
Privately reported to security@...otengine.org on 2026-09-26 with a
reproduction package and a suggested fix; no reply from the security
inbox. No pull request addressing this callback has appeared since the
report.

CVE status:
CAN-2026-2040011 reserved 2026-10-16 with a requester-supplied
severity rationale; MITRE has been notified of the publication. This
thread will be self-replied when the record publishes.

[1] https://axeghost.offprint.app/a/3myuwcppvkr23-an-attacker-can-crash-a-godot-game-server-using-dtls-with-a-single-udp-datagram
