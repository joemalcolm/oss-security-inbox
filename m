X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1020" "Tuesday" "21" "July" "2015" "11:16:35" "+0200" "king cope" "isowarez.isowarez.isowarez@googlemail.com" "<CAFB=mGAAaJOB3VsvhGnsBVP0COwe4MiRv5t2cDx9UA=qJ0KyPw@mail.gmail.com>" "26" "[oss-security] CVE Request for OpenSSH vulnerability - authentication limits bypass" nil nil nil "7" "2015072109:16:35" "[oss-security] CVE Request for OpenSSH vulnerability - authentication limits bypass" (number mark "        isowarez.iso Jul 21   26/1020  " thread-indent "\"[oss-security] CVE Request for OpenSSH vulnerability - authentication limits bypass\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21512 invoked by uid 550); 21 Jul 2015 11:34:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30520 invoked from network); 21 Jul 2015 09:16:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=vFKX01l0MaNjLwX8kBuP6sBSmaI/aE0qYY+BCINEnpk=;
        b=S0LK2PrRD6DAScDvaX4rACKPpWZvkv6llMrEP1K+E8XaQuF48I0m6G/SesfsLBy0VS
         djoSIET+A11A1p93YruOyqIPoXFyQmfrDjhzzB/agsXt1j5nLmGX5bSDjDnZmZ59gQ6q
         WGWYieBQojTevWTt2lGr4dJI/dZxLlh2ujxs6HT2dmTXEhJi2qQIeFkxAJFx6XlY4SDn
         KAYPiuqOdfzoKtzNbkN+nkUWHyu1nwwGymCC2rKmAEqXYLz/lh3oGLbujVlYHK2LzAST
         8VoiBUHXcnB2Fgl7jbFTyriGiTejeVg7yYm2KH7TaJ5X8/SgA2EDEvN4aVhMVYnF4dkV
         vUdA==
MIME-Version: 1.0
X-Received: by 10.50.1.79 with SMTP id 15mr22713564igk.68.1437470195976; Tue,
 21 Jul 2015 02:16:35 -0700 (PDT)
Message-ID: <CAFB=mGAAaJOB3VsvhGnsBVP0COwe4MiRv5t2cDx9UA=qJ0KyPw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Tue, 21 Jul 2015 11:16:35 +0200
From: king cope <isowarez.isowarez.isowarez@googlemail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request for OpenSSH vulnerability - authentication limits bypass
To: oss-security@lists.openwall.com

Hello list, solar designer,

Can you please add a CVE for the mentioned vulnerability in OpenSSH.

The OpenSSH server normally wouldn't allow successive authentications
that exceed the MaxAuthTries setting in sshd_config,
with this vulnerability the allowed login retries can be extended
limited only by the LoginGraceTime setting,
that can be more than 10000 tries (depends on the network speed), and
even more for local attacks. Technically this vulnerability affects
OpenSSH. It can be found with FreeBSD installations because these use
the keyboard-interactive authentication
mechanism (that is the one affected) in combination with pam. I
haven't tested skey/bsd auth.
To note that this vulnerability looks pretty old, a test against
FreeBSD 6.2 (2007 release date) showed it vulnerable.
Additionally there is no delay between the authentication retries, but
this is another issue that makes this vulnerability more effective.

CVE please!

Thank you,

KC

Reference: http://seclists.org/fulldisclosure/2015/Jul/92
