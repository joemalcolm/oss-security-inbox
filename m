X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/05/5
Message-ID: <CAARiyJovNGa-OpHo_NnckzvHJGYY6_ejTO895OotLL9SKgXRHw@mail.gmail.com>
Date: Thu, 5 Nov 2026 11:05:18 +0100
From: Tomasz Kaye <tomasz.brain@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: GodotSteam 4.17 through 4.23.2: any multiplayer peer can claim the server's peer ID
Content-Type: text/plain; charset=utf-8

CVE-2026-123017 was assigned on 2026-11-05 and is published:
https://www.cve.org/CVERecord?id=CVE-2026-123017

The published record scores it 6.5, with Integrity Low. I have asked
MITRE's CNA-LR desk to raise Integrity to High - that gives 8.2 -
Because the stock host refused the forged command from the attacker's
own peer ID and ran it once the handshake claimed 1.

A correction to the original post. The two source paths carry a src/
prefix that the repository does not have. Both files sit at the
repository root at v4.23.2: godotsteam_multiplayer_peer.cpp and
steam_packet_peer.cpp.
