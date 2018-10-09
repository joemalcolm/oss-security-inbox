X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["870" "Tuesday" "9" "October" "2018" "22:10:50" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20181009221050.44c7ca99@computer>" "26" "Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" "^Cc:" nil nil "10" "2018100920:10:50" "[oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" (number mark "        hanno@hboeck Oct  9   26/870   " thread-indent "\"Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)\"\n") "<20181009153006.GF21509@takahe.colorado.edu>" ("<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>" "<20181009153006.GF21509@takahe.colorado.edu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15594 invoked by uid 550); 9 Oct 2018 20:10:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15573 invoked from network); 9 Oct 2018 20:10:54 -0000
Message-ID: <20181009221050.44c7ca99@computer>
In-Reply-To: <20181009153006.GF21509@takahe.colorado.edu>
References: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
	<20181009153006.GF21509@takahe.colorado.edu>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: oss-security@lists.openwall.com
Date: Tue, 9 Oct 2018 22:10:50 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ghostscript: bypassing executeonly to escape
 -dSAFER sandbox (CVE-2018-17961)
To: Leonid Isaev <leonid.isaev@jila.colorado.edu>

Hi,

On Tue, 9 Oct 2018 09:30:06 -0600
Leonid Isaev <leonid.isaev@jila.colorado.edu> wrote:

> Which means any postscript file downloaded from the internet... Then
> how should people read arXiv.org, for example?

Surprised by this claim I did a quick check on arxiv. I don't see any
papers that are only available as postscript. All papers seem to be
available as PDF, some additionally as PS.

Which also makes sense: Many browsers support direct PDF display. While
PDF is also a complex format with pitfalls I'd still trust the
in-browser PDF readers much more than something like ghostscript.

If there are sites that rely on PS documents they should probably be
encouraged to do a server-side sandboxed auto-conversion of them and
offer PDF also.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
