X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3496" "Tuesday" "8" "September" "2015" "13:44:17" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150908174417.E871A6C0066@smtpvmsrv1.mitre.org>" "80" "[oss-security] Re: CVE Request: more php unserializing issues" nil nil nil "9" "2015090817:44:17" "[oss-security] Re: CVE Request: more php unserializing issues" (number mark "        cve-assign@m Sep  8   80/3496  " thread-indent "\"[oss-security] Re: CVE Request: more php unserializing issues\"\n") "<20150819094945.GD6584@suse.de>" ("<20150819094945.GD6584@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30588 invoked by uid 550); 8 Sep 2015 17:44:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30567 invoked from network); 8 Sep 2015 17:44:30 -0000
In-Reply-To: <20150819094945.GD6584@suse.de>
Message-Id: <20150908174417.E871A6C0066@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue,  8 Sep 2015 13:44:17 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: more php unserializing issues
To: meissner@suse.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

The CVE IDs in this message apply to PHP before 5.4.44, 5.5.x before
5.5.28, and 5.6.x before 5.6.12.

> These look like they can be exploited for code execution.

There is related discussion in the
http://www.openwall.com/lists/oss-security/2015/02/05/5 post. The
essential question is whether there should be a new CVE ID for every
report where exploitation depends on the attacker's ability to control
the argument to unserialize. We think these reports are important to
relatively few people, i.e., either because their applications don't
allow arbitrary input to unserialize, or because their applications do
allow arbitrary input to unserialize and there's already a much
simpler attack approach available. In other words, in practice, no
privilege boundary is crossed. However, it's conceivable for an
application to have constraints on how unserialize is used, such that
many attacks are blocked, but these remote-code-execution attacks
involving use-after-free bugs aren't blocked. For example, see some of
the discussion linked from the
https://wiki.php.net/rfc/secure_unserialize page.


> https://bugs.php.net/bug.php?id=70166
> https://bugs.php.net/bug.php?id=70155 (dup)
> Use After Free Vulnerability in unserialize() with SPLArrayObject
> 
> https://bugs.php.net/bug.php?id=70168
> Use After Free Vulnerability in unserialize() with SplObjectStorage
> 
> https://bugs.php.net/bug.php?id=70169
> Use After Free Vulnerability in unserialize() with SplDoublyLinkedList

In the current case, we feel it is best to combine a number of
taoguangchen@icloud.com discoveries into one CVE. Use CVE-2015-6831
for 70155/70166/70168/70169.


> https://bugs.php.net/bug.php?id=70068
> Dangling pointer in the unserialization of ArrayObject items
>         impact: remote code execution

Use CVE-2015-6832 for this sean.heelan@gmail.com discovery.


> https://bugs.php.net/bug.php?id=70019
> Files extracted from archive may be placed outside of destination directory

Use CVE-2015-6833. This seems to be a marginal case in which the issue
can be interpreted as a security enhancement because the vendor
(2015-07-08 14:30) states that the behavior was intended. However, for
most people, "Extract the contents of a phar archive to a directory"
(see the http://php.net/manual/en/phar.extractto.php page) probably
doesn't suggest that an arbitrary set of directories can be chosen by
the author of the archive. Also, we already have CVE-2008-5658.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJV7xyyAAoJEL54rhJi8gl5JmQQAK6PYuPa3hQJQLwPzyvjhmIa
5mpVQFRiLm+A/uY7uYOtGTUgqfCS5W0nJGkqlzf9djt4wLeY5vYC+4ihfHyKZLfN
2TY0jTEYNP2aLKPm5yBDZftI725R63MmC89MTzuAsylom4Zz192gqlQQtFIP/xQj
xt00diyJpagCX86wLi/DaIdmdDaRwK6UIbjcMmfcwLGxTq9UUJsNlm9qVqrXOJFc
WwhtqNsnh8WUZgAvA8GlyGaXgiHzfszNE+n+mz0KKxYNyDUKaVQkfpaekM904WjG
f0yQNBvJk33t6AjAxzmBIamltUpipRg1joKS/afQV/cot8wzEtCMloE6XJgTXZm0
MIKbzC1iYe7HqXR5KFHPDSU2x3y4J1sRGu0Wx6tFZ++2Icgz0eqm9emgxvuUzPqD
r9YnKSQy7cvPA3gXUwwp++3PNvTbuJLJGZt6fKBkM2uFcd/Mh6+RoEc62QuhvJ6/
75ixk8s7yfTzDt7IHxBfqQ9hEtq455vligCt8m55n4GXJ/uAN5Pqs6tdnFvp1bwa
rAky6ucUoma/cb1Z25vCh4b9zLS+w5A1+BrZ1uaAI4U2BlUPOhepZg8YDhGLiv6o
JMRxReO6Slfa2qdT1x4aGL2T4lnacCumMbPlrsED/qLOdIgBv9IjX0lUXKGu30yT
TRCdGfALD7wzyv/cUAoQ
=hXh2
-----END PGP SIGNATURE-----
