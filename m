X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1874" "Sunday" "6" "March" "2016" "22:04:49" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160307030449.013306C0719@smtpvmsrv1.mitre.org>" "52" "[oss-security] Re: CVE Request: Dotclear: XSS vulnerability in comments managment page and media exclusion control enforcement" nil nil nil "3" "2016030703:04:49" "[oss-security] Re: CVE Request: Dotclear: XSS vulnerability in comments managment page and media exclusion control enforcement" (number mark "U       cve-assign@m Mar  6   52/1874  " thread-indent "\"[oss-security] Re: CVE Request: Dotclear: XSS vulnerability in comments managment page and media exclusion control enforcement\"\n") "<20160305134841.GA3099@eldamar.local>" ("<20160305134841.GA3099@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24474 invoked by uid 550); 7 Mar 2016 03:05:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24455 invoked from network); 7 Mar 2016 03:05:00 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160305134841.GA3099@eldamar.local>
Message-Id: <20160307030449.013306C0719@smtpvmsrv1.mitre.org>
Date: Sun,  6 Mar 2016 22:04:49 -0500 (EST)
Subject: [oss-security] Re: CVE Request: Dotclear: XSS vulnerability in comments managment page and media exclusion control enforcement

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Dotclear, a web publishing software, fixed a cross-site scripting
> vulnerability in 2.8.2. Additionally the media exlusion control in the
> media manager was furhter enforced:
> 
> https://dotclear.org/blog/post/2015/10/25/Dotclear-2.8.2

> The XSS vulnerability was fixed with
> 
> https://hg.dotclear.org/dotclear/rev/65e65154dadf
> 
> admin/comments.php
> -  form::hidden(array('author'),preg_replace('/%/','%%',$author)).
> +  form::hidden(array('author'),html::escapeHTML(preg_replace('/%/','%%',$author))).

Use CVE-2015-8831.


> The second mentioned issue was addressed with
> 
> https://hg.dotclear.org/dotclear/rev/198580bc3d80
> 
> inc/core/class.dc.core.php
> -  array('media_exclusion','string','/\.php[0-9]*$/i',
> +  array('media_exclusion','string','/\.(phps?|pht(ml)?|phl)[0-9]*$/i',

Use CVE-2015-8832.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW3O4DAAoJEL54rhJi8gl5MnsQALSILA8PaHLFRRQbrXcz43e/
PGGgyWrqqZQY5KvfLkDmcTSR7D9JuIFfQa0jU6I88h62PZ0jk8nWwrWdozOchgZW
fyO2Zbdh3BMO3RW+hMnTpKVq66WvSFSs1vFIAG6y44RY7ddWCjVLWYw1r7MJnnNW
gzyqH4QrMUFMr3eki8rWOWXX4gCZ104D25eChC406M08QGBO77xSYn5llK68CraS
2HRFuVtUleHMgS/JkBS6VWd2dBYNQPaHtIUM+THvDePh9HV+J4jrS24qc6cDEsHR
uFP/8oAn47ob8sJeSfdZp4Rqq8r12aOFsHReCQa69N/gaXtLdEFAuKJSx+yCClAR
v0XcmlWUeum/3zr+/vTBXj+K+IESHPOWZl6YxuW125c1KgSba2rkeuORT/nq4R1l
vraRd479fpA22+s5ii81EjxtEgGMKT/woHdxlJRgJeBCtiuXRYcoanS4QmNfw00C
wasOMNYaaYwJtBOMDEgCLFZlvO3/7EuWPFZidoKTGc58o4fwz3TXEG7Ez8rVL9EF
CaIzjl9wx5MLaLQhj6G8SgM3+mtDPN7/yLfDj0E7nhSsY9Sr98NXdlBIvrEbkNGK
FBOFE/xQxzNKSDQI7+p+7pQ5drpIK/53GwcgVw4dbepNgJNn6DQVzDhiN92o+Kwx
vMgmqdP5oqnZIf7Ya+V7
=0vja
-----END PGP SIGNATURE-----
