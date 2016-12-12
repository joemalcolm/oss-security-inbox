X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["641" "Monday" "12" "December" "2016" "13:47:56" "-0500" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8n1PaaH0Pby5NGSsXZ41g8=y_1Y_QeKTFcGyAKOh=CumQ@mail.gmail.com>" "15" "[oss-security] CVE Request: Potential DoS in Crypto++ ASN.1 parser" nil nil nil "12" "2016121218:47:56" "[oss-security] CVE Request: Potential DoS in Crypto++ ASN.1 parser" (number mark "U       noloader@gma Dec 12   15/641   " thread-indent "\"[oss-security] CVE Request: Potential DoS in Crypto++ ASN.1 parser\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7855 invoked by uid 550); 12 Dec 2016 18:49:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7522 invoked from network); 12 Dec 2016 18:48:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=RFfDye87V8RkM2ZHAWZ1dK6JQima+rzzbkJ/OTotWP8=;
        b=CU8FD1dffNW50Hk+L1RmR/s0NfF3zwn6wqRbXrouhirmJJYttFjjeduYGxE3ZrEWEU
         H6kpLIiPttxGq6OaSmB6x2rtWtwrAaISH1t0JleYc7eS14HN41Wpe2vIMY41E0pl/O++
         j4jTjUpkrJV++cDywYPwJFA+6BcfLi3RbCVtmeelz+s+PmYhjHidnSsQn5ED9/tvsqla
         0M+uLtTf7D7M4OAFcIDn+I5vaYirO+rbzM45RWHgAtSLGenpWwNCipW9Mg6NFyt3OAND
         toCiHMOMfMZhuZO+D63iWgDOZt+g593noBNEGVL3hXJbiAoFf0IHGU/HqZfUI5pKxJ+a
         GwMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=RFfDye87V8RkM2ZHAWZ1dK6JQima+rzzbkJ/OTotWP8=;
        b=HqGPA4dP32gZtEMUhGUG6OkLoN4sPwB+5POBib5Ts4GW/GuUPPNBUVu6njYLchs8K6
         yLYDbeNwkyzXPrYjBt9mHyETvUNesJ725XnO4moBORgCKaYU82KwQvVP8EipdQYcLDP0
         jnHlbV2ozbG62mDTYkiRbqVtSz+kHfRf4wVJOPgDpftaWlbxmvYoQIJtU9omkKZBeMym
         pFf56OgznigvK/qyQWDAQVC5Jl2v2C2ueIk8cyXqRVVpMUscwUTFZat0pTD4JrHPbGpn
         8HB4u6ZnchuoO0nnnCSybnOTMGX8U+7YH+QJnddgvjp1vb3w6OcN98mJ4HcvRcZt8d1x
         +ijg==
X-Gm-Message-State: AKaTC01Wa4xa7KLiy7lzT0dG8Km8GyqMtFWrkQBfEpsfqwyGXX6saUMHcPFe7mKH2N9vgunBoyEw7VPKY2vnPA==
X-Received: by 10.107.201.86 with SMTP id z83mr42667144iof.156.1481568476574;
 Mon, 12 Dec 2016 10:47:56 -0800 (PST)
MIME-Version: 1.0
From: Jeffrey Walton <noloader@gmail.com>
Date: Mon, 12 Dec 2016 13:47:56 -0500
Message-ID: <CAH8yC8n1PaaH0Pby5NGSsXZ41g8=y_1Y_QeKTFcGyAKOh=CumQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Gergely Nagy <ngg@tresorit.com>, =?UTF-8?Q?Tam=C3=A1s_Koczka?= <koczka@tresorit.com>, 
	=?UTF-8?B?SmVhbi1QaWVycmUgTcO8bmNo?= <jean-pierre.muench@web.de>, 
	Uri Blumenthal <mouse008@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE Request: Potential DoS in Crypto++ ASN.1 parser

Gergely Nagy and Tam=C3=A1s Koczka of Tresorit report a potential DoS in
the Crypto++ ASN.1 parser. A copy of their email with the report can
be found at https://groups.google.com/d/msg/cryptopp-users/fEQ8jWg_K8g/qOLH=
GIDICwAJ.

When Crypto++ library parses an ASN.1 data value, the library
allocates for the content octets based on the length octets. Later, if
there's too few or too little content octets, the library throws a
BERDecodeErr exception. The memory for the content octets will be
zeroized (even if unused), which could take a long time on a large
allocation.

Please assign a CVE for the potential issue.

Thanks in advance.
