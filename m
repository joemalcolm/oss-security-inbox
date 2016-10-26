X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["992" "Wednesday" "26" "October" "2016" "19:32:03" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdRcbLd97UmcuPWptce=EC=cJseGoCw0NaxXZaT+Q7g8bw@mail.gmail.com>" "38" "[oss-security] Re: CVE request: DoS loading a SVG in Firefox" nil nil nil "10" "2016102622:32:03" "[oss-security] Re: CVE request: DoS loading a SVG in Firefox" (number mark "U       gustavo.grie Oct 26   38/992   " thread-indent "\"[oss-security] Re: CVE request: DoS loading a SVG in Firefox\"\n") "<CACn5sdQxo7hS2_7m4_tMS2iK_b2YZSjmCL41yYof6J7qwWtN1w@mail.gmail.com>" ("<CACn5sdQxo7hS2_7m4_tMS2iK_b2YZSjmCL41yYof6J7qwWtN1w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15804 invoked by uid 550); 26 Oct 2016 22:32:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15783 invoked from network); 26 Oct 2016 22:32:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=TPi4PrroHN5pNVmI/Unc9lRyuUOZkaeNBoFOwcuuruE=;
        b=oluQny7Ha4pCQYxbL54wPPAClgz+xIg0sZxjUi76h6v7Af1cqXalIdxcjIkhm7ykc4
         4DU+lIYAXBmDKV7B+EjJJzWG164mYLUMv2ycks/60B8XmnDM2/6XEiT99SlpiRd1t7rt
         fJJfNY/jDBOiF9wxaiL7GHHcE0RJo/8+vM5naH933IuHAQ8eGGHvQcu/sSRZDiWF/iOG
         q+v6xzWb7vDCrXae4JA21QSJPjvvVGPe2DJAHjrqmJh5FSahXZ8RrAUPHkc00MwKOoQO
         Jj4Q6ZUU53K8A+EBWaaKvAQAbd+2DkDT6UBnYYg4kAu/bPDJyjkG9kPXuWGDq08HyASM
         h90Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=TPi4PrroHN5pNVmI/Unc9lRyuUOZkaeNBoFOwcuuruE=;
        b=ZNr0dXRWRwtajnw9BtpofjWK+itEibNfKFw0jgf7+jP6dt6YZqwaZHruf23fvOQQy+
         DqYRHcmdFws2f3SUFDDxBfXRGoUj3uWqFHzT2xgaSL75yxmBbhmF6iN+Sy1VI3nxNPrT
         HVsFjcMyzKtqnJG9VyxJl5jV3NUGHjWuEoPmqtq/kkecjaavrdylpAn/RGiOvEaQgpbE
         OsjVlIgjzaiRQS6qrcOMvupro3uVViMC9muE+TvOXYNRVu7KSlHu5teb1XZ7rjOc7aTo
         ukgupMJnXYcOJ/HatQAXZ4tLgC3R1NTme+f+ClDkbOXYT3iSTa03/dGSikSjmXcHyOHo
         LLmA==
X-Gm-Message-State: ABUngveI9K0R1ZasYqP1wJOrsfjkVvYUYzTTghR1Bt3PZDtOr1QuqUaEoJjXVtoT85QlT4AmLNiCi9mZcWbUKw==
X-Received: by 10.107.145.3 with SMTP id t3mr4524151iod.42.1477521124022; Wed,
 26 Oct 2016 15:32:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CACn5sdQxo7hS2_7m4_tMS2iK_b2YZSjmCL41yYof6J7qwWtN1w@mail.gmail.com>
References: <CACn5sdQxo7hS2_7m4_tMS2iK_b2YZSjmCL41yYof6J7qwWtN1w@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Date: Wed, 26 Oct 2016 19:32:03 -0300
Message-ID: <CACn5sdRcbLd97UmcuPWptce=EC=cJseGoCw0NaxXZaT+Q7g8bw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1148d6d2bee1ce053fcc3101
Subject: [oss-security] Re: CVE request: DoS loading a SVG in Firefox

--001a1148d6d2bee1ce053fcc3101
Content-Type: text/plain; charset=UTF-8

This issue was recently minimized and isolated to the circular use of
xlink:hrefs:

https://bugzilla.mozilla.org/show_bug.cgi?id=1297206#c5

Is a CVE suitable for this DoS?

Regards,
Gustavo.

2016-10-06 12:09 GMT-03:00 Gustavo Grieco <gustavo.grieco@gmail.com>:

> Hello,
>
> Some months ago, we found that just loading this image:
>
> https://dcc.fceia.unr.edu.ar/~ggrieco/oom.svg (518K)
>
> will cause Firefox to consume all your memory. Once you click, you
> cannot stop the memory constant memory leak. It can take a few minutes
> (we tested in a desktop computer with 16GB). At the end, Firefox will
> abort or it will be terminated by the OS.
>
> At least Firefox 49 and 51 in several platforms are affected. A report
> in the Mozilla bug tracker was filled:
>
> https://bugzilla.mozilla.org/show_bug.cgi?id=1297206
>
> Please assign a CVE if suitable.
>
> Regards,
> Gustavo.
>

--001a1148d6d2bee1ce053fcc3101--
