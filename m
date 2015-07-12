X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1606" "Sunday" "12" "July" "2015" "15:12:33" "-0500" "Kyle Kelley" "rgbkrk@gmail.com" "<CA+tbMaW_byk+-swLHZ9nE7jDh1GCGc9Dd9A8who56h0rmAzjwQ@mail.gmail.com>" "54" "[oss-security] CVE request: IPython CSRF validation" nil nil nil "7" "2015071220:12:33" "[oss-security] CVE request: IPython CSRF validation" (number mark "U       rgbkrk@gmail Jul 12   54/1606  " thread-indent "\"[oss-security] CVE request: IPython CSRF validation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26600 invoked by uid 550); 12 Jul 2015 20:12:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26524 invoked from network); 12 Jul 2015 20:12:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:cc:content-type;
        bh=6ebZA9tzsD9VA2wCtohhRLTi+zTsy5mjnXo6bNrcKks=;
        b=MnN4qZkYQu04C8Gj04L+S/G4RFLLv1BIXC4I6GXNSPIXEFPnLPxXACdY2rlUcFmYCw
         HtHetRwmSC/GZVd9Y7Nl5Cn4VIaoNwl46rlfvI/CDrraNHhJ5zDiHJ1W+30CkzjOuUCU
         lmviAnoKFALuexj4TN1rSOkB8/vvik8e2jQCeXMKxh7o9ru6N8DpGlMJqSF6ltW9OW5i
         inwo4af1ng//EwvCNNsVR3QXIsgPDSorTqn4EeKRnuaZJVjKLXCXJCb+wJqK6I5xhEbh
         ZGB4NPugQsEmhSZ0E4CTe64sTHGoRF/gT8j1TEkX85HyMK4IAWEz/796JpNUp4ge4EkV
         dRhA==
MIME-Version: 1.0
X-Received: by 10.55.15.129 with SMTP id 1mr48307815qkp.29.1436731953627; Sun,
 12 Jul 2015 13:12:33 -0700 (PDT)
Date: Sun, 12 Jul 2015 15:12:33 -0500
Message-ID: <CA+tbMaW_byk+-swLHZ9nE7jDh1GCGc9Dd9A8who56h0rmAzjwQ@mail.gmail.com>
From: Kyle Kelley <rgbkrk@gmail.com>
To: oss-security@lists.openwall.com
Cc: Muhammad A Khan <khanam@us.ibm.com>, security <security@ipython.org>
Content-Type: multipart/alternative; boundary=001a1146f100bbc9f0051ab33961
Subject: [oss-security] CVE request: IPython CSRF validation

--001a1146f100bbc9f0051ab33961
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Email addresses of requester: security@ipython.org; rgbkrk@gmail.com;
khanam@us.ibm.com
Software name: IPython notebook
Type of vulnerability: CSRF
Attack outcome: Possible remote execution
Patches:
  2.x:
https://github.com/ipython/ipython/commit/a05fe052a18810e92d9be8c1185952c13=
fe4e5b0
  3.x:
https://github.com/ipython/ipython/commit/1415a9710407e7c14900531813c15ba61=
65f0816

Affected versions: 0.12 =E2=89=A4 version =E2=89=A4 3.2.0

Summary: POST requests exposed via the IPython REST API are vulnerable to
cross-site request forgery (CSRF). Web pages on different domains can make
non-AJAX POST requests to known IPython URLs, and IPython will honor them.
The user's browser will automatically send IPython cookies along with the
requests. The response is blocked by the Same-Origin Policy, but the
request isn't.

API paths with issues:

* POST /api/contents/<path>/<file>
* POST /api/contents/<path>/<file>/checkpoints
* POST /api/contents/<path>/<file>/checkpoints/<checkpoint_id>
* POST /api/kernels
* POST /api/kernels/<kernel_id>/<action>
* POST /api/sessions
* POST /api/clusters/<cluster_id>/<action>

Mitigations:

Upgrade to IPython 3.2.1. If using pip,

  pip install --upgrade ipython[notebook]

For conda:

  conda update conda
  conda update ipython ipython-notebook

Vulnerability was found by Ahmad Khan, Security Engineer at IBM.

--=20
Kyle Kelley (@rgbkrk <https://twitter.com/rgbkrk>; lambdaops.com,
developer.rackspace.com)

--001a1146f100bbc9f0051ab33961--
