X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["806" "Wednesday" "26" "October" "2016" "17:09:42" "+0200" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do6j938c8Qkdp0MfqyYwOfdTt9FAgPs251cWVu5Bq65cCw@mail.gmail.com>" "32" "[oss-security] CVE-2016-4455: subscription-manager: incorrect permisions in /var/lib/rhsm/" nil nil nil "10" "2016102615:09:42" "[oss-security] CVE-2016-4455: subscription-manager: incorrect permisions in /var/lib/rhsm/" (number mark "U       cbuissar@red Oct 26   32/806   " thread-indent "\"[oss-security] CVE-2016-4455: subscription-manager: incorrect permisions in /var/lib/rhsm/\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18305 invoked by uid 550); 26 Oct 2016 15:11:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18285 invoked from network); 26 Oct 2016 15:11:17 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=52C5o5q9SrF1xypzWsvDNDu0AR9O6Dvi4qLlZ2HyAas=;
        b=OKuvvxbqyid1qbP+0nrNcfb9Gvw7QMd7eLcjhoGXjSV4VNpzoMPEgLYQvV32jG+jht
         6ipjXPObOFi7vMYTMX0yqdRwhyWomz5Mxx+0mwpqQEDrIkz4/tk5KGz7kvvIJ3phyVjN
         4P726/8N/5T53jbv+DMn8I29rqDSVxuDwm6K3j0NiuU18ebkPD70wzpBukSonCDtcvbH
         BmY5EuIqDAJOYB+ufkRIFYyXnCeFP3+eZ/uLic336+GgfizkURtIZAF9Bi9LgoM4ac5+
         uuiK1x/yqxQpljXdVENV6b4QvpqM/RnM8VGgrRhg8dh4ErLuFYYK4abih0NSAopSXzN5
         XCHg==
X-Gm-Message-State: ABUngvdj3I64Yf8FTb3VZPASGC6a7TFc8dIi0/XlDoS4mEbsFxdDekA1i9R44ESomM6C1byDZZKLPuU5qh8k2qsQ
X-Received: by 10.107.157.14 with SMTP id g14mr3342424ioe.70.1477494603033;
 Wed, 26 Oct 2016 08:10:03 -0700 (PDT)
MIME-Version: 1.0
From: Cedric Buissart <cbuissar@redhat.com>
Date: Wed, 26 Oct 2016 17:09:42 +0200
Message-ID: <CAKG8Do6j938c8Qkdp0MfqyYwOfdTt9FAgPs251cWVu5Bq65cCw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a11409920f8f3de053fc60498
Subject: [oss-security] CVE-2016-4455: subscription-manager: incorrect permisions in /var/lib/rhsm/

--001a11409920f8f3de053fc60498
Content-Type: text/plain; charset=UTF-8

Hi,

This is to disclose the following CVE:

CVE-2016-4455: subscription-manager: incorrect permissions in /var/lib/rhsm/
Description :

It was found that subscription-manager assigned incorrect permissions to
content in /var/lib/rhsm/, causing an information disclosure flaw. An
unprivileged local attacker could use this flaw to access sensitive data
that could later be used for a social engineering attack.

Upstream patch :
https://github.com/candlepin/subscription-manager/commit/9dec31

Impact : Low
CVSSv2 scoring : 1.7 - AV:L/AC:L/Au:S/C:P/I:N/A:N
CVSSv3 scoring : 3.3 - AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N/A:N

Reported by : Robert Scheck

Best regards,


-- 
Cedric Buissart,
Product Security

--001a11409920f8f3de053fc60498--
