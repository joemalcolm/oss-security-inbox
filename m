X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1368" "Thursday" "6" "April" "2017" "10:32:45" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20170406103245.67949bfc@pc1>" "50" "Re: [oss-security] libxslt math.random issue" nil nil nil "4" "2017040608:32:45" "[oss-security] libxslt math.random issue" (number mark "U       hanno@hboeck Apr  6   50/1368  " thread-indent "\"Re: [oss-security] libxslt math.random issue\"\n") "<20170406054400.GC32355@suse.de>" ("<20170406054400.GC32355@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7894 invoked by uid 550); 6 Apr 2017 08:32:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7864 invoked from network); 6 Apr 2017 08:32:59 -0000
Date: Thu, 6 Apr 2017 10:32:45 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20170406103245.67949bfc@pc1>
In-Reply-To: <20170406054400.GC32355@suse.de>
References: <20170406054400.GC32355@suse.de>
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] libxslt math.random issue

Hi,

On Thu, 6 Apr 2017 07:44:00 +0200
Marcus Meissner <meissner@suse.de> wrote:

> CVE-2015-9019 has been assigned to use of libexslt (in libxslt) usage
> of "math.random" without initializing the randomseed.
>=20
> https://bugzilla.gnome.org/show_bug.cgi?id=3D758400
> https://bugzilla.suse.com/show_bug.cgi?id=3D934119

I have some questions and comments:

1. What's the use of the random number and what's the security impact
if it's not random? That's not explained
In case of the bugreport.
In case a cryptographically secure random number is required then using
rand()/srand() is a bad idea anyway.
(Unfortunately there's no secure random in the standard libc, but at
least glibc now has getrandom.).

2. This part of the patch looks a bit strange:

+	seed =3D time(NULL); /* just in case /dev/urandom is not there */
+	if (fd =3D=3D -1) {
+		read (fd, &seed, sizeof(seed));
+		close (fd);
+	}

You're calling time() unconditionally, although it's kinda just a
fallback. Why not
+	if (fd =3D=3D -1) {
+		read (fd, &seed, sizeof(seed));
+		close (fd);
+	} else {
+		seed =3D time(NULL);
+	}
?

(obviously using time is not a secure way to do random numbers, if
secure numbers are required cross-plattform you need to do this
otherwise anyway)


--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
