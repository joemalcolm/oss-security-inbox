X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1811" "Friday" "4" "September" "2015" "07:35:01" "+1000" "Mark Andrews" "marka@isc.org" "<20150903213501.F09D236BD1B8@rock.dv.isc.org>" "43" "Re: [oss-security] Two new vulnerabilities in BIND: CVE-2015-5722 and CVE-2015-5986 are now public" nil nil nil "9" "2015090321:35:01" "[oss-security] Two new vulnerabilities in BIND: CVE-2015-5722 and CVE-2015-5986 are now public" (number mark "        marka@isc.or Sep  4   43/1811  " thread-indent "\"Re: [oss-security] Two new vulnerabilities in BIND: CVE-2015-5722 and CVE-2015-5986 are now public\"\n") "<55E8995A.9040901@redhat.com>" ("<55E7618E.1020301@isc.org>" "<55E8995A.9040901@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 4029 invoked by uid 550); 4 Sep 2015 06:49:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5185 invoked from network); 3 Sep 2015 21:35:19 -0000
References: <55E7618E.1020301@isc.org> <55E8995A.9040901@redhat.com>
In-reply-to: Your message of "Thu, 03 Sep 2015 21:02:50 +0200."
             <55E8995A.9040901@redhat.com>
Message-Id: <20150903213501.F09D236BD1B8@rock.dv.isc.org>
Cc: oss-security@lists.openwall.com,
    ISC Security Officer <security-officer@isc.org>
Date: Fri, 04 Sep 2015 07:35:01 +1000
From: Mark Andrews <marka@isc.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Two new vulnerabilities in BIND: CVE-2015-5722 and CVE-2015-5986 are now public
To: Florian Weimer <fweimer@redhat.com>


In message <55E8995A.9040901@redhat.com>, Florian Weimer writes:
> On 09/02/2015 10:52 PM, ISC Security Officer wrote:
> > Please be advised that ISC publicly announced two critical
> > vulnerabilities in BIND:
> > 
> > + CVE-2015-5722 is a denial-of-service vector which can be
> >   exploited remotely against a BIND server that is performing
> >   validation on DNSSEC-signed records. All versions of BIND since
> >   9.0.0 are vulnerable.
> >   https://kb.isc.org/article/AA-01287
> 
> Your patch had quite good obfuscation, and it took me a while to see
> where the actual fix was.  Was this deliberate?

No, just cleaning up failures to use the api designed to stop the
bug in the first place by keeping the two values in consistent.
 
> But anyway, we can confirm it's exploitable over the network.  Nice
> analysis, I would not have immediately seen that if I only had Hanno's
> reproducer.
> 
> For validating recursors, it's actually quite a bit worse than
> CVE-2015-5477 because CVE-2015-5722 does not require a completely
> crafted query, just an attacker-controlled QNAME (which can be in the
> in-addr.arpa or ip6.arpa tree) is sufficient.  So attacks could be
> reflected through basically anything.
> 
> > + CVE-2015-5986 is a denial-of-service vector which can be used
> >   against a BIND server that is performing recursion and (under
> >   limited conditions) an authoritative-only nameserver.
> >   Versions of BIND since 9.9.7 and 9.10.2 are vulnerable.
> >   https://kb.isc.org/article/AA-01291
> 
> This can't be reflected as easily, only through applications that use
> the affected record type.
> 
> -- 
> Florian Weimer / Red Hat Product Security
-- 
Mark Andrews, ISC
1 Seymour St., Dundas Valley, NSW 2117, Australia
PHONE: +61 2 9871 4742                 INTERNET: marka@isc.org
