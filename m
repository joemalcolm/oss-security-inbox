X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1244" "Friday" "20" "July" "2018" "17:47:24" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20180720154723.5rgdhg2n5nj5bgce@jwilk.net>" "30" "Re: [oss-security] accountsservice: insufficient path check in user_change_icon_file_authorized_cb()" "^Date:" nil nil "7" "2018072015:47:24" "[oss-security] accountsservice: insufficient path check in user_change_icon_file_authorized_cb()" (number mark "U       jwilk@jwilk. Jul 20   30/1244  " thread-indent "\"Re: [oss-security] accountsservice: insufficient path check in user_change_icon_file_authorized_cb()\"\n") "<20180702143801.GG8324@f195.suse.de>" ("<20180702122122.GD8324@f195.suse.de>" "<20180702141024.iudvf2tx7fsf3q66@jwilk.net>" "<20180702143801.GG8324@f195.suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9984 invoked by uid 550); 20 Jul 2018 15:47:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9966 invoked from network); 20 Jul 2018 15:47:39 -0000
Message-ID: <20180720154723.5rgdhg2n5nj5bgce@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20180702122122.GD8324@f195.suse.de>
 <20180702141024.iudvf2tx7fsf3q66@jwilk.net>
 <20180702143801.GG8324@f195.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20180702143801.GG8324@f195.suse.de>
User-Agent: NeoMutt/20180716
X-Ovh-Tracer-Id: 292452501408241574
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedtiedrieeigdekiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Date: Fri, 20 Jul 2018 17:47:24 +0200
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] accountsservice: insufficient path check in
 user_change_icon_file_authorized_cb()
To: oss-security@lists.openwall.com

* Matthias Gerstner <mgerstner@suse.de>, 2018-07-02, 16:38:
>>>I think the easiest way to fix this is to normalize the user supplied 
>>>filename e.g. using realpath()
>>
>>Using realpath(3) for access control is almost always a mistake: this 
>>function expands symlinks, including attacker-controlled symlinks.
>
>can you elaborate what your main worry of using realpath is in this 
>context?

AIUI, in your original patch, canonicalized path was used for prefix 
check, but then the orignal was stored. If you used realpath() for 
canonicalization, the attacker could make a symlink that points to 
/usr/share/icons/moo.png, so that the check passes, and then switch 
the symlink to something else.

But in the patch that went upstream[0], it's the canonicalized path that 
is stored, which is probably a good idea anyway.

Another problem with realpath(), unrelated to symlinks, is that if it's 
run as root, it could reveal to the attacker whether an 
otherwise-inaccessible directory exists. For example, 
realpath("/home/bob/foobar/../../../usr/share/icons/moo.png", ...) would 
succeed iff /home/bob/foobar/ existed.


[0] https://cgit.freedesktop.org/accountsservice/commit/?id=f9abd359f71a5bce421b9ae23432f539a067847a

-- 
Jakub Wilk
