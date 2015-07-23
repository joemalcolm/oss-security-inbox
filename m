X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["874" "Thursday" "23" "July" "2015" "17:10:36" "+0200" "William Robinet" "william.robinet@conostix.com" "<20150723151036.GJ29897@conostix.com>" "36" "[oss-security] CVE-2015-3228 - Ghostscript - Integer overflow" nil nil nil "7" "2015072315:10:36" "[oss-security] CVE-2015-3228 - Ghostscript - Integer overflow" (number mark "U       william.robi Jul 23   36/874   " thread-indent "\"[oss-security] CVE-2015-3228 - Ghostscript - Integer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26070 invoked by uid 550); 23 Jul 2015 15:11:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26025 invoked from network); 23 Jul 2015 15:11:00 -0000
X-Virus-Scanned: Debian amavisd-new at conostix.com
Message-ID: <20150723151036.GJ29897@conostix.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Date: Thu, 23 Jul 2015 17:10:36 +0200
From: William Robinet <william.robinet@conostix.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-3228 - Ghostscript - Integer overflow
To: oss-security@lists.openwall.com

Dear oss-security list,

An integer overflow has been fixed in Ghostscript. This has been assigned
CVE-2015-3228 by Red Hat.

The bug can be triggered during the execution of the "gs" binary with a
specially crafted PostScript file with the "ps2pdf" command.

References:

Original bug report:
    http://bugs.ghostscript.com/show_bug.cgi?id=696041

Bug analysis:
    http://bugs.ghostscript.com/show_bug.cgi?id=696070

Corrective commit:
    http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=0c0b0859

Red Hat reference:
    https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2015-3228
    (should soon be publicly accessible)


William
(Please note I'm not a member of the list)

-- 
GPG Key ID/Fingerprint:
    74C7A949/B509 4137 1353 A3FC 6A87  AA06 003F A3DF 74C7 A949

Conostix S.A.
4, Rue d'Arlon
L-8399 Windhof (Koerich)
T. +352 26 10 30 61
F. +352 26 10 30 62
