X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1703" "Wednesday" "9" "March" "2016" "18:16:38" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160309231638.532136C0402@smtpvmsrv1.mitre.org>" "44" "[oss-security] Re: Heap use after free in Pidgin-OTR plugin" "^Cc:" nil nil "3" "2016030923:16:38" "[oss-security] Re: Heap use after free in Pidgin-OTR plugin" (number mark "        cve-assign@m Mar  9   44/1703  " thread-indent "\"[oss-security] Re: Heap use after free in Pidgin-OTR plugin\"\n") "<20160309202145.0273729d@pc1>" ("<20160309202145.0273729d@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17656 invoked by uid 550); 9 Mar 2016 23:16:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17621 invoked from network); 9 Mar 2016 23:16:49 -0000
In-Reply-To: <20160309202145.0273729d@pc1>
Message-Id: <20160309231638.532136C0402@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed,  9 Mar 2016 18:16:38 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Heap use after free in Pidgin-OTR plugin
To: hanno@hboeck.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blog.fuzzing-project.org/39-Heap-use-after-free-in-Pidgin-OTR-plugin.html
> 
> The pidgin-otr plugin version 4.0.2 fixes a heap use after free error.
> The bug is triggered when a user tries to authenticate a buddy and
> happens in the function create_smp_dialog.
> 
> This bug was already independently discovered and reported in the otr
> bug tracker.
> https://bugs.otr.im/issues/88
> 
> Upstream bug report (contains Address Sanitizer stack trace):
> https://bugs.otr.im/issues/128
> Commit / fix:
> https://bugs.otr.im/projects/pidgin-otr/repository/revisions/aaf551b9dd5cbba8c4abaa3d4dc7ead860efef94

>> gtk-dialog.c

Use CVE-2015-8833.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW4K5zAAoJEL54rhJi8gl5qJIP/0TSzlXZQnc69Kt5bNsE2ovq
VwQkjUo4BiwB5ewuoSyNjDtEIrqOFSVesEFRFK33QfLCVELk7NtRf4QCMHgW6TuZ
HiK3grAbg8PtbcvMsKQTlo55BrZ5YBovXAsYmMeBmuZ7pp8wNYjAMvtjnnlwBesF
20nxsVSjVmQUAwUSgtrdQXMqXlNltcsq8HhXOSkTBFxTk/R6J/KfoW33EfcxFv0s
5zy/SU/sU6rI/0Gy4t4pPs/c2j7ApA9SmYfBel6xpdnCb2u3GSczz7O6+jEcRNzB
IqxvAOMkeIGHc0QHOd9naYkW2gyIP3Y0s4fTydzHrfU/aQ1ICWH0FHAcmcJIRKvF
diV7f1td8yzDlbk+TAsrp5RyxhzkagIJLeJhASYguPz5yELqS6cYqb4ie5LageNd
UBji9ulEPgHaAmQPMOZH6oJZE9YO9HKWJ3HOmEQ11DrbHlXkYA6ez0oLu53gRxB9
wuyo01YH7hF+FhMxRUL7RYNwyj06dBhohlWj8rRPIAhlrp7Pc/WAsAR1c3FJgCwk
2FmfpJ6BrCMumP+6EAGpbXegbBTMCOrvgpLc7UBYNnb+PvGyfwChLBSTIwrKzhga
FyH4O8lnB925tHofpCK0OEWWHOi0N6JKlChLKwEt1eMhUk7SnRsqNjyAdV1Kqk1u
bHI5urvjRUc0ka/E3oiK
=o1S3
-----END PGP SIGNATURE-----
