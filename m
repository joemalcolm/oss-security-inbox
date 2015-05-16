X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1262" "Saturday" "16" "May" "2015" "09:14:24" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150516131424.4D44A13A727@smtpvmsrv1.mitre.org>" "37" "[oss-security] Re: CVE Request - CSRF and XSS in Encrypted Contact Form Wordpress Plugin v1.0.4" nil nil nil "5" "2015051613:14:24" "[oss-security] Re: CVE Request - CSRF and XSS in Encrypted Contact Form Wordpress Plugin v1.0.4" (number mark "        cve-assign@m May 16   37/1262  " thread-indent "\"[oss-security] Re: CVE Request - CSRF and XSS in Encrypted Contact Form Wordpress Plugin v1.0.4\"\n") "<CAARZ5vq4ZZggrPR8XK-HyFdCwaiyUa5nEk07fJ9iGN_3+ikKEg@mail.gmail.com>" ("<CAARZ5vq4ZZggrPR8XK-HyFdCwaiyUa5nEk07fJ9iGN_3+ikKEg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26463 invoked by uid 550); 16 May 2015 13:14:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26445 invoked from network); 16 May 2015 13:14:36 -0000
In-Reply-To: <CAARZ5vq4ZZggrPR8XK-HyFdCwaiyUa5nEk07fJ9iGN_3+ikKEg@mail.gmail.com>
Message-Id: <20150516131424.4D44A13A727@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sat, 16 May 2015 09:14:24 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request - CSRF and XSS in Encrypted Contact Form Wordpress Plugin v1.0.4
To: venkatesh.nitin@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> I discovered CSRF and XSS vulnerabilities in the Encrypted Contact Form
> Wordpress Plugin v1.0.4 which was responsibly disclosed and patched by the
> vendor in v1.1.

> https://plugins.trac.wordpress.org/changeset/1125443/

> http://seclists.org/fulldisclosure/2015/May/63

> https://wordpress.org/plugins/encrypted-contact-form/changelog/
> 1.1
> 
> Detection of CSRF attacks added

> action="/wp-admin/options-general.php?page=conformconf"
> name="iframe_url" value="[XSS]"

Use CVE-2015-4010 for this CSRF vulnerability (with resultant XSS).

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVV0IqAAoJEKllVAevmvmsiDkH/R51FqbfSiQZvFUtywS5Q5d3
jKNkpOyQEkDStzjlN6U9lNTFJRWxE9+GV5FfvMMjOBxlCtZx9QaurnpNUdf5eBYh
iuQrqpgPR6qWhhycEwTv5YyWI2ssDyL9KMne15Kdwv6pifDnNftxceOd5nlsZ+Z4
L77Y3Fz4N9dPb8Gnst7K8AYOwku4an+sLiQyz/2JvUGqFyZyxMMY58ExwaQG2/UL
loFKkn4tFb2t9ABNtQctYjnYJWZ3PVtgEntCNBVNqtXMgY+Rsn32SPh9buXnUoyl
6i8g4s5aKbh5zzIBgQw48FNI/CIcICcp3h+e67yCgt46lWqwrZfTBe6S3UTqs0I=
=ALMA
-----END PGP SIGNATURE-----
