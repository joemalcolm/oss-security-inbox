X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1871" "Friday" "19" "June" "2015" "23:35:41" "-0400" "P. Taylor Goetz" "ptgoetz@apache.org" "<03369241-B799-414C-AA1A-8E5B9C721B65@apache.org>" "60" "[oss-security] [CVE-2015-3188] Apache Storm remote code execution vulnerability" nil nil nil "6" "2015062003:35:41" "[oss-security] [CVE-2015-3188] Apache Storm remote code execution vulnerability" (number mark "U       ptgoetz@apac Jun 19   60/1871  " thread-indent "\"[oss-security] [CVE-2015-3188] Apache Storm remote code execution vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7655 invoked by uid 550); 20 Jun 2015 05:27:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22522 invoked from network); 20 Jun 2015 03:36:04 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=from:content-type:subject:date:message-id:cc:to:mime-version;
        bh=nmh+rd+1em9F+Uwqn42W/m2m1HMyuJvaosFtiQIs6NU=;
        b=L13HUcqbUUh1cpWejrP69tQCzhqSLo37jk4Fq3ZKAJwqHFSmMnj5j7/u03hrp8qxFh
         IzQ8dQqfjGGup3WG2dA304IAE3AZWTekTQtUEnBw7O9ObD95eTx9ks15OmiR/nfHmDAA
         yYd34QaeWA01YzSH5aFSKYV+Q91Onea5djg7PF+u31UzWiEweEH6badCkvUQX3qfT507
         ii2HJJH1MuRi65IPtfqJ6XbhVzDaxLYY3l2gUkfnzQsmZMaamtXcrS7nvj1+v5kCv03w
         QfELQbJ8Us/SqeiisY7Z184GNeheeS8UYyLnT7bgUiF0VBnfTCo6hkurGO2Zn6zp2XiX
         BQsg==
X-Received: by 10.55.33.209 with SMTP id f78mr41898834qki.38.1434771352134;
        Fri, 19 Jun 2015 20:35:52 -0700 (PDT)
From: "P. Taylor Goetz" <ptgoetz@apache.org>
Content-Type: multipart/signed; boundary="Apple-Mail=_FE8BF2FF-2848-43BA-9EC9-AE620B17FA71"; protocol="application/pgp-signature"; micalg=pgp-sha512
Date: Fri, 19 Jun 2015 23:35:41 -0400
Message-Id: <03369241-B799-414C-AA1A-8E5B9C721B65@apache.org>
Cc: security@apache.org,
 oss-security@lists.openwall.com,
 bugtraq@securityfocus.com
To: user@storm.apache.org,
 dev@storm.apache.org
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
Subject: [oss-security] [CVE-2015-3188] Apache Storm remote code execution vulnerability

--Apple-Mail=_FE8BF2FF-2848-43BA-9EC9-AE620B17FA71
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

CVE-2015-3188: Apache Storm remote code execution vulnerability

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Storm 0.10.0-beta

Description:
The UI daemon in Apache Storm 0.10.0-beta allows remote users to run=20
arbitrary code as the user running the web server. With kerberos=20
authentication this could allow impersonation of arbitrary users on other=20
systems, including HDFS and HBase.

Mitigation:
0.10.0-beta users should upgrade to 0.10.0-beta1 or disable the Storm UI
daemon.

Apache Storm 0.10.0-beta1 artifacts are available for immediate download he=
re:

http://www.us.apache.org/dist/storm/apache-storm-0.10.0-beta1/

Credit:
This issue was discovered by Bobby Evans of the Apache Storm PMC

References:
https://github.com/apache/storm/blob/v0.10.0-beta1/SECURITY.md
https://github.com/apache/storm/blob/v0.10.0-beta1/STORM-UI-REST-API.md

P. Taylor Goetz

--Apple-Mail=_FE8BF2FF-2848-43BA-9EC9-AE620B17FA71
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQEcBAEBCgAGBQJVhN+NAAoJEI3gOWLoC4/9tIEIALzvPMDFWn7tfkAmSLQZGXrp
IMxieb4XY+zvAiTLmU/1c2w6xHLlDEDGWMRixzRSShST7vz+gMhXBhkmys6Bu583
Tex6dTFVE6LZIsNj0/ZU6ZzuWXukBU6WZgHh5QbIvLQK0e7SbVyuLN7M1btpEy6i
JWnWMzRflK3lLt+GJGvIVGrSnHHxxRu/sXxo2uNtErvxKRMYdb+aK0V/RCEOVQtu
xBV+HGoMZ4+CRa7vllnTkvTS8LbAegDO940PH3sS1FikfPC8J1LEiG0zjaV3z4EY
8i0E+0rb30kLSBPIzvoa/z2WtmywbZfAQ91O8pYreRKp8RWKQAksGyut30XmFFw=
=R9V8
-----END PGP SIGNATURE-----

--Apple-Mail=_FE8BF2FF-2848-43BA-9EC9-AE620B17FA71--
