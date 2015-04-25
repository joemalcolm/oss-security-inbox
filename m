X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["488" "Saturday" "25" "April" "2015" "19:49:54" "+0100" "=?UTF-8?B?UMOhZHJhaWMgQnJhZHk=?=" "padraic.brady@gmail.com" "<CALwr1Gm-U0HojTKS3sZaZjjddCY7TT99QokJWpqcOBKEJsst=Q@mail.gmail.com>" "14" "[oss-security] Insufficient TLS Protection in Composer (PHP)" nil nil nil "4" "2015042518:49:54" "[oss-security] Insufficient TLS Protection in Composer (PHP)" (number mark "        padraic.brad Apr 25   14/488   " thread-indent "\"[oss-security] Insufficient TLS Protection in Composer (PHP)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22209 invoked by uid 550); 25 Apr 2015 19:20:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21544 invoked from network); 25 Apr 2015 18:50:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type
         :content-transfer-encoding;
        bh=RXztLR0T9mcmIFfnfz+2xu43OAP4mqkg4sDqgKYooyM=;
        b=gdU87Ki6gAc6nj8H0mD6Syu23o4RII8Z1ymP31rS8ujhlC+4dy9+Fzt7hY3XNK2pC3
         ynbjAoHc+wP+xB5WqZixDvRMtIJUL0Ky7FQSzPIid54axS7yrbJgoTRn57NHCZ5mmlxY
         Jm3xpfx1KswV5R8I4ULaAMrn7kyolugHCwwSrTBE/8BruUZfHtoNHoPz7RVheWMsnEgK
         h/wVtEAGGPfQmN3oXVUwcTeh8apYsHEjg3a2D9srp1eEER8yp5i36UC6w6vFLmZ94OXt
         64KzBr3zxCj2/jwGAQNmB4V9GPpHJFPBWaEV4e/hwzPf5x75Z1oxN7hO9MzQl15tx3tS
         t5aw==
MIME-Version: 1.0
X-Received: by 10.194.185.229 with SMTP id ff5mr8235711wjc.30.1429987794217;
 Sat, 25 Apr 2015 11:49:54 -0700 (PDT)
Message-ID: <CALwr1Gm-U0HojTKS3sZaZjjddCY7TT99QokJWpqcOBKEJsst=Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 25 Apr 2015 19:49:54 +0100
From: =?UTF-8?Q?P=C3=A1draic_Brady?= <padraic.brady@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Insufficient TLS Protection in Composer (PHP)
To: oss-security@lists.openwall.com

My I request a CVE ID for the following, which is a publicly disclosed
unpatched vulnerability on Composer's issue tracker since 2012.
Composer is an open source package manager for PHP. The specific issue
pertaining to this request is a failure to perform TLS peer
verification on remote requests when making any API request or
retrieving any file, i.e. there is a singular client class.

Ref: https://github.com/composer/composer/issues/1074

Kind regards,
Paddy

--
P=C3=A1draic Brady
