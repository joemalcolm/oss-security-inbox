X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3726" "Friday" "26" "February" "2016" "01:45:42" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160226064542.A0BC56C00A3@smtpvmsrv1.mitre.org>" "86" "[oss-security] Re: CVE request: Squid HTTP Caching Proxy multiple denial of service issues" nil nil nil "2" "2016022606:45:42" "[oss-security] Re: CVE request: Squid HTTP Caching Proxy multiple denial of service issues" (number mark "U       cve-assign@m Feb 26   86/3726  " thread-indent "\"[oss-security] Re: CVE request: Squid HTTP Caching Proxy multiple denial of service issues\"\n") "<56CD77F0.6060607@treenet.co.nz>" ("<56CD77F0.6060607@treenet.co.nz>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25939 invoked by uid 550); 26 Feb 2016 06:45:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25921 invoked from network); 26 Feb 2016 06:45:54 -0000
From: cve-assign@mitre.org
To: squid3@treenet.co.nz
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <56CD77F0.6060607@treenet.co.nz>
Message-Id: <20160226064542.A0BC56C00A3@smtpvmsrv1.mitre.org>
Date: Fri, 26 Feb 2016 01:45:42 -0500 (EST)
Subject: [oss-security] Re: CVE request: Squid HTTP Caching Proxy multiple denial of service issues

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://www.squid-cache.org/Advisories/SQUID-2016_2.txt

> First issue;
>  the proxy contains a String object class with 64KB content limits.
> Some code paths do not bounds check before appending to these String
> and overflow leads to an assertion which terminates all client
> transactions using the proxy, including those unrelated to the limit
> being exceeded.
> 
> A PoC has already been published for one attack vector using HTTP
> "Vary" response header. When the Vary pattern presented by a server
> expands to more than 64KB the DoS is triggered. For example:
>  Vary: Cookie,Cookie,Cookie,Cookie,...
> However, there are currently 4 known distinct vectors (types of
> remotely provided input) with varying degrees of difficulty to trigger
> the assertion.
> 
> Patch URLs that workaround 3 of those vectors (though not fully solve)
> are:
> http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-13991.patch
> http://www.squid-cache.org/Versions/v4/changesets/squid-4-14552.patch

Use CVE-2016-2569 for both squid-3.5-13991.patch and
squid-4-14552.patch. There is (currently) no CVE ID for the remaining
unsolved problem associated with this "though not fully solve"
statement.


> This patch fixes the other related variant of the basic problem.
> Though this instance is not triggerable from outside a controlled CDN
> environment:
> http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-13993.patch
> http://www.squid-cache.org/Versions/v4/changesets/squid-4-14549.patch

Use CVE-2016-2570 for both squid-3.5-13993.patch and
squid-4-14549.patch.


> Error handling for malformed HTTP responses can lead to a second
> assertion with the same effects as the first issue. It is not easily
> triggered in Squid-3 or normally in Squid-4.
> 
> However fixing the String issue makes it become easily triggerable in
> Squid-4, and we do have a history of the assertion itself being
> reported as occuring already but been unable to identify the vectors
> code path to replicate it yet. So believe it can be achieved
> independent of the String issues, even if we are unable so far to
> identify how.
> 
> Patch URLs for this are:
> http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-13990.patch
> http://www.squid-cache.org/Versions/v4/changesets/squid-4-14548.patch

For 'When we failed to parse a response, do not store the fake
half-baked response (via a replaceHttpReply() call)' in
squid-3.5-13990.patch and 'Do not store the fake half-baked response
(via replaceHttpReply)' in squid-4-14548.patch, use CVE-2016-2571.

For 'Do not use parsing leftovers, such as HTTP response status code'
in squid-4-14548.patch, use CVE-2016-2572.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWz/QtAAoJEL54rhJi8gl5TPsQALWrHbXiNZ0QWpy9rdqQSNFa
OAikawWt2yIudQ4Dozv2DtPU2lzOgb01wyyEs+Y9keUv2eYjxe34/4spJpT2mnOA
HNmzKa7LuCF119D7R1tKwrfKox/9aOZN5AveHbXzg+/LZ/IC4IHz0FDAp4iJPSEi
QJcjEGfOWkIPI/8k5FiimSQVlxlN60VePEB2lFippfDhBGA1c8y9Xyl20f7rrLVB
mF5kFgz/jtiP0WZ03XdzQefKTlc19m/ypMoF5HRJDC41Y549XKwXLwrZIxh6mou+
cDFUWi3DpcwSxLAcoaA9QkqQu9DrH8Yix5d2/Y4GYJFPcKiHDxUn/oAIaAQm8zZU
2rJNtS1HCLrn1k4VV9Q4BYARvRA3tQzHd90hIZMISxN8LU51ck0PKgcgWcx2tyFX
B4dIfH4mbI5/eZQJw8EyZpg/PvEGn2JVxFlJymAH82Hwvw/G/uXYRmaucbw9TaSU
f2ohc7t+SBP1hjnsil8/YSOAoAaG8e74F5RicqwrxTnsNEUsDs9LKlKaCLAewQor
BbSwLs5ktEysG+68+x4vkxm34CJnEZyedoGZhQbM0T+EAZh5y8vGjcYDzRvQ7DIt
7PH8Z/hQXa6GMPDRg8e7QJKwCgQCxU/Nfpg+jAEvfTelf9VMjiBixyf0pnyTvikt
/Wg3iOrRSLlWAPp4xL9Z
=Pghb
-----END PGP SIGNATURE-----
