X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1942" "Thursday" "14" "May" "2015" "17:31:41" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150514213141.4416F42E062@smtpvbsrv1.mitre.org>" "46" "[oss-security] Re: CVE request for vulnerability in OpenStack Horizon" nil nil nil "5" "2015051421:31:41" "[oss-security] Re: CVE request for vulnerability in OpenStack Horizon" (number mark "        cve-assign@m May 14   46/1942  " thread-indent "\"[oss-security] Re: CVE request for vulnerability in OpenStack Horizon\"\n") "<5552486F.4090707@enovance.com>" ("<5552486F.4090707@enovance.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17985 invoked by uid 550); 14 May 2015 21:31:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17965 invoked from network); 14 May 2015 21:31:52 -0000
In-Reply-To: <5552486F.4090707@enovance.com>
Message-Id: <20150514213141.4416F42E062@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 14 May 2015 17:31:41 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request for vulnerability in OpenStack Horizon
To: tristan.cacqueray@enovance.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Title: Persistent XSS in Horizon metadata dashboard
> Affects: version 2015.1.0

> a persistent XSS in
> Horizon. An authenticated user may conduct a persistent XSS attack by
> setting a malicious metadata to a Glance image, a Nova flavor or a Host
> Aggregate and tricking an administrator to load the update metadata
> page. Once executed in a legitimate context this attack may result in a
> privilege escalation.
> 
> https://launchpad.net/bugs/1449260

We are assigning only one CVE ID for this. Use CVE-2015-3988.

It appears that 1449260 became a public security bug on 2015-05-01 in
https://bugs.launchpad.net/horizon/+bug/1449260/comments/6 and then an
additional attack vector (Host Aggregates) was first mentioned in
https://bugs.launchpad.net/horizon/+bug/1449260/comments/10 on
2015-05-04. However, there would apparently be no reasonable way to
independently address only the attack vectors that were identified
earlier. Also, apparently the completely general description of
vectors came in from IBM (e.g., "all the other things that have
metadata" in
https://bugs.launchpad.net/horizon/+bug/1449260/comments/9 on
2015-05-04). Accordingly, it doesn't appear that an additional CVE ID
could be useful to anyone.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEbBAEBAgAGBQJVVRPAAAoJEKllVAevmvmsHP4H+KZ48Z7iwRixSwry6qAWuSw9
IW7TpU8mFfqxXyBSq4FQnILX6LReqcUnsehRVnxW4yWIOLlgiyD722ec67gVScbN
yUwrW/MPOh2ka0RBfva1YWJIyJ8qzMXgLNBlZD/aLmSpI+bSuLI4tXH0r2pxKto+
3tbXM8nCRLPcBtRkDJ5QloKBGE8Nkhd3CfKuIsfqHBTOtjBXisd6DbkNnRUULT5i
RuzzeVaugkZWZa91etRu7qCsTxD9k5N5F5rcPTbr7A1WO6Yu9Ro73pEkJ5bxDCfd
zTCpOMGbjhuhDD0LlggNVIHOxDOQsxt8L51h40D6+8bEZm7MhbUAZ0psYf9U1w==
=+K3/
-----END PGP SIGNATURE-----
