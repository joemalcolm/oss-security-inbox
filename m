X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["466" "Tuesday" "14" "June" "2016" "16:12:25" "+0200" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do5XPLJTJR9iaTRMOtFFZYan_Eeaf7KxxLWDgWiUQDsEbw@mail.gmail.com>" "26" "[oss-security] CVE request: Python HTTP header injection in urrlib2/urllib/httplib/http.client" "^Date:" nil nil "6" "2016061414:12:25" "[oss-security] CVE request: Python HTTP header injection in urrlib2/urllib/httplib/http.client" (number mark "        cbuissar@red Jun 14   26/466   " thread-indent "\"[oss-security] CVE request: Python HTTP header injection in urrlib2/urllib/httplib/http.client\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20420 invoked by uid 550); 14 Jun 2016 14:12:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20399 invoked from network); 14 Jun 2016 14:12:37 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=uKJ71yC6kgbA124jCaRNZJlkty/xUfuRUX/XINcnwz0=;
        b=Mb4ycROADIeUZuPsubWVLjeTLdddLECNMj6twh24XmjxyOFyWfZdihunHpiEZjqMZz
         CHd2vV1qo/GmHm0k1s7p+GmJqKaEYKyIS7YanAjn4S91IQgJKkzI/5YKralX8arAaXKR
         C++lww5x64AnlLT6k90xhJ8MePudK9cztR3h+uhYk7ujh6vActy4ku1MN9wjogXw9kmR
         dzXyWQqYh7Zg4jVT7fxS9G7rlKSBdztYwmVdQXpS/TSvR88ZsAmtPz9oU3EQQboubN93
         2qPqWTp3cPO9MXbwwbLQBsJ7rJ2Mc5VokTpqgfE0fF4dp5yg+V5l2wuFxzDxr0SPvvan
         EN/Q==
X-Gm-Message-State: ALyK8tImj/SzPW/LlIZ9jUrNCD/Tyz9oF/807Q72tHZCAgzssTfWSsB3PE0mRazbx9Qk0GITsXdoQ3rFWQqr+fg2
MIME-Version: 1.0
X-Received: by 10.66.246.198 with SMTP id xy6mr29203251pac.58.1465913545141;
 Tue, 14 Jun 2016 07:12:25 -0700 (PDT)
Message-ID: <CAKG8Do5XPLJTJR9iaTRMOtFFZYan_Eeaf7KxxLWDgWiUQDsEbw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7b15acdd21519c05353d98a5
Date: Tue, 14 Jun 2016 16:12:25 +0200
From: Cedric Buissart <cbuissar@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Python HTTP header injection in urrlib2/urllib/httplib/http.client
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--047d7b15acdd21519c05353d98a5
Content-Type: text/plain; charset=UTF-8

Hi,

I would like to request a CVE for a Python header injection flaw in
urrlib2/urllib/httplib/http.client.

HTTPConnection.putheader() allows unsafe characters, which can be used to
inject additional headers.

Upstream bug with reproducer :
https://bugs.python.org/issue22928


Kind regards,


-- 
Cedric Buissart,
Product Security

Purkynova 99
Brno 612 45

--047d7b15acdd21519c05353d98a5--
