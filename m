X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["445" "Monday" "2" "July" "2018" "16:10:24" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20180702141024.iudvf2tx7fsf3q66@jwilk.net>" "12" "Re: [oss-security] accountsservice: insufficient path check in user_change_icon_file_authorized_cb()" "^Date:" nil nil "7" "2018070214:10:24" "[oss-security] accountsservice: insufficient path check in user_change_icon_file_authorized_cb()" (number mark "        jwilk@jwilk. Jul  2   12/445   " thread-indent "\"Re: [oss-security] accountsservice: insufficient path check in user_change_icon_file_authorized_cb()\"\n") "<20180702122122.GD8324@f195.suse.de>" ("<20180702122122.GD8324@f195.suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1460 invoked by uid 550); 2 Jul 2018 14:10:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1433 invoked from network); 2 Jul 2018 14:10:41 -0000
Message-ID: <20180702141024.iudvf2tx7fsf3q66@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20180702122122.GD8324@f195.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20180702122122.GD8324@f195.suse.de>
User-Agent: NeoMutt/20180512
X-Ovh-Tracer-Id: 3626523600931903398
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedtiedrvdejgdejfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Date: Mon, 2 Jul 2018 16:10:24 +0200
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] accountsservice: insufficient path check in
 user_change_icon_file_authorized_cb()
To: oss-security@lists.openwall.com

* Matthias Gerstner <mgerstner@suse.de>, 2018-07-02, 14:21:
>I think the easiest way to fix this is to normalize the user supplied 
>filename e.g. using realpath()

Using realpath(3) for access control is almost always a mistake: this 
function expands symlinks, including attacker-controlled symlinks.

You patch uses g_file_get_path(), which AFIACT doesn't use any 
filesystem I/O for canonicalisation, so that should be fine.

-- 
Jakub Wilk
