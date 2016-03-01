X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1853" "Tuesday" "1" "March" "2016" "14:23:39" "-0700" "Bob Beck" "beck@openbsd.org" "<CAComcpOd1_+qxMnTdJYLM2dP0W=E95Kn6OZ4yYuUS72EQLBpiQ@mail.gmail.com>" "44" "Re: [oss-security] Re: CVE's for SSLv2 support" "^Cc:" nil nil "3" "2016030121:23:39" "[oss-security] Re: CVE's for SSLv2 support" (number mark "        beck@openbsd Mar  1   44/1853  " thread-indent "\"Re: [oss-security] Re: CVE's for SSLv2 support\"\n") "<20160301191235.EDA1852E01C@smtpvbsrv1.mitre.org>" ("<CANO=Ty0ZOjCGL-iXCZ46FbSQ3i+fpGHBB6X1x2Agy9jftQ3ozA@mail.gmail.com>" "<20160301191235.EDA1852E01C@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13391 invoked by uid 550); 2 Mar 2016 06:50:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30274 invoked from network); 1 Mar 2016 21:24:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=obtuse-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=O5sm970eUF9Xzt7yDYFQbU2mIMP6C+SrhzFBHuAx3SU=;
        b=xvhPUY01DkVDQsUIaIqFs6ImMzvHhw3vKC04q8yDCEl9xvpkFC7c5gQibH3bfczW5O
         zi9U2eOzNOC7EyhtAwT8wn/RB+eU94MYxH4n0Gnskn9QviCawq5+il1NxpUXE+xAuyfH
         9upgeRmeJd8s7R9PkkrJFRI0l24andOYIvgOGMYO3QAEC101Hn7/gUnf7HzZdWcuxUGq
         qRKi5aZ8x57WbexXNb28Ga56yb34lvJnaTv6rm2zhCars2WDukpsFV1mIcEfZWCKtjRv
         vlpgYu//MzfPR9X+t9de4sTsapg9L7F8/YSsVbOw/XBCyaF0hQpYACHSk9JWxeVgxo26
         5GLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:cc;
        bh=O5sm970eUF9Xzt7yDYFQbU2mIMP6C+SrhzFBHuAx3SU=;
        b=in2JZlMmJ0/lmJd9UiypzMIrJP+U3zZQY8HUZcjmyScfNc+aF/mpU0QNuv0XuuHUAm
         jAbSPespiqaKXUqEod2vKX1bROgwH9VqwlYrtZpbMXNSqhCJhbhT0R3uKvMtFzp98kMg
         OYZ84yEjhPCEqrKs2aecZ8mRn2em3K+L3vAbYotL1gwN8YSXtlFUweRBrJLjAKLRCzNE
         8I6tJGUYVTGni0YUTWWim4acQTZqI5Zp8FyERGfUJI8SiEHO+d/0o+2ZNHBq9VmNyO/j
         W3IXFKMR7/sy+/ydfwVq0j5BDCf8yP6cdi3XitPHNseEi155rqtmrN0dUEKP0jRggRVv
         U8tg==
X-Gm-Message-State: AG10YOS7Duz13TlfjAvC3YC4Ih/Z3YOlhY5hmA98ANeEE+9N78G2XLZr1S4sH+WhKIA+RQ++JKkmHeVWXe4FKw==
X-Received: by 10.107.168.29 with SMTP id r29mr28636460ioe.12.1456867438859;
 Tue, 01 Mar 2016 13:23:58 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160301191235.EDA1852E01C@smtpvbsrv1.mitre.org>
References: <CANO=Ty0ZOjCGL-iXCZ46FbSQ3i+fpGHBB6X1x2Agy9jftQ3ozA@mail.gmail.com>
 <20160301191235.EDA1852E01C@smtpvbsrv1.mitre.org>
X-Google-Sender-Auth: fZQ17DdbZxP276h45vO2VtC2qlQ
Message-ID: <CAComcpOd1_+qxMnTdJYLM2dP0W=E95Kn6OZ4yYuUS72EQLBpiQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: kseifried@redhat.com, cve-assign@mitre.org
Date: Tue, 1 Mar 2016 14:23:39 -0700
From: Bob Beck <beck@openbsd.org>
Reply-To: oss-security@lists.openwall.com
Sender: beck@obtuse.com
Subject: Re: [oss-security] Re: CVE's for SSLv2 support
To: oss-security@lists.openwall.com

On Tue, Mar 1, 2016 at 12:12 PM,  <cve-assign@mitre.org> wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
>> If a crypto library (e.g. OpenSSL, NSS) supports AND enables SSLv2 by
>> default should it receive a CVE?
>
> There's no general answer to that question. CVE ID assignments are not
> based on outsiders making guesses about the expectations of a product's
> customers. For example, there might be a crypto library intended for
> communication on isolated networks to high-value embedded devices that
> support only SSLv2, and cannot and will not ever be updated.


What.. like... I have an embedded high value device that only supports
TELNET to access it.. OMG please give me a CVE?

replace SSLV2 in the above sentence with telnet or ssh v1 for that
matter and you have the same issue.


>
> - --
> CVE assignment team, MITRE CVE Numbering Authority
> M/S M300
> 202 Burlington Road, Bedford, MA 01730 USA
> [ PGP key available through http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>
> iQIcBAEBCAAGBQJW1ekCAAoJEL54rhJi8gl5dQEQAK5x43W8Q157sNT4gUg8rQtS
> U0UlnjmsT1S40FlNiwZpK5IPkE7hdeTeiWUoFMsvc13vtlfpwfHCBfb05B5fcQBP
> 2b3ssj49aH5yXVxnGE2ab6W5c63wN2jkbBBihVBXZ8SB9h4tNNSey+7dJrLyMqi0
> Um76Tv5htBbpm+6UtlgN7zV3tT9MIe6bZI/b7xxuf23nM8/mBvc1nX8dpCFF16og
> ks9d9A1Rnn79xCvWZ++jR8PRlmFwmLym/PEQulJ6k4WQdOECH78ytYWg9MG7EuIg
> 6PbKloy7u36+ZgrUXxYnydoH834H6yOQIPro7hARFA0fpkbmydBJKnP4letuVS5w
> S89g15c2ymxIyKaKy+qT31LEKBGf+N6vPoPNL/IWeRh+8GmSyWkWF7Rx0CboFCTs
> 7+Ft9T+0Lfi6bYkYqAFUVe8gBkM84tLR+4HXgkANLAfhLEsKaCYqAkNYlbDvCXtB
> RyFZHcVhp8XYWx7b5YN3BBB5VWK/fS8y8ilHaf143Bkbn+Yu6yrFb+DIAYhKPPAI
> 1CURZksBwzSSjiprsExD4dODDJGzl/0khHdkDkdZp7o9drt3D4VkKGgkBPoG5NFk
> cX1XQc6o3Hv72oYFLyatCA5H8k9HZLEUjl8cYuf/QIvfwJwjlLqZ+HrPWvs2SY5C
> K4C7mIXfd9Iem6DqXfNK
> =ylcp
> -----END PGP SIGNATURE-----
