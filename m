X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2544" "Saturday" "21" "March" "2015" "20:07:50" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150322000750.AD0606C0045@smtpvmsrv1.mitre.org>" "54" "[oss-security] Re: CVE Request: Linux kernel unprivileged denial-of-service due to mis-protected xsave/xrstor instructions." nil nil nil "3" "2015032200:07:50" "[oss-security] Re: CVE Request: Linux kernel unprivileged denial-of-service due to mis-protected xsave/xrstor instructions." (number mark "        cve-assign@m Mar 21   54/2544  " thread-indent "\"[oss-security] Re: CVE Request: Linux kernel unprivileged denial-of-service due to mis-protected xsave/xrstor instructions.\"\n") "<20150321103127.GI7053@chrystal.uk.oracle.com>" ("<20150321103127.GI7053@chrystal.uk.oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1480 invoked by uid 550); 22 Mar 2015 00:08:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1457 invoked from network); 22 Mar 2015 00:08:02 -0000
In-Reply-To: <20150321103127.GI7053@chrystal.uk.oracle.com>
Message-Id: <20150322000750.AD0606C0045@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, jamie.iles@oracle.com, mr.a.xavier@gmail.com
Date: Sat, 21 Mar 2015 20:07:50 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Linux kernel unprivileged denial-of-service due to mis-protected xsave/xrstor instructions.
To: quentin.casasnovas@oracle.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Use CVE-2015-2672 for the vulnerability fixed by the
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit?id=06c8173eb92bbfc03a0fe8bb64315857d0badd06
commit.

The rest of this message can probably be skipped unless someone cares
about the details of why
http://openwall.com/lists/oss-security/2015/03/20/17 was sent.

We had previously proposed
"https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit?id=f31a9f7c71691569359fa7fb8b0acaa44bce0324 ...
had security-relevant value even though it was later determined to be
mis-protecting." This was based on your earlier phrase of "ends up
protecting the .altinstr_replacement from faulting." We now understand
that "ends up protecting the .altinstr_replacement from faulting"
actually does not ever protect anything. If the "pointer to the
instruction which might fault" points to .altinstr_replacement, this
is completely useless for preventing denial-of-service attacks. More
generally, having the "pointer to the instruction which might fault"
point to .altinstr_replacement results in absolutely zero
security-relevant value. Thus, there isn't a second CVE ID.

>>   - a ... CVE id for the
>>     https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit?id=06c8173eb92bbfc03a0fe8bb64315857d0badd06
>>     change
>
> The above commit is the fix, not a security issue.

This was just a question of commonly used, but imprecise, terminology.
In typical usage on the oss-security list, stating that a CVE ID is
for a commit means that the CVE ID is associated with the
vulnerability that the commit fixed. This imprecise terminology can
work poorly in situations where a commit fixed one security problem
but introduced a different security problem, or situations in which
there is a possible misinterpretation that that had happened.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVDgb9AAoJEKllVAevmvmsV38H/jILrMlC9sxqt4pKuP1TBTlO
sOx2AVPI5CAOFOI4L65NBUS5KeA1KF4sUczAoY/0ekR0ikT7PUxY9jOkqGnlqdEi
Y+b7+0obYvn4l6r0UUSYrGk00WEphSBq2rUw/aFZTgrYHJfahMshnUcP+wlIVcZZ
hS2b2ApAgt/Hp4lrVOfiGX1+DlquK/FM4+jWnguzwXFErykC2xuC4B966a/MsW8F
j5FJrkuet5GGVfmkXlGh8qEhGqNdKKF77XnzXoBKYYWfvYF52nyV2+G16UncMwLT
CAYtKcnlp7vyaoih9QlJwzkypeR73NTVNMH+SE6fh1IbRy98UGzCQHQWktQRjKc=
=ughl
-----END PGP SIGNATURE-----
