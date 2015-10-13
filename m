X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["977" "Tuesday" "13" "October" "2015" "20:21:54" "+0200" "Gijs Hollestelle" "g.hollestelle@gmail.com" "<CAGq7Pojhq-Cnm97H=D8TOm8K+Z2CFssGAUyyY==WonqhWCwVBg@mail.gmail.com>" "34" "[oss-security] CVE Request: Openpgp.js Critical vulnerability in S2K" nil nil nil "10" "2015101318:21:54" "[oss-security] CVE Request: Openpgp.js Critical vulnerability in S2K" (number mark "U       g.hollestell Oct 13   34/977   " thread-indent "\"[oss-security] CVE Request: Openpgp.js Critical vulnerability in S2K\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18101 invoked by uid 550); 13 Oct 2015 18:24:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17630 invoked from network); 13 Oct 2015 18:22:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=R6e3H4K5puKedQsxH/6BoRzsn54e9VuuadAbJv+bamE=;
        b=bQ4ueuUpXBIpaOk2/xEr4lpN3bad58IZkGdfUS66XTxfpW/2/Kw1x4WXRWHitCaC0K
         7Mi+UN77HKIG8qy6VnmVGkHnygGs7jjh5GsoZxQ8pMJbSjsLLdkHuBN0knfdcBmTcZhW
         /U+bWTRJhknHlUWD+7nZBSr+Zwd6s9zQXfn0Ukhe/DKmkn9q1S63ZeW7ixLwK0Q+i5/d
         xo5fJHvOzKSiUduNW/wTsp5b0oqa7XhvuwoA6hFsybmqyJQ2kCyAoT6m32vLaalISYLP
         B1Kq5n6shDy+7EYSRb9wMQWxsJ5aelML3C1Ebi+fDdC86SVYANlpPzji7bxIiSOYrgM1
         SIgg==
X-Received: by 10.202.93.215 with SMTP id r206mr19509398oib.42.1444760533369;
 Tue, 13 Oct 2015 11:22:13 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAGq7Pojhq-Cnm97H=D8TOm8K+Z2CFssGAUyyY==WonqhWCwVBg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113d500c6088ec0522008697
Date: Tue, 13 Oct 2015 20:21:54 +0200
From: Gijs Hollestelle <g.hollestelle@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Openpgp.js Critical vulnerability in S2K
To: oss-security@lists.openwall.com

--001a113d500c6088ec0522008697
Content-Type: text/plain; charset=UTF-8

Hi,

A vulnerability in the S2K function of OpenPGP.js allows to produce a
predictable session key without knowing the passphrase.

An attacker is able to create a private PGP key that will decrypt in
OpenPGP.js regardless of the passphrase given.

Also using this flaw it is possible to forge a symmetrically encrypted PGP
message (Symmetric-Key Encrypted Session Key Packets (Tag 3)) that
will decrypt with any passphrase in OpenPGP.js. This can be an attack
vector if successful decryption of such a message is used as an
authentication mechanism.

The bug is fixed with a strict check on unknown S2K types.

Info:
https://www.mail-archive.com/list@openpgpjs.org/msg00918.html

Fixed by:
https://github.com/openpgpjs/openpgpjs/commit/668a9bbe7033f3f475576209305eb57a54306d29

Fixen in:
OpenPGP.js v1.3.0

Could a CVE please be assigned to this issue?

Regards,
  Gijs

--001a113d500c6088ec0522008697--
