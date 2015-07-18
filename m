X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1960" "Saturday" "18" "July" "2015" "19:31:21" "+0200" "Alessandro Ghedini" "alessandro@ghedini.me" "<20150718173121.GA15158@kronk.local>" "57" "[oss-security] CVE Request: cacti multiple SQL injections" nil nil nil "7" "2015071817:31:21" "[oss-security] CVE Request: cacti multiple SQL injections" (number mark "        alessandro@g Jul 18   57/1960  " thread-indent "\"[oss-security] CVE Request: cacti multiple SQL injections\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3089 invoked by uid 550); 18 Jul 2015 17:31:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 2044 invoked from network); 18 Jul 2015 17:31:33 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-type:content-disposition:user-agent;
        bh=IbaARspz0gGpg+Jiw1utbgwwNEF0cUPmCFq+UL3yuXs=;
        b=KZ9cWc8y5T1x+Pz+2Zue1qubBHs/giVGoPt6tjvM5diVd8GBykByhk+BoXw5Cw7oK3
         iHFWqs8QcN9nxnyxCbl4O/0PaQrMa5qTQ4p9O8f9q19y50/3m0/hcoIzjn+FF0wg9vhC
         5u1KX4d0dUdhBd4GmS37d/CSa8X8sTnWiUmtdDcExTJvlbqnsDAkXKCSJEvTux4aOSdd
         XEpjTc8vgx3aB9KfZlIXgafXrYefWUjzJ/v9O6LG82RE1GetnR4XfVjAiwV6SI3xfg19
         o2DSFbRx2cNNvQtS2RtjLy5t6fEM03ppl9efbi2QKbU3IxIZrN6KV9af3kUOUdxSY6Py
         42VQ==
X-Received: by 10.194.187.51 with SMTP id fp19mr38333843wjc.67.1437240682557;
        Sat, 18 Jul 2015 10:31:22 -0700 (PDT)
Message-ID: <20150718173121.GA15158@kronk.local>
Mail-Followup-To: oss-security@lists.openwall.com, cve-assign@mitre.org
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pf9I7BMVVzbSWLtt"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: cve-assign@mitre.org
Date: Sat, 18 Jul 2015 19:31:21 +0200
From: Alessandro Ghedini <alessandro@ghedini.me>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: cacti multiple SQL injections
To: oss-security@lists.openwall.com

--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

CVE-2015-4634 was assigned for an SQL injection in cacti [0], but according to
the commit fixing it [1] several other SQL injections were also found:

-bug#0002574: SQL Injection Vulnerabilitie in graph items and graph template items
http://bugs.cacti.net/view.php?id=0002574

-bug#0002579: SQL Injection Vulnerabilitie in data sources
http://bugs.cacti.net/view.php?id=0002579

-bug#0002580: SQL Injection in cdef.php
http://bugs.cacti.net/view.php?id=0002580

-bug#0002582: SQL Injection in data_templates.php
http://bugs.cacti.net/view.php?id=0002582

-bug#0002583: SQL Injection in graph_templates.php
http://bugs.cacti.net/view.php?id=0002583

-bug#0002584: SQL Injection in host_templates.php
http://bugs.cacti.net/view.php?id=0002584

Could CVEs be assigned for these issues as well?

Thanks

[0] http://bugs.cacti.net/view.php?id=0002577
[1] http://svn.cacti.net/viewvc?view=rev&revision=7731

--pf9I7BMVVzbSWLtt
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVqo1lAAoJEK+lG9bN5XPLxosQAJwCJUt9X6IUDOK2KgnPwaEI
0jhWBce6BPuMtR2YSvMPoXzPK9IArGZ1CPGT1do4n5amcBNELyseDZdPvzgRCkmK
pVQoonqoICu9sHtvUD8ofe8rbhlbFUOLm3+rw40VwA3ViAO5WQMGnB5Gu80fwWM+
Q/TbbBsfL7uMLuD6dXxA2kbVicoy1cyLpWISgYExZgJYvt3TNeqXQvD+FODkamzE
PABgHx8p9uI6WQNarLj5obpF89UZf3h5S1lVxAu7gLF28XcQTZ3nKcQPDc04Wjwy
SxfUPOM8ZrWrssBFmHH2zaIKB1MkCEaU3kOMYrUcfYPpLQk/Q3/L0xQeIFXerY1o
IsmT7mby0Ipq8U902KYHWQy+pFC4WamDiTtuhL3byX4oHjXLr3lNeEl88w/6V/Fq
y8zuHjyDBQ2TfNGEyxbOyG2zj4JrhNZx0dsvSxtKoByH0/iyBDqOeECpqMwRzKSV
dGb5IzsaTV4lf//J44ZBNQlE+O31+orE/wCs14YmXaZDhmFIkSvjzg92aIaEUXp0
qO+WJ0U4R3abNRFZXQlpXq/hxDlFx/SRe4IaczWjTjajRyu2nvHn5g0LpAbzM1Ck
bIJbvI8P/VVweppksNptY2aiwuG4fbpKYQ4ydEJFmf2LMBPy+QPQuJL6ZOW2qUE9
bfl/+E1SyTlZC1OIvV1F
=+M0x
-----END PGP SIGNATURE-----

--pf9I7BMVVzbSWLtt--
