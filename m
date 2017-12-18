X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1083" "Monday" "18" "December" "2017" "15:04:14" "-0700" "Leonid Isaev" "leonid.isaev@jila.colorado.edu" "<20171218220414.GA10960@takahe.colorado.edu>" "23" "Re: [oss-security] Recommendations GnuPG-2 replacement" "^Date:" nil nil "12" "2017121822:04:14" "[oss-security] Recommendations GnuPG-2 replacement" (number mark "        leonid.isaev Dec 18   23/1083  " thread-indent "\"Re: [oss-security] Recommendations GnuPG-2 replacement\"\n") "<814-1513628516.856754@MaI1.D5wz.7Roo>" ("<20171207210134.GA7079@openwall.com>" "<2172-1513501568.968862@pLoG.Le7g.f3CQ>" "<87tvwoowng.fsf@fifthhorseman.net>" "<814-1513628516.856754@MaI1.D5wz.7Roo>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28615 invoked by uid 550); 18 Dec 2017 22:18:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15707 invoked from network); 18 Dec 2017 22:04:31 -0000
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.99.2 at jilau1.colorado.edu
Message-ID: <20171218220414.GA10960@takahe.colorado.edu>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20171207210134.GA7079@openwall.com>
 <2172-1513501568.968862@pLoG.Le7g.f3CQ>
 <87tvwoowng.fsf@fifthhorseman.net>
 <814-1513628516.856754@MaI1.D5wz.7Roo>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <814-1513628516.856754@MaI1.D5wz.7Roo>
User-Agent: Mutt/1.9.1 (2017-09-22)
Date: Mon, 18 Dec 2017 15:04:14 -0700
From: Leonid Isaev <leonid.isaev@jila.colorado.edu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Recommendations GnuPG-2 replacement
To: oss-security@lists.openwall.com

On Mon, Dec 18, 2017 at 08:21:56PM +0000, halfdog wrote:
> The point in starting this thread was, that GnuPG does NOT conveniently
> cover usecases for headless or scripting operation. Thus it seems
> that the time has come to look for replacement, as GnuPG is moving
> more in the "desktop" direction, as also your comments indicate.

You are talking about policies here, not technical issues. Gnupg is perfectly
scriptable, see pacman-key(1) tool in Arch Linux. Moreover, gpg-agent is easily
usable on a headless machine. At least, I mostly use it this way when checking
email... You will lose nothing if you just pkill(1) gpg-agent though. So I
don't understand why you claim that gpg is moving towards desktop.

> That's really a strange argument. You fear PTRACING for key extraction
> of a short-lived, per-key instance of gpg1 process and solve that
> by putting all the key material into a single long-lived gpg-agent
> process, not even providing convenient commands to flush the keys
> from there?

pkill -hup gpg-agent. Please read the manpages.

Cheers,
-- 
Leonid Isaev
