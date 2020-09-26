X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["581" "Saturday" "26" "September" "2020" "16:44:15" "-0300" "Thiago H. de Paula Figueiredo" "thiagohp@gmail.com" "<CAE_88GaByiC_nus8mGsCmEGKd3+j4JYRiJagC0VR9VBP6mju_A@mail.gmail.com>" "28" "[oss-security] [CVE-2020-13953] Apache Tapestry WEB-INF file download vulnerability" "^Date:" nil nil "9" "2020092619:44:15" "[oss-security] [CVE-2020-13953] Apache Tapestry WEB-INF file download vulnerability" (number mark "U       thiagohp@gma Sep 26   28/581   " thread-indent "\"[oss-security] [CVE-2020-13953] Apache Tapestry WEB-INF file download vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-13953] Apache Tapestry WEB-INF file download vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22515 invoked by uid 550); 26 Sep 2020 20:00:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7256 invoked from network); 26 Sep 2020 19:44:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Fxvyh/ZjOe4AoMu0QQer1bg6Rs3rZb/b/07e91MEegQ=;
        b=alVwRzN90PPlLTY3lfGap00KP/KkC8FbXQvOJQix5bbfJNHRbRCOTq+DuP6hi6fUXt
         Ztu5ouIXuEV9BKRyhZfbZ1ZUu7OX9sJrkK5up9RQDV2jY54aMiV7Sfstcr6C8Qdw91r9
         J5mIBUTFm4BC32nr4eiqycrY9FeMg8epJ9TKntogLHilxKMUPcdhBPaqcgxEu8cyJ+i4
         djGV1UUmWbswhyKJoFp8BNr6+mUgYRIsCtUcGDOFvQ+17Ssvp3VlLxviyHrASnZNdvUl
         fdL3tKpbhnGXuy9T1bwbVn6c3WSfbv/fvsTQS/yPToHad7VeDcyTqVGdt+XV9zwbkJFv
         qy1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Fxvyh/ZjOe4AoMu0QQer1bg6Rs3rZb/b/07e91MEegQ=;
        b=XujfEUVvz9KR3HnpACIKVICfzvJYohfQOR1Pnb92HDWDV/j4Py77ck4xHtiWR4blDU
         mQK9Eh54wIYqPXjE3cI/Vt2uZbTMDddD16MosjOYZu4zLBE2hoH2enohKCd/pnGVpcvB
         SjGDOIM75KQ1rw+jDXjZsOx0a+PMisy5Q7padP4c0gdfcGrjjsTHdOBN1rX8FGRUed3O
         C5R++MEte1hetg4v/EGsRqa0MAIse6ixvYBAwfipJ29cA+wJ3IiLW2m22XLb4pTRqMmO
         jAM4byXWrmegsPRtfDsS0UlWdSk6QgJm+ovUBu8LuLPy8kkJyIzyti5HYfm4KGApfysA
         wabg==
X-Gm-Message-State: AOAM5300Fi/vfyR13w+2YdOl09QhKPsS5BF2o9xxe1AzE967Isw8lhA2
	KMbhEgKY7Zwn7xRkjmHrDc7SUEQRWNkvs26CoujPgiqules=
X-Google-Smtp-Source: ABdhPJxarWAzsGHBp2WWMBFiwuzfUk/YQyl3wMjiKgsmC+TRdG923nAA87U1tCPu5Owc0q1RVe5Ye2Q/1CD8lZE5zzM=
X-Received: by 2002:a05:6512:3606:: with SMTP id f6mr1628071lfs.282.1601149465925;
 Sat, 26 Sep 2020 12:44:25 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAE_88GaByiC_nus8mGsCmEGKd3+j4JYRiJagC0VR9VBP6mju_A@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000261c6805b03ca95e"
Date: Sat, 26 Sep 2020 16:44:15 -0300
From: "Thiago H. de Paula Figueiredo" <thiagohp@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2020-13953] Apache Tapestry WEB-INF file download vulnerability
To: oss-security@lists.openwall.com

--000000000000261c6805b03ca95e
Content-Type: text/plain; charset="UTF-8"

CVE-2020-13953: Apache Tapestry: URL manipulation allows Java webapp files
inside WEB-INF to be listed and downloaded.

Vendor:
The Apache Software Foundation

Versions Affected:
Tapestry 5.4.0 to 5.5.0

Description:
Crafting specific URLs, an attacker can download files inside the WEB-INF
folder.

Mitigation:
Upgrade to Apache Tapestry 5.6.0 or later.
Credit:
This issue was discovered by Thomas Moore.

References:
https://tapestry.apache.org/security.html

-- 
Thiago

--000000000000261c6805b03ca95e--
