X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/27/4
Message-ID: <CALx_OUD2S+XEc3r5gYaNvWU===M-jygoPe1e9tkxKbUKwpQMnQ@mail.gmail.com>
Date: Mon, 27 Oct 2014 11:59:56 -0700
From: Michal Zalewski <lcamtuf@...edump.cx>
To: oss-security <oss-security@...ts.openwall.com>
Subject: Re: Re: strings / libbfd crasher
Content-Type: text/plain; charset=utf-8

Well, there's also a trivial stack buffer overflow in srec.c near line 254:

      char buf[10];
...
        sprintf (buf, "\\%03o", (unsigned int) c);

But with this test case, c will be -44, or "\1777777777777777777724",
which sounds a lot longer than 9 characters.

http://lcamtuf.coredump.cx/strings-stack-overflow

/mz
