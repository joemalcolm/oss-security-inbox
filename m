X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1298" "Tuesday" "9" "October" "2018" "18:26:43" "-0400" "Perry E. Metzger" "perry@piermont.com" "<20181009182643.5d601a06@jabberwock.cb.piermont.com>" "32" "Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" "^Cc:" nil nil "10" "2018100922:26:43" "[oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" (number mark "        perry@piermo Oct  9   32/1298  " thread-indent "\"Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)\"\n") "<alpine.GSO.2.20.1810091703270.29158@scrappy.simplesystems.org>" ("<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>" "<20181009153006.GF21509@takahe.colorado.edu>" "<CAJ_zFkJZ1E-Wsrp92mvHL6TFmChPECbRsN+JGngqENKHCmALAA@mail.gmail.com>" "<alpine.GSO.2.20.1810091703270.29158@scrappy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12218 invoked by uid 550); 9 Oct 2018 22:26:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12189 invoked from network); 9 Oct 2018 22:26:55 -0000
Message-ID: <20181009182643.5d601a06@jabberwock.cb.piermont.com>
In-Reply-To: <alpine.GSO.2.20.1810091703270.29158@scrappy.simplesystems.org>
References: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
	<20181009153006.GF21509@takahe.colorado.edu>
	<CAJ_zFkJZ1E-Wsrp92mvHL6TFmChPECbRsN+JGngqENKHCmALAA@mail.gmail.com>
	<alpine.GSO.2.20.1810091703270.29158@scrappy.simplesystems.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: oss-security@lists.openwall.com
Date: Tue, 9 Oct 2018 18:26:43 -0400
From: "Perry E. Metzger" <perry@piermont.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ghostscript: bypassing executeonly to escape
 -dSAFER sandbox (CVE-2018-17961)
To: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>

On Tue, 9 Oct 2018 17:14:45 -0500 (CDT) Bob Friesenhahn
<bfriesen@simple.dallas.tx.us> wrote:
> On Tue, 9 Oct 2018, Tavis Ormandy wrote:
> >
> > I think we should encourage switching to other document formats
> > that we have a better handle on securing. If you do need
> > untrusted ps, I think treating it the same as shell script file
> > you downloaded from the internet.  
> 
> Due to its valuable current usages (e.g. printing and format 
> conversion) and its long legacy, Postscript is still a vital format
> to support in open source software.
> 
> How can software consuming Postscript be aware of its origin unless
> it is known to be produced directly by another application?
> 
> Edge applications such as web browsers may be able to help by
> adding warning dialogs when knowingly downloading Postscript
> content.

I keep wondering if there isn't a way to fully remove the dangerous
bits from a postscript interpreter so it can _only_ be used to view
the document and literally has no file system access compiled in at
all, so there's no way to touch the fs etc. regardless of what flags
the interpreter is invoked with.

(I, too, find removing the ability to look at historical postscript
documents a bit more draconian than I like.)

Perry
-- 
Perry E. Metzger		perry@piermont.com
