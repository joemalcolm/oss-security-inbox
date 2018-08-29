X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1244" "Tuesday" "28" "August" "2018" "17:17:01" "-0700" "Bryan Call" "bcall@apache.org" "<A9E2B7B3-FCD2-4439-8B86-21C3B1BD5339@apache.org>" "52" "[oss-security] Re: [ANNOUNCE] Apache Traffic Server vulnerability with header variable access in the ESI plugin - CVE-2018-8040" nil nil nil "8" "2018082900:17:01" "[oss-security] Re: [ANNOUNCE] Apache Traffic Server vulnerability with header variable access in the ESI plugin - CVE-2018-8040" (number mark "U       bcall@apache Aug 28   52/1244  " thread-indent "\"[oss-security] Re: [ANNOUNCE] Apache Traffic Server vulnerability with header variable access in the ESI plugin - CVE-2018-8040\"\n") "<B78D2067-1658-4D7F-804C-FC6CE9A99680@apache.org>" ("<B78D2067-1658-4D7F-804C-FC6CE9A99680@apache.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23994 invoked by uid 550); 29 Aug 2018 07:54:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19592 invoked from network); 29 Aug 2018 00:17:25 -0000
From: Bryan Call <bcall@apache.org>
Message-Id: <A9E2B7B3-FCD2-4439-8B86-21C3B1BD5339@apache.org>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_E2F3D798-0469-47C1-8090-6FF4DF844652"
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Tue, 28 Aug 2018 17:17:01 -0700
In-Reply-To: <B78D2067-1658-4D7F-804C-FC6CE9A99680@apache.org>
Cc: announce@trafficserver.apache.org,
 dev <dev@trafficserver.apache.org>,
 security@trafficserver.apache.org,
 oss-security@lists.openwall.com
To: users <users@trafficserver.apache.org>
References: <B78D2067-1658-4D7F-804C-FC6CE9A99680@apache.org>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: [oss-security] Re: [ANNOUNCE] Apache Traffic Server vulnerability with header
 variable access in the ESI plugin - CVE-2018-8040

--Apple-Mail=_E2F3D798-0469-47C1-8090-6FF4DF844652
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

There was an error in the Version Affected section.  This also effects vers=
ion 7.1.3 and users running 7.x should upgrade to 7.1.4 or later versions.

Thank you,

-Bryan



> On Aug 28, 2018, at 3:39 PM, Bryan Call <bcall@apache.org> wrote:
>=20
> CVE-2018-8040: Apache Traffic Server vulnerability with header variable a=
ccess in the ESI plugin
>=20
> Reported By:
> Louis Dion-Marcil
>=20
> Vendor:
> The Apache Software Foundation
>=20
> Version Affected:
> ATS 6.0.0 to 6.2.2
> ATS 7.0.0 to 7.1.2
>=20
> Description:
> Pages that are rendered using the ESI plugin can have access to the cooki=
e header when the plugin is configure not to allow access.
>=20
> Mitigation:
> 6.x users should upgrade to 6.2.3 or later versions
> 7.x users should upgrade to 7.1.3 or later versions
>=20
> References:
> 	Downloads:
> 		https://trafficserver.apache.org/downloads
> 	Github Pull Request:
> 		https://github.com/apache/trafficserver/pull/3926
> 	CVE:
> 		https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2018-8040
>=20
> -Bryan
>=20
>=20
>=20


--Apple-Mail=_E2F3D798-0469-47C1-8090-6FF4DF844652--
