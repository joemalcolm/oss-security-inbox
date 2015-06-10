X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1447" "Wednesday" "10" "June" "2015" "17:07:49" "+0200" "Vasyl Kaigorodov" "vkaigoro@redhat.com" "<20150610150749.GB18203@mail.corp.redhat.com>" "44" "[oss-security] CVE=2015-1234 disambiguation" nil nil nil "6" "2015061015:07:49" "[oss-security] CVE=2015-1234 disambiguation" (number mark "        vkaigoro@red Jun 10   44/1447  " thread-indent "\"[oss-security] CVE=2015-1234 disambiguation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19999 invoked by uid 550); 10 Jun 2015 14:54:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19975 invoked from network); 10 Jun 2015 14:54:20 -0000
Message-ID: <20150610150749.GB18203@mail.corp.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="2B/JsCI69OhZNC5r"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Cc: jburke@tanium.com
Date: Wed, 10 Jun 2015 17:07:49 +0200
From: Vasyl Kaigorodov <vkaigoro@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE=2015-1234 disambiguation
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--2B/JsCI69OhZNC5r
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

I've spotted this on fulldisclosure mailing list today:
http://seclists.org/fulldisclosure/2015/Jun/17

It says CVE-2015-1234 was assigned to that issue, which I think is
wrong, because this same CVE was mentioned by Google in their Chrome
update in April 2015 [1]
http://googlechromereleases.blogspot.cz/2015/04/stable-channel-update.html

Can someone sched some light here?
Explicitely added cve-assign, and Justin Burke (fuldisclosure post
author).

Thanks.
--=20
Vasyl Kaigorodov | Red Hat Product Security
PGP:  0xABB6E828 A7E0 87FF 5AB5 48EB 47D0 2868 217B F9FC ABB6 E828
Free/Busy status: https://url.corp.redhat.com/vk-free-busy-status

Come talk to Red Hat Product Security at the Summit!
Red Hat Summit 2015 - https://www.redhat.com/summit/

--2B/JsCI69OhZNC5r
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVeFLFAAoJECF7+fyrtugodEQH/iNxJf1knBrltkpbutBzWOcc
esn87NkRMqiHWa7gczjuFp39pQSetgF3fXP1+3RwISY5CN7El50a4OzOT7PUC1rb
dH9ekZC1m9RbADFpJcSFmILQs08kAg8milbY6dbRf2c8oL+qbZBChOREX56xWmBs
OFNUotrAlBBeEHn06bgX8vsGFUxSAeuFc6dtoGIgVlwbTedDL08hmg+7dR6Q85MS
NBhsC3B+eC8ifnG+xKV5Iu5o1Dmf5WErU7aROv7zU7WtAyJ59kwocUgPleI8Q/Vm
ju1sZtcgX4BVq+fqGPmBoNaPr/Py+x2TEinRjQ4vLnxpoz8/oaX8ZR6vOboopSg=
=60h6
-----END PGP SIGNATURE-----

--2B/JsCI69OhZNC5r--
