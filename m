X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2151" "Wednesday" "27" "May" "2015" "11:28:29" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150527152829.7D3B042E0BD@smtpvbsrv1.mitre.org>" "55" "[oss-security] Re: FreeRDP tmp flaws" nil nil nil "5" "2015052715:28:29" "[oss-security] Re: FreeRDP tmp flaws" (number mark "        cve-assign@m May 27   55/2151  " thread-indent "\"[oss-security] Re: FreeRDP tmp flaws\"\n") "<556488F7.9030708@redhat.com>" ("<556488F7.9030708@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26542 invoked by uid 550); 27 May 2015 15:28:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26517 invoked from network); 27 May 2015 15:28:41 -0000
In-Reply-To: <556488F7.9030708@redhat.com>
Message-Id: <20150527152829.7D3B042E0BD@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 27 May 2015 11:28:29 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: FreeRDP tmp flaws
To: kseifried@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> This may need 2 CVE's

We think there should be zero CVEs because the report is apparently
about a developer's debugging code that was never shipped.

> ./channels/drdynvc/tsmf/tsmf_media.c
> "/tmp/FreeRDP_Frame_%d.ppm"

As far as we can tell, this code has been in an "#if 0" starting from
when the code was originally added to FreeRDP in:

  https://github.com/FreeRDP/FreeRDP/commit/dadb94a1e343648503949094a50053d81212a153

In other words, we don't think this code would ever have been
reachable by an end user. The "#if 0" also apparently exists in the
freerdp-1.0.2.tar.gz that's included in the
freerdp-1.0.2-5.el7.src.rpm file.

> ./libfreerdp-gdi/gdi.c
> #ifdef DUMP_REMOTEFX_TILES
>                        sprintf(tile_bitmap, "/tmp/rfx/tile_%d.bmp",

As far as we can tell, there is no build option for
DUMP_REMOTEFX_TILES or documentation recommending that an end user
define DUMP_REMOTEFX_TILES, either in the upstream distribution or in
a source RPM.

> Actually it looks like upstream fixed both of them already so one CVE
> can do (I don't think it's important enough to SPLIT/MERGE properly).

Even if there were a different SPLIT/MERGE process for less important
cases, a single CVE ID for issues reported in different versions would
be among the harder process changes because it affects whether (or
how) the CVE ID could be used on the cve.mitre.org web site, and
complicates some types of patch-based remediation.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVZeE3AAoJEKllVAevmvms720H/3OH+XF1lBCs6kikJbS2NQHo
eNKWfDgTyme6hFXcE1/qtQ06ct/8+kPf2QkKg7/QvSLBdVYwjqOqTsj08PtTnOqU
XaRgoEAwB8rEvaH4f56hKT41XI4tF6lrERSMPeunktVV1vcvj57BG1QxK+4WPqQv
OPyJRQjzu0om6BRwU3gViF4LhkTBUkHpL8ehEwYyxs8AIBA0lz/NKYwfAfKmA0F0
2+i+Tc/wc6JGBoP6AfqrITaHAI3SV/mRnjcB1ZQdx3jENdUnZ2Pod08OFGreaVG2
84SgeIR/IWnEpOgGYglw5qDwa7/EVhICLRbtz9QAFmaVV1FHKuXy3w/GCE3YQE0=
=s9NW
-----END PGP SIGNATURE-----
