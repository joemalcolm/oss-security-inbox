X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["804" "Wednesday" "29" "March" "2017" "23:16:15" "+0100" "Michael Young" "m.a.young@durham.ac.uk" "<alpine.LFD.2.20.1703292229380.2723@austen3.home>" "22" "[oss-security] Re: [Xen-devel] Xen Security Advisory 206 - xenstore denial of service via repeated update" nil nil nil "3" "2017032922:16:15" "[oss-security] Re: [Xen-devel] Xen Security Advisory 206 - xenstore denial of service via repeated update" (number mark "U       m.a.young@du Mar 29   22/804   " thread-indent "\"[oss-security] Re: [Xen-devel] Xen Security Advisory 206 - xenstore denial of service via repeated update\"\n") "<E1ctFAS-00024L-7B@xenbits.xenproject.org>" ("<E1ctFAS-00024L-7B@xenbits.xenproject.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1857 invoked by uid 550); 29 Mar 2017 22:21:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28205 invoked from network); 29 Mar 2017 22:17:05 -0000
Date: Wed, 29 Mar 2017 23:16:15 +0100
From: Michael Young <m.a.young@durham.ac.uk>
X-X-Sender: michael@austen3.home
To: "Xen.org security team" <security@xen.org>
CC: <xen-announce@lists.xen.org>, <xen-devel@lists.xen.org>,
        <xen-users@lists.xen.org>, <oss-security@lists.openwall.com>
In-Reply-To: <E1ctFAS-00024L-7B@xenbits.xenproject.org>
Message-ID: <alpine.LFD.2.20.1703292229380.2723@austen3.home>
References: <E1ctFAS-00024L-7B@xenbits.xenproject.org>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset="US-ASCII"
X-DurhamAcUk-MailScanner-ID: v2TMGe2g009218
X-DurhamAcUk-MailScanner: Found to be clean
Subject: [oss-security] Re: [Xen-devel] Xen Security Advisory 206 - xenstore denial of
 service via repeated update

On Wed, 29 Mar 2017, Xen.org security team wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
>                    Xen Security Advisory XSA-206
>                              version 9
>
>            xenstore denial of service via repeated update

I am seeing a build failure from these patches when using gcc 7. The 
problem is with
xsa206-4.80002-xenstored-Log-when-the-write-transaction-rate-limit-.patch 
because in tools/xenstore/xenstored_domain.c the patch adds the boolean 
wrl_delay_logged to the structure "domain" but later it tries to increment 
it, resulting in the error 
xenstored_domain.c: In function 'wrl_apply_debit_actual':
xenstored_domain.c:949:32: error: increment of a boolean expression 
[-Werror=bool-operation]
    if (!domain->wrl_delay_logged++) {

 	Michael Young
