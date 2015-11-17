X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["739" "Tuesday" "17" "November" "2015" "17:11:39" "-0500" "Rich Felker" "dalias@libc.org" "<20151117221139.GE3818@brightrain.aerifal.cx>" "15" "Re: [oss-security] Re: Fwd: x86 ROP mitigation" nil nil nil "11" "2015111722:11:39" "[oss-security] Re: Fwd: x86 ROP mitigation" (number mark "U       dalias@libc. Nov 17   15/739   " thread-indent "\"Re: [oss-security] Re: Fwd: x86 ROP mitigation\"\n") "<564B7757.6080100@gmail.com>" ("<20151117153951.GA28672@openwall.com>" "<564B52D6.9090205@t-online.de>" "<564B54BA.6090203@redhat.com>" "<564B6536.2030908@redhat.com>" "<564B7757.6080100@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1951 invoked by uid 550); 17 Nov 2015 22:11:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1929 invoked from network); 17 Nov 2015 22:11:52 -0000
Date: Tue, 17 Nov 2015 17:11:39 -0500
From: Rich Felker <dalias@libc.org>
To: oss-security@lists.openwall.com
Message-ID: <20151117221139.GE3818@brightrain.aerifal.cx>
References: <20151117153951.GA28672@openwall.com>
 <564B52D6.9090205@t-online.de>
 <564B54BA.6090203@redhat.com>
 <564B6536.2030908@redhat.com>
 <564B7757.6080100@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <564B7757.6080100@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: Rich Felker <dalias@aerifal.cx>
Subject: Re: [oss-security] Re: Fwd: x86 ROP mitigation

On Tue, Nov 17, 2015 at 01:52:07PM -0500, Daniel Micay wrote:
> Is that really the right approach vs. preventing hijacking of flow
> control via return pointers and function pointers? It doesn't really
> seem like there's an end game in mind where it actually prevents ROP
> rather than just removing many useful gadgets. Making useful ROP gadgets
> harder to find doesn't mean much, since tools are used to find them and
> the tools can be improved if it becomes necessary.
> 
> i.e. why not just go with something like PaX's RAP

My understanding is that it's not ABI-compatible with non-RAP code, so
you'd essentially be going with a whole new ABI. If so, this is going
to be completely impractical for most users. Am I mistaken?

Rich
