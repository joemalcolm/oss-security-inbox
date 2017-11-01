X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["774" "Wednesday" "1" "November" "2017" "10:04:59" "+0000" "Simon McVittie" "smcv@debian.org" "<20171101100459.kfu6dabrzj7ymt4d@perpetual.pseudorandom.co.uk>" "25" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110110:04:59" "[oss-security] Fw: Security risk of vim swap files" (number mark "        smcv@debian. Nov  1   25/774   " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171101023330.GK30551@takahe.colorado.edu>" ("<20171031132352.2df6d2ad@pc1>" "<20171031175407.jcniviupwyab6qcl@sentinelchicken.org>" "<20171101023330.GK30551@takahe.colorado.edu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28270 invoked by uid 550); 1 Nov 2017 10:05:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28240 invoked from network); 1 Nov 2017 10:05:28 -0000
Message-ID: <20171101100459.kfu6dabrzj7ymt4d@perpetual.pseudorandom.co.uk>
References: <20171031132352.2df6d2ad@pc1>
 <20171031175407.jcniviupwyab6qcl@sentinelchicken.org>
 <20171101023330.GK30551@takahe.colorado.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171101023330.GK30551@takahe.colorado.edu>
User-Agent: NeoMutt/20170609 (1.8.3)
Date: Wed, 1 Nov 2017 10:04:59 +0000
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

On Tue, 31 Oct 2017 at 20:33:30 -0600, Leonid Isaev wrote:
> 1. vim creates a swap file applying user's umask.

More specifically, this should be (and does indeed seem to be) the
permissions of the file being edited, masked by the user's umask -
so that if have a loose umask and I edit a secret file, the swap file
doesn't leak its contents.

~/tmp/vim% umask
022
~/tmp/vim% ls -Al
total 4
-rw------- 1 smcv smcv 8 Nov  1 09:50 secret-file
~/tmp/vim% gvim secret-file
~/tmp/vim% ls -Al
total 16
-rw------- 1 smcv smcv 12288 Nov  1 09:50 .secret-file.swp
-rw------- 1 smcv smcv     8 Nov  1 09:50 secret-file

A more naive implementation might have created .secret-file.swp with
-rw-r--r-- permissions according to my umask, but that would have been
bad.

Regards,
    smcv
