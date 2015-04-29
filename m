X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2532" "Wednesday" "29" "April" "2015" "22:46:13" "+1200" "Amos Jeffries" "squid3@treenet.co.nz" "<5540B675.6020402@treenet.co.nz>" "62" "[oss-security] CVE policy clarification request" nil nil nil "4" "2015042910:46:13" "[oss-security] CVE policy clarification request" (number mark "        squid3@treen Apr 29   62/2532  " thread-indent "\"[oss-security] CVE policy clarification request\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24213 invoked by uid 550); 29 Apr 2015 10:46:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24135 invoked from network); 29 Apr 2015 10:46:30 -0000
Message-ID: <5540B675.6020402@treenet.co.nz>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Wed, 29 Apr 2015 22:46:13 +1200
From: Amos Jeffries <squid3@treenet.co.nz>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE policy clarification request
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi,
 I have had a potential security issue reported with Squid proxy. But
have been questioned about deciding not to seek a CVE.


The situation is that Squid has a TLS/SSL MITM mode "client-first"
whereby a blatantly fake server certificate is sent to the client. If
the client accepts this certificate the proxy happily does whatever it
wants with the HTTPS traffic. Which may (or not) involve TLS to some
backend server.
 NP: we have this documented with danger warnings, caveat admin, its
operating as designed despite the nastiness, and its already now a
deprecated feature.


Now we have a report that the server cert validation was a bit naive,
in a way which I would go straight to CVE request had it been occuring
in normal proxying of https:// URLs.

However the bug found is only exploitable in this case when the
client-first MITM has already exploited the client security fail.


My observation of Mitre allocations has been that when a bug B is only
acting because of another A exploited first the CVE gets assigned to
the A. In this case the client willingness to accept fake certificate
makes it vulnerable to mistakes in the proxy.

Is my observation correct or does the server validation bug get a CVE
assignment anyway?

And if so, should I seek CVE for other issues also hiding behind that
client-first nasty?


PS. for those wanting to jump on the bug, it's present in all Squid
3.2 and later. The workaround so far is to upgrade to 3.3 or later
*and* configure server-first bumping mode instead of client-first (or
ensure a peek is done before bumping in 3.5+). More details can follow
once we have confirmed the patch fix.

AYJ
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (MingW32)

iQIcBAEBAgAGBQJVQLZ0AAoJEGvSOzfXE+nL50AP/19vFbmGgVcKOxFnJmZzYU/X
UqCkqTyV3uZwqnHQajZZZTPH3DNBQuQWbqD4ies+gwFvkVqYjMIsomEC7YWoO5qa
HoiJ7/YbpIqL0NShL+v324NgQXZ6ufqIJeBO8kewzdqzUzyA/kichI81uQwPv0UE
19CCLaWDv1tgZamhZqhzdRJtnj6CKdWf2Ckn4giMfidMSsDlw1v2/L1BjrZRuBiV
UyCDnTMmx098tP8cC+SKYXOvr8qeFJsl8+Y0ug7szfKM7mVmzvv8J26ynOelxxG3
5wjts4YDaT5EQPYzpB6zhNGE3s/1uobOYcozMTbkLc9qgKW7zXqx9W6xH94ZVauA
N3ij7KBaA4OBLiRK4LXojWc4ZOygookNMZwWPUnWF2A9D5UhuAY3J6RhYoSkeA6K
ZIPIYLFopniFPvIcr2qEtcu3q28tyCdJfKpju+Y+ot+E8TXLvkI2EXUOFphRpJXr
r9dQgetd1l+OrnXGWPM3woRwCL1mMj6KO+Nu1qBfm5n1d0ee9vTaG2ChAXtvXET1
WwObOAOYthR8aqIQwQhLWiLRZDFA2cszsDFVgZFgYXF7C7eEjIjhqMcF4T5ec6R8
VKbK3R2Y+MEpG4YSWvcnGR3Ljcvq7iQrnYCtxSoAe5Bjw2ZgilQs7M5nv2f1psDN
q4PeRMKdlVT+/m66nfx2
=ms1g
-----END PGP SIGNATURE-----
