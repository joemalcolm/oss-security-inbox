X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1495" "Monday" "7" "November" "2016" "01:25:23" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<edbc8c359e6b42ed80792307cbb00430@imshyb02.MITRE.ORG>" "35" "[oss-security] Re: CVE request: Escape Sequence Command Execution vulnerability in Terminology 0.7" nil nil nil "11" "2016110706:25:23" "[oss-security] Re: CVE request: Escape Sequence Command Execution vulnerability in Terminology 0.7" (number mark "U       cve-assign@m Nov  7   35/1495  " thread-indent "\"[oss-security] Re: CVE request: Escape Sequence Command Execution vulnerability in Terminology 0.7\"\n") "<20161104165959.zifap46bmaxapmda@harbard.iaik.tugraz.at>" ("<20161104165959.zifap46bmaxapmda@harbard.iaik.tugraz.at>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19502 invoked by uid 550); 7 Nov 2016 06:25:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19484 invoked from network); 7 Nov 2016 06:25:35 -0000
From: <cve-assign@mitre.org>
To: <nicolas@braud-santoni.eu>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<security@debian.org>, <ross@kallisti.us>
In-Reply-To: <20161104165959.zifap46bmaxapmda@harbard.iaik.tugraz.at>
Message-ID: <edbc8c359e6b42ed80792307cbb00430@imshyb02.MITRE.ORG>
Date: Mon, 7 Nov 2016 01:25:23 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: Escape Sequence Command Execution vulnerability in Terminology 0.7

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Terminology 0.7.0 suffers from a bug similar to CVE-2003-0063, where an
> attacker able to print character escape sequences can modify the window
> title and then insert it back in the terminal's input buffer, resulting
> in arbitrary terminal input, including code execution as a local user.

> https://git.enlightenment.org/apps/terminology.git/commit/?id=b80bedc7c21ecffe99d8d142930db696eebdd6a5
>> src/bin/termptyesc.c

Use CVE-2015-8971.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYIB3DAAoJEHb/MwWLVhi2sDAP/2SGtSh3lURdWJgTg5e/iTrr
ts+KS9Gvi4Kzlmz2THht82pnyDyR92ViseaDUYMQRjcFjt2F/blpb3PinUq/O+er
RUGSgRJBsySNqSt8kDTNL1Xp8Zfld8nVsbH4Ok+pYzDgkj1FozCFv33hlGIOmNrU
8alWastFxk/1URgDDfHLkvtZe2OPLJhwbLCon4XMOB3KJITvsSbUMhRbVyViub0k
NUdpKSBrR+gr1NXaExELEWl2zQX2lHUpxw+SPRs8xkUaL4Zkwe5Ofd5Jac6tI+Ei
T6WynJbtxlxBHCoLrD4r0/dLP3VEdVcyK+BvypTlZwyISYlkqKNusvWRiVZdXdTT
LyHOl/TQQ60VIBvCEcFhZ15l1tvkzos+qxYUDEqIiJLorciyxsLkPLVHM6rEaJ3a
zpTKra57+CoWOJr68fwvC9rASc4TdYGEAvIBbld4u5tOSmk6mxOqz4nmv11HxAYk
oVnjXoGmZ9agErDd9eZN636IT/XWVfaPdCtf54gzfYqC04mb4onc5KU+lasX53hP
AOJgiUtwM/GbN/ffiCLCWyU5Aar9iPSFLZIc12B5xA/FxK/RktD2FEJ6TDT36vcw
pEoP1aqgFyTkVqQzxjClLYNnPjkcTsoVZGMM/VQ35zuzmy0M9Q07cFCHHTPj1PQG
io6f65LmgGjmEq+hvBEW
=HUD/
-----END PGP SIGNATURE-----
