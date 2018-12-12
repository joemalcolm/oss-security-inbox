X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1476" "Wednesday" "12" "December" "2018" "09:06:19" "-0800" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkK-Wg5cvzQ_Om+=+pyddbyPvT8D07qL8wL8NYX6MNnnXg@mail.gmail.com>" "36" "Re: [oss-security] Multiple telnet.c overflows" "^Cc:" nil nil "12" "2018121217:06:19" "[oss-security] Multiple telnet.c overflows" (number mark "        taviso@googl Dec 12   36/1476  " thread-indent "\"Re: [oss-security] Multiple telnet.c overflows\"\n") "<3f060bee-a765-4cd8-e752-e0cdfef5c6f2@oracle.com>" ("<CAG-OieOVQkON9yTYJcKuKGfP5XK5zitz0nTr9+ci71mTZrz-+A@mail.gmail.com>" "<3f060bee-a765-4cd8-e752-e0cdfef5c6f2@oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24354 invoked by uid 550); 12 Dec 2018 17:06:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24335 invoked from network); 12 Dec 2018 17:06:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tdEDI8SWTLOtr69TsE2hiUDUKruGz5WG1Mw3JzN8GIc=;
        b=AZgQ6qVTKbqTwWXvVetxH6TVWt908D5WstgfKW9z6xtNonmPJkniR/9IFBTUedfTOb
         hAX/njx2GEOtDfGd5/wbwP6gX6I7Y/OS+agC+vq0tm1LY8NhHQ636uPEmq+Z2MydwmEw
         0lNkAxuw1pAcHCUL87eGFF/rsQYY1h4PuPcJxtWEnmv+7Jxyh8LcHXffS93GsOnxD9EZ
         xmzaqiHgIAyzVDFFpOGNGrjVjVtWYY+tPssexwFimbqQbXTL8OCYMNvfDEToRzpd5coA
         vW2VWkzsCGXqHfBo0Vl2PlbRTtwPyHF4cze2UZcn+7jsq8EI85izUA1yDtSqcLbSWLbH
         s4Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tdEDI8SWTLOtr69TsE2hiUDUKruGz5WG1Mw3JzN8GIc=;
        b=avcrN6oUnCTxeB63q/GykVAw/enbQKyCKHfd5JFPSY75woSctT2a5TKLci8QLlhT47
         PrmeQpTTLK37MOSS/n1SCmTleF0JBO9tUp/slUHp1gFCZgoKWTstfUEgDQbZmjmXh0CV
         0eaag7u1ZAF3KJguW9FHlXBVijId8q2FzWuEtet0DwkQ9LIVGrJHiGci/HbG6ZcQhx/6
         025PWm+S1KIyewV10Zv+lwIvqI9S9S0mAywHdEyEdgGieSS85uSO9wfuj4rzLMLViw9E
         dCak867+gXNzTKvsYcHViYaBOqyYVw1LCNWSs6/vyDOQShhMPZo6llhGksAHQbIH4W4k
         nDCA==
X-Gm-Message-State: AA+aEWYZE2oy4GCGBHqqq6WLPjIP2OF8RPmmU6KPcpGZoHkzAQpaBBwa
	LIaWHkz0EY09pSI9P+uztuy7VxCVcoFQH1KQnJ2RiYqPssE=
X-Google-Smtp-Source: AFSGD/VNa+VY4JoK71e8VTAQxcxIUE63zAcz6oZ2XbqNVA3/tLdunH1ZAZS9oHfQ1BUIPUT1la/wU70NxU/sO1qFvaE=
X-Received: by 2002:ac8:6c3:: with SMTP id j3mr20318531qth.84.1544634390400;
 Wed, 12 Dec 2018 09:06:30 -0800 (PST)
MIME-Version: 1.0
References: <CAG-OieOVQkON9yTYJcKuKGfP5XK5zitz0nTr9+ci71mTZrz-+A@mail.gmail.com>
 <3f060bee-a765-4cd8-e752-e0cdfef5c6f2@oracle.com>
In-Reply-To: <3f060bee-a765-4cd8-e752-e0cdfef5c6f2@oracle.com>
Message-ID: <CAJ_zFkK-Wg5cvzQ_Om+=+pyddbyPvT8D07qL8wL8NYX6MNnnXg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000265191057cd638b5"
Cc: hackerfantastic@googlemail.com
Date: Wed, 12 Dec 2018 09:06:19 -0800
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Multiple telnet.c overflows
To: oss-security@lists.openwall.com

--000000000000265191057cd638b5
Content-Type: text/plain; charset="UTF-8"

On Tue, Dec 11, 2018 at 1:12 PM Alan Coopersmith <
alan.coopersmith@oracle.com> wrote:

> On 12/11/18 10:39 AM, Hacker Fantastic wrote:
> > When a telnet server requests environment options the sprintf on line
> 1002 will
> > not perform bounds checking and causes an overflow of stack buffer
> > temp[50] defined
> > at line 990. This issue can be trivially fixed using a patch to add
> > bounds checking
> > to sprintf such as with a call to snprintf();
>
> GNU inetutils telnet is a fork of the original BSD telnet code, but most of
> the BSD's seem to have already switched to snprintf a while ago:
>
>
To be clear, this is a bug in the (little used) GNU inetutils telnet
*client*, not server. It's hard to imagine a real usage of this in a
context that would be exploitable.

If you can set DISPLAY, then you can probably also set LD_PRELOAD, and if
you can interact with the command then you can use shell escapes.

I asked on twitter, and was told that maybe someone is using untrusted
telnet:// URIs with GNU inetutils, but there are no known examples. I was
also told that "plenty" of embedded devices GNU inetutils in restricted
shells. I'm told Mikrotik RouterOS is an example, but it's not clear to me
if it's using it in a context that would make this a security issue, and if
they did how they locked down the command to prevent trivial escapes.

Tavis.

--000000000000265191057cd638b5--
