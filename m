X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["942" "Wednesday" "1" "November" "2017" "15:55:38" "+0100" "Jakub Wilk" "jwilk@jwilk.net" "<20171101145538.yohxjiyyinlvcliv@jwilk.net>" "29" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110114:55:38" "[oss-security] Fw: Security risk of vim swap files" (number mark "        jwilk@jwilk. Nov  1   29/942   " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171101023330.GK30551@takahe.colorado.edu>" ("<20171031132352.2df6d2ad@pc1>" "<20171031175407.jcniviupwyab6qcl@sentinelchicken.org>" "<20171101023330.GK30551@takahe.colorado.edu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25908 invoked by uid 550); 1 Nov 2017 14:56:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25868 invoked from network); 1 Nov 2017 14:56:01 -0000
Message-ID: <20171101145538.yohxjiyyinlvcliv@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20171031132352.2df6d2ad@pc1>
 <20171031175407.jcniviupwyab6qcl@sentinelchicken.org>
 <20171101023330.GK30551@takahe.colorado.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20171101023330.GK30551@takahe.colorado.edu>
User-Agent: NeoMutt/20170609 (1.8.3)
X-Ovh-Tracer-Id: 16173833637365929894
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedttddrgeeggdejfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Date: Wed, 1 Nov 2017 15:55:38 +0100
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

* Leonid Isaev <leonid.isaev@jila.colorado.edu>, 2017-10-31, 20:33:
>Just to clarify:
>1. vim creates a swap file applying user's umask.

I reproduced Kurt's findings on Debian unstable. Vim chmods the swapfile 
without honouring umask.

It does seem to keep read permissions of the original file, which is not 
the same thing as honouring umask, and which is a rather dubious 
behavior, especially when editing files belonging to other users.

>2. It is totally OK to edit files in /tmp or /dev/shm or /var/tmp.

No, it's not.

>The described "attack" when someone plants a /tmp/file.swp before 
>another user edits /tmp/file is not going to work because vim will 
>complain that the swap file already exists.

Sounds like a successful (albeit mild) DoS attack to me.
But it's worse than that. vim attempts to read the swapfile before 
showing you the complaint:

$ mkfifo -m 644 /tmp/.bar.swp
$ vim /tmp/bar
[hangs forever]

-- 
Jakub Wilk
