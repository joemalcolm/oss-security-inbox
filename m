X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["649" "Friday" "24" "July" "2015" "19:37:41" "+0200" "Stephan Wiesand" "stephan.wiesand@gmail.com" "<5E6AFDD2-925B-4139-8202-A161C5C2AA43@googlemail.com>" "19" "Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser" nil nil nil "7" "2015072417:37:41" "[oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser" (number mark "        stephan.wies Jul 24   19/649   " thread-indent "\"Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser\"\n") "<87h9oud89s.fsf@lysator.liu.se>" ("<20150723170954.GA17931@localhost.localdomain>" "<87h9oud89s.fsf@lysator.liu.se>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25656 invoked by uid 550); 24 Jul 2015 20:44:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9501 invoked from network); 24 Jul 2015 17:37:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:content-type:mime-version:subject:in-reply-to:date
         :content-transfer-encoding:message-id:references:to;
        bh=f5F3nH6GlhJ14Ua6ySgTUOWTbu90AB9akHy5JDBFZgA=;
        b=QIZVtMZ0HhAi35wbF8ZbXh8m9Xv+fpupNVFjDqxo9HXz/0MJLtTk4WfoLATQ2TKmMP
         Xy7dBZ+EQs1rg3F7eekiIO3dmrDoYmF2JxEEn0/tzO26iOsLphPXL34pTGgue8+CZT4A
         5AjzfM0O0t8PXbeW3B9n4FTKeC/gYBNRgUVo8Fa9dAjKQ4o933VIEwzIR3Gv6bFIB22A
         qNWK92Jkb7juvPKE3MX4FZ6Wtmi45PcGp3gFLfZ1WIjN/2lV5v/UzZ+zL/VDoMQAFm7T
         PMGtZ03oK9HH5cXUgiZX5JuwN6U/G0SgJJKTKMBKVd7gCUTn+BaRONwTYSLOdbijqMry
         Ogjg==
X-Received: by 10.180.23.33 with SMTP id j1mr9019609wif.44.1437759464833;
        Fri, 24 Jul 2015 10:37:44 -0700 (PDT)
X-Google-Original-From: Stephan Wiesand <stephan.wiesand@googlemail.com>
Content-Type: text/plain; charset=us-ascii
Mime-Version: 1.0 (Apple Message framework v1085)
In-Reply-To: <87h9oud89s.fsf@lysator.liu.se>
Content-Transfer-Encoding: quoted-printable
Message-Id: <5E6AFDD2-925B-4139-8202-A161C5C2AA43@googlemail.com>
References: <20150723170954.GA17931@localhost.localdomain> <87h9oud89s.fsf@lysator.liu.se>
X-Mailer: Apple Mail (2.1085)
Date: Fri, 24 Jul 2015 19:37:41 +0200
From: Stephan Wiesand <stephan.wiesand@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser
To: oss-security@lists.openwall.com


On Jul 23, 2015, at 20:43 , Leif Nixon wrote:

> Qualys Security Advisory <qsa@qualys.com> writes:
>=20
>> Hello, it is July 23, 2015, 17:00 UTC, the Coordinated Release Date for
>> CVE-2015-3245 and CVE-2015-3246.  Please find our advisory below, and
>> our exploit attached.
>=20
> *Why* are you releasing a full exploit just minutes after the patch is
> released?
>=20
> (Disclosure: I am employed by Red Hat, but this is my purely personal que=
stion.)

Wild guess: Their customers had plenty of time to understand the issue and =
its impact, and to roll out either a fix or some mitigation. And thus an ed=
ge. Looks like "just business...".

