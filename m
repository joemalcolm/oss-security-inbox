X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2876" "Saturday" "7" "August" "2021" "20:17:31" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" nil "80" "[oss-security] Re: Bug#991971: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)" nil nil nil "8" nil nil (number mark "U       carnil@debia Aug  7   80/2876  " thread-indent "\"[oss-security] Re: Bug#991971: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: Bug#991971: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30383 invoked by uid 550); 7 Aug 2021 18:17:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30347 invoked from network); 7 Aug 2021 18:17:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=fzAVlVG/9x4/K/YKEH8TH7S3spPqa66zpjQltqvxMko=;
        b=Z3XAWFSqDb2SDZd8u1xOfwoJytIz5o3uf3spWB/zGB9TJQzLLSKWDp5Q6mndJSYDJW
         LD9Plqd9l9TVrKlMkw6yIy8ahHz/Oc/JotLUwkr6Ly4Dq4eQ6tgl3Yxt8f2rZ+MHnkp3
         9EIcT9WYUSf6z3iHMmQNkjHesQ4+i3VsKYi4isxIle3aLq1/Sv6f9sOzoE0fTLZwFm9z
         VJg752lEzemXZu/fpaunwuM43f3X9Yb9sDwZUETRW41GaswglZd/Gn3Spb1ehJrnWGhM
         1zFXS/lPjZFGT5bA+smQNRL1iQDmXxSf5k9nFbpWBqsWyIaXZpcXBQ8DfuE6d8L0IuuS
         4vEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to;
        bh=fzAVlVG/9x4/K/YKEH8TH7S3spPqa66zpjQltqvxMko=;
        b=HTtX4R66CheMJBWlAZRHMN0B/dQzTFs4u25evj5RWkSbbsUxfP+U34NNqygwBV5o9+
         v2Ob/KSMJeSOyF6xLE1PYi67+PNl23tCJBVNa3rpk9vMz389ley5mOxow5oORpCvHbom
         tGbVIGUc4mcIKN/G+w7O/5BM1SVntPfRuetCP9L/5wjNYwQua+bb8hBeGbYhYHYwZI8o
         5mBHaMUATEl7eu5h/23M05ZHJ+fryxAQj7Cozj5XfWrEmf1YFbQTHbjKYqKtpSta7lU4
         OrAEuE2YalbrTCWwWgHDHxwLfIT3xI0UIUcMtli360wkR3XWXCcDkC0iteJOk3y+aZwH
         RBmA==
X-Gm-Message-State: AOAM531Iyq6nDF4h4+a7/ytK54GZiLWDb/q5cRx8c/t5gknE9QN4D2Ql
	ne4IdRbxt7tgSe1h6305oBg=
X-Google-Smtp-Source: ABdhPJymlffgJxr9oKRuzeOc6osKYO9k1eTzHtUFO8TdBzm+pE/9GyqJxIw53LmkvmZUb1vVlKUzpg==
X-Received: by 2002:a5d:49c7:: with SMTP id t7mr16040611wrs.321.1628360252747;
        Sat, 07 Aug 2021 11:17:32 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 7 Aug 2021 20:17:31 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: Axel Beckert <abe@debian.org>, 991971@bugs.debian.org
Cc: lynx-dev@nongnu.org, oss-security@lists.openwall.com,
	security@debian.org
Message-ID: <YQ7OO1DgWDwm7vvy@eldamar.lan>
References: <Pine.BSM.4.64L.2108061711590.28219@herc.mirbsd.org>
 <875ywii70u.fsf@c6.deuxchevaux.org>
 <20210807015102.ea4f5immh2l5ku4n@sym.noone.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210807015102.ea4f5immh2l5ku4n@sym.noone.org>
Subject: [oss-security] Re: Bug#991971: [Lynx-dev] bug in Lynx' SSL certificate validation
 -> leaks password in clear text via SNI (under some circumstances)

Hi Axel,

On Sat, Aug 07, 2021 at 03:51:07AM +0200, Axel Beckert wrote:
> Hi,
> 
> On Fri, Aug 06, 2021 at 05:14:32PM +0000, Thorsten Glaser
> <tg@mirbsd.de> wrote in
> https://lists.nongnu.org/archive/html/lynx-dev/2021-08/msg00000.html:
> > this affects both OpenSSL and Debian’s nonGNUtls builds:
> > 
> > lynx https://user:pass@host/
> > 
> > … will lead to…
> > 
> > SSL error:host(user:pass@host)!=cert(CN<mainhost>:SAN<DNS=host>:SAN<DNS=otherhost>
> > 
> > … for OpenSSL lynx and…
> > 
> > SSL error:host(user:pass@host)!=cert(CN<mainhost>)-Continue? (n)
> > 
> > … for nonGNUtls lynx.
> > 
> > Obviously, user:pass@ need to be stripped before comparing.
> 
> This is more severe than it initially looked like: Due to TLS Server
> Name Indication (SNI) the hostname as parsed by Lynx (i.e with
> "user:pass@" included) is sent in _clear_ text over the wire even
> _before_ I can even said "n" for "no, don't continue to talk with this
> server" in Lynx's prompt as shown above.
> 
> I was able to capture the password given on the commandline in traffic
> of an TLS handshake using tcpdump and analysing it with Wireshark:
> 
> From Wiresharks TLS dissector:
> 
> Server Name Indication extension
>     Server Name list length: 28
>     Server Name Type: host_name (0)
>     Server Name length: 25
>     Server Name: user:pass@www.example.org
>                  ^^^^^^^^^^
> 
> From Wiresharks "Follow TCP stream":
> 
> ...........a
> ....jV.. ......../.......D.&....R.+.,.....	.
> .../.0...............z.{./.5.A...
> .....|.}.3.9.E.............2.8.D.......p............$."...user:pass@www.example.org......#...
> ...
> .................
> ..............................
> 
> (PCAPs available on request. Actually did the test with a local server
> of mine. But it should be easy to reproduce, be it with any Linux
> distribution.)
> 
> I did this test with Lynx from Debian Experimental (which has the
> current Lynx upstream release 2.9.0dev.8) as well as with Lynx from
> Debian 8 Jessie ELTS (which has Lynx 2.8.9dev.1) and both leak the
> password via SNI. I though assume that older releases of Lynx are
> probably also affected as well, at least if they or the according
> crypto libraries support SNI.
> 
> But given that the symptoms Thorsten discovered stayed unreported for
> quite some years, I assume that this use case is a rather seldom one.
> Nevertheless only trying to use Lynx that way (and seeing it fail)
> already leaks the used password.
> 
> IMHO this nevertheless needs a CVE-ID.

MITRE did assign CVE-2021-38165. MITRE raised the question: Does
2.9.0dev.9 (mentioned on the
https://lynx.invisible-island.net/current/CHANGES.html page) fix the
entire problem?
https://www.openwall.com/lists/oss-security/2021/08/07/7 claims that
credentials appear in the HTTP Host header to an http:// (i.e.,
non-SSL) website. 

Regards,
Salvatore
