X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1420" "Thursday" "26" "October" "2017" "17:15:24" "+0530" "Shalin Shekhar Mangar" "shalin@apache.org" "<CAOOKt51=OWnBX--UvhijgPjg2H=wQPztXm6ZmgGt9VQNnGStnQ@mail.gmail.com>" "44" "[oss-security] CVE-2016-6809: Java code execution for serialized objects embedded in MATLAB files parsed by Apache Solr using Tika" nil nil nil "10" "2017102611:45:24" "[oss-security] CVE-2016-6809: Java code execution for serialized objects embedded in MATLAB files parsed by Apache Solr using Tika" (number mark "U       shalin@apach Oct 26   44/1420  " thread-indent "\"[oss-security] CVE-2016-6809: Java code execution for serialized objects embedded in MATLAB files parsed by Apache Solr using Tika\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15781 invoked by uid 550); 26 Oct 2017 12:00:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7772 invoked from network); 26 Oct 2017 11:45:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=9URPSSgMYsWKvrNL24sjS9WPqBHuHtYslakFDlnMY0U=;
        b=BHrLgXaW1MApstoiPmzbXIxWklCZdboJes8q7QhBs76wSVMy6gG7TUFCNkJo5iJhXH
         7QskY+XLrklYVvImadIRMwn41WovtBy5mUiV/6gJrk+eUYRUknp+rPJcwqaSppUL865t
         Rt76yD9mDindDPCuLJU/8k3IlZngN/LjTfpbCLq5GYVOvonWziZ2PYtovhQJqF1KuSok
         U0mwRW07+zMEkeOpVbg2GJJr6No31mtZp6x1DSvoaUe/aTJ6SueI5GzeF+c5POgNvmSo
         qx/iZ1CVfvGVy/lWMJpHd6LRXTpbmI5eANOFhDVR3Dl7n9x9Ja4n9Id5FO+g2ATfWoDg
         R2PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=9URPSSgMYsWKvrNL24sjS9WPqBHuHtYslakFDlnMY0U=;
        b=sPycFR/lsvO8XEF8wsNbvOxT1NPgk/+jz7nsCyWTWniRLrQgvGVqrn5Xg4qqZnk/cG
         yWUfh/LLj+y2+bqewEVi6OoVtWhX3W8jGfTOeZEDXUqFUmxdu67EegT3gvRgFghdrj83
         QeOMk/oxzKnPd0/thYiSJD9j4/3ow0IGfZ6U4Og6zecWdhDWlmNVe7YWIWz4BH27wrJl
         ys+fW1yaWbpmKBoI3fa1WpXTAoIAowsRECn2t1uvM0q+dyJIouFto+jPvd1yGVIGYDmo
         KjBmu5KB695JLrLyOSEclP0XR9Omd4GdOs2toTs9Bs+/PmCvGC7rBfWBz6/Zqq1VHktz
         pf+w==
X-Gm-Message-State: AMCzsaUq31ys+THkFwnVWIxv0rPDn6Te1qXWHGEpVq++6E0hhrpqUGvk
	3HjTBCj/EpaVjamsv4dJaMNq3DwblTkHvO+vgMCR8pc1
X-Google-Smtp-Source: ABhQp+QI+fior31OUZKe498Y5TqCO41kAZhVqf+VeYEwKxUuBJXnNPlMwSGjcR6hwTWJiUElGS6tX0kefTATNojmg7I=
X-Received: by 10.36.202.131 with SMTP id k125mr1864325itg.138.1509018324768;
 Thu, 26 Oct 2017 04:45:24 -0700 (PDT)
MIME-Version: 1.0
Sender: shalinmangar@gmail.com
From: Shalin Shekhar Mangar <shalin@apache.org>
Date: Thu, 26 Oct 2017 17:15:24 +0530
X-Google-Sender-Auth: 7fqU3ZO25_P0cHQPqlxidM6UZGA
Message-ID: <CAOOKt51=OWnBX--UvhijgPjg2H=wQPztXm6ZmgGt9VQNnGStnQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2016-6809: Java code execution for serialized objects embedded in
 MATLAB files parsed by Apache Solr using Tika

CVE-2016-6809: Java code execution for serialized objects embedded in
MATLAB files parsed by Apache Solr using Tika

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Solr 5.0.0 to 5.5.4
Solr 6.0.0 to 6.6.1
Solr 7.0.0 to 7.0.1

Description:

Apache Solr uses Apache Tika for parsing binary file types such as
doc, xls, pdf etc. Apache Tika wraps the jmatio parser
(https://github.com/gradusnikov/jmatio) to handle MATLAB files. The
parser uses native deserialization on serialized Java objects embedded
in MATLAB files. A malicious user could inject arbitrary code into a
MATLAB file that would be executed when the object is deserialized.

This vulnerability was originally described at
http://mail-archives.apache.org/mod_mbox/tika-user/201611.mbox/%3C2125912914.1308916.1478787314903%40mail.yahoo.com%3E

Mitigation:
Users are advised to upgrade to either Solr 5.5.5 or Solr 6.6.2 or Solr 7.1.0
releases which have fixed this vulnerability.

Solr 5.5.5 upgrades the jmatio parser to v1.2 and disables the Java
deserialisation support to protect against this vulnerability.

Solr 6.6.2 and Solr 7.1.0 have upgraded the bundled Tika to v1.16.

Once upgrade is complete, no other steps are required.

References:
https://issues.apache.org/jira/browse/SOLR-11486
https://issues.apache.org/jira/browse/SOLR-10335
https://wiki.apache.org/solr/SolrSecurity

-- 
Regards,
Shalin Shekhar Mangar.
