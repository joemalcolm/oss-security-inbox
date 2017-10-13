X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3835" "Friday" "13" "October" "2017" "17:41:18" "+0200" "Andrej Nemec" "anemec@redhat.com" "<c15cf180-9dd5-7ade-1e4e-5fef72274dc1@redhat.com>" "101" "[oss-security] CVE-2017-12629 Solr: Code execution via entity expansion" "^Date:" nil nil "10" "2017101315:41:18" "[oss-security] CVE-2017-12629 Solr: Code execution via entity expansion" (number mark "U       anemec@redha Oct 13  101/3835  " thread-indent "\"[oss-security] CVE-2017-12629 Solr: Code execution via entity expansion\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26049 invoked by uid 550); 13 Oct 2017 15:41:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26020 invoked from network); 13 Oct 2017 15:41:33 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 09F47C059B89
Authentication-Results: ext-mx08.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx08.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=anemec@redhat.com
Message-ID: <c15cf180-9dd5-7ade-1e4e-5fef72274dc1@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="SBe6U9sdBU4SatBc0IOc2EF4lK7Owi30x"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Fri, 13 Oct 2017 15:41:21 +0000 (UTC)
Date: Fri, 13 Oct 2017 17:41:18 +0200
From: Andrej Nemec <anemec@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-12629 Solr: Code execution via entity expansion
To: oss-security@lists.openwall.com

--SBe6U9sdBU4SatBc0IOc2EF4lK7Owi30x
Content-Type: multipart/mixed; boundary="2AwwcvkuN98sUkdBlAHjoHAWeGtE2lDBP";
 protected-headers="v1"
From: Andrej Nemec <anemec@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <c15cf180-9dd5-7ade-1e4e-5fef72274dc1@redhat.com>
Subject: CVE-2017-12629 Solr: Code execution via entity expansion

--2AwwcvkuN98sUkdBlAHjoHAWeGtE2lDBP
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hello oss-security,

I would like to make the list aware of CVE-2017-12629, which was
yesterday reported with a working 0-day exploit to the public Lucene
development mailing list [1]. Lucene / Solr developers quickly confirmed
the bug and moved to fixing it ASAP. There is also a late Apache
announcement [2] which came out yesterday, appended below.

[1]
http://lucene.472066.n3.nabble.com/Re-Several-critical-vulnerabilities-disc=
overed-in-Apache-Solr-XXE-amp-RCE-td4358308.html

[2] https://marc.info/?l=3Dapache-announce&m=3D150786685013286


Dear Apache Solr users,

Please secure your Solr servers since a zero-day exploit has been
reported on a public mailing list. This has been assigned a public
CVE (CVE-2017-12629) which we will reference in future communication
about resolution and mitigation steps.

Here is what we're recommending and what we're doing now:

* Until fixes are available, all Solr users are advised to restart their
Solr instances with the system parameter `-Ddisable.configEdit=3Dtrue`.
This will disallow any changes to be made to configurations via the
Config API. This is a key factor in this vulnerability, since it allows
GET requests to add the RunExecutableListener to the config. This is
sufficient to protect you from this type of attack, but means you cannot
use the edit capabilities of the Config API until the other fixes
described below are in place.

* A new release of Lucene/Solr was in the vote phase, but we have now
pulled it back to be able to address these issues in the upcoming 7.1
release. We will also determine mitigation steps for users on earlier
versions, which may include a 6.6.2 release for users still on 6.x.

* The RunExecutableListener will be removed in 7.1. It was previously
used by Solr for index replication but has been replaced and is no
longer needed.

* The XML Parser will be fixed and the fixes will be included in the 7.1
release.

* The 7.1 release was already slated to include a change to disable the
`stream.body` parameter by default, which will further help protect
systems.

Thanks, The Apache Lucene/Solr team

[1] : https://s.apache.org/FJDl


Best Regards,

--=20
Andrej Nemec, Red Hat Product Security
3701 3214 E472 A9C3 EFBE 8A63 8904 44A1 D57B 6DDA



--2AwwcvkuN98sUkdBlAHjoHAWeGtE2lDBP--

--SBe6U9sdBU4SatBc0IOc2EF4lK7Owi30x
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJZ4N6eAAoJEIkERKHVe23avAUP/Ro4vKrBjn/WOywHVxI/9FB6
JQzulF8YJIOIOGlTEudvaqct6F6Flm4Sph/Pav8C0xDCKe7pWZ8+CP8KD4isHWY3
kMbfexe8JWK3BSAn0kKhxjY20O6FPUBZ/ueGWkBfKJakvnuJsGqOb/7mKzBK5NQn
Wf+MtyC+11oafQQ91xdJPv4Sv3yU4rKndlbAsW8RrdYPx6XtkAdyTV3ifX4qN/8t
SExdtuCupBgB19ym6aETDOv8XnrkOUHl1Cb31j9r4V0y/eioXJd8nV9i2uW9JY3X
UR6MVfRo0Ep1XP7o3SR18/xLNNU2sEHafVHmNUvnmFmy1N0gvFKxmaxynYxbIL/2
D5HWcQG21bEFOyCeO/AIkKTzMJRG0aEYnSinONgUouk5vmIpcDPpscnX4tgb4w6R
fggPxh4Vv296GmfOik3KJdZHlvYB+kOC9U2gKbAdJmWkaueIs/9t2W1DgsLqROaY
otKjudRe6BZdr2SAC5jpZ/+wdVAxCcKGsXI1Yi2KyInpfYjgmASJsn/3rAebFonf
I1McFEkfKNPYNgNAhAzWkmRldpcDFvkaJGYozsfRZjjCT0LlulfVMJLANJHE+QEc
DrCubPMPz4CX2OsMuHzxipFcAkvTIQ7hsWDbVMZ3zWGIwgAmiuBvlz78L3t2PtZV
VJv3hXtKN+V6S9QrOKNH
=N643
-----END PGP SIGNATURE-----

--SBe6U9sdBU4SatBc0IOc2EF4lK7Owi30x--
