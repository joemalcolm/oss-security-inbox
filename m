X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1991" "Tuesday" "2" "February" "2016" "19:33:33" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160203003333.A47A68BC0B7@smtpvmsrv1.mitre.org>" "68" "[oss-security] Re: Miscomputations of elliptic curve scalar multiplications in Nettle" "^Cc:" nil nil "2" "2016020300:33:33" "[oss-security] Re: Miscomputations of elliptic curve scalar multiplications in Nettle" (number mark "        cve-assign@m Feb  2   68/1991  " thread-indent "\"[oss-security] Re: Miscomputations of elliptic curve scalar multiplications in Nettle\"\n") "<20160202105622.08d2d62c@pc1>" ("<20160202105622.08d2d62c@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5327 invoked by uid 550); 3 Feb 2016 00:33:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5275 invoked from network); 3 Feb 2016 00:33:45 -0000
In-Reply-To: <20160202105622.08d2d62c@pc1>
Message-Id: <20160203003333.A47A68BC0B7@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue,  2 Feb 2016 19:33:33 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Miscomputations of elliptic curve scalar multiplications in Nettle
To: hanno@hboeck.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> I discovered two carry propagation bugs

> The P-256 bug is
> in the C code and affects multiple architectures.
> 
> https://lists.lysator.liu.se/pipermail/nettle-bugs/2015/003028.html
> 
> secp256 calculation bug (already fixed)
> 
> Sat Dec 12 21:48:58 CET 2015
> 
> https://git.lysator.liu.se/nettle/nettle/commit/c71d2c9d20eeebb985e3872e4550137209e3ce4d
> 
> 2015-12-10

Use CVE-2015-8803.


> The P-384 bug is in
> the assembly code and only affects 64 bit x86.
> 
> https://lists.lysator.liu.se/pipermail/nettle-bugs/2015/003024.html
> 
> Miscalculations on secp384 curve
> 
> Fri Dec 11 11:19:05 CET 2015
> 
> https://git.lysator.liu.se/nettle/nettle/commit/fa269b6ad06dd13c901dbd84a12e52b918a09cd7
> 
> 2015-12-15

Use CVE-2015-8804.


> Niels Moeller discovered
> another carry propagation bug in P-256
>
> https://git.lysator.liu.se/nettle/nettle/commit/c71d2c9d20eeebb985e3872e4550137209e3ce4d
>
> 2015-12-10

Use CVE-2015-8805.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWsUqEAAoJEL54rhJi8gl5kBgP/3SoSxsZyGfBYj+2LR1uF/o7
1cIStfXACb7RaB02DnCzkjxlBBPUxxPnZbW3nDR7XHe1n9dVSmWYavenQceikS2y
EJmRuu6L7CaXDQ9nwj9kfmUaLoPmC737eD5vkUNu3gWyyDaDpeb4ve0UHNmInNRG
efDC4MbT9Tmzhpfx0cDkG5hdPImWgNDQRf2loSZ2owy7XcH3a0U60kZ5mwXndQms
eEzyj2tD4gE1VWbadjuqPplkyCjp39a30WhbWNAdizHKj5N4ai0+W7uy1P1y47qK
BsRQwtPprsf/Vsozmf4y/tMwX4zB3DFLKq/Gtm7wjj43SSahMkN22d2tCxHfTfHB
Cj8YciUtun9oGOPDFCMcwmzY6UrmR+Hn+DCmp821FrHD12JEaptB+BNvDkit1/0F
lyMWCuoiqoUUplIYY3K33Ys5I8WFxw2E3eGrCmcNs3nZ+IOEqZRedwGElLFKISwJ
EFA2fzJp0VI2jpq6+/S4d3F70BFjsZ1ZvVd+KIYvrncfOz0A76/xCWCo2spQFz39
W3gsOVN5vPajqfI091nFwTaX3y7wqkFhb20YV11Pz38rgiM5Kfrgj03g5n1tF0oD
7mSgLHCnI8Uz1UxJcTAYoAGHLxFZu4hM+CL5rVq3hVlUpZhj4fjE29LUdq16lYij
dZFxx5TihZtuH0n6KxkM
=5gQs
-----END PGP SIGNATURE-----
