X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["557" "Tuesday" "13" "June" "2017" "13:26:38" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20170613112638.axsgfjy5ntrzylb3@jwilk.net>" "15" "Re: [oss-security] Vixie/ISC Cron group crontab to root escalation" "^Date:" nil nil "6" "2017061311:26:38" "[oss-security] Vixie/ISC Cron group crontab to root escalation" (number mark "        jwilk@jwilk. Jun 13   15/557   " thread-indent "\"Re: [oss-security] Vixie/ISC Cron group crontab to root escalation\"\n") "<2ECE9D9EEF1F524185270138AE23265955AB00AF@S0MSMAIL112.arc.local>" ("<2ECE9D9EEF1F524185270138AE23265955AB00AF@S0MSMAIL112.arc.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1807 invoked by uid 550); 13 Jun 2017 11:26:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1776 invoked from network); 13 Jun 2017 11:26:52 -0000
Message-ID: <20170613112638.axsgfjy5ntrzylb3@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <2ECE9D9EEF1F524185270138AE23265955AB00AF@S0MSMAIL112.arc.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <2ECE9D9EEF1F524185270138AE23265955AB00AF@S0MSMAIL112.arc.local>
User-Agent: NeoMutt/20170306 (1.8.0)
X-Ovh-Tracer-Id: 14695245585044592550
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeeljedrjeefgdegudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Date: Tue, 13 Jun 2017 13:26:38 +0200
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Vixie/ISC Cron group crontab to root escalation
To: oss-security@lists.openwall.com

* Fiedler Roman <Roman.Fiedler@ait.ac.at>, 2017-06-13, 07:45:
>>>Thanks, perhaps a comment in the code can't hurt...
>>>Or even O_NODEV which does not exist, or O_PATH (linux only)..
>>
>>As there is a O_DIRECTORY it would be more orthogonal to have O_REGULAR (open 
>>only a regular file). But that becomes more and more icky as we're running 
>>out of 32 bits of O_*)
>
>Why not stop that at all and have an O_POLICY,

With help of O_PATH, you can implement almost any sanity check in userspace.
No need to reinvent this particular wheel.

-- 
Jakub Wilk
