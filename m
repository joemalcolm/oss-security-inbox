X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2183" "Saturday" "7" "August" "2021" "23:53:18" "+0200" "Axel Beckert" "abe@debian.org" nil "48" "Re: [oss-security] Re: Bug#991971: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)" nil nil nil "8" nil nil (number mark "U       abe@debian.o Aug  7   48/2183  " thread-indent "\"Re: [oss-security] Re: Bug#991971: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: Bug#991971: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28046 invoked by uid 550); 7 Aug 2021 22:05:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17487 invoked from network); 7 Aug 2021 21:53:30 -0000
Date: Sat, 7 Aug 2021 23:53:18 +0200
From: Axel Beckert <abe@debian.org>
To: Ariadne Conill <ariadne@dereferenced.org>
Cc: Salvatore Bonaccorso <carnil@debian.org>,
	oss-security@lists.openwall.com, lynx-dev@nongnu.org
Message-ID: <20210807215316.gfuujxnzj6lkb57x@sym.noone.org>
Mail-Followup-To: Ariadne Conill <ariadne@dereferenced.org>,
	Salvatore Bonaccorso <carnil@debian.org>,
	oss-security@lists.openwall.com, lynx-dev@nongnu.org
References: <20210807201317.ow27rxtpcdkgsxuj@sym.noone.org>
 <bd75b23c-3e7d-a52d-7df8-501d5e30a7f3@dereferenced.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bd75b23c-3e7d-a52d-7df8-501d5e30a7f3@dereferenced.org>
X-Operating-System: Linux 4.9.0-16-amd64
X-Machine: sym2 x86_64
X-Editor: GNU Emacs 25.1.1
Face: iVBORw0KGgoAAAANSUhEUgAAADAAAAAwBAAAAAC3mUtaAAAABGdBTUEAALGPC/xhBQAAADh0RVh0U29mdHdhcmUAWFYgVmVyc2lvbiAzLjEwYSAgUmV2OiAxMi8yOS85NCAoUE5HIHBhdGNoIDEuMindFS5JAAACGElEQVQ4jXXQMU8UYRDG8f8shNjdDH4AbpfGDjAWlKiJiZ0ajL1aGCvsNCbGaCGG1koLaztaTYz6ATy+gOyehYmF3MxVxgg3FnDsHcTpJr/M+8w7Rf6nCsaVTTDqxbg9hoOXmw83H71+Eyfg4E1d7/Z2fG9rGkZbTQiu+K+3U/C+76lmkvAhJuDndnoAiftou4V84okAGclop4U/jYACZDTxrYWP0gkxVfAm/W//GLZpxIzwIN0Hn8dw0B+IWkZmQmRsj2HfhwokEklHfNCCiQCRgAR7YyhQVRVTCKCzP4Y5zBBE0t0zY3Q8oQaBqqAMlVEcgVQd9706zGirAFium8HXumlMIeMwqQCInju+2+uB6MRENupdpMt8pRlHZyuAW0F+Mb6XSIVqtxjD+iVmVqqystLEzFTGT92YqRaXpNT5eTVjeJhbALPnrTxLUZUKZsgxcNm64hAOYisT/xhF+oKTGU5RegtC3Rt6eEDi/QnIevdTx9Md2EMmYBRmCQR1026FCGQQJJExsRUqgkMGaWSbwYLnoO4T6VgpbQbdELPMBAHWWrhYrcxXnYgAsatPWygkFCBD4K62MAsOTqA6szYRPpsu6e6Y8mPiVrBMNuGIMrgwBUu4p2DgG1Ownu6hpuTv7hScefHAzAC/yRRw5U5pALMbJ4AUALvHSZhxgHPXTsHcdWD1GadAHr9avP+c0wCr7263Df8ASLwXWHWs+KIAAAAHdElNRQfYBQEBODPr
Organization: The Debian Project
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [oss-security] Re: Bug#991971: [Lynx-dev] bug in Lynx' SSL
 certificate validation -> leaks password in clear text via SNI (under some
 circumstances)

Hi Ariadne,

[Dropping the Debian-specific recipients as this is no more related to
the maintenance of Debian's lynx package.]

Ariadne Conill wrote:
> > Citing from Ariadne's mail:
> > > The issue itself is far more severe: HTParse() does not understand
> > > the authn part of the URI at all.
> > […]
> > > But it will also leak in the Host: header on unencrypted
> > > connections, and also probably SSL ones too.
> > 
> > But that looks to me as if Ariadne just refers to the code and hasn't
> > actually checked it by trying it. Nevertheless thanks to Ariadne for
> > having had a look and proposing a patch!
> 
> Yes, this was my guess since HTParse() doesn't understand the authn part.
> But this seems like a rather unfortunate design: parse the URI wrong, and
> then "fix" it later?  Why not just parse the URI right, to begin with?

I agree that it looks a bit unconventional and unintuitive. But I
assume this is because Lynx is actually older than the WWW. According
to Wikipedia[1], Lynx "is oldest web browser still being maintained,
having started in 1992". It was initially written for another
hypertext protocol (something university-internal and gopher-ish
according to Wikipedia -- English and German Wikipedia tell slightly
different stories here).

So it has quite some amount of history in its code and probably
especially in its code structure. And compared to those nearly 30
years, the Host header probably came in only after 5 years of
developement with HTTP/1.1 in 1997 or so. (And SNI much, much later,
kinda "just recently".) So I kinda have some understanding for this
unintuitive locations as most of the code is historically grown.

Then again, big kudos to Thomas Dickey for still maintaining and
developing Lynx. It can't be that easy to maintain a niche program
with a code base which such a long history.

[1] https://en.wikipedia.org/wiki/Lynx_(web_browser)

		Regards, Axel
-- 
 ,''`.  |  Axel Beckert <abe@debian.org>, https://people.debian.org/~abe/
: :' :  |  Debian Developer, ftp.ch.debian.org Admin
`. `'   |  4096R: 2517 B724 C5F6 CA99 5329  6E61 2FF9 CD59 6126 16B5
  `-    |  1024D: F067 EA27 26B9 C3FC 1486  202E C09E 1D89 9593 0EDE
