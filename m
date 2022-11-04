Received: (qmail 8177 invoked by uid 550); 4 Nov 2022 16:21:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6022 invoked from network); 4 Nov 2022 16:19:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1667578786; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=Xit60oYCKI5+Jrc4e3S/De1MG6WglrWuN0TC3a7SIYg=;
	b=Rcg3a3v4COtPIIWeVlKzOct4brfPv3eVF50f5asX12iNJmQ0XEfhntejOUexH+OjupWG7b
	cyjoDC2Jhzv39stWsWCrKmuFSQB8ElVqHI0/8785GO+CEKOmlfCOBWcST7eAIZJVaqu+D/
	UmuoHhaN5L15kKjSpufZhwyf+LUYxVk=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1667578786;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=Xit60oYCKI5+Jrc4e3S/De1MG6WglrWuN0TC3a7SIYg=;
	b=Gx+Pe4UfsiKhGznI09me5pTZbAXOCVtAnGZ4/+w6pqq7X9Sx5O/fKZVMTXKTElYz//lH+M
	VEQ02Rm3xgEqx6Dw==
Date: Fri, 4 Nov 2022 17:19:45 +0100
From: Paolo Perego <pperego@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20221104161945.5thjnd6axcdo5fme@zion>
X-Responsible-Disclosure: https://en.opensuse.org/openSUSE:Security_disclosure_policy
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qr5rqps7rx4cydj7"
Content-Disposition: inline
Subject: [oss-security] Multiple vulnerabilities affecting UYUNI/SUSE Manager

--qr5rqps7rx4cydj7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list, during a scheduled audit for the UYUNI / SUSE Manager project, =
three
security issues were found and tracked with a CVE identifier.

1. Issues

1.1 CVE-2022-31255: directory path traversal vulnerability in
    CobblerSnipperViewAction

When viewing cobbler autoinstallation snippet, it is possible to evade
from /var/lib/cobbler/snippet path using the "path" request parameter
and accessing files outside the webserver root directory.

On a default installation, tomcat is running as a non-privileged user
process, so the impact on the file system confidentiality is for files
viewable by tomcat user, for groups www, susemanager and tomcat and for
files viewable by anyone.

To exploit this vulnerability there is no need for a particular script
but an authenticated SUMA session is needed.

CVSS is 5.0: https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/P=
R:L/UI:N/S:C/C:L/I:N/A:N/E:H

To exploit this vulnerability you have just to pass the desired file
using the path parameter:

https://<SERVER>/rhn/kickstart/cobbler/CobblerSnippetView.do?path=3D%2Fvar%=
2Flib%2Fcobbler%2Fsnippets%2F../../../../etc/rhn/rhn.conf

1.2 CVE-2022-43753: arbitrary file disclosure vulnerability in
    ScapResultDownload

When downloading the openscap result for a given system, it is possible
to evade from the location where the report is created and access
arbitrary files.

On a default installation, tomcat is running as a non-privileged user
process, so the impact on the file system confidentiality is for files
viewable by tomcat user, for groups www, susemanager and tomcat and for
files viewable by anyone.

To exploit this vulnerability there is no need for a particular script
but an authenticated UYUNI/SUMA session is needed.

CVSS is 5.0: https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/P=
R:L/UI:N/S:C/C:L/I:N/A:N/E:H

PoC
https://server_ip/rhn/systems/details/audit/ScapResultDownload.do?sid=3D100=
0010000&xid=3D1&name=3D../../../../../../../etc/passwd

1.3 CVE-2022-43754: reflected cross site scripting in
    /rhn/audit/scap/Search.do

In the "Search XCCDF Rules For:" text field, the attacker can inject
malicious javascript code by using "/> as prefix and then the arbitrary
js (e.g. "/><script>alert(1)</script>.

The injected code is copied in the HTML without sanitization, in the
alert and messages portion of the page. The "/> sequence is needed to
trigger the error and then having the js code to be copied in the output
page.

Here it is the evil payload in the result page:

 <!-- Alerts and messages -->
    <div class=3D"alert alert-warning">
      <ul>
        <li>Could not parse query '"/><script>alert(1)</script>'.</li>
      </ul>
    </div>

Please note that this attack is possible only on a successful POST
request on an authenticated session. This limits the severity of the
issue itself.

CVSS is 3.0: https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:H/P=
R:L/UI:R/S:C/C:L/I:N/A:N

I marked confidentiality low because pxt-session-cookie and JSESSIONID
cookies are HttpOnly and secure. So even the exposure is limited.

2. Affected releases

The three vulnerabilities are present in the following releases:
* all SUSE Manager 4.2 versions before 4.2.10
* all SUSE Manager 4.3 versions before 4.3.2
* all UYUNI versions before Uyuni-2022.10

3. Timeline

3.1 CVE-2022-31255
2022-10-20: vulnerability was reported to upstream authors [1]
2022-10-20: upstream authors acknowledge it
2022-10-21: offered an embargo until 2022-11-04
2022-10-24: assigned a CVE
2022-11-04: fixes were released and embargo was lifted

3.2 CVE-2022-43753
2022-10-25: vulnerability was reported to upstream authors [2]
2022-10-26: upstream authors acknowledge it and a CVE is assigned
2022-10-26: offered an embargo until 2022-11-04
2022-11-04: fixes were released and embargo was lifted

3.3 CVE-2022-43754
2022-10-26: vulnerability was reported to upstream authors [3]
2022-10-26: upstream authors acknowledge it and a CVE is assigned
2022-10-26: offered an embargo until 2022-11-04
2022-11-04: fixes were released and embargo was lifted

4. Links
4.1 https://bugzilla.suse.com/show_bug.cgi?id=3D1204543
4.2 https://bugzilla.suse.com/show_bug.cgi?id=3D1204716
4.3 https://bugzilla.suse.com/show_bug.cgi?id=3D1204741
4.4 uyuni upstream merge commit: https://github.com/uyuni-project/uyuni/com=
mit/d8fe770ebbad161de0b628f663de4e5bd1b8c204
4.5 https://www.suse.com/security/cve/CVE-2022-31255.html
4.6 https://www.suse.com/security/cve/CVE-2022-43754.html
4.7 https://www.suse.com/security/cve/CVE-2022-43753.html

Regards,
Paolo

--
(*_  Paolo Perego                           @thesp0nge
//\  Software security engineer               suse.com
V_/_ 0A1A 2003 9AE0 B09C 51A4 7ACD FC0D CEA6 0806 294B

--qr5rqps7rx4cydj7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEChogA5rgsJxRpHrN/A3OpggGKUsFAmNlO6EACgkQ/A3OpggG
KUsHTxAAnNpsDeT08avABam4uGsDhp5C8UiWi4XMrFuIvkoXWqnbl/Gr/5sEwkbW
InE+HjAsyGSDWc5ot4rbQBALTXSlqa6B7S74usXh+EI4HzI3jKOCzjhwOclpBIKn
urle5MO8h7fxl3BOXPSI2R6ZYyClYE+wxWT98kuBRQuOIaVF2oPBNn6QfbCtT7XQ
Kz0FEw4UXcujAjkKb16fB3FfqJYI9rUMYEgILETXTAFqbe3kb+1LJwX7A7tGFBx2
HigsvmyMogoEQAU5bZZxiZnwYTcmYMBWo7eZlNNkSVP37eA+qY49eSPLvMm2tCHC
+gPif4aYIE7aHSr9kOTGmIQnOqzpwB8b0M5IuJrnatAd/hrzOcydSRWC6tShW+PN
n8o6jSIEi6ADkhOf8F51ujAxvfVPnb5ZMk/bBv2grT42jx3jc21YlQy8sRkg3MYF
rQStqqGhn6xyj2Dsxqh4AULU19V0YTAA+N3VvUv7mypmpGxOZjHtnmrLFjE80vsM
g8LAvnIxq6TOw1MNufG/WuZILsQCxdL1qpLsnCbEsvIuoI83pauKEH3A3z+DzH6Q
gp7Wsp+caxRmeNtQZpP9a5pH90z1LCIdzH0P14mRyat5Ds/O68f3ViBxm89/Sobt
Fz2tBhk5AjtEHysA07w7Lru+n4HLnwkBhjjDTVpKY/rr1FzNfQ4=
=NZZ0
-----END PGP SIGNATURE-----

--qr5rqps7rx4cydj7--
