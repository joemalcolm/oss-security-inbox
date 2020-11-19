X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["562" "Wednesday" "18" "November" "2020" "21:34:16" "-0800" "Ian Zimmerman" "itz@very.loosely.org" "<20201119053416.vfvkqvgsmbmp2wnd@moyka>" "15" "[oss-security] Re: libass ass_outline.c signed integer overflow" nil nil nil "11" "2020111905:34:16" "[oss-security] Re: libass ass_outline.c signed integer overflow" (number mark "U       itz@very.loo Nov 18   15/562   " thread-indent "\"[oss-security] Re: libass ass_outline.c signed integer overflow\"\n") "<CAEFBov0z-zr4q=_srb3q7gq1-f1P6GBf78p8GYUj0DvsXVKLTw@mail.gmail.com>" ("<CAEFBov0z-zr4q=_srb3q7gq1-f1P6GBf78p8GYUj0DvsXVKLTw@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: libass ass_outline.c signed integer overflow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5574 invoked by uid 550); 19 Nov 2020 05:34:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5554 invoked from network); 19 Nov 2020 05:34:28 -0000
Date: Wed, 18 Nov 2020 21:34:16 -0800
From: Ian Zimmerman <itz@very.loosely.org>
To: oss-security@lists.openwall.com
Message-ID: <20201119053416.vfvkqvgsmbmp2wnd@moyka>
References: <CAEFBov0z-zr4q=_srb3q7gq1-f1P6GBf78p8GYUj0DvsXVKLTw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAEFBov0z-zr4q=_srb3q7gq1-f1P6GBf78p8GYUj0DvsXVKLTw@mail.gmail.com>
Subject: [oss-security] Re: libass ass_outline.c signed integer overflow

On 2020-09-29 08:19, Fstark wrote:

> In `ass_outline_construct`'s call to `outline_stroke` a signed integer
> overflow happens *(undefined behaviour)*. On my machine signed overflow
> happens to wrap around to a negative value, thus failing the assert.
> https://github.com/libass/libass/issues/431
> 
> https://github.com/libass/libass/pull/432

I have followed the links above, and this seems to be an example of a
situation where the CVE process has failed. It is still not fixed in
Debian, possibly for that reason. I'll report a Debian bug today.

-- 
Ian
