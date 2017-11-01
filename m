X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["823" "Tuesday" "31" "October" "2017" "20:33:30" "-0600" "Leonid Isaev" "leonid.isaev@jila.colorado.edu" "<20171101023330.GK30551@takahe.colorado.edu>" "20" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "10" "2017110102:33:30" "[oss-security] Fw: Security risk of vim swap files" (number mark "        leonid.isaev Oct 31   20/823   " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171031175407.jcniviupwyab6qcl@sentinelchicken.org>" ("<20171031132352.2df6d2ad@pc1>" "<20171031175407.jcniviupwyab6qcl@sentinelchicken.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26142 invoked by uid 550); 1 Nov 2017 09:12:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3129 invoked from network); 1 Nov 2017 02:33:45 -0000
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.99.2 at jilau1.colorado.edu
Message-ID: <20171101023330.GK30551@takahe.colorado.edu>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20171031132352.2df6d2ad@pc1>
 <20171031175407.jcniviupwyab6qcl@sentinelchicken.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171031175407.jcniviupwyab6qcl@sentinelchicken.org>
User-Agent: Mutt/1.9.0 (2017-09-02)
Date: Tue, 31 Oct 2017 20:33:30 -0600
From: Leonid Isaev <leonid.isaev@jila.colorado.edu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

On Tue, Oct 31, 2017 at 10:54:08AM -0700, Tim wrote:
> Also, it almost never makes sense to put things in /tmp, for several
> reasons pointed out by others.  Making ~/.vim/... the default location
> clearly is the best solution.

And all those reasons make no sense. /tmp has a sticky bit precisely so that
people could put stuff there, as opposed to /run.

Just to clarify:
1. vim creates a swap file applying user's umask.
   Tested with vim on ArchLinux and vi on Fedora, if your vim doesn't do that,
   the corresponding package is broken.
2. It is totally OK to edit files in /tmp or /dev/shm or /var/tmp.
   The described "attack" when someone plants a /tmp/file.swp before another
   user edits /tmp/file is not going to work because vim will complain that the
   swap file already exists.

Cheers,
-- 
Leonid Isaev
