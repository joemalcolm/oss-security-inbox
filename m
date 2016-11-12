X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["834" "Friday" "11" "November" "2016" "22:13:40" "-0600" "Brian 'geeknik' Carpenter" "brian.carpenter@gmail.com" "<CANMVOuzgr=caMRG=US40q-yfmA5mGH7OakJMvrj4r1g_B3yGiQ@mail.gmail.com>" "26" "[oss-security] CVE Request: libtiff: read outside buffer in _TIFFPrintField()" nil nil nil "11" "2016111204:13:40" "[oss-security] CVE Request: libtiff: read outside buffer in _TIFFPrintField()" (number mark "U       brian.carpen Nov 11   26/834   " thread-indent "\"[oss-security] CVE Request: libtiff: read outside buffer in _TIFFPrintField()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17829 invoked by uid 550); 12 Nov 2016 13:57:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21947 invoked from network); 12 Nov 2016 04:14:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=QCJrfyfg1qKwmKIwq5d1afn1YuPBcCVVW/ckgISvHCo=;
        b=YrE1/5h6gbOjlwwX624B3q/B1GRvYzTcbTW6SlJPjlb3/UU19i47bcBvmSM8Cwszk6
         poQXjDHRya5K6XEqWl2oOPXmBhAN+YYAvEDc2wsA+JxYbTxSBD3qBe0c8w34oI8359W4
         fH0r24NUDKW8HxhQiG4wk6HFJFG4oO7ZsD2op2+J28bdhZ7nHBbDcrSvdGsFDylANcQm
         zSv3rpgYBb0XRK5ZAzB3hstERKdJk+w2lPFMh/i8pta5gEj1gLmzIQ7MNy1XwjGDjAJu
         JPTjNejsfHch/3Gd0cjtxwA39pLdIWhVgGp4lF3imwlJLegFx6lbgQisAzyFyhqXMduw
         I9Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=QCJrfyfg1qKwmKIwq5d1afn1YuPBcCVVW/ckgISvHCo=;
        b=SRcD0hSsBzVfNN3Fu2KSV/lJh/M4dzosrV/yLwQlrlDE+g8nKvDIKAbUzvY3PrMNqk
         PFkM5YVHnyd/xk48KN+1VeJ6k41sP4XBiEWBwmPkW6WqkFyXd8mKTlkhg3t5cgLxqbaf
         3w9LWBkved8VNb16av5OT7mbsMf+KhgEDPxmk2Zw4NVqRlOrAblxPe1qyiDB7auGHXO8
         H9/51ei+SZIvx5kIcQsmM0ozXnKYV8V4w3KcSAh+LrCMlqaVOWFhZ6KolAKCC63fqD/3
         VQC5itZ1fw3MO9YqXNz9PzOFO0FRL3h6DI8zKHaSSdfisqJJk9qY/fS3ASUEGX1/viIS
         e9IA==
X-Gm-Message-State: ABUngvcQnOyIIxVoPqGpyesMjytmteRxt/Q9ifhHq3nYZQD354puii4sqK4nU5HKM2GZ7YTyMhGIxLH+Vwbf/g==
X-Received: by 10.55.19.97 with SMTP id d94mr7696296qkh.200.1478924060737;
 Fri, 11 Nov 2016 20:14:20 -0800 (PST)
MIME-Version: 1.0
From: "Brian 'geeknik' Carpenter" <brian.carpenter@gmail.com>
Date: Fri, 11 Nov 2016 22:13:40 -0600
Message-ID: <CANMVOuzgr=caMRG=US40q-yfmA5mGH7OakJMvrj4r1g_B3yGiQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a114009c04a4944054112d738
Subject: [oss-security] CVE Request: libtiff: read outside buffer in _TIFFPrintField()

--001a114009c04a4944054112d738
Content-Type: text/plain; charset=UTF-8

Hi, could you assign a CVE to the following issue in libtiff?

http://bugzilla.maptools.org/show_bug.cgi?id=2590

Fixed per
>> 2016-11-11 Even Rouault <even.rouault at spatialys.com>
>> * libtiff/tif_dirread.c: in TIFFFetchNormalTag(), make sure that
>> values of tags with TIFF_SETGET_C16_ASCII / TIFF_SETGET_C32_ASCII
>> access are null terminated, to avoid potential read outside buffer
>> in _TIFFPrintField().
>>
>> /cvs/maptools/cvsroot/libtiff/ChangeLog,v <-- ChangeLog
>> new revision: 1.1154; previous revision: 1.1153
>> /cvs/maptools/cvsroot/libtiff/libtiff/tif_dirread.c,v <--
>> libtiff/tif_dirread.c
>> new revision: 1.203; previous revision: 1.202

Regards,

Brian 'geeknik' Carpenter
https://twitter.com/geeknik

--001a114009c04a4944054112d738--
