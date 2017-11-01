X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1358" "Wednesday" "1" "November" "2017" "16:14:20" "-0600" "Leonid Isaev" "leonid.isaev@jila.colorado.edu" "<20171101221420.GA23969@takahe.colorado.edu>" "41" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110122:14:20" "[oss-security] Fw: Security risk of vim swap files" (number mark "        leonid.isaev Nov  1   41/1358  " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171101145538.yohxjiyyinlvcliv@jwilk.net>" ("<20171031132352.2df6d2ad@pc1>" "<20171031175407.jcniviupwyab6qcl@sentinelchicken.org>" "<20171101023330.GK30551@takahe.colorado.edu>" "<20171101145538.yohxjiyyinlvcliv@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29994 invoked by uid 550); 2 Nov 2017 00:12:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32134 invoked from network); 1 Nov 2017 22:14:37 -0000
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.99.2 at jilau1.colorado.edu
Message-ID: <20171101221420.GA23969@takahe.colorado.edu>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20171031132352.2df6d2ad@pc1>
 <20171031175407.jcniviupwyab6qcl@sentinelchicken.org>
 <20171101023330.GK30551@takahe.colorado.edu>
 <20171101145538.yohxjiyyinlvcliv@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171101145538.yohxjiyyinlvcliv@jwilk.net>
User-Agent: Mutt/1.9.0 (2017-09-02)
Date: Wed, 1 Nov 2017 16:14:20 -0600
From: Leonid Isaev <leonid.isaev@jila.colorado.edu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

On Wed, Nov 01, 2017 at 03:55:38PM +0100, Jakub Wilk wrote:
> * Leonid Isaev <leonid.isaev@jila.colorado.edu>, 2017-10-31, 20:33:
> > Just to clarify:
> > 1. vim creates a swap file applying user's umask.
> 
> I reproduced Kurt's findings on Debian unstable. Vim chmods the swapfile
> without honouring umask.
> 
> It does seem to keep read permissions of the original file, which is not the
> same thing as honouring umask, and which is a rather dubious behavior,
> especially when editing files belonging to other users.

Hmm, my umask is 0077, and vim creates swap files with permissions 600. But I
never used debian, so dunno...

> 
> > 2. It is totally OK to edit files in /tmp or /dev/shm or /var/tmp.
> 
> No, it's not.

Except when you want to avoid writes to the /home filesystem...

> 
> > The described "attack" when someone plants a /tmp/file.swp before
> > another user edits /tmp/file is not going to work because vim will
> > complain that the swap file already exists.
> 
> Sounds like a successful (albeit mild) DoS attack to me.
> But it's worse than that. vim attempts to read the swapfile before showing
> you the complaint:
> 
> $ mkfifo -m 644 /tmp/.bar.swp
> $ vim /tmp/bar
> [hangs forever]

Yes, I agree there are some inconveniences, but there is no information
disclosure others seem to have pointed out.

Cheers,
-- 
Leonid Isaev
