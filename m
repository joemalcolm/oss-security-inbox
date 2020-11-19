X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["930" "Thursday" "19" "November" "2020" "19:51:04" "+0100" "=?UTF-8?B?TW9yaXR6IE3DvGhsZW5ob2Zm?=" "jmm@inutil.org" "<20201119185104.GD7401@pisco.westfalen.local>" "21" "Re: [oss-security] libass ass_outline.c signed integer overflow" nil nil nil "11" "2020111918:51:04" "[oss-security] libass ass_outline.c signed integer overflow" (number mark "U       jmm@inutil.o Nov 19   21/930   " thread-indent "\"Re: [oss-security] libass ass_outline.c signed integer overflow\"\n") "<861A949F-D5C8-4AE0-829D-E7C2B4F74137@dwheeler.com>" ("<CAEFBov0z-zr4q=_srb3q7gq1-f1P6GBf78p8GYUj0DvsXVKLTw@mail.gmail.com>" "<20201119053416.vfvkqvgsmbmp2wnd@moyka>" "<861A949F-D5C8-4AE0-829D-E7C2B4F74137@dwheeler.com>") nil nil nil nil nil nil nil "Re: [oss-security] libass ass_outline.c signed integer overflow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9523 invoked by uid 550); 19 Nov 2020 18:51:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9505 invoked from network); 19 Nov 2020 18:51:17 -0000
Date: Thu, 19 Nov 2020 19:51:04 +0100
To: oss-security@lists.openwall.com
Message-ID: <20201119185104.GD7401@pisco.westfalen.local>
References: <CAEFBov0z-zr4q=_srb3q7gq1-f1P6GBf78p8GYUj0DvsXVKLTw@mail.gmail.com>
 <20201119053416.vfvkqvgsmbmp2wnd@moyka>
 <861A949F-D5C8-4AE0-829D-E7C2B4F74137@dwheeler.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <861A949F-D5C8-4AE0-829D-E7C2B4F74137@dwheeler.com>
From: =?UTF-8?Q?Moritz_M=C3=BChlenhoff?= <jmm@inutil.org>
Subject: Re: [oss-security] libass ass_outline.c signed integer overflow

On Thu, Nov 19, 2020 at 11:54:07AM -0500, David A. Wheeler wrote:
> >> In `ass_outline_construct`'s call to `outline_stroke` a signed integer
> >> overflow happens *(undefined behaviour)*. On my machine signed overflow
> >> happens to wrap around to a negative value, thus failing the assert.
> >> https://github.com/libass/libass/issues/431
> >> 
> >> https://github.com/libass/libass/pull/432
> > 
> > I have followed the links above, and this seems to be an example of a
> > situation where the CVE process has failed. It is still not fixed in
> > Debian, possibly for that reason. I'll report a Debian bug today.
> 
> I read through the issue discussion. As best as I can tell, no one filed for a CVE, so there was no CVE.
> Did I misunderstand something?
> 
> If my understanding is correct, that is *NOT* a failure of the CVE process.

Yes, everything worked as designed here. This is CVE-2020-26682

Cheers,
        Moritz
