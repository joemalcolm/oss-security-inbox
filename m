X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1204" "Friday" "1" "March" "2019" "11:07:04" "+0100" "Hanno =?iso-8859-1?Q?B=F6ck?=" "hanno@hboeck.de" "<20190301110704.4ff5b4ef@computer>" "34" "Re: [oss-security] Squirrelmail XSS Fixes" "^Date:" nil nil "3" "2019030110:07:04" "[oss-security] Squirrelmail XSS Fixes" (number mark "        hanno@hboeck Mar  1   34/1204  " thread-indent "\"Re: [oss-security] Squirrelmail XSS Fixes\"\n") "<20190301110340.0b3fa581@computer>" ("<20190301110340.0b3fa581@computer>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1808 invoked by uid 550); 1 Mar 2019 10:07:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1785 invoked from network); 1 Mar 2019 10:07:17 -0000
Message-ID: <20190301110704.4ff5b4ef@computer>
In-Reply-To: <20190301110340.0b3fa581@computer>
References: <20190301110340.0b3fa581@computer>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 1 Mar 2019 11:07:04 +0100
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Squirrelmail XSS Fixes
To: oss-security@lists.openwall.com

Sorry... I was struck by "hit the send button while still writing the
mail"... Let's retry:


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
https://github.com/hannob/squirrelpatches

I tried a few XSS vectors and it seems they're all closed, though I'd
appreciate more eyes on it. Overall the whole filtering isn't ideal,
it's a blacklisting approach and thus obviously error-prone.

If any XSS ninjas want to play with it and don't have a squirrelmail
installation you can mail me directly and I can give you a temporary
test account.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
