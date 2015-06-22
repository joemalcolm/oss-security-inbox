X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1693" "Monday" "22" "June" "2015" "08:16:03" "-0500" "Kyle Kelley" "rgbkrk@gmail.com" "<CA+tbMaXPPLNRLW8MeN3c9nvupz6z0E2EZRgg55psyvEB-1fb3g@mail.gmail.com>" "60" "[oss-security] CVE request: IPython XSS in JSON error responses" nil nil nil "6" "2015062213:16:03" "[oss-security] CVE request: IPython XSS in JSON error responses" (number mark "U       rgbkrk@gmail Jun 22   60/1693  " thread-indent "\"[oss-security] CVE request: IPython XSS in JSON error responses\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21785 invoked by uid 550); 22 Jun 2015 13:16:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21755 invoked from network); 22 Jun 2015 13:16:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:cc:content-type;
        bh=3lcKlToLdLInUqE7SdZaAQF/YcB1SuzaQLLQikguCIU=;
        b=qb86IXIBb5T8SXe2B4rHpFP2XG3K8w/AqiY7UBfDRomOtkH4jE8qVkKB8guoLbenPg
         +nuz4Eg9DhyEFiebxg5p030Ep+Ioa3oM/8eswGofEHKK4/+eXXXvj3bWHbfp+ExEWarw
         poun0i1oKT3hyYjZXo/qL0qVTjxNmfT+COInTk2egRLPRkX3fwe+qazrI7v20/4jrHWX
         5kHznN34tHX7AlA8t4mCxICMrUBIZ+qBO+r/a0Z2sIRxedh7ffxcEi3Bo3vv1LujmE0+
         FSGQ29VanDuEcYpJ5nfWe85ua86WLIcme1CYbAAx0ywDQsmGqYZz1xbEJmtvTBwLuaDR
         LCiw==
MIME-Version: 1.0
X-Received: by 10.55.18.31 with SMTP id c31mr41971388qkh.15.1434978963384;
 Mon, 22 Jun 2015 06:16:03 -0700 (PDT)
Date: Mon, 22 Jun 2015 08:16:03 -0500
Message-ID: <CA+tbMaXPPLNRLW8MeN3c9nvupz6z0E2EZRgg55psyvEB-1fb3g@mail.gmail.com>
From: Kyle Kelley <rgbkrk@gmail.com>
To: oss-security@lists.openwall.com
Cc: security@ipython.org
Content-Type: multipart/alternative; boundary=001a11475a805f706005191b13fd
Subject: [oss-security] CVE request: IPython XSS in JSON error responses

--001a11475a805f706005191b13fd
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Email addresses of requester: security@ipython.org; rgbkrk@gmail.com;
khanam@us.ibm.com
Software name: IPython notebook
Type of vulnerability: XSS
Attack outcome: Remote execution
Patch/issue:
 * Current 3.x release
https://github.com/ipython/ipython/commit/7222bd53ad089a65fd610fab4626f9d0a=
b47dfce
 * Minor backport to 2.x
https://github.com/ipython/ipython/commit/c2078a53543ed502efd968649fee1125e=
0eb549c


Affected versions: 2.0 =E2=89=A4 version =E2=89=A4 2.4.1, 3.0 =E2=89=A4 ver=
sion =E2=89=A4 3.1

Summary: JSON error responses from the IPython notebook REST API contained
URL parameters and were incorrectly reported as text/html instead of
application/json. The error messages included some of these URL params,
resulting in a cross site scripting attack. This affects users on Mozilla
Firefox but not Chromium/Google Chrome.

API paths with issues:

* /api/contents (3.0-3.1)
* /api/notebooks (2.0-2.4, 3.0-3.1)

Mitigations:

Upgrade to IPython 3.2. If using pip,

  pip install --upgrade ipython[notebook]

For conda:

  conda update conda
  conda update ipython ipython-notebook

If you can't upgrade directly,

* Set the content security policy for the API headers of the notebook to
include `default-src 'none'` (
https://ipython.org/ipython-doc/3/whatsnew/version3.html#content-security-p=
olicy
)
* Set the content type on API handlers to application/json

Vulnerability was found by Ahmad Khan, Security Engineer at IBM.


--=20
Kyle Kelley (@rgbkrk <https://twitter.com/rgbkrk>; lambdaops.com,
developer.rackspace.com)

--001a11475a805f706005191b13fd--
