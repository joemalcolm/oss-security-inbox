X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1076" "Sunday" "8" "April" "2018" "10:11:47" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20180408101147.505cd109@pc1>" "30" "[oss-security] beep infoleak" nil nil nil "4" "2018040808:11:47" "[oss-security] beep infoleak" (number mark "U       hanno@hboeck Apr  8   30/1076  " thread-indent "\"[oss-security] beep infoleak\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8023 invoked by uid 550); 8 Apr 2018 08:12:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7990 invoked from network); 8 Apr 2018 08:12:00 -0000
Date: Sun, 8 Apr 2018 10:11:47 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20180408101147.505cd109@pc1>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] beep infoleak

Hi,

It's been found that beep - even after the fix for "holey beep" - can
be used to create an infoleak and to see which files exist with root
permissions:
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D895115

Also there are Integer Overflows:
https://github.com/johnath/beep/issues/13

Also Sebastian Krahmer pointed out the fix is incomplete:
http://seclists.org/oss-sec/2018/q2/17

All of that without an existing upstream.

I question whether beep should be saved. It would require someone
carefully reviewing the code and effectively become the new upstream.
And all that for a tool talking to the PC speaker, which doesn't exist
in most modern systems anyway. Instead distros should consider not
installing it as suid or just killing the package altogether.
I heard some distros (suse) replace beep with a simple "printf '\a'"
which seems also a safe solution. (although it obviously kills all
frequency/length/etc features of original "beep").

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
