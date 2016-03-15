X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2009" "Tuesday" "15" "March" "2016" "12:09:42" "+0100" "=?UTF-8?B?U2FsdmEgUGVpcsOz?=" "speirofr@gmail.com" "<CAJpd-bG6nP=mA6dCaQfTcKrhGSQOxPJg=SM0Ao34thtidyHZKQ@mail.gmail.com>" "67" "[oss-security] Re: CVE Request: The minissdpd (v 1.2.20130907-3) is affected by an improper validation of array index weakness" nil nil nil "3" "2016031511:09:42" "[oss-security] Re: CVE Request: The minissdpd (v 1.2.20130907-3) is affected by an improper validation of array index weakness" (number mark "U       speirofr@gma Mar 15   67/2009  " thread-indent "\"[oss-security] Re: CVE Request: The minissdpd (v 1.2.20130907-3) is affected by an improper validation of array index weakness\"\n") "<CAJpd-bGtYj8mL9crn8LoO0cB05EVQpsjQQnB-OENr2cMu3CxOA@mail.gmail.com>" ("<CAJpd-bGtYj8mL9crn8LoO0cB05EVQpsjQQnB-OENr2cMu3CxOA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20091 invoked by uid 550); 15 Mar 2016 11:10:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20070 invoked from network); 15 Mar 2016 11:10:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to;
        bh=nSI3+WP8LCpVf+WafGEkeyJXlqItquG/WyJfF+6QULs=;
        b=H5j4/Ya7pCyLY29B2uSR8gHwry3Vn8gylW903IJeo8ZfA37cOt8g45ESyVJwVXyk0O
         7Cgndz9TmVL95G3iAW4d6/3be9rPHdim9iuNsKgNJqwtrNAXm739/JW9xGdtdTr8dgRB
         UCeO+92TvoV1WgZr9CVrIZT7LU7bVWNLlR0KQcyLmlhDwoiYJLgsiO+glf3FeAx70my5
         O0s0QIrqyYxSUqjVwnP/oMZcBc21SZmHgIVPTmR403LiYj40UyVEULAmmB6S06pcC2qV
         zHiaOJ+ZYhdulawz8eva9yqXgdJ2SUysufrj5IHpw7/zBKbYmym0JdJWEJdBFa5ms6RJ
         N4lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to;
        bh=nSI3+WP8LCpVf+WafGEkeyJXlqItquG/WyJfF+6QULs=;
        b=maRxunlhqAVtB/3Vbsx0/eJ3NCz/4xeTwbXtCIDbuSj4Bi0ezCmBnyG1XrSJhcq5Bo
         3pH1Acsj2u0iiKswpHkuxhcI//kJV71zHvbFqV97mHQqqZ6Efx+EOBUZrv80XGlshXgG
         txyEK/QMFIg8wbU0A01xgA2A98UytIh1RqTuv4qxhT/ovaqR+Dj0Fu6Rjrx2MF43tSsf
         NWE2o9gQZo85mT8ePJGutAttJ9JWGWixym1cDrzVY8CxrIL1q9eKggccJmaZrI1VfMAV
         ApoM2WKVDG8Lc9GsjJ7xsNJ/Rw4nlZhXu0iupL4w14+jnP1q56cxnPkVq9qWIJyyoh8C
         NPGg==
X-Gm-Message-State: AD7BkJJrfX+m2tlbwegwzfS4qq/Z/+hvbbU+kr1rBeEvvZDAa4KXV4cO5IyoFhn94FuxgYe1SSZU4e+1vuBcDg==
X-Received: by 10.194.81.103 with SMTP id z7mr29022275wjx.25.1458040202363;
 Tue, 15 Mar 2016 04:10:02 -0700 (PDT)
MIME-Version: 1.0
Sender: saoret.one@gmail.com
In-Reply-To: <CAJpd-bGtYj8mL9crn8LoO0cB05EVQpsjQQnB-OENr2cMu3CxOA@mail.gmail.com>
References: <CAJpd-bGtYj8mL9crn8LoO0cB05EVQpsjQQnB-OENr2cMu3CxOA@mail.gmail.com>
From: =?UTF-8?B?U2FsdmEgUGVpcsOz?= <speirofr@gmail.com>
Date: Tue, 15 Mar 2016 12:09:42 +0100
X-Google-Sender-Auth: SvPZJfKXWL_il8vg1jscPI0ejy8
Message-ID: <CAJpd-bG6nP=mA6dCaQfTcKrhGSQOxPJg=SM0Ao34thtidyHZKQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=047d7bf0d1d654897e052e1470e2
Subject: [oss-security] Re: CVE Request: The minissdpd (v 1.2.20130907-3) is affected by an
 improper validation of array index weakness

--047d7bf0d1d654897e052e1470e2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Is there a CVE for this? If not, could one be assigned, please?

The affected version is
minissdpd version: 1.2.20130907-3

The bug is reported at
https://bugs.debian.org/816759

The fixes are applied upstream at
https://github.com/miniupnp/miniupnp/commit/b238cade9a173c6f751a34acf8ccff8=
38a62aa47#diff-00d21a1eaced371eee67e083a3ff866c

  DECODELENGTH_CHECKLIMIT(l, p, buf + n);
- if(p+l > buf+n) {
+ if(l > (unsigned)(buf+n-p)) {
  syslog(LOG_WARNING, "bad request (length encoding l=3D%u n=3D%u)",
         l, (unsigned)n);
  goto error;

https://github.com/miniupnp/miniupnp/commit/140ee8d2204b383279f854802b27bdb=
41c1d5d1a#diff-00d21a1eaced371eee67e083a3ff866c


+ memset(newserv, 0, sizeof(struct service)); /* set pointers to NULL */
  if(containsForbiddenChars(p, l)) {
  syslog(LOG_ERR, "bad request (st contains forbidden chars)");
  goto error;

Regards,
Salva Peir=C3=B3
--
Salva Peir=C3=B3 @ https://speirofr.appspot.com
CS Researcher & Software Engineer
Universitat Polit=C3=A8cnica de Val=C3=A8ncia, Spain.

On Mon, Mar 7, 2016 at 1:04 PM, Salva Peir=C3=B3 <speirofr@gmail.com> wrote:

> Hi everyone,
>
> A vulnerability in the minissdpd daemon has been found that affects
> minissdpd version 1.2.20130907-3 available in Debian and Ubuntu.
> The vulnerability can be exploited by a local unprivileged user
> with write access to /var/run/minissdpd.sock to crash the minissdpd
> daemon that runs with superuser privileges.
>
> More details at:
> https://speirofr.appspot.com/files/advisory/SPADV-2016-02.md
> https://bugs.debian.org/cgi-bin/pkgreport.cgi?pkg=3Dminissdpd;dist=3Dunst=
able.
>
> Is there a CVE for this? If not, could one be assigned, please?
>
> Regards,
> Salva Peir=C3=B3
>
> --
> Salva Peir=C3=B3 @ https://speirofr.appspot.com
> CS Researcher & Software Engineer
> Universitat Polit=C3=A8cnica de Val=C3=A8ncia, Spain.
>
>

--047d7bf0d1d654897e052e1470e2--
