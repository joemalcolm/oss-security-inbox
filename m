X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1390" "Friday" "17" "August" "2018" "05:43:58" "-0400" "Frediano Ziglio" "fziglio@redhat.com" "<691585808.22602192.1534499038268.JavaMail.zimbra@redhat.com>" "43" "Re: [oss-security] spice CVE-2018-10873: post-auth crash or potential heap corruption when demarshalling" nil nil nil "8" "2018081709:43:58" "[oss-security] spice CVE-2018-10873: post-auth crash or potential heap corruption when demarshalling" (number mark "U       fziglio@redh Aug 17   43/1390  " thread-indent "\"Re: [oss-security] spice CVE-2018-10873: post-auth crash or potential heap corruption when demarshalling\"\n") "<a53a29d0-183a-490b-561b-f2ce4033c2ba@redhat.com>" ("<20180817005105.GB3712@sin.redhat.com>" "<a53a29d0-183a-490b-561b-f2ce4033c2ba@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10046 invoked by uid 550); 17 Aug 2018 10:00:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31926 invoked from network); 17 Aug 2018 09:44:10 -0000
Date: Fri, 17 Aug 2018 05:43:58 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Florian Weimer <fweimer@redhat.com>
Cc: Doran Moppert <dmoppert@redhat.com>, oss-security@lists.openwall.com, 
	Christophe Fergeau <cfergeau@redhat.com>
Message-ID: <691585808.22602192.1534499038268.JavaMail.zimbra@redhat.com>
In-Reply-To: <a53a29d0-183a-490b-561b-f2ce4033c2ba@redhat.com>
References: <20180817005105.GB3712@sin.redhat.com> <a53a29d0-183a-490b-561b-f2ce4033c2ba@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.33.32.10, 10.4.195.12]
Thread-Topic: spice CVE-2018-10873: post-auth crash or potential heap corruption when demarshalling
Thread-Index: U9ov7En8o9iLm6vPEzvxkCZZBEeidg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.49]); Fri, 17 Aug 2018 09:43:58 +0000 (UTC)
Subject: Re: [oss-security] spice CVE-2018-10873: post-auth crash or
 potential heap corruption when demarshalling

> On 08/17/2018 02:51 AM, Doran Moppert wrote:
> >      +        if (SPICE_UNLIKELY((start + 2) > message_end)) {
> >      +            goto error;
> >      +        }
> 
> These checks are still technically invalid because start + 2 is not a
> valid pointer if it points past the allocated object.
>

Technical but not real. Unless it wraps is correct. To wrap the memory
layout would have to have the kernel before the userspace and the
memory buffer at the very end of memory. Neither Linux nor Windows which
we support have these characteristics.

> This is more problematic here:
> 
> >     +            if (SPICE_UNLIKELY((start2 + 2 + cursor_u__nw_size) >
> >     message_end)) {
> >     +                goto error;
> >     +            }
> 
> If cursor_u__nw_size results in pointer wraparound, the check might fail
> incorrectly.
> 

cursor_u__nw_size is either 0 or 17, very hard to wrap, impossible in currently
supported systems as stated earlier.

> The commit message quotes the right pattern, nw_size > (uintptr_t)
> (message_end - start), but it is not used in the actual code AFAICS.
> 

Yes, check is not perfect and can be modified to support any possible
technical systems. The check uses already present helpers, I think for the
fix is better to stick to the current code, I'll see if I can support
all cases as an improve.

> Thanks,
> Florian
> 

Thanks,
  Frediano
