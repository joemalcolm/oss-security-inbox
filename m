X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2859" "Thursday" "9" "July" "2015" "15:48:51" "+1200" "Amos Jeffries" "squid3@treenet.co.nz" "<559DEF23.5000308@treenet.co.nz>" "85" "Re: [oss-security] Squid HTTP proxy CVE request" nil nil nil "7" "2015070903:48:51" "[oss-security] Squid HTTP proxy CVE request" (number mark "U       squid3@treen Jul  9   85/2859  " thread-indent "\"Re: [oss-security] Squid HTTP proxy CVE request\"\n") "<559A65F3.80103@treenet.co.nz>" ("<559A65F3.80103@treenet.co.nz>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24198 invoked by uid 550); 9 Jul 2015 03:49:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24180 invoked from network); 9 Jul 2015 03:49:20 -0000
Message-ID: <559DEF23.5000308@treenet.co.nz>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
References: <559A65F3.80103@treenet.co.nz>
In-Reply-To: <559A65F3.80103@treenet.co.nz>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Thu, 09 Jul 2015 15:48:51 +1200
From: Amos Jeffries <squid3@treenet.co.nz>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Squid HTTP proxy CVE request
To: oss-security@lists.openwall.com, cve-assign@mitre.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

CC'ing cve-assign since there has been no reply for several days.

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

iQIcBAEBAgAGBQJVne8iAAoJEGvSOzfXE+nLoKcQAKWz18aIZ3cWLfxXCMklqbF6
3cb5/22qBxXXeaPVwqhxeS/yV4hFxuWp6u9DBbALxdXYpyQoM5NTtPC+nG2a1GxY
mHV1QRgA/JMXlgjYfvOTavM3XPfTetdu83eM+36DxEk29j59rKkWsf3RQ2RNxPCo
9jORKFnS825aCG+8K0450ueP6aSP+HzazaEFQEKehA38wAzpXcAFa7aJzJJjE8Qr
RahLxuXX7LdOAG3ZMZMbgqOW9j5SgNU88+KiY/jC9yFbH1e9nT7LsnEGSszlSj2r
b/MGFzyxCLaH/Q4XiPIdRxuvAP1pYDR1c4yFBPqsgLD+R3ZAkZUthyd+nHUTcOTi
DoVfZKBexLByXXYuuTOiNeRfuKCd+ZOhH2wFDw+bhoZq1tcxPNcjOcAoJDF+mdK0
Cwwq7hSv1AlZGYOdr6ArMzKDqyq3wgaSkJKVMMxi5f4YM4bZ9kbQMunw+ez5dBq4
gtlxrq6cr44DkN2Ty6F+o2Laz32t+tpoPOH6vHz5x1CZE5yAliCgHm5u2sA6do7s
j/5aeToxMA1WPKAb2LcrZlc1ku0duVExOstXrqB70OEfqAPNqGPclISwQiiBs2yj
QIkqoDf+4HJuya7eEhjIRgbsvDgqRv6G5bd+tWHHocjATK66ddyUdGNykDDhbSYq
XVAdvU+KS19eHTngaUW6
=PHCB
-----END PGP SIGNATURE-----
