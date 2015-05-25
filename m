X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1014" "Monday" "25" "May" "2015" "18:04:03" "+0300" "Jaanus" "jaanus.kaap@gmail.com" "<CAJiKPjH32c38GHwGdBU8FJ-evg+ZPG0jcfn4F3s2SLdv3n-2HA@mail.gmail.com>" "27" "[oss-security] CVE-2015-3200 Log injection in Lighttpd" nil nil nil "5" "2015052515:04:03" "[oss-security] CVE-2015-3200 Log injection in Lighttpd" (number mark "        jaanus.kaap@ May 25   27/1014  " thread-indent "\"[oss-security] CVE-2015-3200 Log injection in Lighttpd\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25984 invoked by uid 550); 25 May 2015 15:13:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13664 invoked from network); 25 May 2015 15:04:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=sCF6039IokIo6/GIikTmMTCQlgo3FiCLK0iTB4gUa3c=;
        b=haDRDVv5zSjXGeRkMr31tVxn4fJHibjUVRY9R2KO15E+BOutwG4fMril573qq8MQ1C
         VvQQ8xcX1cUiuqy+a4NSGpbUK40NB4HbTluuR6RNH0jPLyD+W9AbLjPW9VPrDqjkrsa1
         ql1rXwxIiUkmatX8/DrL2q7SS4YlRP0HNw0OlcbYh5NZuZDJ+kf6+bZUh1+7c5QqgWjE
         J48OTdfM7mCD6Pzr+YCtJOL1cyMqMXEceBJvKxMKmrV3UDf/p7xRzAL8w1dALxkoaJg1
         /N2fPwFuXlVR2ukwGan2COFKz93tjenurkXSg+s2DfqBf8kEH5uiibQmIyhsYvJkT7mF
         3NOA==
MIME-Version: 1.0
X-Received: by 10.107.133.154 with SMTP id p26mr28916645ioi.7.1432566243121;
 Mon, 25 May 2015 08:04:03 -0700 (PDT)
Message-ID: <CAJiKPjH32c38GHwGdBU8FJ-evg+ZPG0jcfn4F3s2SLdv3n-2HA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113fb18609df660516e95203
Date: Mon, 25 May 2015 18:04:03 +0300
From: Jaanus <jaanus.kaap@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-3200 Log injection in Lighttpd
To: oss-security@lists.openwall.com

--001a113fb18609df660516e95203
Content-Type: text/plain; charset=UTF-8

CVE: CVE-2015-3200
Software: Lighttpd
Type: Log injection
Source code Location: http_auth.c:860
Vulnerable servers: Servers that use basic authentication
Description: When basic HTTP authentication base64 string does not contain
colon character (or contains it after NULL byte - can be inserted inside
base64 encoding), then that situation is logged with a string ": is missing
in " and the simply decoded base64 string. This means that new lines, NULL
byte and everything else can be encoded with base64 and are then inserted
to logs as they are after decoding.

For example header "Authorization: Basic
dGVzdAAKMjEwMC0wMS0wMSAwMDowMDowMDogKG1hZ2ljLmMuODU5KSBJVCdTIFRIRSBFTkQgT0YgVEhFIFdPUkxEIQ=="
results in two log lines:
"
2015-05-14 12:55:54: (http_auth.c.859) : is missing in test
2100-01-01 00:00:00: (magic.c.859) IT'S THE END OF THE WORLD
"


http://jaanuskp.blogspot.com/2015/05/cve-2015-3200.html

--001a113fb18609df660516e95203--
