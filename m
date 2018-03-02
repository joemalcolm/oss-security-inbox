X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2123" "Friday" "2" "March" "2018" "04:58:50" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty09HPfSbp8QsZHU24EnEyzOw1H1C-Zr+7mqwDhOG6=HYg@mail.gmail.com>" "64" "Re: [oss-security] memcached UDP amplification attacks" "^Date:" nil nil "3" "2018030211:58:50" "[oss-security] memcached UDP amplification attacks" (number mark "        kseifried@re Mar  2   64/2123  " thread-indent "\"Re: [oss-security] memcached UDP amplification attacks\"\n") "<20180302124428.440b9c3b@pc1>" ("<20180302124428.440b9c3b@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19982 invoked by uid 550); 2 Mar 2018 11:59:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19958 invoked from network); 2 Mar 2018 11:59:03 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=dsFAEdsVo27RlKnfJys2E72WPXaK7bz7FenrSFrjYIc=;
        b=qIRTLLLsLWoeZ4oK7vNW6kBv4XE9TbTaILmMc4nmsHy0thcxf8EOKSzZtUMeQf6I5C
         xJXLsC+oESkE/Ph6qd7Zg0GkdZkTydp+A+9rqRhwmuBp2LsAbMB0eQ63YTN+WhzmR6Dq
         UkYdwOMyPOe4/TkXlJq/EElo57zxLzUri41LrqbNEnJharew1zF4rxtgYO4sT13YgDz+
         wP7T6m7oF0j6eDHRNPO1U6ytYfCRCGWBdvR1F9ZoDo8bmQYCUX04rOTk3htaZq7BR65q
         b49rmipPRrtbX5yV+guF1qJCFEHQAj6L8hWiTOG5MIXH4iqFgkOACkoGAa1h88fuYujd
         Wy4Q==
X-Gm-Message-State: AElRT7GlrMkaCGgUCaUQzs20ntIcbDeTK4Die5oiI+EtVtSnm68xcw0S
	+gsokfebPEOqaBvjsSw7t5A3WOWn3taksxXldNQvfeFW
X-Google-Smtp-Source: AG47ELsOqddThcrri4gS1kZHnnGXwWEYUc9X7UptDhEqSwBth37s6Nw1ugqHwYlv6XQ5XuPXmhUK4Bi0pzR0qSoE1pc=
X-Received: by 10.202.43.8 with SMTP id i8mr3239796oik.343.1519991931208; Fri,
 02 Mar 2018 03:58:51 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20180302124428.440b9c3b@pc1>
References: <20180302124428.440b9c3b@pc1>
Message-ID: <CANO=Ty09HPfSbp8QsZHU24EnEyzOw1H1C-Zr+7mqwDhOG6=HYg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="f4f5e808cbc81f25b305666cb350"
Date: Fri, 2 Mar 2018 04:58:50 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] memcached UDP amplification attacks
To: oss-security <oss-security@lists.openwall.com>

--f4f5e808cbc81f25b305666cb350
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 2, 2018 at 4:44 AM, Hanno B=C3=B6ck <hanno@hboeck.de> wrote:

> Hi,
>
> In the past days there have been reports about some DDoS attacks
> abusing the memcached UDP protocol:
> https://blog.cloudflare.com/memcrashed-major-amplification-attacks-from-
> port-11211/
> https://www.wired.com/story/github-ddos-memcached/
>
>
> The issue: memcached has an UDP protocol that allows getting a much
> larger reply than the query sent, thus allowing amplification attacks
> with forged sender IPs.
>
>
> Upstream memcached reacted by disabling the UDP-based protocol by
> default:
> https://github.com/memcached/memcached/wiki/ReleaseNotes156
> This is good, however one could argue that they should also default to
> localhost only.
>
>
> Most distros I checked right now default to enabling UDP, but
> restricting connections to 127.0.0.1. While this is not directly
> vulnerable it's only a minor change away from being so. The memcached
> announcement sounds like the UDP protocol is rarely used and should be
> considered deprecated and replaced by the TCP-based one.
>
> I recommend all distributions consider changing their defaults to
> disabling the UDP-based memcached protocol by default.
>
>
I think in general ALL network applications that support UDP need to think
about hardening their default configurations due to the potential for
amplification attacks.

While it is not yet CVE worthy I can see the bar moving (much like it has
for default passwords, and crypto) in the near future as this is clearly
becoming a problem. Please note that this problem is already covered by
CWE-406 (to some degree) which makes the case for CVE assignment stronger.


> --
> Hanno B=C3=B6ck
> https://hboeck.de/
>
> mail/jabber: hanno@hboeck.de
> GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
>



--=20

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--f4f5e808cbc81f25b305666cb350--
