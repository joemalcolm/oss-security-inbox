X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["794" "Wednesday" "28" "February" "2018" "23:09:51" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20180228230951.37205826@pc1>" "22" "Re: [oss-security] Information on file, sqlite, libarchive, pcre issues for CVE IDs assigned by Apple?" "^Date:" nil nil "2" "2018022822:09:51" "[oss-security] Information on file, sqlite, libarchive, pcre issues for CVE IDs assigned by Apple?" (number mark "        hanno@hboeck Feb 28   22/794   " thread-indent "\"Re: [oss-security] Information on file, sqlite, libarchive, pcre issues for CVE IDs assigned by Apple?\"\n") "<20180228202410.GA822@inutil.org>" ("<20180228202410.GA822@inutil.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5429 invoked by uid 550); 28 Feb 2018 22:10:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5410 invoked from network); 28 Feb 2018 22:10:05 -0000
Message-ID: <20180228230951.37205826@pc1>
In-Reply-To: <20180228202410.GA822@inutil.org>
References: <20180228202410.GA822@inutil.org>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 28 Feb 2018 23:09:51 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Information on file, sqlite, libarchive, pcre
 issues for CVE IDs assigned by Apple?
To: oss-security@lists.openwall.com

On Wed, 28 Feb 2018 21:24:10 +0100
Moritz Muehlenhoff <jmm@debian.org> wrote:

> Of the IDs mentioned above, only CVE-2017-10989 refers to specific,
> identifiable information. Does anyone on the list have additional
> information on any of these bugs; allowing to map them to upstream
> bug reports/patches?

This only partly answers your question, but the oss-fuzz issues are
handled in a public bug tracker (public as in "they become public once
they're fixed or a deadline has passed" I believe):
https://bugs.chromium.org/p/oss-fuzz/issues/list

You'll find issues in sqlite, file and libarchive there, but of course
that doesn't give you a mapping to the CVEs assigned.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
