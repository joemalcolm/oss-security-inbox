X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["783" "Wednesday" "16" "March" "2016" "09:43:36" "+0100" "Tomas Hoger" "thoger@redhat.com" "<20160316094336.44ade7ea@redhat.com>" "23" "Re: [oss-security] Re: Announce: Portable OpenSSH 7.2p2 released" "^Cc:" nil nil "3" "2016031608:43:36" "[oss-security] Re: Announce: Portable OpenSSH 7.2p2 released" (number mark "        thoger@redha Mar 16   23/783   " thread-indent "\"Re: [oss-security] Re: Announce: Portable OpenSSH 7.2p2 released\"\n") "<CAOTQaXHRCrLRQ9YxbZyHOP90KkwXCCVvQd75uC1seCG101CpFg@mail.gmail.com>" ("<bffeab9e56b0b9ef@openbsd.org>" "<20160310173652.D548D33201D@smtpvbsrv1.mitre.org>" "<CAOTQaXHRCrLRQ9YxbZyHOP90KkwXCCVvQd75uC1seCG101CpFg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10136 invoked by uid 550); 16 Mar 2016 08:43:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10115 invoked from network); 16 Mar 2016 08:43:52 -0000
Message-ID: <20160316094336.44ade7ea@redhat.com>
In-Reply-To: <CAOTQaXHRCrLRQ9YxbZyHOP90KkwXCCVvQd75uC1seCG101CpFg@mail.gmail.com>
References: <bffeab9e56b0b9ef@openbsd.org>
	<20160310173652.D548D33201D@smtpvbsrv1.mitre.org>
	<CAOTQaXHRCrLRQ9YxbZyHOP90KkwXCCVvQd75uC1seCG101CpFg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Cc: oss-security@lists.openwall.com, cve-assign@mitre.org
Date: Wed, 16 Mar 2016 09:43:36 +0100
From: Tomas Hoger <thoger@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Announce: Portable OpenSSH 7.2p2 released
To: Gsunde Orangen <gsunde.orangen@gmail.com>

On Fri, 11 Mar 2016 12:34:58 +0100 Gsunde Orangen wrote:

> It should be noted, that the new openSSH 7.2p2 also includes the fix for
> CVE-2016-1908 as it had been assigned here:
> http://seclists.org/oss-sec/2016/q1/115
> 
> * SECURITY: Eliminate the fallback from untrusted X11-forwarding to
>   trusted forwarding for cases when the X server disables the
>   SECURITY extension. Reported by Thomas Hoger.

7.2p2 includes the fix, but it's not the first version that includes
it.  I see it documented in 7.2 release:

http://www.openssh.com/txt/release-7.2

 * ssh(1): eliminate fallback from untrusted X11 forwarding to
   trusted forwarding when the X server disables the SECURITY
   extension.

and patches included in 7.2p1 already.

-- 
Tomas Hoger / Red Hat Product Security
