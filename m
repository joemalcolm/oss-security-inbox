X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1588" "Thursday" "9" "April" "2015" "22:40:07" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<55275427.1040009@redhat.com>" "39" "[oss-security] Apache Tomcat partial file upload DoS CVE-2014-0230" nil nil nil "4" "2015041004:40:07" "[oss-security] Apache Tomcat partial file upload DoS CVE-2014-0230" (number mark "        kseifried@re Apr  9   39/1588  " thread-indent "\"[oss-security] Apache Tomcat partial file upload DoS CVE-2014-0230\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13596 invoked by uid 550); 10 Apr 2015 04:40:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13569 invoked from network); 10 Apr 2015 04:40:21 -0000
Message-ID: <55275427.1040009@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="eGkWaUH0Jn5IwwHgeUxgxPmXJ19FgiR1N"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Thu, 09 Apr 2015 22:40:07 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Apache Tomcat partial file upload DoS CVE-2014-0230
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--eGkWaUH0Jn5IwwHgeUxgxPmXJ19FgiR1N
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

http://svn.apache.org/viewvc?view=3Drevision&revision=3D1603781

was identified as a partial DoS (non persistent, but you can very easily
eat up all server ram) and assigned CVE-2014-0230 and then the person
handling it left Red Hat and it didn't get processed properly.

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--eGkWaUH0Jn5IwwHgeUxgxPmXJ19FgiR1N
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVJ1QnAAoJEBYNRVNeJnmT6vIP/0yat5E5qRsPfEnzNPvemd6k
QWwsQHw8hkz7zQzxsFOk8OhPypK5W3U55yZgmoIVMCkiMuaU5jnRYSIkz9/zMiqI
zVKdaIYWKjKa7rUXQ/Fk5wMsivJ3Ifbb408Lpx2jPuaZE1nypzc2JdfPytLUroTd
yYrOtdWRTJ9iGC2sKi3hVvVvMRM+Rk1IcaOTO0PpexXzooyI8f5Uict+Y+fNeJGy
yQQKjIGv0iukkKDQFbrOTJDlf7LrM/kGqJo3NDEvEQA5N4Af1VEY+w1IjkMjaMBw
/0K3SFSt3KMGUDGAbFe+UgVMJi4eutpw7jiXUUNqE7KNeYi4bTqUicoLcOxN6auV
WaInSNEbdWlSFY/BH4HK3dQM0BCLyP7PjDlj+TaBBXyQ+8PQCSGUmDWg+hfbZXd+
ydDMe3/7E0tUEpoD9gEl5XVg1b3Zmij8xOpyl+O5yWrfEtL+5e+ypYxyLe8DvzF4
NEvQgADI/NuAAzUiQGBvrAolgaBDipi1dApcbEpBlxr6YwvaFiPCZlX/yuCw4EIS
xbxYVKrs9Vvd1ATT/W3776i27tKKrPDDLhhC/fBZy9rzgeOYGD5DOZYvII8fGjLZ
Nz8JdFWBPUI7oaVzKiQO8y6iWUdpOiZXzJeNzJHb7lF5Qxlqfet2AoGCk0bORgpA
raIHXnETHhNK+iHXSdgO
=oUck
-----END PGP SIGNATURE-----

--eGkWaUH0Jn5IwwHgeUxgxPmXJ19FgiR1N--
