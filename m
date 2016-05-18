X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3134" "Wednesday" "18" "May" "2016" "12:25:39" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160518162539.B5707B2E038@smtpvbsrv1.mitre.org>" "68" "[oss-security] Re: CVE Request: null pointer deref in openslp, can be triggered remotely" nil nil nil "5" "2016051816:25:39" "[oss-security] Re: CVE Request: null pointer deref in openslp, can be triggered remotely" (number mark "U       cve-assign@m May 18   68/3134  " thread-indent "\"[oss-security] Re: CVE Request: null pointer deref in openslp, can be triggered remotely\"\n") "<e21dd438-42f0-afc7-b510-cc8affd352c8@redhat.com>" ("<e21dd438-42f0-afc7-b510-cc8affd352c8@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28522 invoked by uid 550); 18 May 2016 16:25:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28504 invoked from network); 18 May 2016 16:25:52 -0000
From: cve-assign@mitre.org
To: huzaifas@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <e21dd438-42f0-afc7-b510-cc8affd352c8@redhat.com>
Message-Id: <20160518162539.B5707B2E038@smtpvbsrv1.mitre.org>
Date: Wed, 18 May 2016 12:25:39 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: null pointer deref in openslp, can be triggered remotely

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> return value from malloc isn't checked

Our guess is that this probably wasn't an intentional design choice,
and thus it's a security-related bug for some deployments. Use
CVE-2016-4912.

> https://bugzilla.redhat.com/show_bug.cgi?id=1329295

The oss-security message and the rhbz document seem to describe the
impact in different ways, i.e., "Basically return value from malloc
isn't checked ... This can be triggered remotely by sending a large
number of requests, which could possibly lead malloc to fail at one
point, causing crash via null pointer deref" versus "A remote attacker
could potentially deplete the memory of the server." For purposes of
CVE, this type of scenario is often not interpreted as two independent
problems. Roughly speaking, it is interpreted as "The unchecked malloc
return value is the primary problem. This problem becomes reachable
for reasons that aren't fully described, but those reasons might
involve a design limitation in which the memory consumption of
requests is not strictly controlled."

http://www.openslp.org/doc/html/UsersGuide/Security.html says "The
OpenSLP daemon (slpd) must run as root initially in order to bind to
the well known SLP port. However, slpd will relinquish root privileges
and suid() to the daemon user (if it exists)." Thus, maybe the
affected code is running as root with large or unbounded resource
limits in some situations.

> Because of the way memory works on modern linux systems, this one seems
> to be difficult to exploit

Maybe there is a relevant non-Linux case?
http://www.openslp.org/doc/html/faq.html says "the OpenSLP code has
proven to be very portable. It currently works on many operating
systems including: Linux, BSD, Solaris, Tru64, HPUX, UnixWare, OSR5,
and Win32."

Finally, although perhaps not related to the issue of whether a CVE ID
should exist, that Security.html page says "If you find a security
hole in OpenSLP, please bring it to the attention of the OpenSLP
maintainer" and names John Calcote. Possibly Red Hat could do this
upstream notification if that hasn't already happened.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXPJaSAAoJEHb/MwWLVhi2h4cQAJmkQyaRT0i7LKVxxfP54FCK
PPU79sWFvARo2g9W8WusHKaOFM/ebXR2FdgLOBwIxsiJ6jp7zbupgOG5t8n5T/s2
FXIgpiYUjgw04wlqEVcWIC64wYX+AiJZ3qAA2L1p69XOBz1Be0x3ngA3H6+w+i+z
o4049/nEisclSGGzAZVMxO2/hycsJwtV5LlZmMZgcMfY+9ddwm/1j84JSTjT930s
IAZxFdyymQAKGllQS8qRd3pmVVIRruDW7BhxuuzbZjRukgmExxwq7kkQ1JsQhrA+
VlQOR3AVV9oVVQMwwW5hDP9c8Fom2DnRxOkJduxvgBuUtACDlfsNUcncG68hBnJG
skBvJ9A/4jDtsQGox19UAwJcsknn3O1aE138IbPu49AfUwUNFJr/iqJAHkAoxpw6
yz6Lmb5Z7fGWQlJzFzbHS/f3/F9TNjuwet75krGO1FJl9bBJSZ/agy++x/a5fyLG
BB4eFVLhTu+b4cdQ0+08sbiSyf0eu5ro2527w4tyrj8P6pNVca3rS2BQTCiGgcBl
3kIcJ73g1KlUcJ0z3uIQWhut9A4qAm/xPV1fKNllcp6xDbX6N/CThPHWiMm70ary
8GhlVsTfjXkw+hMj9zD0jVNO64rHsodcFpoQQ3mtityguTuLY8KangerYE0E6Ztj
cqBtWstYfr4XjyyVazC1
=/rdk
-----END PGP SIGNATURE-----
