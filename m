X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/07/12/5
Message-ID: <CADP2s3YfJGbJGhNmGSmWo-=QQVHiE_SHimDQL1WaopCYPBfjdw@mail.gmail.com>
Date: Tue, 12 Jul 2016 15:40:56 +0300
From: 0ang3el 0ang3el <0ang3el@...il.com>
To: oss-security@...ts.openwall.com
Subject: Vulnerabilities in Apache Archiva
Content-Type: text/plain; charset=utf-8

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

