X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2666" "Tuesday" "28" "July" "2015" "14:57:46" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150728185746.BE8E46C0099@smtpvmsrv1.mitre.org>" "61" "[oss-security] Re: CVE Request - OpenStack Designate mDNS DoS through incorrect handling of large RecordSets" nil nil nil "7" "2015072818:57:46" "[oss-security] Re: CVE Request - OpenStack Designate mDNS DoS through incorrect handling of large RecordSets" (number mark "        cve-assign@m Jul 28   61/2666  " thread-indent "\"[oss-security] Re: CVE Request - OpenStack Designate mDNS DoS through incorrect handling of large RecordSets\"\n") "<55B7A747.3050806@macinnes.ie>" ("<55B7A747.3050806@macinnes.ie>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21531 invoked by uid 550); 28 Jul 2015 18:57:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21504 invoked from network); 28 Jul 2015 18:57:59 -0000
In-Reply-To: <55B7A747.3050806@macinnes.ie>
Message-Id: <20150728185746.BE8E46C0099@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 28 Jul 2015 14:57:46 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request - OpenStack Designate mDNS DoS through incorrect handling of large RecordSets
To: kiall@macinnes.ie

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://launchpad.net/bugs/1471161

> Designate does not enforce the DNS protocol limit concerning record set sizes 

> As a result, the rendering loop in desginate-mdns can does not make progress

> Because it keeps receiving data, it does not seem it will ever run
> into a timeout (and if it does, it will try again).

> https://bugs.launchpad.net/designate/+bug/1471161/comments/5

> I think there is 2 parts to this bug:

> 1: Quotas were being bypassed as part of the v1 API.
> 2. If there was enough RRs in a RRSet MiniDNS went into a loop.
> 3. MiniDNS does not have a timeout.

Our current feeling is that it is best to have two CVE IDs: one for
the original "does not enforce the DNS protocol limit concerning
record set sizes" issue and one for the "Quotas were being bypassed"
issue. Is that OK?

The basic rationale is that the issues can be independently fixed,
i.e., regardless of how large a quota exists or whether that quota is
sensible, the "rendering loop in desginate-mdns can does not make
progress" behavior is still a relevant vulnerability. Also, even after
the loop is fixed, an installation may have its own reason for a small
quota, and thus any quota bypass is a vulnerability.

We feel that item 3, adding a timeout, can be considered a security
enhancement opportunity that should not have its own CVE ID, i.e.,
there is no report of a vulnerability that can be fixed only with a
timeout. Finally, our understanding is that multiple names are being
used to refer to the general
https://wiki.openstack.org/wiki/Designate/Blueprints/MiniDNS concept,
i.e., we think "MiniDNS does not have a timeout" is an observation
about the Designate codebase, not a third-party DNS server such as
from the https://code.google.com/p/minidns/ site. Also, we think this
part of the Designate codebase is also called designate-mdns
(misspelled as desginate-mdns) and mDNS -- these are essentially
alternative names for Designate MiniDNS.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVt9BUAAoJEKllVAevmvmsj+gH/R6TY6J5Wrq6+XvDEccKo+kb
w/s+164JE+yaPddI5yc+NjDPCXb78Fv+Hn7eOLsqUEOon78D+MxGExmrNaYh8sVb
QlJYINgMnpzT9wH7cYruEki33P6JAXO0zXR0mnvh2p9glHaRLkn7ZLsfwijMPAR+
aEjpRltb2bkP9vDk4nF3avlDPKImPM0njA59cwBVSJ0qBRMrb6Z9TixAr9l0E5Pd
wkS5rcWfWhIeiz85paU2H2iolNcfyEnDE1TX6iHFdH0U0h1y329YzUYS9gWrLFL/
iXzKdl6SfpJtDmKr7tiR0TvnTLFHXBCJ3jDer4T56bIwUq3ZhVSSArBcG7pRY2M=
=a10I
-----END PGP SIGNATURE-----
