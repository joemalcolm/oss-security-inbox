X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["803" "Thursday" "23" "February" "2017" "10:40:54" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20170223104054.42060545@pc1>" "24" "Re: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616" nil nil nil "2" "2017022309:40:54" "[oss-security] util-linux 2.29.2 fixes CVE-2017-2616" (number mark "U       hanno@hboeck Feb 23   24/803   " thread-indent "\"Re: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616\"\n") "<20170223074630.GB26098@suse.de>" ("<20170223074630.GB26098@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1945 invoked by uid 550); 23 Feb 2017 09:41:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1906 invoked from network); 23 Feb 2017 09:41:08 -0000
Date: Thu, 23 Feb 2017 10:40:54 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20170223104054.42060545@pc1>
In-Reply-To: <20170223074630.GB26098@suse.de>
References: <20170223074630.GB26098@suse.de>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616

Hi,

On Thu, 23 Feb 2017 08:46:30 +0100
Marcus Meissner <meissner@suse.de> wrote:

> util-linux 2.29.2 fixes CVE-2017-2616, a race condition which allowed
> local users to kill other processes.

I just reported this in Gentoo [1], yet I was informed that we're not
using su from util-linux, but from shadow. So depending on the
distribution you may not use this implementation of su.

I haven't digged deeper into this, can you say if this issue is
generic enough to be expected in other implementations as well? (Not
sure if the implementations of su in shadow and util-linux share a
common codebase, seems to be quite old stuff.)

[1] https://bugs.gentoo.org/show_bug.cgi?id=3D610664
--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
