X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2646" "Monday" "29" "February" "2016" "20:30:52" "+0100" "Moritz Bechler" "mbechler@eenterphace.org" "<56D49C6C.9090201@eenterphace.org>" "71" "[oss-security] Java Deserialization continued, Analysis Tooling and (potentially) bypassing Application Level Filtering" nil nil nil "2" "2016022919:30:52" "[oss-security] Java Deserialization continued, Analysis Tooling and (potentially) bypassing Application Level Filtering" (number mark "U       mbechler@een Feb 29   71/2646  " thread-indent "\"[oss-security] Java Deserialization continued, Analysis Tooling and (potentially) bypassing Application Level Filtering\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7838 invoked by uid 550); 29 Feb 2016 19:31:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7782 invoked from network); 29 Feb 2016 19:31:09 -0000
From: Moritz Bechler <mbechler@eenterphace.org>
To: oss-security@lists.openwall.com
Message-ID: <56D49C6C.9090201@eenterphace.org>
Date: Mon, 29 Feb 2016 20:30:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="OtdfhXp2E8svLlKVLAp07upjesGxvo26d"
Subject: [oss-security] Java Deserialization continued, Analysis Tooling and (potentially)
 bypassing Application Level Filtering

--OtdfhXp2E8svLlKVLAp07upjesGxvo26d
Content-Type: multipart/mixed; boundary="ChcIcGHhC1Oss0wJfirGCPJxas2O1q9eg"
From: Moritz Bechler <mbechler@eenterphace.org>
To: oss-security@lists.openwall.com
Message-ID: <56D49C6C.9090201@eenterphace.org>
Subject: Java Deserialization continued, Analysis Tooling and (potentially)
 bypassing Application Level Filtering

--ChcIcGHhC1Oss0wJfirGCPJxas2O1q9eg
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

sharing some results from my research on deserialization
(vulnerabilities, or rather gadgets):

- a static bytecode analyzer that traces invocations reachable
from deserialization that helps (high FP rate, obviously) with finding
gadget chains even when more complex interactions are involved:
<https://github.com/mbechler/serianalyzer>

- through it discovered a few more RCE gadgets most notably ones in
Hibernate

- and MyFaces (actually that's RCE via EL injection via deserialization)
that one is only usable in a JSF context - but MyFaces also performs
unsafe deserization when org.apache.myfaces.USE_ENCRYPTION=3Dfalse (yes,
also with server side state saving, and while being totally unnecessary
they are unwilling to fix this:
<https://issues.apache.org/jira/browse/MYFACES-4021>).

- and a method for bypassing application level filtering. Basically you
can open up JRMP (RMI) listeners and connections via various gadgets
(in the standard library) which then again use a standard
ObjectInputStream and can be used to exploit otherwise filtered gadgets.
Jenkins just fixed this sepecific vector (CVE-2016-0788) but this
potentially affects anybody that is using application level filters
(i.e. filtering ObjectInputStreams) and either is using blacklisting or
a too broad whitelist.

These are all now available in my ysoserial branch
<https://github.com/mbechler/ysoserial>


regards

Moritz



--ChcIcGHhC1Oss0wJfirGCPJxas2O1q9eg--

--OtdfhXp2E8svLlKVLAp07upjesGxvo26d
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCgAGBQJW1JxuAAoJEMzOw5BL8RBzvz0H/izpWihEtN4MV6JOEilDGrsA
TsWRj+X6Vlo+f3seg3W+OGO2tiE688TBGfNgJFsu5SR7AfU9dfon3BvO1omopdoP
UX7e/EVay1v8VYK63CARZg6DM0HgprAbl/S8XnAA/KCGA0avYlrQDVQ61ySft9ml
RaOdrCJCIBhyfUaSEChZWA/toOdPADzpkKXjOVCw1RitkuShoPgJk+IvXAXuw85c
1dvR5AzENdeSyIOEL0WU+3VXXoEexA2aJIQcrEiklpSA67NLc5M/OVtkJXJ7RAfc
5IAQSbvIATVDsXeHm1O9Tg3B+NSYBXG1GJRgGUlXALFfoBioG5/N8sDDJvzDA6Y=
=QUYH
-----END PGP SIGNATURE-----

--OtdfhXp2E8svLlKVLAp07upjesGxvo26d--
