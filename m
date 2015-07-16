X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["884" "Thursday" "16" "July" "2015" "01:24:02" "-0500" "Brian Carpenter" "brian.carpenter@gmail.com" "<CANMVOuxUyP_6479fSMMQsWbK1iSywX8OzMC9Px1+wa+3k9jjZg@mail.gmail.com>" "40" "[oss-security] CVE Request: use after free in PHP 5.6 and 7 (possibly others)" nil nil nil "7" "2015071606:24:02" "[oss-security] CVE Request: use after free in PHP 5.6 and 7 (possibly others)" (number mark "        brian.carpen Jul 16   40/884   " thread-indent "\"[oss-security] CVE Request: use after free in PHP 5.6 and 7 (possibly others)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32579 invoked by uid 550); 16 Jul 2015 06:24:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32558 invoked from network); 16 Jul 2015 06:24:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=E2L/hAN/jh4x3c4j16T89HAsxysftq9G27BKqsMUlQc=;
        b=0qD28lbeJIItBIVtPYV0axFi3k63kgAEZW3SUxTNqXuiKe7xl2ub9iJh9LxSP82RNE
         /eZF+By0yNTZuSEOKck1rwVNEnQ6eGBPh8T+/yj9JinOYmTSyvwKuN51My5P4ooj3Euc
         yJpRT1SFZaRecaNrqJrgec5op9TcUINDNl20Z0byVRxbIv1vP2qTFijPCuivWSY9CJzN
         8GHnjBjC/0UgBDDY3EFP0Dxf3uZUWbl6ZMbZpVo/zreabcmUaHtxmXZka5gDvMzbmcy+
         op9GydwajH7t2JVnYCgFA+jbbbIPmeG85NQRZ8t25KMgP3a9Va4GhRbDdiLo6rlE+yYl
         JAEw==
X-Received: by 10.107.6.231 with SMTP id f100mr1587623ioi.61.1437027882194;
 Wed, 15 Jul 2015 23:24:42 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CANMVOuxUyP_6479fSMMQsWbK1iSywX8OzMC9Px1+wa+3k9jjZg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113f9be4735f9c051af8208a
Date: Thu, 16 Jul 2015 01:24:02 -0500
From: Brian Carpenter <brian.carpenter@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: use after free in PHP 5.6 and 7 (possibly others)
To: oss-security@lists.openwall.com

--001a113f9be4735f9c051af8208a
Content-Type: text/plain; charset=UTF-8

Bug Report:
https://bugs.php.net/bug.php?id=70083

Fixed in PHP 5.6:
http://git.php.net/?p=php-src.git;a=commitdiff;h=f57cb13c566613eec0e1c2f6d96d18565436a9b7

Fixed in 7:
http://git.php.net/?p=php-src.git;a=commit;h=0af07333520f65def3a72f31effa38c907e962f9

This bug may also affect PHP 5.0.4, 5.0.5, 5.1.0-5.1.6, 5.4.0-5.5.26 (based
on 3v4l.org responses), triggered by this unminimized test case which
wasn't included in the original bug report:

<?php

class wpq {
    private $unrenced;

    public function __get($name) {
        return $this;
    }
}
 function ret_assoc() {
    return array('Roo' => 'bar');
}

$wpq = new wpq;
$wpq->interesting =& ret_assoc();
$x +@$wpq->interesting;
printf("%s\n", $x);

Regards,

Brian 'geeknik' Carpenter
https://twitter.com/geeknik

--001a113f9be4735f9c051af8208a--
