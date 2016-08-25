X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3333" "Thursday" "25" "August" "2016" "10:09:32" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160825140932.642D96C458D@smtpvmsrv1.mitre.org>" "72" "[oss-security] Re: CVE request - sudoers on Red Hat, Fedora, Mageia information disclosure" nil nil nil "8" "2016082514:09:32" "[oss-security] Re: CVE request - sudoers on Red Hat, Fedora, Mageia information disclosure" (number mark "U       cve-assign@m Aug 25   72/3333  " thread-indent "\"[oss-security] Re: CVE request - sudoers on Red Hat, Fedora, Mageia information disclosure\"\n") "<20160824065811.GB7400@sin.redhat.com>" ("<20160824065811.GB7400@sin.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5597 invoked by uid 550); 25 Aug 2016 14:09:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5576 invoked from network); 25 Aug 2016 14:09:44 -0000
From: cve-assign@mitre.org
To: dmoppert@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160824065811.GB7400@sin.redhat.com>
Message-Id: <20160825140932.642D96C458D@smtpvmsrv1.mitre.org>
Date: Thu, 25 Aug 2016 10:09:32 -0400 (EDT)
Subject: [oss-security] Re: CVE request - sudoers on Red Hat, Fedora, Mageia information disclosure

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugzilla.redhat.com/show_bug.cgi?id=1339935

> The inclusion of "INPUTRC" in env_keep in /etc/sudoers allowed
> information disclosure through readline-enabled programs parsing the
> named file with elevated privileges. Local users with sudo access could
> read (portions of) specially-formatted files with elevated privileges.

> This flaw is distribution-specific - upstream sudo does not include
> INPUTRC

>> RHEL and Fedora by default include INPUTRC in /etc/sudoers, exposing
>> this issue to users of the default sudo configuration. INPUTRC should
>> not be included in "env_keep" at all, or else somehow restricted to
>> non-restricted shells (ie /bin/sh, /bin/bash).
>> 
>> It is also possible to cause segmentation fault through stack
>> exhaustion in the target application by having INPUTRC specify a file
>> with an $include directive for itself.

Use CVE-2016-7091. The scope of this CVE is the entire 'INPUTRC should
not be included in "env_keep" at all, or else somehow restricted'
problem, which has both the information disclosure and segmentation
fault outcomes.


>>>> https://lists.gnu.org/archive/html/bug-readline/2016-05/msg00012.html

>>>> Since there is already current_readline_init_include_level, maybe
>>>> implementing a max level for $include's would be worthwhile.

>>> I'll consider it for the next version.

If there is a reason that this must also be considered a vulnerability
in readline, please let us know. For example, maybe there are other
common programs that accept an INPUTRC environment variable over the
network during a login session for an authenticated attacker who is
only supposed to be able to execute a single command. Suppose that
this attacker can also create files beginning with $include (e.g., by
writing to a shared filesystem or using FTP upload). The unlimited
include level might allow much more resource consumption than
intended. Another possibility is that the INPUTRC environment variable
could specify a file that should not be read by this type of
restricted account, e.g., the /dev/zero file. However, we do not know
of a realistic attack scenario in which readline would be considered
the vulnerable software. There are no other CVE IDs -- either for
readline or for any other software -- at this time.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXvvuFAAoJEHb/MwWLVhi2ucMQAKsQXvK2gNQ6/9pOTw4h8S/o
9W2+DM+LsA2SgVI5IpsACmQqMTWN2mCPuSL/+Ba6PD7Tcda0TA7wsqfgw0kIJUEr
etlI9ifWlCwWjpO9mwhPmJAPLPj2AX65JcbdTZpEK472zJNdeF8R4+QA+FJ9y4+G
/UCkSRiH826E96shfmqadYaztcNLRtIfCgmXSiHsaRrkTyGKYIyQMynqxoqrG8Qg
tztX0rIs9oMG+1BqHdJU+aV2vHnGMTRnqoVW7oPObsfTrgBzJrMNOyoY33ZpNDMQ
GWzySg09zPt0qayktjA/tuqdkNEswq1Qirmr7Ai8rODuHBdK9+oJGMTuqC1NmaAr
ZSilLQl1mnwgPMXD9THK2Dui7th4WCPEB+pp+zQ0uDogpuknzzwuftZLuYrHPFsp
WsGiE7bEy4Uh1LK0ROLsd23bXuoYaIBj/iiQNUoEDckQYBuZRn0ZCYXyVjL7guLh
ApQ4j5zYt++h0TzolF1t+2fw3SrCVuV4OE0gdmkcaDWCVgwvc/s/+ADZJUlongG3
VTFzG8iy4gJ8F+JOrJS7qX0g+wykDtDSqPfuDAhzgkQyS6MHwOJMM8g6UtsUlyYE
LY8CaZJpLMNSf1+NbLzoHpaMt0Vys+cHOiBvwDfvwlseR9Wd91xDAOFcgxEAr8Av
GulJIV7CVPniP8lUCUhY
=B2yA
-----END PGP SIGNATURE-----
