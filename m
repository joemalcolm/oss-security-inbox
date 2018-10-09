X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["458" "Tuesday" "9" "October" "2018" "09:30:06" "-0600" "Leonid Isaev" "leonid.isaev@jila.colorado.edu" "<20181009153006.GF21509@takahe.colorado.edu>" "17" "Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" nil nil nil "10" "2018100915:30:06" "[oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" (number mark "U       leonid.isaev Oct  9   17/458   " thread-indent "\"Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)\"\n") "<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>" ("<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13374 invoked by uid 550); 9 Oct 2018 16:52:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3413 invoked from network); 9 Oct 2018 15:30:22 -0000
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.99.2 at jilau1.colorado.edu
Date: Tue, 9 Oct 2018 09:30:06 -0600
From: Leonid Isaev <leonid.isaev@jila.colorado.edu>
To: oss-security@lists.openwall.com
Message-ID: <20181009153006.GF21509@takahe.colorado.edu>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] ghostscript: bypassing executeonly to escape
 -dSAFER sandbox (CVE-2018-17961)

On Tue, Oct 09, 2018 at 06:58:39AM -0700, Tavis Ormandy wrote:
> Full working exploit that works in the last few versions is attached,
> viewing it in evince, imagemagick, gimp, okular, etc should add a line to
> ~/.bashrc.

Add zathura to the above list :)

> p.s. plz can we deprecate untrusted postscript :(

Which means any postscript file downloaded from the internet... Then how should
people read arXiv.org, for example?

Thanks,
L.

-- 
Leonid Isaev
