X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1843" "Thursday" "9" "April" "2015" "22:11:54" "+0200" "Robert Scheck" "robert@fedoraproject.org" "<20150409201154.GA23755@hurricane.linuxnetz.de>" "51" "[oss-security] CVE request: Incorrect default permissions in Zarafa (zarafa-search-plus)" nil nil nil "4" "2015040920:11:54" "[oss-security] CVE request: Incorrect default permissions in Zarafa (zarafa-search-plus)" (number mark "        robert@fedor Apr  9   51/1843  " thread-indent "\"[oss-security] CVE request: Incorrect default permissions in Zarafa (zarafa-search-plus)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29846 invoked by uid 550); 9 Apr 2015 20:12:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29828 invoked from network); 9 Apr 2015 20:12:10 -0000
Message-ID: <20150409201154.GA23755@hurricane.linuxnetz.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="opJtzjQTFsWo+cga"
Content-Disposition: inline
X-GnuPG-Key: 0xCE3E1F56, available at http://pgp.uni-mainz.de/
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Scanned-By: MIMEDefang 2.76 on 127.0.0.1
Cc: CVE assignment team <cve-assign@mitre.org>
Date: Thu, 9 Apr 2015 22:11:54 +0200
From: Robert Scheck <robert@fedoraproject.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Incorrect default permissions in Zarafa
 (zarafa-search-plus)
To: Open Source Security Mailing List <oss-security@lists.openwall.com>

--opJtzjQTFsWo+cga
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Good evening,

it was discovered that zarafa-search-plus (part of Zarafa >=3D 7.2.0) creat=
es
the directory /var/lib/zarafa/search/ read- and writable for world, as well
as all sub-directories and files it creates afterwards:

 - https://forums.zarafa.com/showthread.php?11304-Zarafa-7-2-Problems-Bugs-=
with-the-new-search
 - https://bugzilla.redhat.com/show_bug.cgi?id=3D1206838
 - https://jira.zarafa.com/browse/ZCP-13160

In difference to the ZCP-13160 ("change this to the same permissions as the
other folders in the directory") the thus proposed 755 is not enough, it
must be e.g. 750, otherwise data is still readable for local system users.

As I unfortunately wasn't aware of the forum posting when I did my analysis
I also cross-checked releases before the rewrite (thanks Martin Prpi=C4=8D)=
. The
predecessors of zarafa-search-plus are creating the /var/lib/zarafa/search/
or /var/lib/zarafa/index/ directory with the correct permissions, however
some of the sub-directories and files (also created by the search daemon)
are world-readable (see comment #2 of RHBZ#1206838 for details) through. I
am not sure how this should be treated, given that all Zarafa search/index
daemons do not seem to have built-in permission checks (like e.g. fetchmail
has) and thus also accept an existing directory with incorrect permissions.


With kind regards

Robert Scheck
--=20
Fedora Project * Fedora Ambassador * Fedora Mentor * Fedora Packager

--opJtzjQTFsWo+cga
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlUm3QoACgkQUwMgnc4+H1aYJgCfcucPaOYjSDG4z4ThJlEQsMZN
sncAn22fkCs5RM+vId1r0+JvSIq80K3/
=cjvu
-----END PGP SIGNATURE-----

--opJtzjQTFsWo+cga--
