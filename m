X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2053" "Monday" "22" "June" "2015" "17:06:57" "-0500" "Kyle Kelley" "rgbkrk@gmail.com" "<CA+tbMaVZCTw6CM1TdtF-JHCtj3uy0nkJSYZGqezhHkERcQKX3g@mail.gmail.com>" "64" "[oss-security] Re: CVE request: IPython XSS in JSON error responses" nil nil nil "6" "2015062222:06:57" "[oss-security] Re: CVE request: IPython XSS in JSON error responses" (number mark "U       rgbkrk@gmail Jun 22   64/2053  " thread-indent "\"[oss-security] Re: CVE request: IPython XSS in JSON error responses\"\n") "<20150622212521.220A172E023@smtpvbsrv1.mitre.org>" ("<CA+tbMaXPPLNRLW8MeN3c9nvupz6z0E2EZRgg55psyvEB-1fb3g@mail.gmail.com>" "<20150622212521.220A172E023@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10129 invoked by uid 550); 22 Jun 2015 22:07:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10111 invoked from network); 22 Jun 2015 22:07:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=du4gVY3Zlq+4HDOEMDfo+lTfq06bIRloRhn8H1RS25Y=;
        b=x4u/ZH/PmKwu2kJMuPRdCWDHBpAjt9XxVmbeI18JVWye3v9jm8ngEuPUyWhMbFGHqV
         lqHCXH/jKrkkBO1BM7I5EILQ/UyGyNNO6lCjcGvtPJXE0Sa7giNOHEp9T7l/vn+Hn84J
         SYqEjEZB7I+Uf02V4WMuDS3aJ94Aoqz99DwfcOdtuTzrvJQS44SroGO0j57jnMQdJFY0
         qlh44DPgEEnunxqAsjnridD18WaAFUNu3aRsMUDfWYY5xd0jNoXE6DR298Eb4AtmcWDR
         F630NVbM9g6MacTr8xug6YyFZfUUuI56NHjtk5IC98WuuRQAZk0cMgD5+CjdX4m8TZtU
         pJAg==
MIME-Version: 1.0
X-Received: by 10.55.54.65 with SMTP id d62mr66265081qka.59.1435010817914;
 Mon, 22 Jun 2015 15:06:57 -0700 (PDT)
In-Reply-To: <20150622212521.220A172E023@smtpvbsrv1.mitre.org>
References: <CA+tbMaXPPLNRLW8MeN3c9nvupz6z0E2EZRgg55psyvEB-1fb3g@mail.gmail.com>
	<20150622212521.220A172E023@smtpvbsrv1.mitre.org>
Date: Mon, 22 Jun 2015 17:06:57 -0500
Message-ID: <CA+tbMaVZCTw6CM1TdtF-JHCtj3uy0nkJSYZGqezhHkERcQKX3g@mail.gmail.com>
From: Kyle Kelley <rgbkrk@gmail.com>
To: "cve-assign@mitre.org" <cve-assign@mitre.org>
Cc: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, 
	"security@ipython.org" <security@ipython.org>
Content-Type: multipart/alternative; boundary=001a1146ed3a0cfd090519227e1f
Subject: [oss-security] Re: CVE request: IPython XSS in JSON error responses

--001a1146ed3a0cfd090519227e1f
Content-Type: text/plain; charset=UTF-8

Thank you for the rapid response!

On Monday, June 22, 2015, cve-assign@mitre.org <cve-assign@mitre.org> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> >
> https://github.com/ipython/ipython/commit/7222bd53ad089a65fd610fab4626f9d0ab47dfce
> >
> https://github.com/ipython/ipython/commit/c2078a53543ed502efd968649fee1125e0eb549c
>
> > JSON error responses from the IPython notebook REST API contained
> > URL parameters and were incorrectly reported as text/html instead of
> > application/json. The error messages included some of these URL params,
> > resulting in a cross site scripting attack.
>
> (We wanted to have two CVE IDs because of the following difference in
> how 2.x and 3.x are affected. We realize that this is perhaps a
> marginal case for that, because the 3.x code is essentially just:
>
>   self.log.warn("/api/notebooks is deprecated, use /api/contents")
>   self.redirect(url_path_join(
>       self.base_url,
>       'api/contents',
>
> )
>
> > /api/contents (3.0-3.1)
>
> Use CVE-2015-4706 for the /api/contents path.
>
>
> > /api/notebooks (2.0-2.4, 3.0-3.1)
>
> Use CVE-2015-4707 for the /api/notebooks path.
>
> - --
> CVE assignment team, MITRE CVE Numbering Authority
> M/S M300
> 202 Burlington Road, Bedford, MA 01730 USA
> [ PGP key available through http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.4.14 (SunOS)
>
> iQEcBAEBAgAGBQJViHxpAAoJEKllVAevmvmsKHMH/1/6j3dATboZR89XjRTsMhob
> mQa5sqbEjCAHUxvfZlCPqDc/JQ+P+76cvOqjkyS/xDlvl9hLj2EBF46apVOLexcw
> UdiR3FmVsBNUq/QPupSobZGPrMywaypla34MfIbSod/rDZN/A8sGDvt7J6sGOoAU
> on4ZddKjCg85YUQr47AgVmU1FLnGpkPyA22KazhJnSyfdNv5/OptG4QwMnH5o774
> SospTf0okgh180Fj54BnNwiPARA71syjOyYBoveQDKbbdkKTtaWB9cWVeAvePkrd
> mc1Yvvxwzws/wednn2qFLTWPPCvUvUEswHSuB5p9JDpizdQDO8t8xeBWmZkWXu0=
> =sYFZ
> -----END PGP SIGNATURE-----
>


-- 
Kyle Kelley (@rgbkrk <https://twitter.com/rgbkrk>; lambdaops.com,
developer.rackspace.com)

--001a1146ed3a0cfd090519227e1f--
