X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["812" "Thursday" "19" "November" "2020" "18:15:28" "-0800" "Ian Zimmerman" "itz@very.loosely.org" "<20201120021528.pduwcibewbab47he@moyka>" "24" "[oss-security] Re: libass ass_outline.c signed integer overflow" nil nil nil "11" "2020112002:15:28" "[oss-security] Re: libass ass_outline.c signed integer overflow" (number mark "U       itz@very.loo Nov 19   24/812   " thread-indent "\"[oss-security] Re: libass ass_outline.c signed integer overflow\"\n") "<861A949F-D5C8-4AE0-829D-E7C2B4F74137@dwheeler.com>" ("<CAEFBov0z-zr4q=_srb3q7gq1-f1P6GBf78p8GYUj0DvsXVKLTw@mail.gmail.com>" "<20201119053416.vfvkqvgsmbmp2wnd@moyka>" "<861A949F-D5C8-4AE0-829D-E7C2B4F74137@dwheeler.com>") nil nil nil nil nil nil nil "[oss-security] Re: libass ass_outline.c signed integer overflow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10097 invoked by uid 550); 20 Nov 2020 02:15:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10078 invoked from network); 20 Nov 2020 02:15:41 -0000
Date: Thu, 19 Nov 2020 18:15:28 -0800
From: Ian Zimmerman <itz@very.loosely.org>
To: oss-security@lists.openwall.com
Message-ID: <20201120021528.pduwcibewbab47he@moyka>
References: <CAEFBov0z-zr4q=_srb3q7gq1-f1P6GBf78p8GYUj0DvsXVKLTw@mail.gmail.com>
 <20201119053416.vfvkqvgsmbmp2wnd@moyka>
 <861A949F-D5C8-4AE0-829D-E7C2B4F74137@dwheeler.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <861A949F-D5C8-4AE0-829D-E7C2B4F74137@dwheeler.com>
Subject: [oss-security] Re: libass ass_outline.c signed integer overflow

On 2020-11-19 11:54, David A. Wheeler wrote:

> I read through the issue discussion. As best as I can tell, no one
> filed for a CVE, so there was no CVE.  Did I misunderstand something?
> 
> If my understanding is correct, that is *NOT* a failure of the CVE
> process.

As it often happens to me, what I wrote was too brief to be clear to
everyone.

The longer version would be something like:

  This is an example of a situation where no one filed for a CVE because
  of perceived hurdles in the process, even if the facts didn't justify
  the perception.

Now of course Moritz tells us there is in fact a CVE and indeed I can
locate the issue in Debian's security tracker. I guess it has been
judged not serious enough to need fixing in buster. I disagree but
clearly that is up to the maintainers.

-- 
Ian
