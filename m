X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1412" "Thursday" "3" "September" "2015" "21:02:50" "+0200" "Florian Weimer" "fweimer@redhat.com" "<55E8995A.9040901@redhat.com>" "34" "Re: [oss-security] Two new vulnerabilities in BIND: CVE-2015-5722 and CVE-2015-5986 are now public" nil nil nil "9" "2015090319:02:50" "[oss-security] Two new vulnerabilities in BIND: CVE-2015-5722 and CVE-2015-5986 are now public" (number mark "        fweimer@redh Sep  3   34/1412  " thread-indent "\"Re: [oss-security] Two new vulnerabilities in BIND: CVE-2015-5722 and CVE-2015-5986 are now public\"\n") "<55E7618E.1020301@isc.org>" ("<55E7618E.1020301@isc.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22347 invoked by uid 550); 3 Sep 2015 19:03:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22322 invoked from network); 3 Sep 2015 19:03:05 -0000
References: <55E7618E.1020301@isc.org>
X-Enigmail-Draft-Status: N1010
Message-ID: <55E8995A.9040901@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <55E7618E.1020301@isc.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Cc: ISC Security Officer <security-officer@isc.org>
Date: Thu, 3 Sep 2015 21:02:50 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Two new vulnerabilities in BIND: CVE-2015-5722 and
 CVE-2015-5986 are now public
To: oss-security@lists.openwall.com

On 09/02/2015 10:52 PM, ISC Security Officer wrote:
> Please be advised that ISC publicly announced two critical
> vulnerabilities in BIND:
> 
> + CVE-2015-5722 is a denial-of-service vector which can be
>   exploited remotely against a BIND server that is performing
>   validation on DNSSEC-signed records. All versions of BIND since
>   9.0.0 are vulnerable.
>   https://kb.isc.org/article/AA-01287

Your patch had quite good obfuscation, and it took me a while to see
where the actual fix was.  Was this deliberate?

But anyway, we can confirm it's exploitable over the network.  Nice
analysis, I would not have immediately seen that if I only had Hanno's
reproducer.

For validating recursors, it's actually quite a bit worse than
CVE-2015-5477 because CVE-2015-5722 does not require a completely
crafted query, just an attacker-controlled QNAME (which can be in the
in-addr.arpa or ip6.arpa tree) is sufficient.  So attacks could be
reflected through basically anything.

> + CVE-2015-5986 is a denial-of-service vector which can be used
>   against a BIND server that is performing recursion and (under
>   limited conditions) an authoritative-only nameserver.
>   Versions of BIND since 9.9.7 and 9.10.2 are vulnerable.
>   https://kb.isc.org/article/AA-01291

This can't be reflected as easily, only through applications that use
the affected record type.

-- 
Florian Weimer / Red Hat Product Security
