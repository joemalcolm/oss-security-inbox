X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1223" "Tuesday" "1" "March" "2016" "17:39:16" "+0000" "Loganaden Velvindron" "loganaden@gmail.com" "<CAOp4FwSj_OAUV0qsnE35VR4UdFCC1qjvQXy9_Rf=-kK0S1eMQQ@mail.gmail.com>" "40" "Re: [oss-security] CVE's for SSLv2 support" "^Cc:" nil nil "3" "2016030117:39:16" "[oss-security] CVE's for SSLv2 support" (number mark "        loganaden@gm Mar  1   40/1223  " thread-indent "\"Re: [oss-security] CVE's for SSLv2 support\"\n") "<CANO=Ty3qgsHtaivrfwoB=ZdbgyE=z5+Q+HkhazE06ppDbw63RQ@mail.gmail.com>" ("<CANO=Ty3qgsHtaivrfwoB=ZdbgyE=z5+Q+HkhazE06ppDbw63RQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31998 invoked by uid 550); 1 Mar 2016 17:39:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31979 invoked from network); 1 Mar 2016 17:39:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=HeJBi6NRNckj9azWeSsQ0X974A8S4Tf2bqNaW46g9UU=;
        b=ddEFeCbofXblzi1RizKYgPr10I5XFjwT1vmQD7cdvOlIFjMBCID8j0J7PjgTY8hADr
         QZcCHXXFT6eFSrHy6umBKBcLtsM1Cu8Ojd9gObkdMrJz8ZdD1YyrNId/0zYcotTV3V2Y
         Tr5NS5c9WCz4POaprqrXtHBeseeTnElaKp34zSk6TYjQLQzVbIqxy3ckS6QrczS21Lyh
         U64FY0OH6WPtaPCr/KzMwKODwp/eux5xyG6WQ/KTtW9ht9GFyURQ3tbSDhyHdEbpIbzF
         hexEMhd5aEivwz/b+uu3EReyD+o5kd5UM7IqUn7TaDH5FEYrt52AYdzP0Psxy4pIChDS
         7qfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=HeJBi6NRNckj9azWeSsQ0X974A8S4Tf2bqNaW46g9UU=;
        b=awUNnyoVftr5kZr5qT4qvlXrIGoX+3qBY4sYIi6XAUJfnBLFJz1l+A4DF8GoNS0azk
         X83udOBdYJm73kY01FBKjOw2+JfG4fxfNAV6jiPYGv1XsTksCiZt63srtf8Bz3eLm/Bx
         s5itnjuA3KilEQ8Kcc/VFhHfPv0W/2qXxxsfzitRQ2SNTre5/BcSmTmLl8WiRhuhurYK
         vEqTX64ee7bAScZjJmYHQpbTNsPYresPBwuAJ6ichZpt2GvZtiozndLU74q7fCyXnKJV
         frj7zZReUJiX6CGTSvWeqx0SMc231bMuMzYeAWhFFrnGH/UdRuwRr4DSJcSfEEGJkDgV
         E9eg==
X-Gm-Message-State: AD7BkJI/N7NAHkUIha1Z2K1hofXF4N9MQjDJB4fOnUV43M1s3/IouTaJDDHpiABv1cAjqPDo0vfdRtOye70BAQ==
MIME-Version: 1.0
X-Received: by 10.66.62.169 with SMTP id z9mr31528973par.139.1456853956284;
 Tue, 01 Mar 2016 09:39:16 -0800 (PST)
In-Reply-To: <CANO=Ty3qgsHtaivrfwoB=ZdbgyE=z5+Q+HkhazE06ppDbw63RQ@mail.gmail.com>
References: <CANO=Ty3qgsHtaivrfwoB=ZdbgyE=z5+Q+HkhazE06ppDbw63RQ@mail.gmail.com>
Message-ID: <CAOp4FwSj_OAUV0qsnE35VR4UdFCC1qjvQXy9_Rf=-kK0S1eMQQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1136b7c28dd8e0052d003e17
Cc: CVE ID Requests <cve-assign@mitre.org>
Date: Tue, 1 Mar 2016 17:39:16 +0000
From: Loganaden Velvindron <loganaden@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE's for SSLv2 support
To: oss-security@lists.openwall.com

--001a1136b7c28dd8e0052d003e17
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 1, 2016 at 5:33 PM, Kurt Seifried <kseifried@redhat.com> wrote:

> So there is this proposed RFC:
>
> https://tools.ietf.org/html/rfc6176
>
> TL;DR: SSLv2 needs to be shot.
>
> Now we have yet another significant SSLv2 problem, DROWN, bad enough in
> fact that Red Hat has now disabled SSLv2 in OpenSSL by default (already
> done in NSS/GnuTLS), so from my vendor perspective, we're treating SSLv2
> support as a security problem, the solution of which is to remove said
> support.
>
> But more generally, should we look at assigning CVE's for support of SSLv2,
> much like we would for products supporting DES or other known insecure
> cryptographic algorithms, hashes, digests and protocols? My personal vote
> is for yes.
>
>
>
>
Btw, FreeBSD has done some work there:
https://wiki.freebsd.org/LibreSSL/PatchingPorts#SSLv2.2FSSLv3_method_failures

Linking with LibreSSL would help uncover those cases, and assign CVEs :)


>
>
> --
> Kurt Seifried -- Red Hat -- Product Security -- Cloud
> PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
> Red Hat Product Security contact: secalert@redhat.com
>

--001a1136b7c28dd8e0052d003e17--
