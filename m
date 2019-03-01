X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["714" "Friday" "1" "March" "2019" "11:03:40" "+0100" "Hanno =?iso-8859-1?Q?B=F6ck?=" "hanno@hboeck.de" "<20190301110340.0b3fa581@computer>" "21" "[oss-security] Squirrelmail XSS Fixes" "^Date:" nil nil "3" "2019030110:03:40" "[oss-security] Squirrelmail XSS Fixes" (number mark "        hanno@hboeck Mar  1   21/714   " thread-indent "\"[oss-security] Squirrelmail XSS Fixes\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21578 invoked by uid 550); 1 Mar 2019 10:03:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21547 invoked from network); 1 Mar 2019 10:03:53 -0000
Message-ID: <20190301110340.0b3fa581@computer>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 1 Mar 2019 11:03:40 +0100
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Squirrelmail XSS Fixes
To: oss-security@lists.openwall.com

Hi,

A while ago I saw that there were some very old XSS reports in the
squirrelmail bugtracker and reported it to this list:
https://www.openwall.com/lists/oss-security/2018/06/27/5

If anyone's interested, squirrelmail upstream has now fixed those (in
SVN, they don't do releases):
https://sourceforge.net/p/squirrelmail/bugs/2831/

I had proposed a different (and imho simpler) patch, I never got any
feedback from the developer why he didn't like it. I also sent multiple
fixes for warnings and issues with newer PHP versions that mostly
haven't been applied, in case you are interested, see

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
