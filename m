X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["623" "Tuesday" "9" "February" "2021" "19:24:26" "+0200" "Harry Sintonen" "sintonen@iki.fi" "<alpine.DEB.2.21.2102091921540.21881@o7.fi>" "15" "Re: [oss-security] screen crash processing combining characters" "^Date:" nil nil "2" "2021020917:24:26" "[oss-security] screen crash processing combining characters" (number mark "        sintonen@iki Feb  9   15/623   " thread-indent "\"Re: [oss-security] screen crash processing combining characters\"\n") "<rvubtf$lnv$1@ciao.gmane.io>" ("<rvubtf$lnv$1@ciao.gmane.io>") nil nil nil nil nil nil nil "Re: [oss-security] screen crash processing combining characters" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26416 invoked by uid 550); 9 Feb 2021 17:29:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24550 invoked from network); 9 Feb 2021 17:24:39 -0000
X-X-Sender: p@o7.fi
In-Reply-To: <rvubtf$lnv$1@ciao.gmane.io>
Message-ID: <alpine.DEB.2.21.2102091921540.21881@o7.fi>
References: <rvubtf$lnv$1@ciao.gmane.io>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Date: Tue, 9 Feb 2021 19:24:26 +0200 (EET)
From: Harry Sintonen <sintonen@iki.fi>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] screen crash processing combining characters
To: oss-security@lists.openwall.com

On Tue, 9 Feb 2021, Tavis Ormandy wrote:

> Hello, I noticed someone posted this to the screen-devel list. I can
> reproduce it here, just catting the testcase does crash my screen
> session.
>
> https://lists.gnu.org/archive/html/screen-devel/2021-02/msg00000.html

I managed to reproduce this against screen + irssi. It was a bit tricky to 
get it triggered but eventually screen did die.

-- 
l=2001;main(i){float o,O,_,I,D;for(;O=I=l/571.-1.75,l;)for(putchar(--l%80?
i:10),o=D=l%80*.05-2,i=31;_=O*O,O=2*o*O+I,o=o*o-_+D,o+_+_<4+D&i++<87;);puts
("  Harry 'Piru' Sintonen <sintonen@iki.fi> https://www.iki.fi/sintonen");}
