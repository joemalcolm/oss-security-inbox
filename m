X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4169" "Monday" "12" "October" "2015" "12:04:40" "-0500" "Nathan Van Gheem" "nathan.van.gheem@plone.org" "<CAL8hw9E4UMfhDtQ5R6niVe1ee36=LAHbds-0yrhGDNA+NC-ePQ@mail.gmail.com>" "98" "[oss-security] Re: CVE Request: Plone CSRF" nil nil nil "10" "2015101217:04:40" "[oss-security] Re: CVE Request: Plone CSRF" (number mark "U       nathan.van.g Oct 12   98/4169  " thread-indent "\"[oss-security] Re: CVE Request: Plone CSRF\"\n") "<20151012161612.5FE516C04EF@smtpvmsrv1.mitre.org>" ("<CAL8hw9GrJsZk5uVN2aY9EdBo2uahxLbQFG8j_5=ArC8Z+cGfKA@mail.gmail.com>" "<20151012161612.5FE516C04EF@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28090 invoked by uid 550); 12 Oct 2015 17:04:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28069 invoked from network); 12 Oct 2015 17:04:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=l2YfGsWkjNPfxwQarrXi0Uovnbhn3+yUjxAOJoELfjs=;
        b=hE08X+EIN/hNT4fucSolZCEsjKKFFmij7WeZfl2bRYDUfKMGEBBfJPnVQj6PmDDp0x
         Clh52N5IVab+ivWoOk1pElOGMF3HrZy+PB7q9EGDD9P3Lmj+e61yocmF+UfEX3K/v3K6
         MGY+MKwTDokLaEofDHcuQdFnHvnF2r3n5fwyd1UDegTc/ipW8eFWV6k31fhnqT1C36rr
         LyzHAygg4WEZvScc8LJXT9hKEXkP9tPRUu0QD02Dtyfq5sufwIPAWst3cxYICj8KwnKp
         evHQI1bDUFxh6+wcAceVxo9Al18F6/gb1e7W7fH4PLKzGs3V0kk74SDtt33wZdJS+rsq
         GD1Q==
MIME-Version: 1.0
X-Received: by 10.31.164.146 with SMTP id n140mr17759629vke.148.1444669480554;
 Mon, 12 Oct 2015 10:04:40 -0700 (PDT)
In-Reply-To: <20151012161612.5FE516C04EF@smtpvmsrv1.mitre.org>
References: <CAL8hw9GrJsZk5uVN2aY9EdBo2uahxLbQFG8j_5=ArC8Z+cGfKA@mail.gmail.com>
	<20151012161612.5FE516C04EF@smtpvmsrv1.mitre.org>
X-Google-Sender-Auth: Ok-SPw-4zAKwm-a9Vhw8yentAe4
Message-ID: <CAL8hw9E4UMfhDtQ5R6niVe1ee36=LAHbds-0yrhGDNA+NC-ePQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11414f8834d6c50521eb5320
Cc: oss-security@lists.openwall.com
Date: Mon, 12 Oct 2015 12:04:40 -0500
From: Nathan Van Gheem <nathan.van.gheem@plone.org>
Reply-To: oss-security@lists.openwall.com
Sender: vangheem@gmail.com
Subject: [oss-security] Re: CVE Request: Plone CSRF
To: cve-assign@mitre.org

--001a11414f8834d6c50521eb5320
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 12, 2015 at 11:16 AM, <cve-assign@mitre.org> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> > Can a CVE be assigned to this issue, please?
> >
> >
> https://plone.org/security/20151006/multiple-csrf-vulnerabilities-in-zope
> >
> https://plone.org/products/plone/security/advisories/security-vulnerability-20151006-csrf
> >
> > Plone is built on the Zope2 application framework. In the Zope2
> application
> > framework, there are multiple CSRF vulnerabilities. The latest version of
> > Plone has automatic CSRF protection integrated at the database layer.
> This
> > patch basically backports the latest automatically CSRF infrastructure to
> > Plone 4.x.
>
> The vulnerability information can be covered in CVE; however, we do
> not really understand why it is being presented in this way.
>
> https://github.com/plone/plone4.csrffixes says "there are a lot of
> CSRF problem with the ZMI that Zope2 will never be able to fix." It
> seems that, normally, if one or more persons had discovered CSRF
> problems in Zope2, then they could have CVE IDs for their discoveries.
>
We have one person who discovered and submitted a vulnerability. On further
investigation by the security team, more vulnerabilities were found.

There are no CVEs. The backport is of the technology to protect all
functionality, along with addons of the CMS.


> Why is this a "never be able to fix" situation? Is there, more or
> less, a requirement that Zope2 allow arbitrary requests from clients
> that have never previously read the content of any web page, because
> of the variety of ways that Zope2 is used? In that situation, the
> request behavior of Zope2 would not necessarily be considered a Zope2
> vulnerability.
>
Zope2 development is dead. They do not have the people to address the
problem and aren't very interested in it(we've tried coordinating). It is a
Zope2 issue vulnerability. Plone will likely be forking...


>
> Also, a separate issue is that the CVE request is specifically about
> backporting. It seems that, at some time in the past, the possibility
> of CSRF attacks against default Plone sites was identified and this
> motivated the development of auto CSRF protection in Plone 5.
> Normally, an assignment of a CVE ID or IDs would be associated with
> the original discovery, not a later backporting of fixes. Are these
> equivalent in this case: for example, were all of the CSRF attack
> possibilities against default Plone sites discovered by Plone
> Foundation contributors, and security-vulnerability-20151006-csrf is
> the first general public announcement that these CSRF issues existed
> at all?
>
There are no other previously known unpatched CSRF vulnerabilities this is
backporting. After testing, we knew that our automatic CSRF protection also
addressed the reported CSRF issue.

security-vulnerability-20151006-csrf is the first public announcement that
Zope2 is mostly unprotected. Zope2 has a collection of management
interfaces, many of which are vulnerable.


>
> - --
> CVE assignment team, MITRE CVE Numbering Authority
> M/S M300
> 202 Burlington Road, Bedford, MA 01730 USA
> [ PGP key available through http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>
> iQIcBAEBCAAGBQJWG9wmAAoJEL54rhJi8gl5n6oQAKXuzwqb4bmBs4K5NhpJ4NtI
> d37u737MsJSGLLtXGlrupC2XDwq/LuSN80SmOQVYnPn4EU4SU+17bvwjOP30LECD
> DJMt7m10LuGjamyrbFGfALzXh0iPkZHoUN289c+oQZN9P8pdVlVfZlVrgZP2KPQk
> 3MbELeGrh0NogA2+yRFAdufKQovo4cnyQuHsxqpV/7Mv+YJwlFInhJVcrI35F5TF
> R3sDKoIkjMXicPRA9+9dZYnTeNmypGVhuBUhG6UwW+Ob4dlR6fAyMH6NV+977r+5
> 9DnDsyHQ+6axYqNT/+4kY1tXHi9dXvhSoV71OGtcMODknD7RyiVdF1DpuJl7PP7Y
> u+TaqrN7A7x5kalSCspLYsYlvciyIXURJv32ZANVeT/67mEqnWky7ZnoUrssPqzf
> FIgqAM1MUPD9KT+P9zDoiG0oFfVKpu9EqLlo372pyw+nVn/2U0fPdGzKro+kOZGQ
> CU+wxdFX2xwZTAsP1JXzHBoHEY0Q/i+GSAlqHvNuILlLgdypPS9YxiCNc0pVmsBE
> 2HRxNoZAWBhiAD/B/nEFjNyvi6yGzz35QNhaYGeMQpVrlDh65BNt3wT+pkCxB/tr
> W7ZbRsu4DBxt/yyVy9FqOdw0eIqo2beplKxVWHjbAIKapQjCyJ0VXD887CBw7AlC
> uVpQbre4M9bmYXVg95Bz
> =tvlJ
> -----END PGP SIGNATURE-----
>

--001a11414f8834d6c50521eb5320--
