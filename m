X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1285" "Saturday" "19" "November" "2016" "11:59:32" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20161119115932.1854beff@pc1>" "36" "Re: [oss-security] CVE Request: gstreamer plugins" nil nil nil "11" "2016111910:59:32" "[oss-security] CVE Request: gstreamer plugins" (number mark "U       hanno@hboeck Nov 19   36/1285  " thread-indent "\"Re: [oss-security] CVE Request: gstreamer plugins\"\n") "<20161118163119.GQ11402@suse.de>" ("<20161118163119.GQ11402@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25918 invoked by uid 550); 19 Nov 2016 10:59:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25900 invoked from network); 19 Nov 2016 10:59:45 -0000
Date: Sat, 19 Nov 2016 11:59:32 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20161119115932.1854beff@pc1>
In-Reply-To: <20161118163119.GQ11402@suse.de>
References: <20161118163119.GQ11402@suse.de>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE Request: gstreamer plugins

Hi,


On Fri, 18 Nov 2016 17:31:19 +0100
Marcus Meissner <meissner@suse.de> wrote:

> 1. Bufferoverflow in VMNC decoder in gstreamer plugins:
> 	https://scarybeastsecurity.blogspot.de/2016/11/0day-poc-risky-design-dec=
isions-in.html

I wanted to point out that while it's good the buffer overflow gets
fixed, that's by far not the major issue here.

This is a very problematic design decision with the functionality of
tracker/GNOME that exposes all files on a system to who knows how many
decoders of probably overall very low quality.
Almost certainly there are countless other vulnerabilities of similar
kind in all kinds of gstreamer codecs. (and I haven't checked, but I
assume tracker also exposes other files to other equally problematic
decoders)

I think this is kinda a symptom of two goals clashing: We have projects
like gstreamer that attempt to parse every file format ever seen in
their are - which of course has some value, especially in terms of
preserving digital culture. But on the other hand exposing this code to
untrusted inputs is a security disaster.

I'm wondering if there is any statement or reaction from either gnome
or fedora on this.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
