X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["277" "Thursday" "29" "September" "2016" "12:32:10" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20160929103210.bm5itc2cu4a672ws@jwilk.net>" "9" "Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape" "^Date:" nil nil "9" "2016092910:32:10" "[oss-security] CVE-2016-7545 -- SELinux sandbox escape" (number mark "        jwilk@jwilk. Sep 29    9/277   " thread-indent "\"Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape\"\n") "<20160926175302.D6C8417FDAB@rebar.astron.com>" ("<20160926165409.ekk6dztdpttnnf67@jwilk.net>" "<20160926175302.D6C8417FDAB@rebar.astron.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22449 invoked by uid 550); 29 Sep 2016 10:32:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22431 invoked from network); 29 Sep 2016 10:32:24 -0000
Message-ID: <20160929103210.bm5itc2cu4a672ws@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20160926165409.ekk6dztdpttnnf67@jwilk.net>
 <20160926175302.D6C8417FDAB@rebar.astron.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20160926175302.D6C8417FDAB@rebar.astron.com>
User-Agent: NeoMutt/20160916 (1.7.0)
X-Ovh-Tracer-Id: 17126344958604466086
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelvddrudelgddvhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecu
Date: Thu, 29 Sep 2016 12:32:10 +0200
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape
To: oss-security@lists.openwall.com

* Christos Zoulas <christos@zoulas.com>, 2016-09-26, 13:53:
>On the BSDs TIOCSTI has been limited to the superuser since the 4.4BSD Lite 2 
>release in 1995 (IIRC).

Hmm. I've just tried OpenBSD 5.7 and FreeBSD 10.3, and TIOCSTI works fine for 
non-root users.

-- 
Jakub Wilk
