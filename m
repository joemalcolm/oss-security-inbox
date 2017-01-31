X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["648" "Tuesday" "31" "January" "2017" "12:58:41" "+0800" "chunibalon" "chunibalon@gmail.com" "<CAN6_dU-+NxBLRrn4_W4myHh0hEBsC-dh=DrSkt_mDfd6fAC2_w@mail.gmail.com>" "18" "[oss-security] CVE request: Out-of-Bound read and write issues in put1bitbwtile()(tiff-4.0.7/libtiff/tif-getimage.c:1352) and putgreytile()(tiff-4.0.7/libtiff/tif-getimage.c:1288)" nil nil nil "1" "2017013104:58:41" "[oss-security] CVE request: Out-of-Bound read and write issues in put1bitbwtile()(tiff-4.0.7/libtiff/tif-getimage.c:1352) and putgreytile()(tiff-4.0.7/libtiff/tif-getimage.c:1288)" (number mark "U       chunibalon@g Jan 31   18/648   " thread-indent "\"[oss-security] CVE request: Out-of-Bound read and write issues in put1bitbwtile()(tiff-4.0.7/libtiff/tif-getimage.c:1352) and putgreytile()(tiff-4.0.7/libtiff/tif-getimage.c:1288)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25687 invoked by uid 550); 31 Jan 2017 07:17:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11698 invoked from network); 31 Jan 2017 04:58:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=BT55/h3NQZUhQJgPwdKKaq7FKJcxhMpGoEzKqOb5rVM=;
        b=PrYlDOD4/gegHJ6PKCjDI+/JU9uQ+ETkdb/riev3tk3OQ/FWgyd+27lZe9UWkdMLqX
         z5SHre3TaC+tXIXOHBJUQEXhrIv1edV8uzjJeBr/5qUUDGHAAed2LrZmtpvxb/XSbVAq
         uEKEXVUIHN3iDy9bsy0Q2z5DCf5YMdsMoIIGexWFJ5wZxO9A2jXLfLZZgjqkdL1AAgpK
         T3148/8OO2nZr6/63EupAA/zzKO9Aud1DbHphazqv7VWIX24kGXuozB77+I7HWRRVOlL
         oPw2gOCYvJmok1ps8Wc+hIanumAkwn/jV4PcsJ1ylABND4puIRH3qmUma28CLOHb3hDu
         g8uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=BT55/h3NQZUhQJgPwdKKaq7FKJcxhMpGoEzKqOb5rVM=;
        b=ZCuIqceqwZ5A3rH2XZMkprTfNnRjUfsvPpHv38GEzOSpOKYks3ySEVGBJySpiD6TPf
         URj/mz2sNSAGT3uw6qK1X1OA1Cl3Q9FNebiqEfLnEvxUFuk09SVQZf9oj1Qz5SXNPp/h
         Q5ObtcMD8MdeBkpCqkiLUV0jjEFAKBwxQLu+6rfh7EnKizX708p8QD+alNjrxGqHJw2/
         zOdwkd/hBcf3hF5czsZRV/eg9lj9eMdemRSl0QtNa0zJKdJM3YBLTZ0zKeuKWKYEtyjd
         B1P3J34VYi181LdpXV3eKNaL01EPDoQRiyZ4FBzFFgLBs/1+DV6g6HvzpoGMH1+SuShn
         QmEg==
X-Gm-Message-State: AIkVDXLQNoqv0kpuyDCXYdwvT0vEwbrAb1CVNRcDRs4T0EzcAxixTZbq4LNhU0KqXYvY94i3B7SLf49TePNdQA==
X-Received: by 10.36.64.198 with SMTP id n189mr18739133ita.6.1485838721792;
 Mon, 30 Jan 2017 20:58:41 -0800 (PST)
MIME-Version: 1.0
From: chunibalon <chunibalon@gmail.com>
Date: Tue, 31 Jan 2017 12:58:41 +0800
Message-ID: <CAN6_dU-+NxBLRrn4_W4myHh0hEBsC-dh=DrSkt_mDfd6fAC2_w@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.com
Content-Type: multipart/alternative; boundary=001a1134f06234c19105475cc941
Subject: [oss-security] CVE request: Out-of-Bound read and write issues in
 put1bitbwtile()(tiff-4.0.7/libtiff/tif-getimage.c:1352) and putgreytile()(tiff-4.0.7/libtiff/tif-getimage.c:1288)

--001a1134f06234c19105475cc941
Content-Type: text/plain; charset=UTF-8

Hi:

        These issues were discovered via libtiff 4.0.7, however after
upstream analysis they were found that they are in netpbm(10.47.63)
       The url of bug tracker:
        http://bugzilla.maptools.org/show_bug.cgi?id=2654
        http://bugzilla.maptools.org/show_bug.cgi?id=2655
        Then I mailed the maintainer of netpbm and he promised fix them in
the next Netpbm Super Stable release (the release series I tested) at the
end of March.
       Could you please assign CVE id's for those?
Best Regards,
chunibalon of VARAS@IIE

--001a1134f06234c19105475cc941--
