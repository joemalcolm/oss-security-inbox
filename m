X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["903" "Monday" "9" "December" "2019" "15:18:08" "+0000" "Leonid Isaev" "leonid.isaev@ifax.com" nil "25" nil "^Date:" nil nil "12" nil nil (number mark "        leonid.isaev Dec  9   25/903   " thread-indent "\"Re: [oss-security] Shell wildcards considered dangerous?\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Shell wildcards considered dangerous?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11532 invoked by uid 550); 9 Dec 2019 15:22:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9276 invoked from network); 9 Dec 2019 15:18:21 -0000
Message-ID: <20191209151808.GA35251@orca>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAGUWgD-yn2kf3T69ri7ahcCfKm=kiMBnxeb84mnH-qqYWQNUdg@mail.gmail.com>
 <8bd059ae-5faa-46fa-71d0-bb0f61ea8e62@thermi.consulting>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8bd059ae-5faa-46fa-71d0-bb0f61ea8e62@thermi.consulting>
Date: Mon, 9 Dec 2019 15:18:08 +0000
From: Leonid Isaev <leonid.isaev@ifax.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Shell wildcards considered dangerous?
To: oss-security@lists.openwall.com

On Mon, Dec 09, 2019 at 03:42:47PM +0100, Noel Kuntze wrote:
> That is only a problem if the developer(s) foolishly didn't use "--" to
> terminate the command line options or they did, but the argument parser of
> the called program does not understand that "--" is a command line option
> terminator.

I'm sorry, but this has nothing to do with developers of PROGRAM to use or not
user "--", but rather with the user not properly sanitizing the input to the
PROGRAM and not understanding how shell works. Specifically, doing
PROGRAM *.tar is just asking for trouble for many reasons, not mentioned in the
original email. See [1] (and in general BashPitfalls) for a proper discussion...

HTH,
L.

[1] https://mywiki.wooledge.org/BashPitfalls#for_f_in_.24.28ls_.2A.mp3.29

-- 
Leonid Isaev
Linux Support Engineer
iFAX Solutions, Inc.
www.ifax.com

+1.215.825.8700 ext 8126 (office)
+1.215.825.8767 (fax)
