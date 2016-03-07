X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["602" "Monday" "7" "March" "2016" "20:29:37" "+0100" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9rN4hQn+sNv_TRVoeDVbovxb4=_SHQ12oBpqPXyZjyEfA@mail.gmail.com>" "10" "Re: [oss-security] Cgit XSS \"vulnerability\" has no CVE?" "^Date:" nil nil "3" "2016030719:29:37" "[oss-security] Cgit XSS \"vulnerability\" has no CVE?" (number mark "        Jason@zx2c4. Mar  7   10/602   " thread-indent "\"Re: [oss-security] Cgit XSS \"vulnerability\" has no CVE?\"\n") "<20160307184611.GH6474@more-magic.net>" ("<CAHmME9q6vctff8ZAyL-Ats_DMPKi=aazUBWX86fdKNNH5c7OfQ@mail.gmail.com>" "<CAHmME9rcosK0SkpG5pdbq4jfqCYJ4t3_y-Y8j1vEwNwzibkRWg@mail.gmail.com>" "<20160307184611.GH6474@more-magic.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7200 invoked by uid 550); 7 Mar 2016 19:29:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7182 invoked from network); 7 Mar 2016 19:29:51 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:in-reply-to:references:date:message-id:subject:from:to
	:content-type; s=mail; bh=QIEB+gL7R1oFhY1+drDneMe68ME=; b=sOd80z
	apYy39RRPIHBLaY1QEIdi1fV8jvdgUUJsCWspBAAa/dJe/5J0NwdX3xqiQP7T7Je
	If3jssNlWzK9LeS8uQlIE6tTWpcZuQR1GUdm2O8yTDHU1bx2i8tPJOzkPSc/D0Se
	Rcf20DtMvLl8j05sJp82bKqNP4jWeFaJyzUTcGPtuczpSw3CtKZfEx0xeNvIIZi3
	DN4R8a44l28UPbv5SMUA0Xp+ts5nkgzXEy8cCeKBXsCJ6EIbGCwOK+oFxxGqJsiJ
	WiF7RJwP6eWKHmZm3VOKuPSu5LY3lRbMO2b2cmGoiuXmKgAhLuLnhKn7uvxDEPmB
	q77jWU0qz4Dz+N0w==
X-Gm-Message-State: AD7BkJKVi9QetyvEz4syb8uLRSOb3Hr0gnrUdhHdeFemqizBdL8EH3/5+6mg7xEqRYCTYYgrOPDJaUDWednMPg==
MIME-Version: 1.0
X-Received: by 10.28.50.138 with SMTP id y132mr16041112wmy.52.1457378977990;
 Mon, 07 Mar 2016 11:29:37 -0800 (PST)
In-Reply-To: <20160307184611.GH6474@more-magic.net>
References: <CAHmME9q6vctff8ZAyL-Ats_DMPKi=aazUBWX86fdKNNH5c7OfQ@mail.gmail.com>
	<CAHmME9rcosK0SkpG5pdbq4jfqCYJ4t3_y-Y8j1vEwNwzibkRWg@mail.gmail.com>
	<20160307184611.GH6474@more-magic.net>
X-Gmail-Original-Message-ID: <CAHmME9rN4hQn+sNv_TRVoeDVbovxb4=_SHQ12oBpqPXyZjyEfA@mail.gmail.com>
Message-ID: <CAHmME9rN4hQn+sNv_TRVoeDVbovxb4=_SHQ12oBpqPXyZjyEfA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 7 Mar 2016 20:29:37 +0100
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Cgit XSS "vulnerability" has no CVE?
To: oss-security <oss-security@lists.openwall.com>

On Mon, Mar 7, 2016 at 7:46 PM, Peter Bex <peter@more-magic.net> wrote:
> Considering that it's been "fixed", I thought a CVE might be useful to
> trigger distros to include the patch.  Without a CVE, distros like
> Debian and RedHat will keep using the unpatched version, which is a
> shame if such an easy fix is available.

Considering so many of the other example filters have the same
problem, I don't think this will buy much. However, after I revamp the
example filters into a nice "one stop" solution for lots of filetypes,
we can start promoting that various places for its security benefits.
