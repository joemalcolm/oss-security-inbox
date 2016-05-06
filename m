X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4792" "Friday" "6" "May" "2016" "23:11:10" "+1200" "Amos Jeffries" "squid3@treenet.co.nz" "<583f664a-dc8b-93cb-4b88-2b778d705ee0@treenet.co.nz>" "128" "[oss-security] CVE Request: Squid HTTP caching proxy" nil nil nil "5" "2016050611:11:10" "[oss-security] CVE Request: Squid HTTP caching proxy" (number mark "U       squid3@treen May  6  128/4792  " thread-indent "\"[oss-security] CVE Request: Squid HTTP caching proxy\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7884 invoked by uid 550); 6 May 2016 11:11:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7855 invoked from network); 6 May 2016 11:11:42 -0000
To: oss-security@lists.openwall.com, cve-assign@mitre.org
From: Amos Jeffries <squid3@treenet.co.nz>
Message-ID: <583f664a-dc8b-93cb-4b88-2b778d705ee0@treenet.co.nz>
Date: Fri, 6 May 2016 23:11:10 +1200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="Vk3BNA2QBC03aMWHrIna0dNJ00wbAgtOe"
Subject: [oss-security] CVE Request: Squid HTTP caching proxy

--Vk3BNA2QBC03aMWHrIna0dNJ00wbAgtOe
Content-Type: multipart/mixed; boundary="gUCTtICiremFJFDm3K7pMmjN3QLtb9cVv"
From: Amos Jeffries <squid3@treenet.co.nz>
To: oss-security@lists.openwall.com, cve-assign@mitre.org
Message-ID: <583f664a-dc8b-93cb-4b88-2b778d705ee0@treenet.co.nz>
Subject: CVE Request: Squid HTTP caching proxy

--gUCTtICiremFJFDm3K7pMmjN3QLtb9cVv
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,
 several serious issues have been reported about the Squid proxy.

(URLs below are now all public, but some of our mirrors may take a few
more hours to pick up the changes).


1) Cache Poisoning issue in HTTP Request handling

Incorrect input validation of HTTP Request messages lets clients use an
absolute-URI on port 80 to bypass the protection previously added to
Squid for CVE-2009-0801 and other related attack vectors. This can lead
to cache poisoning of the Squid and browser caches, bypass of
same-origin and sandbox protections in browsers.

All Squid 2.x are not vulnerable.
All Squid-3.x up to and including 3.2.0.10 are not vulnerable unless
 they have been patched for CVE-2009-0801.
All Squid-3.2.0.11 and later up to and including 3.5.17 are vulnerable.
All Squid-4.x up to and including 4.0.9 are vulnerable.

Advisory at <http://www.squid-cache.org/Advisories/SQUID-2016_7.txt>

Patch at
<http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-14039.patc=
h>
(patches for other versions are TBD.)



2) Header Smuggling issue in HTTP Request processing

Incorrect input validation allows a client to smuggle Host header value
past same-origin security protections to cause Squid operating as
interception or reverse-proxy to contact the wrong origin server. Also
poisoning any downstream cache which stores the response.

However, the cache poisoning is only possible if the caching agent
(browser or explicit/forward proxy) is not following RFC 7230 processing
guidelines and lets the smuggled value through.

NP: This appears to be an example of CWE-144, but smuggling just a
specific header value instead of a whole message. The result is the same
as documented for message smuggling but much harder to detect by
observing log content - since there is no unexplained message or
response corruption after the attack has happened.

All 2.x versions up to and including 2.7.STABLE9 are vulnerable.
All 3.x versions up to and including 3.5.17 are vulnerable.
All 4.x versions are not vulnerable.

Advisory at <http://www.squid-cache.org/Advisories/SQUID-2016_8.txt>

Patches at:
 <http://www.squid-cache.org/Versions/v3/3.1/changesets/squid-3.1-10496.pat=
ch>
 <http://www.squid-cache.org/Versions/v3/3.2/changesets/squid-3.2-11842.pat=
ch>
 <http://www.squid-cache.org/Versions/v3/3.3/changesets/squid-3.3-12698.pat=
ch>
 <http://www.squid-cache.org/Versions/v3/3.4/changesets/squid-3.4-13236.pat=
ch>
 <http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-14038.pat=
ch>



3) Multiple Denial of Service issues in ESI Response processing.

Due to incorrect pointer handling and reference counting Squid is
vulnerable to a denial of service attack when processing ESI responses.

All Squid-2.x are not vulnerable.
Squid-3.x up to and including 3.5.17 and 4.x up to and including 4.0.9
are affected. Vulnerability is configuration and build dependent. see
the advisory for more detail if interested.

Advisory at <http://www.squid-cache.org/Advisories/SQUID-2016_9.txt>

Patches at:
 <http://www.squid-cache.org/Versions/v3/3.4/changesets/SQUID-2016_9.patch>
 <http://www.squid-cache.org/Versions/v3/3.5/changesets/SQUID-2016_9.patch>



Thanks

Amos Jeffries
Squid Software Foundation


--gUCTtICiremFJFDm3K7pMmjN3QLtb9cVv--

--Vk3BNA2QBC03aMWHrIna0dNJ00wbAgtOe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (MingW32)

iQIcBAEBAgAGBQJXLHveAAoJEGvSOzfXE+nLFoUP+QFxnGMfydBh1qM77lKeG+AX
y2RB0OpQnKDIOgw57VFqjU3bu9ftv+4fVhdYuG9F1GPS9AhrzNKO3xrb9P5eGiSQ
iYExQbpSv2deBTk8yFbQQvJ1b4rpy4bhihaq8U4mx1L5lEEdGPgbEiiqme6dqEEb
ctCjoTjeunGuItLeNNwLhg4UBsA0rMEtMLlf9QGJkPHkJUfovfq33gcdqI3BDMBN
hdtxBklAqkgzt2M0M2L+4CkEK9qrpNNjlmgd/4mpc8Ws4D8ovbf72G7hozslYqWj
Yq2P4QlOsvQw7DllfQGU626u0JKVlLHjr1oG5I/tdlUiWN3wDdx/FiHdNO9pDwoh
7IitueyzDq6SY/psB45WgED1iGlDAHm5VSXSgVd9iSumPssGZz5b/ZZkqhZF8xsk
L5E24p4q7byUB4mJ8ksFo78SWDRCAzX+yAljHm3zOPCFiVmmQdK/LMlfutY0HYHd
s2C4mYbSjOXJsd+4gyLEr9aERfE0S5jXmudeg+o4rppGvGqckduoEZGyGQlLRq1O
7yhGePifu5SWH0UglfMs6hiEjvjI+XHVO0faSvo0K8Hsx/JZehFgZnxpsymhK7dh
/NCcdgpD8/vgmGO7N0mywUklwYiwM7imopS/JaZTPZ9XtHSzKpmLxqn8MJfSWFru
e1t4n7MkOln+fgoMLccS
=FQ3/
-----END PGP SIGNATURE-----

--Vk3BNA2QBC03aMWHrIna0dNJ00wbAgtOe--
