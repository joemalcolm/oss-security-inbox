X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4095" "Friday" "8" "September" "2017" "10:59:35" "+0200" "Raphael Geissert" "geissert@debian.org" "<CAA7hUgFVeLSChQuCvYaribpdt=9kj=o+A_LYoa1v7QgMy=RzmA@mail.gmail.com>" "122" "Re: [oss-security] Tcpdump 4.9.2" "^Date:" nil nil "9" "2017090808:59:35" "[oss-security] Tcpdump 4.9.2" (number mark "        geissert@deb Sep  8  122/4095  " thread-indent "\"Re: [oss-security] Tcpdump 4.9.2\"\n") "<20170907200605.GA13030@jasmine.lan>" ("<20170907200605.GA13030@jasmine.lan>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5766 invoked by uid 550); 8 Sep 2017 09:00:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5745 invoked from network); 8 Sep 2017 09:00:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to;
        bh=dSKzAMipdoCCVtjB/yGuIPFd/tAnKBNUVEfLFGJijBc=;
        b=CUWgak1Mc6+b4A1UJhdS/L3gjBDYxgqfJFFIw6Mbmd1rsLZcPYzFAzQ64CTqxPVLGw
         0gfpV0UGwb5k62Ii/hzp7M8EL1QgO4HwpLnrqV2yRTlvIW8j9+Z/4cMPAcKn8V6kAlLK
         vGIwNUYjM5BamFIDlY8oU+2ToITpClTP1FFCnv8OZg4WKzhGwGffFdQEEWv0LmTaQ8HU
         9GDEGUmoS/VvNIwdu7kH9oPrKCDZWQ/EPMguTrq35OD0l9b4Z77JT357CvNfMoIPXRRP
         9UQc97u8eRzpTep1HVkonFQstckjNy3St2Z02+KD4SlxehMPqQ15R/vSy8RK9WD7iX8v
         Tfog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to;
        bh=dSKzAMipdoCCVtjB/yGuIPFd/tAnKBNUVEfLFGJijBc=;
        b=bJkQpJMHx8q3tQ9nFuD1Kf2l67yMlpBGcWLnzMp4Wir2UqFyRVwKU0bKrAoFbHjedc
         K1pXflKXn8zy4aDbK7fcKCk7oo3H5gFx7+b2ugyQBrbxazNUaM8rjpaLnOkwaJS8FFju
         twgyDR/adEzt3iBJEDrFIOsu0JO8FadivLQpmdAwdzlmRAOukee4KQgXCSP8PE3QbSnC
         i+R9AiSgo/anRHRYR3kTRhXQDmg+CoXRWulVlIKS3Us5hfqVTtqPQjsoaqB5YIpV+yzJ
         j4VUJAd0pnRTO9bandVhk0bj4M4JyxGd440nurvBwQIiBk6rTHANWfGhxuiNqQqAKzNg
         mnCw==
X-Gm-Message-State: AHPjjUjDY3UyooYIcI1aQTppQamyBaImgFe09HnUcC5BbHuAR9K6EzDJ
	5mEZcCBRi2sHncE72z9ZBeprEGT0JaPi6NY=
X-Google-Smtp-Source: AOwi7QBzssGc9dYF+hSJJXuQpkpdmZbJANcA4qXH3VpcFHePh3EHdHwFjTBmsmyU3x44UfShy0luzg8K9Pa6JIlYtuo=
X-Received: by 10.107.43.77 with SMTP id r74mr2114481ior.31.1504861196413;
 Fri, 08 Sep 2017 01:59:56 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170907200605.GA13030@jasmine.lan>
References: <20170907200605.GA13030@jasmine.lan>
X-Google-Sender-Auth: m6UZFv8Rhrq1hbZ0j2VaqCxBvSo
Message-ID: <CAA7hUgFVeLSChQuCvYaribpdt=9kj=o+A_LYoa1v7QgMy=RzmA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 8 Sep 2017 10:59:35 +0200
From: Raphael Geissert <geissert@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: atomo64@gmail.com
Subject: Re: [oss-security] Tcpdump 4.9.2
To: Open Source Security <oss-security@lists.openwall.com>

On 7 September 2017 at 22:06, Leo Famulari <leo@famulari.name> wrote:
> My understanding is that tcpdump 4.9.2 was supposed to be embargoed
> until September 25.
>
> However, it's already being distributed publicly:
>
> https://git.archlinux.org/svntogit/packages.git/commit/trunk/PKGBUILD?h=packages/tcpdump&id=ae8cb07d00feb32a4f8a500fc8fa668d3f8c5275
>
> So, I recommend that everyone update ASAP.


Quoting the CHANGES file of the tarball[1]:

> Sunday September 3, 2017 denis@ovsienko.info
>   Summary for 4.9.2 tcpdump release
>     Do not use getprotobynumber() for protocol name resolution.  Do not do
>       any protocol name resolution if -n is specified.
>     Improve errors detection in the test scripts.
>     Fix a segfault with OpenSSL 1.1 and improve OpenSSL usage.
>     Clean up IS-IS printing.
>     Fix buffer overflow vulnerabilities:
>       CVE-2017-11543 (SLIP)
>       CVE-2017-13011 (bittok2str_internal)
>     Fix infinite loop vulnerabilities:
>       CVE-2017-12989 (RESP)
>       CVE-2017-12990 (ISAKMP)
>       CVE-2017-12995 (DNS)
>       CVE-2017-12997 (LLDP)
>     Fix buffer over-read vulnerabilities:
>       CVE-2017-11541 (safeputs)
>       CVE-2017-11542 (PIMv1)
>       CVE-2017-12893 (SMB/CIFS)
>       CVE-2017-12894 (lookup_bytestring)
>       CVE-2017-12895 (ICMP)
>       CVE-2017-12896 (ISAKMP)
>       CVE-2017-12897 (ISO CLNS)
>       CVE-2017-12898 (NFS)
>       CVE-2017-12899 (DECnet)
>       CVE-2017-12900 (tok2strbuf)
>       CVE-2017-12901 (EIGRP)
>       CVE-2017-12902 (Zephyr)
>       CVE-2017-12985 (IPv6)
>       CVE-2017-12986 (IPv6 routing headers)
>       CVE-2017-12987 (IEEE 802.11)
>       CVE-2017-12988 (telnet)
>       CVE-2017-12991 (BGP)
>       CVE-2017-12992 (RIPng)
>       CVE-2017-12993 (Juniper)
>       CVE-2017-11542 (PIMv1)
>       CVE-2017-11541 (safeputs)
>       CVE-2017-12994 (BGP)
>       CVE-2017-12996 (PIMv2)
>       CVE-2017-12998 (ISO IS-IS)
>       CVE-2017-12999 (ISO IS-IS)
>       CVE-2017-13000 (IEEE 802.15.4)
>       CVE-2017-13001 (NFS)
>       CVE-2017-13002 (AODV)
>       CVE-2017-13003 (LMP)
>       CVE-2017-13004 (Juniper)
>       CVE-2017-13005 (NFS)
>       CVE-2017-13006 (L2TP)
>       CVE-2017-13007 (Apple PKTAP)
>       CVE-2017-13008 (IEEE 802.11)
>       CVE-2017-13009 (IPv6 mobility)
>       CVE-2017-13010 (BEEP)
>       CVE-2017-13012 (ICMP)
>       CVE-2017-13013 (ARP)
>       CVE-2017-13014 (White Board)
>       CVE-2017-13015 (EAP)
>       CVE-2017-11543 (SLIP)
>       CVE-2017-13016 (ISO ES-IS)
>       CVE-2017-13017 (DHCPv6)
>       CVE-2017-13018 (PGM)
>       CVE-2017-13019 (PGM)
>       CVE-2017-13020 (VTP)
>       CVE-2017-13021 (ICMPv6)
>       CVE-2017-13022 (IP)
>       CVE-2017-13023 (IPv6 mobility)
>       CVE-2017-13024 (IPv6 mobility)
>       CVE-2017-13025 (IPv6 mobility)
>       CVE-2017-13026 (ISO IS-IS)
>       CVE-2017-13027 (LLDP)
>       CVE-2017-13028 (BOOTP)
>       CVE-2017-13029 (PPP)
>       CVE-2017-13030 (PIM)
>       CVE-2017-13031 (IPv6 fragmentation header)
>       CVE-2017-13032 (RADIUS)
>       CVE-2017-13033 (VTP)
>       CVE-2017-13034 (PGM)
>       CVE-2017-13035 (ISO IS-IS)
>       CVE-2017-13036 (OSPFv3)
>       CVE-2017-13037 (IP)
>       CVE-2017-13038 (PPP)
>       CVE-2017-13039 (ISAKMP)
>       CVE-2017-13040 (MPTCP)
>       CVE-2017-13041 (ICMPv6)
>       CVE-2017-13042 (HNCP)
>       CVE-2017-13043 (BGP)
>       CVE-2017-13044 (HNCP)
>       CVE-2017-13045 (VQP)
>       CVE-2017-13046 (BGP)
>       CVE-2017-13047 (ISO ES-IS)
>       CVE-2017-13048 (RSVP)
>       CVE-2017-13049 (Rx)
>       CVE-2017-13050 (RPKI-Router)
>       CVE-2017-13051 (RSVP)
>       CVE-2017-13052 (CFM)
>       CVE-2017-13053 (BGP)
>       CVE-2017-13054 (LLDP)
>       CVE-2017-13055 (ISO IS-IS)
>       CVE-2017-13687 (Cisco HDLC)
>       CVE-2017-13688 (OLSR)
>       CVE-2017-13689 (IKEv1)
>       CVE-2017-13690 (IKEv2)
>       CVE-2017-13725 (IPv6 routing headers)

[1] https://sources.archlinux.org/other/packages/tcpdump/tcpdump-4.9.2.tar.gz

Cheers,
-- 
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net
