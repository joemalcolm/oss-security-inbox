X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1126" "Monday" "21" "September" "2015" "16:43:46" "+0000" "David Holland" "dholland-oss-security@netbsd.org" "<20150921164346.GA11060@netbsd.org>" "26" "Re: [oss-security] s/party/hack like it's 1999" nil nil nil "9" "2015092116:43:46" "[oss-security] s/party/hack like it's 1999" (number mark "        dholland-oss Sep 21   26/1126  " thread-indent "\"Re: [oss-security] s/party/hack like it's 1999\"\n") "<20150920032631.GA2301@openwall.com>" ("<20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>" "<CAJWnFaP4QGvJxsJes7fmud787xG=vuh+AFiYPh79kiSLOe-rOA@mail.gmail.com>" "<20150919233415.GA31305@openwall.com>" "<20150920022811.GJ17773@brightrain.aerifal.cx>" "<20150920032631.GA2301@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30190 invoked by uid 550); 21 Sep 2015 16:44:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30159 invoked from network); 21 Sep 2015 16:43:59 -0000
Message-ID: <20150921164346.GA11060@netbsd.org>
References: <20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>
 <CAJWnFaP4QGvJxsJes7fmud787xG=vuh+AFiYPh79kiSLOe-rOA@mail.gmail.com>
 <20150919233415.GA31305@openwall.com>
 <20150920022811.GJ17773@brightrain.aerifal.cx>
 <20150920032631.GA2301@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150920032631.GA2301@openwall.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Mon, 21 Sep 2015 16:43:46 +0000
From: David Holland <dholland-oss-security@netbsd.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] s/party/hack like it's 1999
To: oss-security@lists.openwall.com

On Sun, Sep 20, 2015 at 06:26:31AM +0300, Solar Designer wrote:
 > > Note that all that was needed for this to happen was for a stray C2
 > > byte from one writer to get injected just before the character-final
 > > 9B byte of a multibyte character from another writer. I specifically
 > > chose my example so that both writers output data which is well-formed
 > > and printable UTF-8, but that was not necessary.
 > > 
 > > Since I see no reasonable application-side mitigation for this, I
 > 
 > Yeah.  A user's mitigation may be to avoid running multiple programs at
 > a time on a UTF-8 terminal.  E.g. running "ps &" appears unsafe
 > (although is indeed unlikely to actually be used in a successful
 > attack), even if "ps" replaces control characters with question marks.

I have been arguing for years (but without success) that vt bomb
injection needs to be blocked in the tty driver. This problem
(corruption of concurrent UTF-8 streams) needs to be too, as a matter
of correctness and not even security.

You can stty +tostop, but that won't really help very much.

Sigh.

-- 
David A. Holland
dholland@netbsd.org
