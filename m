X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1820" "Wednesday" "21" "September" "2016" "12:29:50" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160921162950.B2DF572E020@smtpvbsrv1.mitre.org>" "47" "[oss-security] Re: CVE request for vulnerability in OpenStack Nova" nil nil nil "9" "2016092116:29:50" "[oss-security] Re: CVE request for vulnerability in OpenStack Nova" (number mark "U       cve-assign@m Sep 21   47/1820  " thread-indent "\"[oss-security] Re: CVE request for vulnerability in OpenStack Nova\"\n") "<f4140eea-595f-612b-8875-36d117aedeb0@redhat.com>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1837 invoked by uid 550); 21 Sep 2016 16:30:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1817 invoked from network); 21 Sep 2016 16:30:02 -0000
From: cve-assign@mitre.org
To: tdecacqu@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <f4140eea-595f-612b-8875-36d117aedeb0@redhat.com>
Message-Id: <20160921162950.B2DF572E020@smtpvbsrv1.mitre.org>
Date: Wed, 21 Sep 2016 12:29:50 -0400 (EDT)
Subject: [oss-security] Re: CVE request for vulnerability in OpenStack Nova

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Title: Nova may fail to delete images in resize state regression
> Affects: ==13.0.0
> 
> If an
> authenticated user deletes an instance while it is in resize state, it
> will cause the original instance to not be deleted from the compute node
> it was running on. An attacker can use this to launch a denial of
> service attack. All Nova setups are affected.
> 
> This bug is similar to OSSA-2015-017 (CVE-2015-3280) and was
> re-introduced in the first release of Mitaka version of Nova and it was
> re-fixed in nova-13.1.0.
> 
> https://launchpad.net/bugs/1589821

>> cleanup_incomplete_migrations periodic task regression with commit
>> 099cf53925c0a0275325339f21932273ee9ce2bc

>> This reverts commit 099cf53925c0a0275325339f21932273ee9ce2bc.

Use CVE-2016-7498.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX4rTJAAoJEHb/MwWLVhi2XbYQAJyHRL8m6k3pOx7KnR0yhb3r
UaUcM8iKeJlbL218NgqOcMt0TEhwq6MmhWAWWoa6ptVoVGuriZuuzEXA9QcrgEIU
GF2PEN5umuD6XDP2kqg7InlP1DkGyCU4j5nu4vqg5h31oxuxedQ2kROzUUZbeDew
6fyMpay+suYOTc2eQaP86kTqrx69B/zm0K1agR49Z1dDF/+B0J/HiPAXV+3tmwRy
XfbtQyZwIfLF4wbFmPZVMYuUZqXZhM0piRdFwmkjTiF3Wkf5neo50+qZnU3N8g7b
izWhpemQ+LhZdPEiS2XX7xB+xhZHyGxDrBXdEsf4dEc2NdpjQ4vr/fgk4c41XCvM
2DTtNQLAiTfq5P5KoFS0loAkzTH4H3IRk9iBA9ta2bK6IdDN9arZOwAdxXEgx8Ju
gdoGqGcX9dKrIqo7EMB8u2cM6pdz4BZQqJw6ceXXjBcc+ai46C+6NqwMlTnyYLs2
7gFr6J/RqQpWfQDDZA2LzQbSEFzEJhR3J6eHO/0KuPGMzFVWcAWXJPa1b99ZwTjF
fcGD56XcbJROXbSb+kPxj7kw29k5/1rxaY4qXiWXpvsBXI4juLHH7l2lVMmlLXZ6
xmyNlBIEs/tE3xnj541xAVODZjYkYNiLqvwZaNk/TAiIJ5E85IIp+Eg9r0+OxpuH
kh4a4OUoAvv//hPZkckh
=b3GM
-----END PGP SIGNATURE-----
