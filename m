X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1436" "Saturday" "23" "April" "2016" "23:58:18" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160424035818.A9F8672E09B@smtpvbsrv1.mitre.org>" "38" "[oss-security] Re: CVE request: Poppler < 0.40.0" nil nil nil "4" "2016042403:58:18" "[oss-security] Re: CVE request: Poppler < 0.40.0" (number mark "U       cve-assign@m Apr 23   38/1436  " thread-indent "\"[oss-security] Re: CVE request: Poppler < 0.40.0\"\n") "<CAEDLTO9PTJy54Wqbb3c63phUbv5xCKJHkueNfFKtb0hy6VxpVQ@mail.gmail.com>" ("<CAEDLTO9PTJy54Wqbb3c63phUbv5xCKJHkueNfFKtb0hy6VxpVQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30699 invoked by uid 550); 24 Apr 2016 03:58:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30677 invoked from network); 24 Apr 2016 03:58:30 -0000
From: cve-assign@mitre.org
To: felipe.andres.manzano@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAEDLTO9PTJy54Wqbb3c63phUbv5xCKJHkueNfFKtb0hy6VxpVQ@mail.gmail.com>
Message-Id: <20160424035818.A9F8672E09B@smtpvbsrv1.mitre.org>
Date: Sat, 23 Apr 2016 23:58:18 -0400 (EDT)
Subject: [oss-security] Re: CVE request: Poppler < 0.40.0

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> This is a clean heap overflow.
> 
> https://cgit.freedesktop.org/poppler/poppler/commit/?id=b3425dd3261679958cd56c0f71995c15d2124433

>> ExponentialFunction::ExponentialFunction(Object *funcObj, Dict *dict) {
>> ...
>> +  if (unlikely(n > funcMaxOutputs)) {
>> +  error(errSyntaxError, -1, "Function's C0 array is wrong length");
>> +  n = funcMaxOutputs;
>> +  }

Use CVE-2015-8868.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXHEP+AAoJEHb/MwWLVhi2yCQP/jdyOQR6mHI2snwddK0mkFjC
DOUAa2SMTDyVvoOmRcBUWspMtqgfBUlyzGQvBSSf7wKq5QyyDGVzc0q392Ik+j8A
4NrFumG2uhUZGmt7ILzVAVRgOSVkNVVK3Ar8Ef/gX/MV+/ZQT/+YQFYlsauU28eE
VF1gKrPNLoczFnPbmjzZbf6RnqIaAnvce1IIF6UZblEhudAUvjG0X4QNvyxJBqWb
i0KOViYPc+VLqkYcNzGy3PFoDlUhU96xiSVpNPC7yoYFfrWrO4qLbO6V58tMALoz
vcKPRdonELjcedxO1mpZAXkVXXkBrgWP/m/K3HsI7XM/qLaRYcjvtOZFBe+SNQrF
HhVzGUBO8eB/1irkZTvqs3Qywbr4RZ9AC9+85Bl6lY4Tf58YmudMomn+IsPWAJ/o
N0IBTnCH1xaTGStK4XFwgO6+wPoIh2x0gkpeOLgXA3ebpPcLN0x84Anbu0MRUpHN
n6Ql07YXAtwmNpUrnQORklKqGSSo0k2GaANJKcxszHgF3fHCifQpbx2u6C0CON6f
cVpYvbIRc+YhhlCgqt/I4BAE0QTw82zMht0rfx3+55l0Hx+eecqxnO+bNWBDZp0J
xx1xQ/RF+KTs+OrozZk87w+M0La9Kn5VWQUEhwiXGOwom7edzJriJ9hteV7XSUT+
nEohPLvL3NfXqCsYei4f
=M8Dv
-----END PGP SIGNATURE-----
