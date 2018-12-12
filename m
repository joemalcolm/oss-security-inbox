X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3233" "Wednesday" "12" "December" "2018" "10:08:41" "-0800" "Hacker Fantastic" "hackerfantastic@googlemail.com" "<CAG-OieODDwrDfoci2ehVUbHg13Ehz66VB50KERZ01qCdrgCLBw@mail.gmail.com>" "83" "Re: [oss-security] Multiple telnet.c overflows" "^Cc:" nil nil "12" "2018121218:08:41" "[oss-security] Multiple telnet.c overflows" (number mark "        hackerfantas Dec 12   83/3233  " thread-indent "\"Re: [oss-security] Multiple telnet.c overflows\"\n") "<CAJ_zFkK-Wg5cvzQ_Om+=+pyddbyPvT8D07qL8wL8NYX6MNnnXg@mail.gmail.com>" ("<CAG-OieOVQkON9yTYJcKuKGfP5XK5zitz0nTr9+ci71mTZrz-+A@mail.gmail.com>" "<3f060bee-a765-4cd8-e752-e0cdfef5c6f2@oracle.com>" "<CAJ_zFkK-Wg5cvzQ_Om+=+pyddbyPvT8D07qL8wL8NYX6MNnnXg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7301 invoked by uid 550); 12 Dec 2018 18:14:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1203 invoked from network); 12 Dec 2018 18:09:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cMyOt6EUBe6VjLE8uW8nku1dvZY0bTP9+2WrcD4eEkM=;
        b=fqH/Wh4ZbUXXXgLCRe6n+Naeum9SQhxxj8SLdI35BAfv8PyNjRYYlaLM/4NT9UGr0R
         eeVPwJ+i7KInF5PjDjSTBQZlwhTMHnGZVpOdLmLDCYPJyNyevCpAVai2k5qx5YYOtyy/
         Gj0Ydg2XfksnWHNcyVGjaUuwczcHIRoLuQ8hrbNs4ibFlz4KJOtl4LuLjfZ+f0qkCoXd
         R7FDuhURETfLpNKN97BEsh/v0Pn9xKKe0FVc7fNOO0wzHx2PaK6E55e8re+6V4RZukcD
         cdw4Mb7kfnZv78Sof6YZlg7zCpqriYpNMFbhXUib2DJIB7HbsLTXbmFbL0hn+6wCi9jS
         opDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cMyOt6EUBe6VjLE8uW8nku1dvZY0bTP9+2WrcD4eEkM=;
        b=qYLyerfDgY/KdNRanfaJ+FY7jgaBFK2NMLRGtgO2Q8GQpCluaMnRNfD4qCpCplNoGJ
         GQApgtjPK9D0UWhIDaLQ+l2HihWwgD6lpBEglqbslvleGVCeJPUhjpQQmxhActrkQOUE
         +SAZ9PtjFX0k7ZH38jm3e6bAQPTMyaixX822gXzT22W5lkkKNqqacymNQKyei3FdNR23
         7iHvxFVct5TfVnRWo5P9U/aomSiuoXcCatSphaRH/JNuxYkKNMNib56MKxtNKJQaR+RW
         RhPpdzzLVBGA1w+4Fv+QghXnawCsw+bPpAvtOeQFHNxnlezoRZdhVF04MjgH/sGtWLWm
         we4A==
X-Gm-Message-State: AA+aEWYp1C7RC9GX8G7tFls0bQjWAK9t1OQKDzllaXtGu/6diMS0vo4p
	dqvUnreV81QcGTMRNi3TPlejjGywrkDx2HxHB+M=
X-Google-Smtp-Source: AFSGD/UXF8o9SmjgGs9FJULKdRLjvdZhxFYDFHwjBRlNORTP+AzOPYlRT4kLzgkuhIS5vpd9ovpDf77kj5DjEjKUQNM=
X-Received: by 2002:a05:651c:14e:: with SMTP id c14mr6446812ljd.20.1544638133560;
 Wed, 12 Dec 2018 10:08:53 -0800 (PST)
MIME-Version: 1.0
References: <CAG-OieOVQkON9yTYJcKuKGfP5XK5zitz0nTr9+ci71mTZrz-+A@mail.gmail.com>
 <3f060bee-a765-4cd8-e752-e0cdfef5c6f2@oracle.com> <CAJ_zFkK-Wg5cvzQ_Om+=+pyddbyPvT8D07qL8wL8NYX6MNnnXg@mail.gmail.com>
In-Reply-To: <CAJ_zFkK-Wg5cvzQ_Om+=+pyddbyPvT8D07qL8wL8NYX6MNnnXg@mail.gmail.com>
Message-ID: <CAG-OieODDwrDfoci2ehVUbHg13Ehz66VB50KERZ01qCdrgCLBw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000041ed43057cd717ce"
Cc: oss-security@lists.openwall.com
Date: Wed, 12 Dec 2018 10:08:41 -0800
From: Hacker Fantastic <hackerfantastic@googlemail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Multiple telnet.c overflows
To: Tavis Ormandy <taviso@google.com>

--00000000000041ed43057cd717ce
Content-Type: text/plain; charset="UTF-8"

Hi Tavis, thanks for the input - I referenced Mikrotik as a vendor using a
vulnerable implementation that can be used to escape restricted shells.
This is just one example of a instance where a restricted shell could be
escaped when using inetutils, or when the vulnerable code path reached
unexpected systems (like NetBSD). As Mikrotik case is not an oss security
issue I did not post the advisory here, but as I shared to you already on
social media:

https://hacker.house/releasez/expl0itz/mikrotik-jailbreak.txt

(The overflows are present in those devices as well, several million of
them, in case this isn't clear in our advisory)

The heap overflow occurs in ANY environment variables (an example instead
of DISPLAY, use USER which maybe reachable via telnet://user@ip), yes the
stack sprintf might not be remotely reachable which is why the advisory
states "multiple overflows". If instances of telnet being called with a
username via a URI handler the this would reach the heap overflow code path
as described in the advisory. Thankfully, most modern browsers no longer
implement telnet URI handlers anymore.

I cannot account for every system configuration or use case of telnet
clients. I lack those relevant clairevoyancy skills.

You are welcome to dismiss client side environment handling vulnerabilities
as none-security issues or feel free to patch the referenced
vulnerabilities as stated in the advisory. Thanks for your input I hope the
comments above with the referenced advisory are clear enough and that the
issue can be addressed by projects still using inetutils.

Kind Regards,
Hacker Fantastic






On Wed, Dec 12, 2018, 9:06 AM Tavis Ormandy <taviso@google.com wrote:

>
>
> On Tue, Dec 11, 2018 at 1:12 PM Alan Coopersmith <
> alan.coopersmith@oracle.com> wrote:
>
>> On 12/11/18 10:39 AM, Hacker Fantastic wrote:
>> > When a telnet server requests environment options the sprintf on line
>> 1002 will
>> > not perform bounds checking and causes an overflow of stack buffer
>> > temp[50] defined
>> > at line 990. This issue can be trivially fixed using a patch to add
>> > bounds checking
>> > to sprintf such as with a call to snprintf();
>>
>> GNU inetutils telnet is a fork of the original BSD telnet code, but most
>> of
>> the BSD's seem to have already switched to snprintf a while ago:
>>
>>
> To be clear, this is a bug in the (little used) GNU inetutils telnet
> *client*, not server. It's hard to imagine a real usage of this in a
> context that would be exploitable.
>
> If you can set DISPLAY, then you can probably also set LD_PRELOAD, and if
> you can interact with the command then you can use shell escapes.
>
> I asked on twitter, and was told that maybe someone is using untrusted
> telnet:// URIs with GNU inetutils, but there are no known examples. I was
> also told that "plenty" of embedded devices GNU inetutils in restricted
> shells. I'm told Mikrotik RouterOS is an example, but it's not clear to me
> if it's using it in a context that would make this a security issue, and if
> they did how they locked down the command to prevent trivial escapes.
>
> Tavis.
>
>
>
>

--00000000000041ed43057cd717ce--
