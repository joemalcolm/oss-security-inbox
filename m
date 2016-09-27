X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["375" "Tuesday" "27" "September" "2016" "16:25:00" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20160927142500.3x26pcrhw5x4nt6s@jwilk.net>" "15" "Re: [oss-security] ImageMagick identify \"d:\" hangs" "^Date:" nil nil "9" "2016092714:25:00" "[oss-security] ImageMagick identify \"d:\" hangs" (number mark "        jwilk@jwilk. Sep 27   15/375   " thread-indent "\"Re: [oss-security] ImageMagick identify \"d:\" hangs\"\n") "<alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>" ("<alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3206 invoked by uid 550); 27 Sep 2016 14:25:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3185 invoked from network); 27 Sep 2016 14:25:30 -0000
Message-ID: <20160927142500.3x26pcrhw5x4nt6s@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>
User-Agent: NeoMutt/20160916 (1.7.0)
X-Ovh-Tracer-Id: 9316821731790673830
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelvddrudehgdejgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecu
Date: Tue, 27 Sep 2016 16:25:00 +0200
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick identify "d:" hangs
To: oss-security@lists.openwall.com

* Bob Friesenhahn <bfriesen@simple.dallas.tx.us>, 2016-09-27, 08:48:
>From my own investigations, I used
>
>  identify -debug all "d:"
>
>and see that a temporary file is reported to be created and then the 
>program hangs which no apparent CPU usage.

strace tells me that it waits for input on stdin.
This is a simpler way to make it "hang":

   identify -

-- 
Jakub Wilk
