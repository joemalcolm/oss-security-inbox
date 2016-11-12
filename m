X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/11/12/2
Message-ID: <CANMVOuzgr=caMRG=US40q-yfmA5mGH7OakJMvrj4r1g_B3yGiQ@mail.gmail.com>
Date: Fri, 11 Nov 2016 22:13:40 -0600
From: "Brian 'geeknik' Carpenter" <brian.carpenter@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: libtiff: read outside buffer in _TIFFPrintField()
Content-Type: text/plain; charset=utf-8

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

