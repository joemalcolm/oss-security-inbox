X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1341" "Monday" "23" "March" "2015" "03:36:18" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150323073618.E02576C0008@smtpvmsrv1.mitre.org>" "35" "[oss-security] Re: CVE request: Invalid pointer dereference in the GNOME librest library" nil nil nil "3" "2015032307:36:18" "[oss-security] Re: CVE request: Invalid pointer dereference in the GNOME librest library" (number mark "        cve-assign@m Mar 23   35/1341  " thread-indent "\"[oss-security] Re: CVE request: Invalid pointer dereference in the GNOME librest library\"\n") "<54F6E48A.7020005@redhat.com>" ("<54F6E48A.7020005@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23974 invoked by uid 550); 23 Mar 2015 07:36:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23953 invoked from network); 23 Mar 2015 07:36:30 -0000
In-Reply-To: <54F6E48A.7020005@redhat.com>
Message-Id: <20150323073618.E02576C0008@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 23 Mar 2015 03:36:18 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Invalid pointer dereference in the GNOME librest library
To: fweimer@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> The OAuth implementation in librest, a helper library for RESTful
> services part of the GNOME project, incorrectly truncates the pointer
> returned by the rest_proxy_call_get_url function call, leading to an
> application crash, or worse.
> 
> https://bugzilla.gnome.org/show_bug.cgi?id=742644
> https://git.gnome.org/browse/librest/commit/?id=b50ace7738ea03817acdad87fb2b338a86018329
> https://bugzilla.redhat.com/show_bug.cgi?id=1183982
> 
> The security impact was noted in 2015, although the bug was fixed in 2014.

> will lead to memory errors when the size of an int is not the same as
> a pointer

Use CVE-2015-2675.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVD8IYAAoJEKllVAevmvmsiIYH/0Ty9WFGi6JY2v9v46ZTJmJI
rXIEkrt5c2vY2HxPQse1l2pFAn5mo5UJQf1JwaXiZ8rg47KYETOMQi9aAUr3tJaP
KHcFNrIYos6ywBFQwI+J+Yzrx2oBTp/CFggyRmyvb/IHRRsVr0zryjaeH7OHxKwE
wvdibr+JMDCv1OB6odzGtRQ41QF9SlxgqcoVOby2DBR9D+tu3oTfw1ZIW5PKNLYl
UaOCWcKYBnDO0A4D8Qnnur9GOXVASzfQByBwURDfAGhzgRVYi0mU6LINZ+zpopdX
O8/lYkRTOHR/LFXPlOGNCahRXT9PeMt06drUCmsFRFWz8B1Ug/gdVuSpYGnbIko=
=0SUt
-----END PGP SIGNATURE-----
