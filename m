X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["785" "Tuesday" "12" "July" "2016" "15:40:56" "+0300" "0ang3el 0ang3el" "0ang3el@gmail.com" "<CADP2s3YfJGbJGhNmGSmWo-=QQVHiE_SHimDQL1WaopCYPBfjdw@mail.gmail.com>" "23" "[oss-security] Vulnerabilities in Apache Archiva" nil nil nil "7" "2016071212:40:56" "[oss-security] Vulnerabilities in Apache Archiva" (number mark "U       0ang3el@gmai Jul 12   23/785   " thread-indent "\"[oss-security] Vulnerabilities in Apache Archiva\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31791 invoked by uid 550); 12 Jul 2016 14:19:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7834 invoked from network); 12 Jul 2016 12:41:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=vY4+hXN+mGr7EtK7glLm/fe+esIleF++FZe9ZfK/jAk=;
        b=L7n2EI56xyGVU2sL4GWOwO/1blF01hzBA0SlIy3Zo9HcM3w16O1vCyLp+i7ZAUwp9+
         mS81mQaEsEkUpotZI9spxyHY/QRaZTD+ZCT1ijUadCMil9rct+JWD9R+RITSLdyo+QtV
         NBvoXADI1mAwu3HRqB8KSfMz73enfZpO14agEFcjiDnNNOsJrNdc8hAvgRw885Exk4vc
         KcPefOrBoSyxbPxFvWuInOWNReP96B+OVgbNheg5IaKl3XM5nMFn5DjgU3q6zbfK4KOs
         iIf6WWv4c2jqQ2i/Wc7AfH/nU7YiNwa++HyhL+fgdo0kmtXq9NUjphN5fJpz5t5KiVsa
         7cbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=vY4+hXN+mGr7EtK7glLm/fe+esIleF++FZe9ZfK/jAk=;
        b=kTnsz3UC6KuSaLHmoyNhkZ25lVhfLd2Or0/CSv1K+VrS/jjOB09uRs/TLhqu1Hc7SG
         DnH5k498ynwJy2GJwIiR2fcx26ID45yrTD2Cp18W7Eo8NYPOujxxc8MoYQMNt6hs0Fc2
         XTIUe82pWeYDYAknQLkuDqSH6Des+QYPVd6ThP6xxqoFhT8I4wDxuYDMTDU+n8RdYT76
         cPgcMeDiEWV0UFIpyGIi1TWE8PNlU2qr8tD1CUm5WFMIrG7iSxpfGfLWclu1NJlnFggW
         DakthL44fN+HB2Fui6gaSTV6aeXC3g1rllBZDqFPwqu4/XhKn3tTXRrYY01aM7nxUrMf
         eNSw==
X-Gm-Message-State: ALyK8tJZYX1+i81aC3cER8OFvZKyg28UIB85DM/A0f3k8PuHzzKKPdGbljIKe2XrGWHY4K35pepYwQ2BwT/5uQ==
X-Received: by 10.28.193.134 with SMTP id r128mr15282051wmf.35.1468327256905;
 Tue, 12 Jul 2016 05:40:56 -0700 (PDT)
MIME-Version: 1.0
From: 0ang3el 0ang3el <0ang3el@gmail.com>
Date: Tue, 12 Jul 2016 15:40:56 +0300
Message-ID: <CADP2s3YfJGbJGhNmGSmWo-=QQVHiE_SHimDQL1WaopCYPBfjdw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=94eb2c0d1b2a8fddc805376f94d5
Subject: [oss-security] Vulnerabilities in Apache Archiva

--94eb2c0d1b2a8fddc805376f94d5
Content-Type: text/plain; charset=UTF-8

Hello!

I have recently found three vulnerabilities in ws-xmlrpc library -
https://ws.apache.org/xmlrpc/. Apache Security Team have assigned three CVE
numbers for Apache Archiva project as it uses ws-xmlrpc library.

Here is the list of vulnerabilities with CVE numbers:

   - CVE-2016-5002 - SSRF attack via loading external DTD in ws-xmlrpc.
   - CVE-2016-5003 - Deserialization of untrusted data via serializable
   data type in ws-xmlrpc.
   - CVE-2016-5004 - DoS attack via Content-Encoding header in ws-xmlrpc.

Technical details regarding vulnerabilities are in this post -
https://0ang3el.blogspot.ru/2016/07/beware-of-ws-xmlrpc-library-in-your.html
.

Regards, 0ang3el.

--94eb2c0d1b2a8fddc805376f94d5--
