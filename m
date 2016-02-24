X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3029" "Wednesday" "24" "February" "2016" "22:29:20" "+1300" "Amos Jeffries" "squid3@treenet.co.nz" "<56CD77F0.6060607@treenet.co.nz>" "81" "[oss-security] CVE request: Squid HTTP Caching Proxy multiple denial of service issues" nil nil nil "2" "2016022409:29:20" "[oss-security] CVE request: Squid HTTP Caching Proxy multiple denial of service issues" (number mark "U       squid3@treen Feb 24   81/3029  " thread-indent "\"[oss-security] CVE request: Squid HTTP Caching Proxy multiple denial of service issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19580 invoked by uid 550); 24 Feb 2016 09:29:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19562 invoked from network); 24 Feb 2016 09:29:37 -0000
To: oss-security@lists.openwall.com, cve-assign@mitre.org
From: Amos Jeffries <squid3@treenet.co.nz>
X-Enigmail-Draft-Status: N1110
Message-ID: <56CD77F0.6060607@treenet.co.nz>
Date: Wed, 24 Feb 2016 22:29:20 +1300
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE request: Squid HTTP Caching Proxy multiple denial of service
 issues

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi,

 Several remotely triggerable denial of service issues have been found
in Squid proxy.

Our Advisory is at:
<http://www.squid-cache.org/Advisories/SQUID-2016_2.txt>


First issue;
 the proxy contains a String object class with 64KB content limits.
Some code paths do not bounds check before appending to these String
and overflow leads to an assertion which terminates all client
transactions using the proxy, including those unrelated to the limit
being exceeded.

A PoC has already been published for one attack vector using HTTP
"Vary" response header. When the Vary pattern presented by a server
expands to more than 64KB the DoS is triggered. For example:
 Vary: Cookie,Cookie,Cookie,Cookie,...
However, there are currently 4 known distinct vectors (types of
remotely provided input) with varying degrees of difficulty to trigger
the assertion.

Patch URLs that workaround 3 of those vectors (though not fully solve)
are:
<http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-13991.p
atch>
<http://www.squid-cache.org/Versions/v4/changesets/squid-4-14552.patch>

This patch fixes the other related variant of the basic problem.
Though this instance is not triggerable from outside a controlled CDN
environment:
<http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-13993.p
atch>
<http://www.squid-cache.org/Versions/v4/changesets/squid-4-14549.patch>



Secondary issue;

Error handling for malformed HTTP responses can lead to a second
assertion with the same effects as the first issue. It is not easily
triggered in Squid-3 or normally in Squid-4.

However fixing the String issue makes it become easily triggerable in
Squid-4, and we do have a history of the assertion itself being
reported as occuring already but been unable to identify the vectors
code path to replicate it yet. So believe it can be achieved
independent of the String issues, even if we are unable so far to
identify how.

Patch URLs for this are:
<http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-13990.p
atch>
<http://www.squid-cache.org/Versions/v4/changesets/squid-4-14548.patch>



Amos Jeffries
Squid Software Foundation
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (MingW32)

iQIcBAEBAgAGBQJWzXfvAAoJEGvSOzfXE+nLrlYQAKgzaFQYieSDXeG6a3eqqXF0
fBsk8OBWUq/VRvKrXETHVNjR0YKvufPOnUVSlwXmqyXyx7aQsKkMNFUlLvF+6jnW
B4FKyjxAYhM86PLHFroqB5/B0M9M9snc4OMR/NEKqtxkSw9Dhec4TZe6K6OZAaQR
Y7nKfyoTnMPJKBYyHPnIc8XPD2+7svRnjdAuAYrBBqUahu6h1+yLeBC6c3+nCjnG
g2r9e7GkEjro7oYrdayPcgazO4/mQL7dz8Q8fW/KWvhfTHfpoxUouwSvInORs1eD
FrbtS8VPgm0uVPA6iDqM+gNyvP1zp9dbhTNYsonPngEFDvm1BG5myZ7DpCusu1qM
l3BfqPzNe6yBx5QQkK+dhX4o2+8heY5BgogAynJ+Hffsq0AsgFWFWb3+NyU2ZBqb
QpRZD5L8L4GCkL5+22LcCgnn2PpDDHssF98ytCVjSwV3JDd/AcxzE+EviW+KvVU7
3LlAXPDSD+ZTcSfQCZA9LzT1oO7ulx/gnrLrFegD6pcgiOQp4EUiRAZC8ejjHDbY
CGV5yKlmIlGx4uK8g/t2WdXtPynMPVcydpB6EvZKyDyTjpBYbIs2sbR8hzz1xN/A
nHCEYHibq0qHZypiUANJHSKv2emzgPZvfDe6A38+5xHbe5vDs4SpmJS8lvaU0bA0
14b3HRYcnS4i8Tun7Jss
=mNRl
-----END PGP SIGNATURE-----
