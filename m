X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1702" "Tuesday" "1" "March" "2016" "21:03:57" "-0700" "Bob Beck" "beck@openbsd.org" "<CAComcpPtkMh2t-19KoUFydMdJXHAgqiCB1m2HSNd3Rfe2WyXhQ@mail.gmail.com>" "35" "Re: [oss-security] Re: CVE's for SSLv2 support" "^Cc:" nil nil "3" "2016030204:03:57" "[oss-security] Re: CVE's for SSLv2 support" (number mark "        beck@openbsd Mar  1   35/1702  " thread-indent "\"Re: [oss-security] Re: CVE's for SSLv2 support\"\n") "<CANO=Ty2FD92Oj-ebOJ=dJnO-+Y1zxNJNwW6HUR5mXH+8G64_ag@mail.gmail.com>" ("<CANO=Ty0ZOjCGL-iXCZ46FbSQ3i+fpGHBB6X1x2Agy9jftQ3ozA@mail.gmail.com>" "<20160301191235.EDA1852E01C@smtpvbsrv1.mitre.org>" "<CAComcpOd1_+qxMnTdJYLM2dP0W=E95Kn6OZ4yYuUS72EQLBpiQ@mail.gmail.com>" "<CANO=Ty2FD92Oj-ebOJ=dJnO-+Y1zxNJNwW6HUR5mXH+8G64_ag@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21672 invoked by uid 550); 2 Mar 2016 04:07:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19985 invoked from network); 2 Mar 2016 04:04:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=obtuse-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=rb4mKAhQaoZ66gyyd9a1BK4lxuSOFTBb2MvkMGM9FEg=;
        b=WWJNuGr6De21+eWXMhqSaIvTa0Q/gy6QnDt8wZUCQWj8XzGmzW+CtpIkT5vebtzzrS
         EZV6h4rQeK/yN9XX+V5CQLIJImHRZvOkRtWvGfRWllrsb+VNlYX8go5rvp8PcIzBClsc
         j6iVb8sez6Bd5UdkoHOYTrAFosyNZKjcavXkOIjOxZ6/nvLyWFy+X+X0sr7ddIcbAC1R
         +1QvrrUMx4SCas99cKJ42zBpn8CxIXoUsJmz+cwQfQvanXdmtBw4EUX70bjblrdBGO4B
         LUVbr8gKSy5IyY9h/Z/hn5QGEdJtOaivwvw3Vf7UGjxR9zuUZcncHd12A8EEgmgiLzPr
         q1uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:cc;
        bh=rb4mKAhQaoZ66gyyd9a1BK4lxuSOFTBb2MvkMGM9FEg=;
        b=Wfu3W4DYuPqpxjfrzt9YQHdK1u+knnjlT0DMmgdRidpeKisZUXfeIL52t9JpEXFOV1
         Q3mVegJas/B2S9h8nuB4W7JRnd08VuOb6LAbMeTVKHguflNb4pbzgq520beQHISoWLz8
         LBADYTJJv8etn3/wT9iV9jzDuxVeXUXI1GrIFu4Y8VVhqShfU0fjga1R+bgEE5/8SUYv
         2ZDVnxef5U54UNO/8Nl6Zt+1fCd4kvWczQhwi5Ig+FDxvY/gYHwtUytptVQJNfPTl6IJ
         4ZCZyKCx68g2nMwbOqFTUw0i5seQm27RIh2fcZaPgcub4HkjMIR3rYav79R1n71f918i
         Kn0A==
X-Gm-Message-State: AD7BkJL0zcxAZTs7C8qmjhdtRAtPr6cxUoNNRa0xGlUxqvOld7VjAvwFCYqXew0sUHxqUm5deDUBbOI20kzm2Q==
X-Received: by 10.50.4.1 with SMTP id g1mr2524773igg.42.1456891456742; Tue, 01
 Mar 2016 20:04:16 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CANO=Ty2FD92Oj-ebOJ=dJnO-+Y1zxNJNwW6HUR5mXH+8G64_ag@mail.gmail.com>
References: <CANO=Ty0ZOjCGL-iXCZ46FbSQ3i+fpGHBB6X1x2Agy9jftQ3ozA@mail.gmail.com>
 <20160301191235.EDA1852E01C@smtpvbsrv1.mitre.org> <CAComcpOd1_+qxMnTdJYLM2dP0W=E95Kn6OZ4yYuUS72EQLBpiQ@mail.gmail.com>
 <CANO=Ty2FD92Oj-ebOJ=dJnO-+Y1zxNJNwW6HUR5mXH+8G64_ag@mail.gmail.com>
X-Google-Sender-Auth: IpgTUgbEem7o-_hqkS8D1Jr67X4
Message-ID: <CAComcpPtkMh2t-19KoUFydMdJXHAgqiCB1m2HSNd3Rfe2WyXhQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: oss-security <oss-security@lists.openwall.com>, CVE ID Requests <cve-assign@mitre.org>
Date: Tue, 1 Mar 2016 21:03:57 -0700
From: Bob Beck <beck@openbsd.org>
Reply-To: oss-security@lists.openwall.com
Sender: beck@obtuse.com
Subject: Re: [oss-security] Re: CVE's for SSLv2 support
To: Kurt Seifried <kseifried@redhat.com>

> 1) the SSL/TLS protocols encrypt the and the data cannot be read by an
> attacker
> 2) the SSL/TLS protocols ensure the data is not altered in transit by an
> attacker without detection

When used correctly..  SSLv2 is not.

>
> Additionally depending on how you configure the servers there are claims
> that you are talking to the correct server/client (e.g. using certificates)
> but that is not germane to this discussion.
>
> SSLv2 is obviously NOT capable of ensuring claim #1 (that data is encrypted
> and cannot be read by an attacker), due to a wide variety of issues, and I
> have no doubt more will be found if people keep looking. Hence my thinking
> is that ANY and ALL use of SSLv2 is CVE worthy, especially when considering
> that many devices/manufacturers are less than transparent about their
> configurations/security issues.

While you certainly won't see me defending SSLv2 (I think we were the
first to delete it outright)
there are many other things that currently fall into that category..
I'm agreeing with your sentiment
but if you are to consider usage of SSLv2 as CVE worthy, then you will
need to do the same for SSH version 1,
among other things.   So while I certainly appreciate and even agree
with your sentiment, it seems rather timed
politically based on a decision made by one implementaiton of SSL/TLS
that reflects a decision made by most other
implementations long ago.   So far from me to say what CVE's should
and shouldn't be used for and issued for, but
if this is the road we're going down can I please have permission to
use your above quoted paragraph
with s/SSLv2/SSH V1/g to request a CVE for *usage or support* of SSH
version 1? You said it perfectly.
