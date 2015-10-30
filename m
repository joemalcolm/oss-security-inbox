X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1229" "Friday" "30" "October" "2015" "15:34:22" "-0400" "Rich Felker" "dalias@libc.org" "<20151030193422.GH8645@brightrain.aerifal.cx>" "26" "Re: [oss-security] Re: Pointer misuse unziping files with busybox" nil nil nil "10" "2015103019:34:22" "[oss-security] Re: Pointer misuse unziping files with busybox" (number mark "        dalias@libc. Oct 30   26/1229  " thread-indent "\"Re: [oss-security] Re: Pointer misuse unziping files with busybox\"\n") "<20151029060451.38E3F6C00ED@smtpvmsrv1.mitre.org>" ("<CACn5sdRFRE-eTpgGdJr8hok0phUFtXHGAF_k3OAe1R46a1Nv9g@mail.gmail.com>" "<20151029060451.38E3F6C00ED@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19972 invoked by uid 550); 30 Oct 2015 19:34:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19951 invoked from network); 30 Oct 2015 19:34:38 -0000
Message-ID: <20151030193422.GH8645@brightrain.aerifal.cx>
References: <CACn5sdRFRE-eTpgGdJr8hok0phUFtXHGAF_k3OAe1R46a1Nv9g@mail.gmail.com>
 <20151029060451.38E3F6C00ED@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151029060451.38E3F6C00ED@smtpvmsrv1.mitre.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: gustavo.grieco@gmail.com, cve-assign@mitre.org
Date: Fri, 30 Oct 2015 15:34:22 -0400
From: Rich Felker <dalias@libc.org>
Reply-To: oss-security@lists.openwall.com
Sender: Rich Felker <dalias@aerifal.cx>
Subject: Re: [oss-security] Re: Pointer misuse unziping files with busybox
To: oss-security@lists.openwall.com

On Thu, Oct 29, 2015 at 02:04:51AM -0400, cve-assign@mitre.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
> 
> > http://git.busybox.net/busybox/commit/?id=1de25a6e87e0e627aa34298105a3d17c60a1f44e
> 
> > Unziping a specially crafted zip file results in a computation of an invalid
> > pointer and a crash reading an invalid address.
> 
> Could you please comment directly about the likelihood of
> exploitability for code execution? See the
> http://www.openwall.com/lists/oss-security/2015/10/11/5 post. We
> currently feel that a CVE assignment for a non-exploitable unzip crash
> on BusyBox may be unlikely, because BusyBox wouldn't realistically be
> used for deployment of a program that remains running to offer an
> unzipping service to multiple clients.

There are several distributions including Alpine Linux, widely used in
container environments, which by default use busybox to provide the
unzip utility. Unzipping of any files downloaded by the user, possibly
from untrusted sources, may be affected. I believe CVE is appropriate
for user-facing programs commonly used to open untrusted files even
without an automated process accepting and processing
potentially-malicious files from a client.

Rich
