X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1597" "Monday" "24" "August" "2015" "12:59:14" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNWUpz6bPZG9ho4u6MCFnBx=kFOXEK-Pmw9LkAEh6C6YWw@mail.gmail.com>" "41" "Re: [oss-security] CVE request: uglify-js node.js module <2.4.24 incorrectly handles non-boolean comparisons during minification" nil nil nil "8" "2015082419:59:14" "[oss-security] CVE request: uglify-js node.js module <2.4.24 incorrectly handles non-boolean comparisons during minification" (number mark "        reed@reedlod Aug 24   41/1597  " thread-indent "\"Re: [oss-security] CVE request: uglify-js node.js module <2.4.24 incorrectly handles non-boolean comparisons during minification\"\n") "<55DB7568.5000601@redhat.com>" ("<CALPTtNXiS0jqswCaH2z59oAAsOmAWZBaKcGEtOc8cGGUM9yd=Q@mail.gmail.com>" "<55DB7568.5000601@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29774 invoked by uid 550); 24 Aug 2015 19:59:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29750 invoked from network); 24 Aug 2015 19:59:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=BkKBLtDB6ezNejn05FS4XjGm7CMtFXqhvYq0AaM7n+o=;
        b=Q7YeofL8AlDtdZLPxSmvWpRuDQ0c419iLUKN7OLqM1/odQuOVFRk/zhx+IAz5pIov7
         8WVXUVjZS6R5+mIAeoV6Q6ZBcdi0A8zKzuqFPsb6ot6Znyic1z9pWkSE7qCB2RU+Oshu
         7mokJrREmD9bO/rwdtEWkDU6nKHMnFij4HuR8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=BkKBLtDB6ezNejn05FS4XjGm7CMtFXqhvYq0AaM7n+o=;
        b=HLszIswdWcgdJzICxzGc3idikuKH9xlMt3uwhuGigksDxtSYchCk1DODJSGeBmeOi7
         JWQdVOlrJUz0em39TFB0HbeCkMgnF+5tVuvPjByhK0wsXF5jpWCtpisRATUYfmYuDTJJ
         Xr/Jxj1Hv8JcALzuGWLlw2Icb90tOe9W416tIJJONs6HlmyQHYHIUFxFPNNotrvzpr47
         1hJ3K9Iuzh6B3Og3P3KUVa0p+7OrfDtYWbxVbStQlVSTcHohLwz1iwHl5dTRsusZO3Kx
         IG0mXXiaeZYl6MyaPGcm3R40ENnG1aJYDgm4rxa98lTctJj69kOHSqLx0omARO0mpPgQ
         SHqg==
X-Gm-Message-State: ALoCoQn5J1lI5ExiXPX0t9sxqi5VX8Wok50gKtMJMW39ipcFReTYr/lo/DdBbHjcb+YG3sy7w6tY
X-Received: by 10.50.61.243 with SMTP id t19mr16984679igr.24.1440446374313;
 Mon, 24 Aug 2015 12:59:34 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <55DB7568.5000601@redhat.com>
References: <CALPTtNXiS0jqswCaH2z59oAAsOmAWZBaKcGEtOc8cGGUM9yd=Q@mail.gmail.com>
 <55DB7568.5000601@redhat.com>
Message-ID: <CALPTtNWUpz6bPZG9ho4u6MCFnBx=kFOXEK-Pmw9LkAEh6C6YWw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7bdc0a4e75b5ed051e140e51
Date: Mon, 24 Aug 2015 12:59:14 -0700
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: uglify-js node.js module <2.4.24
 incorrectly handles non-boolean comparisons during minification
To: oss-security@lists.openwall.com

--047d7bdc0a4e75b5ed051e140e51
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 24, 2015 at 12:50 PM, Florian Weimer <fweimer@redhat.com> wrote:

> On 08/24/2015 08:26 PM, Reed Loden wrote:
> > As seen on Hacker News --
> https://zyan.scripts.mit.edu/blog/backdooring-js/
> >
> > Blog post has all the details, but basically the UglifyJS node module
> has a
> > problem where the combination of De Morgan=E2=80=99s Law and non-boolea=
n values
> can
> > lead to a case where code is incorrectly minified, which can lead to
> > possibly malicious minified JS code.
> >
> > UglifyJS is a "JavaScript parser / mangler / compressor / beautifier
> > toolkit" for Node.js.
>
> How is this different from a any other compiler bug?  They can be abused
> in similar ways by crafted code, and we don't treat them as
> vulnerabilities (unless there is actual application impact beyond
> synthetic test cases).
>
> Note that I'm not saying this isn't a nice find, I'm just not sure if it
> should be considered as a security by itself.
>

I fully agree not every compiler bug is a security issue, but when one is
used for (theoretically) malicious purposes (including a full write-up and
example PoC), seems like there should be some middle ground here. If we're
always being reactive and waiting for an issue to actually be exploited,
we'll never win. Sadly, sometimes it takes an issue being classified as
'security' for folks (including distros) to update their
applications/software to pull in updated dependencies.

~reed

--047d7bdc0a4e75b5ed051e140e51--
