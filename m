X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["911" "Tuesday" "9" "February" "2021" "16:06:07" "-0000" "Tavis Ormandy" "taviso@gmail.com" "<rvubtf$lnv$1@ciao.gmane.io>" "31" "[oss-security] screen crash processing combining characters" "^Date:" nil nil "2" "2021020916:06:07" "[oss-security] screen crash processing combining characters" (number mark "        taviso@gmail Feb  9   31/911   " thread-indent "\"[oss-security] screen crash processing combining characters\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] screen crash processing combining characters" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27856 invoked by uid 550); 9 Feb 2021 16:07:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26545 invoked from network); 9 Feb 2021 16:06:24 -0000
X-Injected-Via-Gmane: http://gmane.org/
Message-ID: <rvubtf$lnv$1@ciao.gmane.io>
User-Agent: slrn/pre1.0.4-5 (Linux)
Date: Tue, 9 Feb 2021 16:06:07 -0000 (UTC)
From: Tavis Ormandy <taviso@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] screen crash processing combining characters
To: oss-security@lists.openwall.com

Hello, I noticed someone posted this to the screen-devel list. I can
reproduce it here, just catting the testcase does crash my screen
session.

https://lists.gnu.org/archive/html/screen-devel/2021-02/msg00000.html

(I think it wasn't supposed to be public, but it is, so better it's
visible to security teams)

It looks like it might be exploitable at first glance, I see a crash
here in encoding.c, because i is out of range.

1411   else if (!combchars[i])
1412     {
1413       combchars[i] = (struct combchar *)malloc(sizeof(struct combchar));
1414       if (!combchars[i])
1415            return;
1416       combchars[i]->prev = i;
1417       combchars[i]->next = i;
1418     }

Exploitable or not, it would be annoying if someone stuffed this into logfiles
being tailed, or whatever.

Tavis.

-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso

