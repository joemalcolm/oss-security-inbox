X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1588" "Tuesday" "19" "May" "2015" "19:38:13" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20150520023813.GB18594@hunt>" "51" "[oss-security] CVE Request: ipsec-tools" nil nil nil "5" "2015052002:38:13" "[oss-security] CVE Request: ipsec-tools" (number mark "        seth.arnold@ May 19   51/1588  " thread-indent "\"[oss-security] CVE Request: ipsec-tools\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7782 invoked by uid 550); 20 May 2015 02:38:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7747 invoked from network); 20 May 2015 02:38:30 -0000
Message-ID: <20150520023813.GB18594@hunt>
Mail-Followup-To: oss-security@lists.openwall.com, security@ubuntu.com,
	cve-assign@mitre.org
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="hQiwHBbRI9kgIhsi"
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: security@ubuntu.com, cve-assign@mitre.org
Date: Tue, 19 May 2015 19:38:13 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: ipsec-tools
To: oss-security@lists.openwall.com

--hQiwHBbRI9kgIhsi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

Javantea reports a null pointer dereference in the ipsec-tools package on
the full-disclosure mail list:
http://seclists.org/fulldisclosure/2015/May/81

Christos Zoulas proposed a fix on the same list:
http://seclists.org/fulldisclosure/2015/May/83

--- gssapi.c    9 Sep 2006 16:22:09 -0000       1.4
+++ gssapi.c    19 May 2015 15:16:00 -0000      1.6
@@ -192,6 +192,11 @@
        gss_name_t princ, canon_princ;
        OM_uint32 maj_stat, min_stat;
=20
+       if (iph1->rmconf =3D=3D NULL) {
+               plog(LLV_ERROR, LOCATION, NULL, "no remote config\n");
+               return -1;
+       }
+
        gps =3D racoon_calloc(1, sizeof (struct gssapi_ph1_state));
        if (gps =3D=3D NULL) {
                plog(LLV_ERROR, LOCATION, NULL, "racoon_calloc failed\n");

Please allocate a CVE for this issue.

Thanks


--hQiwHBbRI9kgIhsi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVW/OVAAoJEPMhclmdjS6Xn9sH/jbfp1+dgEJ3NKDaS0URbQeh
wBpthI/NlNmR1fMSuSLe+hcfv/tOBkpjgbosu+YpK5/ukcoEbVd79WfCrIr0GTMa
+X7457T48lg2HN+tgg+9vOkSjwWdyUySWEYLawBQlP0qvMHAIjnkQbh2rham0w42
RZE5f4Ip9O3XX7D7u4BOSjozTg50QIzV/jqRsPqJFbRmv+0uoPjP1IxnQ926qR+G
wEjrpbUEEWM//DqjurukzeQ2xxDolkmaAXSXWw6TGLHXoLNbQUMhu6O4gnSWNsrV
QBTrpB1nmn8t15XoKVfLo2Tfc+XFrXwFF2rmklGvzVNgpk5VOcxSphbB7i4iNXA=
=1Xb7
-----END PGP SIGNATURE-----

--hQiwHBbRI9kgIhsi--
