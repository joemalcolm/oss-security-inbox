X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2411" "Thursday" "17" "September" "2015" "10:25:30" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150917142530.46F9A52E1E7@smtpvbsrv1.mitre.org>" "55" "[oss-security] Re: CVE Request: TOTP Replay Attack in Ruby library \"devise-two-factor\"" nil nil nil "9" "2015091714:25:30" "[oss-security] Re: CVE Request: TOTP Replay Attack in Ruby library \"devise-two-factor\"" (number mark "        cve-assign@m Sep 17   55/2411  " thread-indent "\"[oss-security] Re: CVE Request: TOTP Replay Attack in Ruby library \"devise-two-factor\"\"\n") "<C9CE8540-74F4-48C4-9416-76827CF2CCF7@justinbull.ca>" ("<C9CE8540-74F4-48C4-9416-76827CF2CCF7@justinbull.ca>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31950 invoked by uid 550); 17 Sep 2015 14:25:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31930 invoked from network); 17 Sep 2015 14:25:42 -0000
In-Reply-To: <C9CE8540-74F4-48C4-9416-76827CF2CCF7@justinbull.ca>
Message-Id: <20150917142530.46F9A52E1E7@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 17 Sep 2015 10:25:30 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: TOTP Replay Attack in Ruby library "devise-two-factor"
To: me@justinbull.ca

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Date: Sun, 6 Sep 2015 11:55:41 -0400

> Given an attacker already knows a victim's credentials, they could
> "shoulder surf" the victim's second factor device, obtaining the OTP,
> and login with the known credentials & OTP within the current
> time-step (a default 30 second window). This defeats two-factor
> authentication for the duration of the time-step.

This 2015-09-06 message is directly related to a discussion of CVE
assignment here on 2015-06-22, but doesn't mention that that
discussion had occurred. Specifically:

  http://www.openwall.com/lists/oss-security/2015/06/22/2

  From: cve-assign@mitre.org

  devise-two-factor can potentially have a CVE ID. As you mentioned, the
  attack surface is somewhat narrow, and it might make more sense to see
  how the devise-two-factor vendor announces the update. For example, if
  the vendor makes a code change to prevent multiple submissions and
  describes the code change as resolving a vulnerability, then there can
  be a CVE ID.

The vendor did all of that, so we're assigning CVE-2015-7225.

[ relevant parts include 'to protect against "shoulder-surfing" attacks' in
https://github.com/tinfoil/devise-two-factor/blob/master/UPGRADING.md and
'While a valid security issue, this is a very narrow vulnerability' in
https://github.com/tinfoil/devise-two-factor/issues/45#issuecomment-139335608 ]

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJV+sz+AAoJEL54rhJi8gl5FkUQAIUNoqnHZHkc6ZY5OXkG1Si+
UIiPAUEtxTXe067zoZjEzqlsjzexzh0ld96XzD0kmfrCR0O/4tddpyX6n5Q7ooqI
VrVp+UDJO36/qDW/ODlxjbJoWD02TdHlWd5gZVb4h7uBSKbj4PItDAMx5VGZbJgP
msCoSOVG48odcGdbOKXR+Bb0zQQURq0s9Qxqwi28MT3IAXlyz9jjSrgyd7W4J87m
+SrS+dL8gH22BA0rNI7UUNeCRpBOmUt9i1QPRRi9nmPjTmBtGZ1AxUXQj/VFTe1c
fcwyvTHBsAslavhVEwbN2IzO+8ycuP55NVW90e2v2k977kHSTjiEpdJ8b3Hl7BtR
2Tu+uZjHIUvNoLznhag/+f9LL3yhxdpgPXlmYQNFeKcsaIxiXxaNF6zg8soRQDMi
f0hMP8yfBkwzSVZY2xl1QeZyww00+RY45WvLPilH7fkoCZmsT3ftxfQkurNViFAU
zCDyKmQIaHXIpcOrC9qLuWmSE02NB8Qod+XkBGOd1/tRDxzMBYoVSDabFfS3npBZ
qDK13djTq8rZKhlXrzdeTrmW5RwDhZrZSrNcdAh140lIL9DwkD/6n/JAubfH68Gn
uFGwgRSCUbNUP8nLJ97Rv81NHNP+XYcd+X3mHumJpPf/R94/dEwkAoi6ytQsE5pr
s9eZT7jONl8mzpQL1Vzl
=aeha
-----END PGP SIGNATURE-----
