X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1446" "Wednesday" "6" "February" "2019" "09:41:02" "+0100" "Hanno =?iso-8859-1?Q?B=F6ck?=" "hanno@hboeck.de" "<20190206094102.11bb7daa@computer>" "37" "Re: [oss-security] Notes on fuzzing ImageMagick and GraphicsMagick" "^Cc:" nil nil "2" "2019020608:41:02" "[oss-security] Notes on fuzzing ImageMagick and GraphicsMagick" (number mark "        hanno@hboeck Feb  6   37/1446  " thread-indent "\"Re: [oss-security] Notes on fuzzing ImageMagick and GraphicsMagick\"\n") "<CAFRnB2XKwThukWHpZ_K_uVPfKtamwYQ7vkoL7-6UUpSLEZRFVw@mail.gmail.com>" ("<CAFRnB2XKwThukWHpZ_K_uVPfKtamwYQ7vkoL7-6UUpSLEZRFVw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19862 invoked by uid 550); 6 Feb 2019 08:41:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19842 invoked from network); 6 Feb 2019 08:41:15 -0000
Message-ID: <20190206094102.11bb7daa@computer>
In-Reply-To: <CAFRnB2XKwThukWHpZ_K_uVPfKtamwYQ7vkoL7-6UUpSLEZRFVw@mail.gmail.com>
References: <CAFRnB2XKwThukWHpZ_K_uVPfKtamwYQ7vkoL7-6UUpSLEZRFVw@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: oss-security@lists.openwall.com
Date: Wed, 6 Feb 2019 09:41:02 +0100
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Notes on fuzzing ImageMagick and GraphicsMagick
To: Alex Gaynor <alex.gaynor@gmail.com>

On Tue, 5 Feb 2019 17:28:03 -0500
Alex Gaynor <alex.gaynor@gmail.com> wrote:

> Both ImageMagick and GraphicsMagick had been widely fuzzed and audited
> before
> this. Hanno B=C3=B6ck [#]_ observed: "In the past it was pretty easy to
> bugs in
> imagemagick, but after some review by Google most of them have been
> fixed and
> these days there are at least no more trivial to find fuzzing issues."

Even though you had a disclaimer I feel I want to give a short answer.
That quote probably comes from a page that I removed a while ago and
now says " I'm no longer maintaining this list, as it was extremely
outdated."

It's at least 3 years old and back then we were in a state where you
could pick a random command line tool, run afl+asan against it and
crashes would fall out within seconds.
My intent back then was to establish some baseline robustness, so take
my words there as "it's not that easy any more to find bugs in IM/GM
within very short timeframes and very simple methods". Which I guess is
still true and not in contradiction that with more involved methods
you'll find more.


These days my remaining worries about fuzzing-related bugs are
primarily targets that don't fit into the libfuzzer/oss-fuzz framework,
e.g. networking-software that has no easy way to abstract their parser
code into a function call.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
