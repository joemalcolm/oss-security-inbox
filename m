X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1940" "Wednesday" "10" "October" "2018" "17:04:18" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20181010170418.7bd2dcc0@computer>" "42" "Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" "^Cc:" nil nil "10" "2018101015:04:18" "[oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" (number mark "        hanno@hboeck Oct 10   42/1940  " thread-indent "\"Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)\"\n") "<5782b494-5dba-71ee-d3f9-9f07814f715a@ehuk.net>" ("<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>" "<e9f76ebb-869e-69c5-7623-bae8553636ab@ehuk.net>" "<20181010145330.63e183d8@computer>" "<5782b494-5dba-71ee-d3f9-9f07814f715a@ehuk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26405 invoked by uid 550); 10 Oct 2018 15:04:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26387 invoked from network); 10 Oct 2018 15:04:21 -0000
Message-ID: <20181010170418.7bd2dcc0@computer>
In-Reply-To: <5782b494-5dba-71ee-d3f9-9f07814f715a@ehuk.net>
References: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
	<e9f76ebb-869e-69c5-7623-bae8553636ab@ehuk.net>
	<20181010145330.63e183d8@computer>
	<5782b494-5dba-71ee-d3f9-9f07814f715a@ehuk.net>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: oss-security@lists.openwall.com
Date: Wed, 10 Oct 2018 17:04:18 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ghostscript: bypassing executeonly to escape
 -dSAFER sandbox (CVE-2018-17961)
To: Eddie Chapman <eddie@ehuk.net>

On Wed, 10 Oct 2018 15:36:52 +0100
Eddie Chapman <eddie@ehuk.net> wrote:

> But I'm still unclear how "just browsing a website is enough to
> trigger the vulnerability in some common configurations." Are we
> talking about the user looking in their web browser cache directory
> on the filesystem using Nautilus, and hence running malicious code
> embedded in a cached file via the evince thumbnailer on opening that
> directory? Or maybe Nautilus/Gnome automatically runs the thumbnailer
> on every new file created in the user's home directory (via
> inotify?), including whatever the browser saves in the background
> (hopefully not)? Or is it just a case of the user opening a
> downloaded file with evince and becoming a victim that way? Though
> that is not exactly automatic, most browsers show a prompt asking
> what to do with a downloaded file.

I don't know what exactly Tavis was referring to, but a scenario that
has been discussed in the past and likely is still possible in many
configurations is this:
Some browsers (notably chrome) will download files without asking in
their default configuration. So a site can make you download a file and
it ends up in your ~/Downloads dir.

Desktop search tools will automatically index that (tracker from gnome,
baloo from kde). So voila - you can fire up an exploit if you can
exploit anything that tracker or baloo support.

https://scarybeastsecurity.blogspot.com/2016/11/0day-poc-risky-design-decis=
ions-in.html

Though I'm not sure if either of them uses ghostscript, a quick check
it seems that not. You still have the automatic download issue in
chrome, but you'd need to convince your user to open up ~/Downloads in
a file manager. That's a minor not-fully-automatic part, but I guess
it's plausible enough that users will eventually do that at some point.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
