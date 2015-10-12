X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2152" "Tuesday" "13" "October" "2015" "03:05:28" "+1300" "Amos Jeffries" "squid3@treenet.co.nz" "<561BBE28.4010003@treenet.co.nz>" "57" "Re: [oss-security] Re: CVE Request: squid: Nonce replay vulnerability in Digest authentication" nil nil nil "10" "2015101214:05:28" "[oss-security] Re: CVE Request: squid: Nonce replay vulnerability in Digest authentication" (number mark "        squid3@treen Oct 13   57/2152  " thread-indent "\"Re: [oss-security] Re: CVE Request: squid: Nonce replay vulnerability in Digest authentication\"\n") "<20151011180457.0EFED332338@smtpvbsrv1.mitre.org>" ("<20151011180457.0EFED332338@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27886 invoked by uid 550); 12 Oct 2015 14:06:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27864 invoked from network); 12 Oct 2015 14:06:17 -0000
References: <20151011180457.0EFED332338@smtpvbsrv1.mitre.org>
X-Enigmail-Draft-Status: N1110
Message-ID: <561BBE28.4010003@treenet.co.nz>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <20151011180457.0EFED332338@smtpvbsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Date: Tue, 13 Oct 2015 03:05:28 +1300
From: Amos Jeffries <squid3@treenet.co.nz>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: squid: Nonce replay vulnerability
 in Digest authentication
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 12/10/2015 7:04 a.m., cve-assign@mitre.org wrote:
>> Upstream fixed a security issue in digest_authentication
> 
>> allow disabled user or users with changed password to access the 
>> squid service with old credentials.
> 
>> http://bazaar.launchpad.net/~squid/squid/3.4/revision/13211 
>> http://bazaar.launchpad.net/~squid/squid/3.5/revision/13735 
>> http://bugs.squid-cache.org/show_bug.cgi?id=4066
> 
> As far as we can tell, there is only one vulnerability -- it is 
> associated with 
> http://bugs.squid-cache.org/show_bug.cgi?id=4066#c3
> 
> Use CVE-2014-9749.
> 
> We aren't currently providing any statement about the affected 
> versions for this vulnerability. It is possible that 
> http://bugs.squid-cache.org/show_bug.cgi?id=4066#c7 implies that 
> 3.5.x wasn't ever vulnerable, but that the 3.5.x code was replaced
>  anyway because it had used too slow of an approach to preventing 
> the vulnerability.
> 
> 

3.5 had the same issue before patching. But additional
fix was required for a secondary bug found once the main issue was
patched.

The released versions I am currently aware of having this issue are:
 3.4.4 -> 3.4.11 inclusive
 3.5.0.1 -> 3.5.1 inclusive

versions older than 3.4.4 have not been investigated yet to my knowledge
.

Amos
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (MingW32)

iQIcBAEBAgAGBQJWG74oAAoJEGvSOzfXE+nL8UkP/2OTwe7gan2vyikTgEitEXaV
sNK6ardED+2cEoyeg0+bQMuOyNzRezH19KSTUpkWQhufABbgOoYvj0oGRAofCWeL
uQNs1TWNuZsV9kyaZxtV/O7wvmP3RijxRBE9SFb8wNGF5I7lZltTaP18SCRFgV3j
WX5rAhJ+HVbt78dAcwZ75rW/maThk3Q7371cMpLNbrj8pGS5FRb088fmViJpJb2i
7lqbi2Q1yt4C9LLrWL82Ran692U2KJThTIHFvpS44cfdBsjeXfmUPVnpFYcb9KrK
Jow+xTvE+CFpHEDxwCZ813FDs/fXDihk1do3frEsKAJeVspcrkHAJu2nIG1sEsot
tvOVG/4tL1yeblLthHiwxu2ooobvXo8FAhlzwHdPfdhpwLGMQeSZ9V27BVTnq5XN
YpgXBGw60GxjNC2+OBl5zoNu04YykbSXpVLm7UgI3oiQaNcihpWw5SKZ26Ek6CX2
iWnskSYr+sfA1tw2wCAFb8lWRwJg3FlRFUe3oz9mu5jHXhUBE3yhNBKW0QG1gmaZ
GijAuTIgZo9BCeZFzgXDqIEbbWTP5p4o6FeavDPHVBl2po0Pi0yyWEP4temv4IeX
VK4A2jFkh3N9etY1GHuR3lJjevdiSP6M94KIlgzMhYZ2HwH9Mn99fUyXrhX5RMNF
V1UCNUYmRHWVPtYtCtW9
=tjwj
-----END PGP SIGNATURE-----
