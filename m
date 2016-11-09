X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["913" "Wednesday" "9" "November" "2016" "17:32:09" "-0600" "Brian 'geeknik' Carpenter" "brian.carpenter@gmail.com" "<CANMVOuwRRcEG2Vs0DTck_kbUjiNBQwGD6G24kj5mb0wGDUEGgw@mail.gmail.com>" "27" "[oss-security] CVE Request: libtiff: heap buffer overflow/read outside of array" nil nil nil "11" "2016110923:32:09" "[oss-security] CVE Request: libtiff: heap buffer overflow/read outside of array" (number mark "U       brian.carpen Nov  9   27/913   " thread-indent "\"[oss-security] CVE Request: libtiff: heap buffer overflow/read outside of array\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15529 invoked by uid 550); 9 Nov 2016 23:42:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9833 invoked from network); 9 Nov 2016 23:33:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=S8uUC3ptbg/hz0I25ZdTb6JiQ2PwpVxcYbXfX+xn9+A=;
        b=CdhsoElFCmzjiB5pjJ+3QnazS20jjRLXMBTf/pawjC5ireCVSR/ToLjNlBYw3Y0gbB
         S9Th2mefl0m1Jf8JXoA/uh5YRt2hZjZPJ55MP4ujKMHu9d8jHDf0GZrnKRSFVkvzThh4
         fqbvqjwMt8eSNK6MZXjyBAROY+YmpjkdzgOhM+jHN60C4mwjKaPc6RBgQ7W1PeNAWw3u
         K2rrCpASfkF/ddKuQCW+bvzVJFpqcRAB3VchdRZLPF13s12Z333ZE5lIm3nl00rn6z89
         D7drpxQAoQdL++4WzbzFPiv2DRgYjwX2+sems3UMb/K1tqFSpR4gA2d7uPYs2zjTN0Yo
         qtNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=S8uUC3ptbg/hz0I25ZdTb6JiQ2PwpVxcYbXfX+xn9+A=;
        b=iTzNmjVSJLl1LUPz7uhShDb6fORsVOLNUWUaArAZu4QFceuQ8zm3pZ3niIbH233rQ/
         Caw7zSBwDKtmd+EXQD8yFSXUZVG9Z+eU2RbmkPymklICPnSanVosMAMZeRY4TRzPRx7/
         4Tp3au9VfuhcI5Hmt+a0g9otWHdNHb0fGy1mbmEHr+pnt3JbwAc1kIhKnXATLacpGPcH
         vtk10zGvSMvmifJB3RTtGBKY3i7SjPT6gDLB80J40mEE57FENq8Cq7hPrx1nxCDbvDhg
         +rk5dHjYjM5AaQvYmpgi2ZyFVRel0s4kRMGVHAiiVHRqOB3e8LFrHs3av1jO+rFegnl8
         LACA==
X-Gm-Message-State: ABUngvecjjTSHo8L5KmD6Vm2ap2d2dmDWd4zEnI4VVlPudIWm39AiKg69i9ypoHik/0t4rKlv847wBNvy3/bVw==
X-Received: by 10.55.69.68 with SMTP id s65mr2583915qka.314.1478734370271;
 Wed, 09 Nov 2016 15:32:50 -0800 (PST)
MIME-Version: 1.0
From: "Brian 'geeknik' Carpenter" <brian.carpenter@gmail.com>
Date: Wed, 9 Nov 2016 17:32:09 -0600
Message-ID: <CANMVOuwRRcEG2Vs0DTck_kbUjiNBQwGD6G24kj5mb0wGDUEGgw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1148aaf2db7d260540e6acaa
Subject: [oss-security] CVE Request: libtiff: heap buffer overflow/read outside of array

--001a1148aaf2db7d260540e6acaa
Content-Type: text/plain; charset=UTF-8

Hi, could you assign a CVE to the following issue in libtiff?

http://bugzilla.maptools.org/show_bug.cgi?id=2587

Fixed per
>> 2016-11-10 Even Rouault <even.rouault at spatialys.com>
>> * libtiff/tif_strip.c: make TIFFNumberOfStrips() return the
>>   td->td_nstrips value when it is non-zero, instead of recomputing it.
>>   This is needed in TIFF_STRIPCHOP mode where td_nstrips is modified.
>>   Fixes a read outside of array in tiffsplit
>>   (or other utilities using TIFFNumberOfStrips()).
>>
>>  /cvs/maptools/cvsroot/libtiff/ChangeLog,v  <--  ChangeLog
>>  new revision: 1.1151; previous revision: 1.1150
>>  /cvs/maptools/cvsroot/libtiff/libtiff/tif_strip.c,v  <--
 libtiff/tif_strip.c
>>  new revision: 1.37; previous revision: 1.36

Regards,

Brian 'geeknik' Carpenter
https://twitter.com/geeknik

--001a1148aaf2db7d260540e6acaa--
