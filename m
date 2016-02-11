X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1766" "Thursday" "11" "February" "2016" "11:09:45" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160211160945.927E16C016A@smtpvmsrv1.mitre.org>" "42" "[oss-security] Re: Linux kernel: Flaw in CXGB3 driver." nil nil nil "2" "2016021116:09:45" "[oss-security] Re: Linux kernel: Flaw in CXGB3 driver." (number mark "U       cve-assign@m Feb 11   42/1766  " thread-indent "\"[oss-security] Re: Linux kernel: Flaw in CXGB3 driver.\"\n") "<929915505.18990807.1455190810330.JavaMail.zimbra@redhat.com>" ("<929915505.18990807.1455190810330.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1790 invoked by uid 550); 11 Feb 2016 16:09:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1771 invoked from network); 11 Feb 2016 16:09:57 -0000
From: cve-assign@mitre.org
To: wmealing@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <929915505.18990807.1455190810330.JavaMail.zimbra@redhat.com>
Message-Id: <20160211160945.927E16C016A@smtpvmsrv1.mitre.org>
Date: Thu, 11 Feb 2016 11:09:45 -0500 (EST)
Subject: [oss-security] Re: Linux kernel: Flaw in CXGB3 driver.

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The kernel would incorrectly misinterpret the congestion as an error
> condition and incorrectly free/clean up the skb. When the device would
> then send the skb's queued, these structures would be referenced and
> may panic the system or allow an attacker to escalate privileges in a
> use-after-free scenario.
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1303532
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=67f1aee6f45059fd6b0f5b0ecb2c97ad0451f6b3

>> iw_cxgb3: Fix incorrectly returning error on success

>> The cxgb3_*_send() functions return NET_XMIT_ values, which are
>> positive integers values. So don't treat positive return values
>> as an error.

Use CVE-2015-8812.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWvLGDAAoJEL54rhJi8gl57ccP/i7P/Xbr+IaRUk+au68bEyZN
sHQgp11Wtr/HqXIiWStT8RKXvtawLfaV85TvrbfjGk/nqnkVHbHoN2cdxC2uJ7xY
8wxTxFqp/Wbficv8WqgB0u5f0TF/1TqHAqKf96KP3CriXrCOtkOc1hx74NhmFjot
pcET5/eAuQo6/AjlY7TYQeSz+3G9AOXzLsFEb3Lx5LabeKPM0tgjzWJ1IJW5kHLh
XL84Gg13K0Bmbu3XNj2a5yljPjCRv3qUChPuSd28u46Kks6KbYcmhYZJZ6kylgGR
IlqygWH5G7q/sKLDrqii/QUe4nu1tKevAd7XwMpghiVSb46+YrsAXIkpSnR8/cPd
9gZypJTefYhE4DWjSCMCoQLuYua0tTBy7ux0ddRNBPPIg2fvmEYQh+k2L7fHSFAR
PZwqzB9m96LUlmrlN5JNdpJ17KofwEe31DO0OqIR3oDM+YekmvkeH26Mqf9ptYO+
AsLkK3ETCgbaF+qFdj0w/zUWn0gDjh4jZ8cqFg5K6KmPPXGI7NNIGPucqPsgreav
5ZypVYSxiy9PDYribiTjPFiWjP39I4DGXfkWrCtAvYSk8XZ9R+RMV8SdX4ESEguY
7j0U0QCrAz8FQ9jZbB5IYXJFGDfifA5ZfGlAGat6ErFAZu7dubuwu9cCPV7FdrTf
7OzqpxKgRFFRMU/A8fGk
=uNQt
-----END PGP SIGNATURE-----
