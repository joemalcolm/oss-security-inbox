X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1420" "Wednesday" "12" "August" "2015" "12:30:56" "+0530" "sreepriya" "sreepriya1111@gmail.com" "<CANzWz4HNTYJgq=6-6yH-gwMugY=ck=CwxxtysXsbv9xAKP5X9Q@mail.gmail.com>" "42" "[oss-security] CVE Request: ATutor LMS Version 2.2 with stored XSS and file upload issue" nil nil nil "8" "2015081207:00:56" "[oss-security] CVE Request: ATutor LMS Version 2.2 with stored XSS and file upload issue" (number mark "U       sreepriya111 Aug 12   42/1420  " thread-indent "\"[oss-security] CVE Request: ATutor LMS Version 2.2 with stored XSS and file upload issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3872 invoked by uid 550); 12 Aug 2015 09:23:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15402 invoked from network); 12 Aug 2015 07:01:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=R2vLj73wwhl5mbbqr6FWznaZBq6XFQRLWZzJW7goqnE=;
        b=HW0248SOOyciEDLeYx0oRwcb7q/d/HdyCQgiOs8807C+ypGOdiMXS8N+lSPz0bO3/w
         C6HdRVaXGwBVupAB9vZob+zpZlxFRh7KhPRs6Kyx0WWn5kwgTxPrI3ouyqyQfNZp596X
         1Fro4KWESrd6f+b+4w83EVjnwVPqNkpmB0A/bDrDeaotelZAc06dlgN+7T8DiP9l0xIO
         jwRqIBQzGLeYeeTKKV98jE/M0Y5muKZu9o0X3H0fuJcXNNWw8iFlckQbyWWBXBej1nQg
         SOTqbcMY0j0tp0Ml49Ytu9j5a57Bwf/TdxEqIOLLvykblR6UDehaVXycS2+r23J/JBo1
         dRSg==
X-Received: by 10.170.220.67 with SMTP id m64mr32499894ykf.41.1439362876104;
 Wed, 12 Aug 2015 00:01:16 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CANzWz4HNTYJgq=6-6yH-gwMugY=ck=CwxxtysXsbv9xAKP5X9Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1139c1fceee7ba051d17c84b
Date: Wed, 12 Aug 2015 12:30:56 +0530
From: sreepriya <sreepriya1111@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: ATutor LMS Version 2.2 with stored XSS and file upload issue
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--001a1139c1fceee7ba051d17c84b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I would like to request for a CVE  for the following issues in the latest
version of ATutor <http://www.atutor.ca/> learning management system.

There are a few Stored XSS and file upload vulnerabilities in the software.
*Issue*: https://github.com/atutor/ATutor/issues/103

*Stored/Persistent XSS:*
In course management, multiple user inputs are not sanitized.
Course name and banner are vulnerable to Stored XSS.

*File Upload:*
An instructor can upload a malicious script (I tried Javascript that gets
executed in browser if opened after download). Not just the file content,
the file name is also vulnerable. This leaves the students (lower
privilege) as well as the administrators (higher privilege) vulnerable to
the attack.

*Date of reporting*: 11th August, 2015
*Exploit Author* : Sreepriya Chalakkal
*Vendor Homepage*: http://www.atutor.ca/
*Software Link*: http://www.atutor.ca/atutor/download.php
*Version *: 2.2
*Tested on Linux* : Ubuntu, Kali
*Issue has been reported to the vendor: *
https://github.com/atutor/ATutor/issues/103

Please let me know if it is possible to get a CVE identifier assigned for
the above issue.

=E2=80=8BThanks and =E2=80=8B
Regards,
--
Sreepriya C
priyachalakkal.wordpress.com <http://www.priyachalakkal.wordpress.com>

--001a1139c1fceee7ba051d17c84b--
