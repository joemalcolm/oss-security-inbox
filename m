X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3129" "Thursday" "9" "July" "2015" "13:47:55" "-0700" "Reed Black" "reed@unsafeword.org" "<CAESArwn24tDQ1kD_Tfb65zCSUTr_Nz8AYwy0a_vKP8V4be5utw@mail.gmail.com>" "87" "Re: [oss-security] Squid HTTP proxy CVE request" nil nil nil "7" "2015070920:47:55" "[oss-security] Squid HTTP proxy CVE request" (number mark "U       reed@unsafew Jul  9   87/3129  " thread-indent "\"Re: [oss-security] Squid HTTP proxy CVE request\"\n") "<559A65F3.80103@treenet.co.nz>" ("<559A65F3.80103@treenet.co.nz>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6069 invoked by uid 550); 9 Jul 2015 20:48:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6041 invoked from network); 9 Jul 2015 20:48:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=unsafeword.org; s=google;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=vEkh/2OcLqtB2Wvt/jEC/KFETg8cLp5GNTz1ACzsc8s=;
        b=XOQdIGW+aG2PRUPJdW1rI3LT93Ji39obJLcAb3uCfZLVt1YEAabdfbMDceXaLuYkVc
         nCyayUP50N0iNbxA4M8EkOfIVCfGAx0UFGApMZfXmd+v9ZeW2F2xnfESh8KgTqVKjeUJ
         XowQrpsJq0o955yePGkPneKGt/5+lAQHzKOHU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=vEkh/2OcLqtB2Wvt/jEC/KFETg8cLp5GNTz1ACzsc8s=;
        b=LZMLURzShf0OcYVrsYlMhz/++iPYseAR6jnYpZiiHJ8IwoZpHot3tI+mu6L2MA0dVY
         SMfPoStIMOdY+tF/9fVRK1FUa28N7Ot35WRxPqJxcQaFFMRXrmdR4yL87rJfHyUwgP6V
         VdwVek3dZmkyIt1IBVhFjeER0E4OT5/o1iuwMPFdXPjf+5PzxpBOW7NMNoui57iGHZoZ
         Tdn8uho7XJc1s8/oGUog7MDFtp710zIVpnVmdkkUeQL8eNJCiQb13XKIGBWpfpggX5hH
         Nf8smSnRG43Z7Z+jV9+ygPsoe78qgTOid2SEtQHBfJInLO+eukXSmLvG8ihllB8uUHld
         nN9w==
X-Gm-Message-State: ALoCoQkBVwbZnJh6M9zbiVEVh6wr5wvUbS3b9LhMB9ZZLxZn2Jkv+as3NktFaXr3arvQ4KCJ34Wy
MIME-Version: 1.0
X-Received: by 10.170.60.150 with SMTP id c144mr18191246ykc.51.1436474875988;
 Thu, 09 Jul 2015 13:47:55 -0700 (PDT)
X-Originating-IP: [67.174.146.125]
In-Reply-To: <559A65F3.80103@treenet.co.nz>
References: <559A65F3.80103@treenet.co.nz>
Message-ID: <CAESArwn24tDQ1kD_Tfb65zCSUTr_Nz8AYwy0a_vKP8V4be5utw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1139aa74b68c80051a775e37
Date: Thu, 9 Jul 2015 13:47:55 -0700
From: Reed Black <reed@unsafeword.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Squid HTTP proxy CVE request
To: oss-security@lists.openwall.com

--001a1139aa74b68c80051a775e37
Content-Type: text/plain; charset=UTF-8

As I read this, issue #1 allows CONNECT requests to proceed that shouldn't
otherwise. Is unsetting AllowTcpForwarding also sufficient for the "Determining
if your version is vulnerable" section?

On Mon, Jul 6, 2015 at 4:26 AM, Amos Jeffries <squid3@treenet.co.nz> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> Greetings,
>
> This months release of Squid HTTP proxy, version 3.5.6, contains fixes
> for two security issues.
>
>
> Issue #1:
>
> Due to incorrect handling of peer responses in a hierarchy of 2 or
> more proxies remote clients (or scripts run on a client) are able to
> gain unrestricted access through a gateway proxy to its backend proxy.
>
> If the two proxies have differing levels of security this could lead
> to authentication bypass or unprivileged access to supposedly secure
> resources.
>
> <http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-13856.p
> atch>
>
> All Squid up to and including 3.5.5 are vulnerable.
>
> (when published the advisory for this will be
> <http://www.squid-cache.org/Advisories/SQUID-2015_2.txt>)
>
>
> Issue #2:
>
> This is somewhat more obscure, and I am seeking clarification perhapse
> more than assignment.
>
> Squid up to and including 3.5.5 are apparently vulnerable to DoS
> attack from malicious clients using repeated TLS renegotiation
> messages. This has not been verified as it also seems to require
> outdated (0.9.8l and older) OpenSSL libraries.
>
> <http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-13849.p
> atch>
>
> CVE-2009-3555 was mentioned by the submitter, but that was clearly
> assigned for server-initiated renegotiation. This Squid change is
> specifically for the client-initiated renegotiation part of the TLS
> protocol flaw.
>
> There may be some relevant CVE already assigned, although I've been
> unable to find it. Only CVE-2011-1473 which is for the library itself
> and disputed.
>
> So, is server software being assigned specific CVE (or a shared
> generic one) for resolving this flaw? Please indicate which CVE Squid
> announcements should mention (if any).
>
>
> Thanks,
> Amos Jeffries
> Squid Software Foundation
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v2.0.22 (MingW32)
>
> iQIcBAEBAgAGBQJVmmXyAAoJEGvSOzfXE+nLLjMP/2qTXQODFIdE9zfL3ZQ8MRhZ
> Edh4PNFxSkhvVyYn8kU6ZMg2jx7hiXXEfiP/Ilvo3XcY/eDWf64g+POgLX20X5jV
> o/StXDKHvcZUargImliJb2W1nalIGw1iqBERs6qwfRJhK67MHPgGWwxHu/SFEWsM
> Kk2GRlGlIM4H8g7FnsDvwAnAYweGm3+iSqZlQEaX5JOqem2M8qukGziQsc28yU4E
> SU5YIwNltW563pQYD+UTerz5i24Dt086in1AvSEFiLfqAMq4o3AdcFK73RhBdKyY
> yJJ0rKaz3o18vtru3I7soms8dmUI0mLxX6imPrBHOeSInjGbbRvPIU3g2WYpcdwF
> o6/7Xbg8HB+9QORXINqzC02aBiIJf8blleBnUKJQt1JMhQkb8vXAW4wcHoKfKTPo
> w9gyhwHgbBCYk0gSQ5CuIlaqPUEPAST0DiV0OIDHltjeLSq7vsq5zij9OKLxQdDJ
> nemVr03jrPHELCvV6eKXT/UJj6X+vfpCJk+giQq6rXC8ikhTvpID1aU/xOGxNJGq
> ig9ThwADl6RE2/cgjh7bnz1IPcG679V85uMbwPVTXU38XmhTyWQKjDdt5DuAdd6a
> RUsheekgzf5Lhhcv7/wht/ecNxDbBKvW8o8fvMinn5j9c0GNSNXtGbp8QYlySFS9
> ycdNaJLFdIm8LnV5rNSW
> =COJ4
> -----END PGP SIGNATURE-----
>

--001a1139aa74b68c80051a775e37--
