X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4325" "Sunday" "5" "November" "2017" "13:19:43" "-0500" "Scott Court" "z5t1@z5t1.com" "<a49425b0-4404-d570-a94d-fe92b59864b6@Z5T1.com>" "97" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110518:19:43" "[oss-security] Fw: Security risk of vim swap files" (number mark "        z5t1@z5t1.co Nov  5   97/4325  " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171105175959.GA13011@openwall.com>" ("<20171102212916.GC23769@256bit.org>" "<20171103163936.cevlb7ghcwkln6x2@jwilk.net>" "<20171105171704.GA9438@256bit.org>" "<20171105175959.GA13011@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11699 invoked by uid 550); 5 Nov 2017 18:57:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5404 invoked from network); 5 Nov 2017 18:20:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=z5t1-com.20150623.gappssmtp.com; s=20150623;
        h=from:subject:to:references:message-id:date:user-agent:mime-version
         :in-reply-to;
        bh=9dCYQ1//5q+vdE6Fd37nUiEe2uaBzRu08vVsYtwXtho=;
        b=TKHKq4eIWbzbx8UFzB/wprPiv01Qvi4r8S9mEDnkkM+ePaJ/kL9OA2zuMtTnK7kfTS
         lAIJTTg67rQ+GWmENMU9f9dxn0GKSkg7UvMQRKqXZPd+FnQZsHAysWNQQOVLhTY7IKFe
         dalRwSAhGf0XpuvM3m20rHxJ59f/amkEM9mTS523SlMfaY84e18CnKFbMV6maSK5pHud
         NdWiW3AWrksEK+K1uLRcD5Q1Z9AIuFWKNMNa5vT6gGnkW7g4sUmJI6Gr0ZogXgzLWQXJ
         M+hnzdTLokk19VFDsM46cY+iHgfr9j9SiwXvKzDAP4lZe6pjhITrtWOyREtE0hkA/9Q/
         AO5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:message-id:date
         :user-agent:mime-version:in-reply-to;
        bh=9dCYQ1//5q+vdE6Fd37nUiEe2uaBzRu08vVsYtwXtho=;
        b=MWODZhURaw6ezyBW6RV6Tx+VN7Vep8JKpcmqOTg7wt79dn4sCDdli0eww1dMmou+EH
         DXLJZRrUWi6BnZtgrIyRKhS/lnTWNXsjEBCd/0X4JwUDqtgCsyGLKcVHwJcWk2/wcHyE
         g8iar/ifwXVLGW6Jx1Kc122jcKTl0JJv/6nA3bXwq7DWbi0fgGjcTOcJAITjGQonlBkU
         BidAuS4HPhOj1On6nocbsxGO6xRkTBr74WDnZl0ILEesC0pGc9BILUTg3pSanN7+0cl2
         kqngNr4bHmvtGVApGs96A+XQFo7NoJhq/A+ijUGJzA6NF2N5BaSJYf3tVkpvKYmYwJP9
         XSUg==
X-Gm-Message-State: AMCzsaV1JK6ym25J2YRqHBiMyV0NQ26O2F9L3XffkDUgbvzkO748qx+g
	OB1UKQaw/DVFbUAL98BXa7dVKiPJJSg=
X-Google-Smtp-Source: ABhQp+S8qyFycrqfKd010XwwPrB7WAXTWLmvHm78fVo1JoVwh1CucTggRllgZFr8lvYRJTjaueMuDQ==
X-Received: by 10.55.121.2 with SMTP id u2mr17841578qkc.19.1509905999559;
        Sun, 05 Nov 2017 10:19:59 -0800 (PST)
X-Google-Original-From: Scott Court <Z5T1@Z5T1.com>
References: <20171102212916.GC23769@256bit.org>
 <20171103163936.cevlb7ghcwkln6x2@jwilk.net>
 <20171105171704.GA9438@256bit.org> <20171105175959.GA13011@openwall.com>
Message-ID: <a49425b0-4404-d570-a94d-fe92b59864b6@Z5T1.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <20171105175959.GA13011@openwall.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="n1VbRlFEtBFxTX99iLKAmcTMROEtqo6db"
Date: Sun, 5 Nov 2017 13:19:43 -0500
From: Scott Court <z5t1@z5t1.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

--n1VbRlFEtBFxTX99iLKAmcTMROEtqo6db
Content-Type: multipart/mixed; boundary="lPgN1ET1MhlMEdsNPo1I76pjtXOM1DRWW";
 protected-headers="v1"
From: Scott Court <Z5T1@Z5T1.com>
To: oss-security@lists.openwall.com
Message-ID: <a49425b0-4404-d570-a94d-fe92b59864b6@Z5T1.com>
Subject: Re: [oss-security] Fw: Security risk of vim swap files
References: <20171102212916.GC23769@256bit.org>
 <20171103163936.cevlb7ghcwkln6x2@jwilk.net>
 <20171105171704.GA9438@256bit.org> <20171105175959.GA13011@openwall.com>
In-Reply-To: <20171105175959.GA13011@openwall.com>

--lPgN1ET1MhlMEdsNPo1I76pjtXOM1DRWW
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Just want to point out that even if we do set 0600 permissions on all
.swp files, it still may allow for a form of the attack Hanno originally
pointed out if vim is ever run as the httpd user. In reality, this is
far less likely to occur but it's still worth pointing out.

Storing the .swp files in a separate directory prevents this from
potentially being a problem as well. However, universally setting the
.swp files to 0600 is probably a better solution than that patch
(https://github.com/vim/vim/releases/tag/v8.0.1263).


On 11/05/2017 12:59 PM, Solar Designer wrote:
> On Sun, Nov 05, 2017 at 06:17:04PM +0100, Christian Brabandt wrote:
>> On Fr, 03 Nov 2017, Jakub Wilk wrote:
>>
>>> In general, what vim does (copying mode bits) in not enough to ensure t=
hat
>>> the swapfile is readable only by the users who had access to the origin=
al
>>> file. It would have to copy also group ownership and ACLs.
>> I think patch https://github.com/vim/vim/releases/tag/v8.0.1263 fixes=20
>> the group ownership problem.
> That's some effort and code complexity for a fix that is not even trying
> to address the problem Hanno pointed out. :-(  What we really need is
> simply forcing the permissions to 0600 no matter what.  I do notice that,
> non-surprisingly, Bram said:
>
> | Why would a web server expose and serve such a file?  That clearly is
> | the problem, not that Vim happens to create swap files (and undo and
> | backup files, depending on your configuration).
> |=20
> | You probably also create new files and copies of files that should not
> | be served.  If you care about security, the web server must always use
> | whitelisting, only serve files that were intentionally made public.
>
> This makes sense, yet Vim can and should also do its part to make things
> safer when that does not conflict with its other goals nor introduce
> complexity.  Simply using mode 0600 is a win-win: addresses the problem
> Hanno reported for the common special case of web server running as a
> different user than the file owner, does not break any functionality,
> and makes Vim's code simpler.
>
> Yes, let's also force 0600 for "undo and backup files", please.
>
> Even without a web server or whatever other external interaction
> aspects, copying the original file's permissions and/or obeying umask is
> just wrong in this case because those files are created implicitly,
> often without the user's intent and knowledge, and because they might
> stay around for longer than the original file does.
>
> Alexander



--lPgN1ET1MhlMEdsNPo1I76pjtXOM1DRWW--

--n1VbRlFEtBFxTX99iLKAmcTMROEtqo6db
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJZ/1ZCAAoJEI1dl2DAZNZcAEoP/0xo0y7zk5E9ZEQ8mg/nn0PG
K2/ZrPaRWe/pFBYp35GB7OIUQ7A85BtZEiDRrLvQezz8l5J6mKm7coME4hSCqv64
GRtE5GEaC6PqqkBSTzk/O5Pm1QwDJde8xTX16xJeXPsaOhTI25BLzx2Mxq1B4gQI
+j2tswa7MHtvO8oNsiSEbIKGGHU7+PmMW42xiYoXy63jwHl3+duF0dKH4rZvJVFj
eMlVbcLcPYlTVcS+bjJL3z8YLNceC0jDRj136XCQM+QFGwU89jycw8rzwfTsWq3P
rAsJr3fe+6m6YA8rOlHSvsIMQWGpuj3f6G8E+hJY1JLT3c16vBPh3ejOke4gXUV9
B7vrKnOBoiLrP26sWIewH3hLRDgmWcJUxAUjEZzc5KDrn+cEz7ghIogiO0+tYLhI
W7Q5uj9n1r0+zPcHhui1d0QVWAuVIjiexnn14PVnKCK4GZBAC2snGIYfglgcRQOX
729EG3jyWHbEyv+TSO65Y2BpfKNl5hzqZFe+TOYEJWG+Lnizt2gJzwWZFJihx2/q
wzcvxiX7X+7GdDWAnPeU/E9I7H183jhgEAc+J0Sqh8V7OpMGqHjP3sxNkRyTlNDk
UxdANxOvp4N61nbUqE2mN2jFUNKDw1O9drxld48fPRNg76i5aEIbyI64DFsZkdUI
7pFhvyEm+jtcEp7PZjy8
=u8Pg
-----END PGP SIGNATURE-----

--n1VbRlFEtBFxTX99iLKAmcTMROEtqo6db--
