X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["974" "Friday" "29" "September" "2017" "15:12:18" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20170929151218.0cfb25c2@pc1>" "28" "Re: [oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)" "^Date:" nil nil "9" "2017092913:12:18" "[oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)" (number mark "        hanno@hboeck Sep 29   28/974   " thread-indent "\"Re: [oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)\"\n") "<CALPTtNWjgtc00AvQrdfUspAqx0U+-0aEPGL3aiP1j-im4XC+6w@mail.gmail.com>" ("<20170928182541.r7dzm3epg7txsplh@tunkki.bugs.fi>" "<CAO5O-EL=MsSrj39-A_yf9_NmE-m7hrF6YfC+SOFnAw41Ae4g8Q@mail.gmail.com>" "<CALPTtNWjgtc00AvQrdfUspAqx0U+-0aEPGL3aiP1j-im4XC+6w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25687 invoked by uid 550); 29 Sep 2017 13:12:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25659 invoked from network); 29 Sep 2017 13:12:34 -0000
Message-ID: <20170929151218.0cfb25c2@pc1>
In-Reply-To: <CALPTtNWjgtc00AvQrdfUspAqx0U+-0aEPGL3aiP1j-im4XC+6w@mail.gmail.com>
References: <20170928182541.r7dzm3epg7txsplh@tunkki.bugs.fi>
	<CAO5O-EL=MsSrj39-A_yf9_NmE-m7hrF6YfC+SOFnAw41Ae4g8Q@mail.gmail.com>
	<CALPTtNWjgtc00AvQrdfUspAqx0U+-0aEPGL3aiP1j-im4XC+6w@mail.gmail.com>
X-Mailer: Claws Mail 3.15.1-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 29 Sep 2017 15:12:18 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] The Internet Bug Bounty: Data Processing
 (hackerone.com)
To: oss-security@lists.openwall.com

On Thu, 28 Sep 2017 23:13:22 -0700
Reed Loden <reed@reedloden.com> wrote:

> Separately, we're happy to announce that libav (
> https://git.libav.org/?p=3Dlibav.git;a=3Dsummary) was added to the scope
> earlier today.

I'm surprised by this. When I saw the ibb-data bounty I immediately
wondered whether ffmpeg should be in there.

Is there a reason libav is in and ffmpeg is not? Were there concerns by
the ffmpeg devs? (I'm not taking a side in the libav/ffmpeg wars, but
my impression is that many distros who had used libav for some time
have switched back and ffmpeg is clearly the more widely used of the
forks.)

Given that imagemagick+graphicsmagick are already in there I assume
there's no general problem for IBB to support competing forks.

At the very least I'd recommend that you make sure all ibb-reports for
libav get tested against ffmpeg.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
