X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2831" "Tuesday" "14" "July" "2015" "20:27:13" "+1200" "Amos Jeffries" "squid3@treenet.co.nz" "<55A4C7E1.8000205@treenet.co.nz>" "87" "Re: [oss-security] Squid HTTP proxy CVE request" nil nil nil "7" "2015071408:27:13" "[oss-security] Squid HTTP proxy CVE request" (number mark "U       squid3@treen Jul 14   87/2831  " thread-indent "\"Re: [oss-security] Squid HTTP proxy CVE request\"\n") "<559A65F3.80103@treenet.co.nz>" ("<559A65F3.80103@treenet.co.nz>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13470 invoked by uid 550); 14 Jul 2015 08:27:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13452 invoked from network); 14 Jul 2015 08:27:35 -0000
Message-ID: <55A4C7E1.8000205@treenet.co.nz>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
References: <559A65F3.80103@treenet.co.nz>
In-Reply-To: <559A65F3.80103@treenet.co.nz>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Tue, 14 Jul 2015 20:27:13 +1200
From: Amos Jeffries <squid3@treenet.co.nz>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Squid HTTP proxy CVE request
To: oss-security@lists.openwall.com, cve-assign@mitre.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Any assignment / info on these?

Amos

On 6/07/2015 11:26 p.m., Amos Jeffries wrote:
> Greetings,
> 
> This months release of Squid HTTP proxy, version 3.5.6, contains
> fixes for two security issues.
> 
> 
> Issue #1:
> 
> Due to incorrect handling of peer responses in a hierarchy of 2 or 
> more proxies remote clients (or scripts run on a client) are able
> to gain unrestricted access through a gateway proxy to its backend
> proxy.
> 
> If the two proxies have differing levels of security this could
> lead to authentication bypass or unprivileged access to supposedly
> secure resources.
> 
> <http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-13856
.p
>
> 
atch>
> 
> All Squid up to and including 3.5.5 are vulnerable.
> 
> (when published the advisory for this will be 
> <http://www.squid-cache.org/Advisories/SQUID-2015_2.txt>)
> 
> 
> Issue #2:
> 
> This is somewhat more obscure, and I am seeking clarification
> perhapse more than assignment.
> 
> Squid up to and including 3.5.5 are apparently vulnerable to DoS 
> attack from malicious clients using repeated TLS renegotiation 
> messages. This has not been verified as it also seems to require 
> outdated (0.9.8l and older) OpenSSL libraries.
> 
> <http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-13849
.p
>
> 
atch>
> 
> CVE-2009-3555 was mentioned by the submitter, but that was clearly 
> assigned for server-initiated renegotiation. This Squid change is 
> specifically for the client-initiated renegotiation part of the
> TLS protocol flaw.
> 
> There may be some relevant CVE already assigned, although I've
> been unable to find it. Only CVE-2011-1473 which is for the library
> itself and disputed.
> 
> So, is server software being assigned specific CVE (or a shared 
> generic one) for resolving this flaw? Please indicate which CVE
> Squid announcements should mention (if any).
> 
> 
> Thanks, Amos Jeffries Squid Software Foundation
> 

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (MingW32)

iQIcBAEBAgAGBQJVpMfhAAoJEGvSOzfXE+nL6EgP/RqJ6z+9YjsTVgPwyF9bCXfj
vVMqGvnr/pbj9fFB82Pp/Fg/8saFgDE1pV3bGI/9D4a1EPCUQ0Hlu6BgK4hY+/bG
jO/PDzppbMnd2TTa1J4XUsVLuk9COQBJjFP7d7X/GX5pnam4aXMSf5A3uWZbtzQt
6p9rZ+O23lCr8qSgIr4ekJILelj2wv8E5v7eAGqpZBAV2/IhY/rK6HL6BEC2b88X
+9oXw+cMzRdm3qhzcAAtwe2YU/qHYnlyyG+FsZ6C04ZUgx6uTh1O6uuqMn4NZ1LB
16WWAtr1GMviZXdB14xQzaUwgwtaozqf2zfujGk5G/nf4iGhPhoUCgDxhW2FRbyS
a4gua1Bd1MbkcjjOyUrTEP135LSsW9Y6YfTSD/MDS7G/3nUWF/cU/6guXFrBCjvg
RELk7J+7EtGEY+LmNiaT0Rj1yzMupxgKow8bk+jzSsCsnJGGRtQfrukvwm3PD8Tb
jCrDdZyUxFPE29ZXnmFYZHybfL0JZUQ+p6N3Eo99gI5I+hZ4ujfWbizJ8Gamht4n
RToUvf5OtP+8KcdFJrxkE3EM3/s9R9UPLoNs2sDxmzapTWBrbjdKguI02mrTRlUk
vnTw1R2ySUJIRG/Z4/BKNCYLp8MnkCodU1SntofWqmPfmLLs4gDQbF00kStwVQKn
r+tkf/ZfrIQ2b1FcOygQ
=klt3
-----END PGP SIGNATURE-----
