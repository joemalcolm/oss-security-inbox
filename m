X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["760" "Tuesday" "3" "October" "2017" "07:30:06" "+0000" "Terry Chia" "terrycwk1994@gmail.com" "<CAGqxZSUxjgaWr67Hiwfh1RfA8L5-JtezAQwhuwmjQbyus45Lhw@mail.gmail.com>" "21" "[oss-security] Graphicsmagick: NULL Pointer Dereference in DICOM Decoder (CVE-2017-14994)" "^Date:" nil nil "10" "2017100307:30:06" "[oss-security] Graphicsmagick: NULL Pointer Dereference in DICOM Decoder (CVE-2017-14994)" (number mark "U       terrycwk1994 Oct  3   21/760   " thread-indent "\"[oss-security] Graphicsmagick: NULL Pointer Dereference in DICOM Decoder (CVE-2017-14994)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13720 invoked by uid 550); 3 Oct 2017 07:45:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30459 invoked from network); 3 Oct 2017 07:30:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=PnSRpa5eS/7FErKFfg6732jBIaOsOtX2RgiYHxaN7d0=;
        b=ZlCqlSAFjyrJdEgLezLgrCC1AGFFgyoKfDN60YpqLNIF2aa+JSpOB0rfHw40b7sdMf
         9bDP+ot5jQ+qL7g75naFHdHe5LjDPpDey0bgTJSvKiKTnnYFyQtl9nV9VeW0QFuJ6Ccm
         Tevb2A2ees5bDE4Dpi0YoodgW6Oo5PrK3tvar/2WCKuUrRykYzrPSTkz4gJMvWEfkdEa
         g6u3oCApX+Y8aKG4Ed47gO/SXO2nQjUb5huBsGwiIkKMV1cAOfN3yfM0dPYGgvEBDg57
         OCSFumC+fO6yz6QVbbM2oT19loKIhX2QYDaNIwwftib/CajVFlC4CaUb98WidoQOj9if
         ZSVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=PnSRpa5eS/7FErKFfg6732jBIaOsOtX2RgiYHxaN7d0=;
        b=PQzPp37n7EAU0C9SyYq4DFroleD3Lrxy5F/EiCJK19lFbKHHDaOtxhz54C2Fkw3WN6
         b3DDEAHx6SK4yS09a9CE3a5ko1yq3aInf9WRi2B19Wss8j/NTqWKDdFSmJmufZw3GZN1
         W16DSq0ImnB0Qjy621w4+Jw2Pp2HSWyMC1cK4BbHxdRzwJhobukNNpxCVsdNwX//CFbV
         peIHJoEQKn5rdjS8mb4BuHdx7lrIkk4WHFpnFOBREIo6Lra83OlSeVOMbGYapFHouiZJ
         XvItfXOfZ+lzx0nBRgzdAGM/kx0jsO6SCjYiYaimS0vnRArbbskamljYHA3lMAGHxfw+
         VHjw==
X-Gm-Message-State: AMCzsaWqUXe372U2Yo7qyD/QtedzH7DVFmimoB4safpkj/nmRo9AVduV
	mt9WE0Zr5ldYPoSMG55AGOVVAYd+Ay8uYj9sWnLsqw==
X-Google-Smtp-Source: AOwi7QAqO2ITe1/QM22v8vpEWrkq74ofliATm3mLoTovs22nPzmf47i3UIxfGmLLYzAHjJnJ9ovT7ODF4TrEhZAGXA8=
X-Received: by 10.55.134.68 with SMTP id i65mr18939678qkd.192.1507015817394;
 Tue, 03 Oct 2017 00:30:17 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAGqxZSUxjgaWr67Hiwfh1RfA8L5-JtezAQwhuwmjQbyus45Lhw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="94eb2c072ed4777fd2055a9f7692"
Date: Tue, 03 Oct 2017 07:30:06 +0000
From: Terry Chia <terrycwk1994@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Graphicsmagick: NULL Pointer Dereference in DICOM Decoder (CVE-2017-14994)
To: oss-security@lists.openwall.com

--94eb2c072ed4777fd2055a9f7692
Content-Type: text/plain; charset="UTF-8"

A null pointer dereference vulnerability in the GraphicsMagick DICOM image
decoder allows an attacker to cause a denial-of-service condition or other
unspecified impact.

Bug: https://sourceforge.net/p/graphicsmagick/bugs/512/
Writeup: https://nandynarwhals.org/CVE-2017-14994/

Timeline:
30 Sept 2017 - Discovery of the vulnerability.
1 Oct 2017 - Disclosure of vulnerability to the vendor.
1 Oct 2017 - Vulnerability fixed in mercurial commit.
2 Oct 2017 - CVE number requested.
3 Oct 2017 - CVE-2017-14994 assigned.
3 Oct 2017 - Advisory sent to oss-security mailing list.

This issue was discovered by Terry Chia (Ayrx) and Jeremy Heng (@nn_amon).

--94eb2c072ed4777fd2055a9f7692--
