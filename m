X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1544" "Tuesday" "22" "November" "2016" "11:13:32" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20161122111332.4a850849@pc1>" "41" "Re: [oss-security] WordPress (all versions): SPOF, RCE, and Negligence" "^Date:" nil nil "11" "2016112210:13:32" "[oss-security] WordPress (all versions): SPOF, RCE, and Negligence" (number mark "        hanno@hboeck Nov 22   41/1544  " thread-indent "\"Re: [oss-security] WordPress (all versions): SPOF, RCE, and Negligence\"\n") "<CAKws9z3H+VFO6kO-bEPMtyomuyyumx69+hzB7UUAxpg2o6dT8A@mail.gmail.com>" ("<CAKws9z3H+VFO6kO-bEPMtyomuyyumx69+hzB7UUAxpg2o6dT8A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12180 invoked by uid 550); 22 Nov 2016 10:13:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12158 invoked from network); 22 Nov 2016 10:13:45 -0000
Message-ID: <20161122111332.4a850849@pc1>
In-Reply-To: <CAKws9z3H+VFO6kO-bEPMtyomuyyumx69+hzB7UUAxpg2o6dT8A@mail.gmail.com>
References: <CAKws9z3H+VFO6kO-bEPMtyomuyyumx69+hzB7UUAxpg2o6dT8A@mail.gmail.com>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 22 Nov 2016 11:13:32 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] WordPress (all versions): SPOF, RCE, and
 Negligence
To: oss-security@lists.openwall.com

Hi,

Sorry, but I find a lot of your statements very questionable.

On Mon, 21 Nov 2016 11:54:33 -0500
Scott Arciszewski <scott@paragonie.com> wrote:

> Consequently, the WordPress update server is one of the largest single
> points of failure (SPOF) on the Internet.

Yeah, just like the update servers from Microsoft (which are definitely
a bigger POF). Or Apple. Or Google. Or Samsung. Or Mozilla.

Granted, having signatures as an additional protection on top of TLS
improves security, but it's an unfortunate fact that update
infrastructure is a big attack surface and a complicated problem.
Signatures can only change a single point of failure to two points of
failure.
The solution is probably something along the lines of transparency logs
and for binary software reproducible builds, but nobody has anything in
that space that works today.

Wordpress could do better in terms of security with some issues, e.g. I
find it disappointing that they don't seem to show any interest in
deploying CSP.
But the fact that Wordpress has auto updates at all imho puts it
in front of every other CMS out there in terms of security.
For all the others they basically expect their users to manually
install updates, sometimes within hours as could've been seen with
every RCE in joomla or drupal that was discovered in the past.
Wordpress having an auto update has probably protected millions of
webpages from being compromised.



--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
