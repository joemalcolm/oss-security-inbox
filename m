X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3461" "Tuesday" "27" "October" "2015" "15:13:51" "+0530" "Dis close" "disclose@cybersecurityworks.com" "<CAMWaY3MRZRanbO8a_=i4uerEEEspryKnQDC9qiSus+2VMtgWrA@mail.gmail.com>" "95" "[oss-security] CVE Request: Cross Site Scripting (XSS) & Cross Site Request Forgery (CSRF) in Crony Cronjob Manager Version 0.4.4" nil nil nil "10" "2015102709:43:51" "[oss-security] CVE Request: Cross Site Scripting (XSS) & Cross Site Request Forgery (CSRF) in Crony Cronjob Manager Version 0.4.4" (number mark "U       disclose@cyb Oct 27   95/3461  " thread-indent "\"[oss-security] CVE Request: Cross Site Scripting (XSS) & Cross Site Request Forgery (CSRF) in Crony Cronjob Manager Version 0.4.4\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5558 invoked by uid 550); 27 Oct 2015 12:27:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30395 invoked from network); 27 Oct 2015 09:44:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cybersecurityworks_com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:date:message-id:subject:from:to:cc:content-type;
        bh=rnrtn9L6FP1ivRlMg3aU9XZ/lJYTU++ZkLiB60eBMoo=;
        b=UXy0S9NettQW4OZ6Kf57tJS/y4m0l0yxGGUpO/mASk2rQohWbmzpFJ+xdDmW1RO/9o
         AlX/NtQ0M2xXGYn++sGpO9XWewW3tb4NfwCtcU/lMx+QUj925CgkRr0+X50xVCqTa+hP
         ydPhp5jCwgRZrsZiSqF3TL/kJ45zA0X+OzhTbScaHPZXxt7wBUlTp2YW3k5pPcFdQaZU
         G4eJMsVOKIH1Antg02DzEMGLz2J+Gjb0BBE9CTJLvtBNBR5XrvI7yg5fYbCgw+qLLBKC
         oZtBTgf0AzIfd3OH9+I4SEal/mPMycrUKh0zgqg/oNJ7uvdXwRgBg6NlJNnwxPoU0gc6
         pX5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
         :content-type;
        bh=rnrtn9L6FP1ivRlMg3aU9XZ/lJYTU++ZkLiB60eBMoo=;
        b=RMFiV+USnGkXggVZw88D/UgwrAuEOr7vVGxGoYsQkbA/IIiT8iqxOx01HAn2vViTJQ
         S7tw8g3ICOK46IQs+1/E1ofs1nvTVhE0GBBUOsr81ovxjpePm9v6LLF+d7PbF9xHUHVA
         Kz+O9muRRX7/HyyD5m7kw+88LLkXjXLi3n23lX4w0bncJMprGMvxAfEQq2xGyyjU0yEe
         tzDXOWFOUikTapH5OU1y/EuBicNnyquq6gLJMwdnii5qpe5mDuDYxprQoGOxqmFoUSZW
         oXQhxP5o/21VHwvwOicq6mhfSk4DRIe35f5dClxlvXkqRqdVqznqqXU0vQBhsEMD52Hx
         a+XA==
X-Gm-Message-State: ALoCoQmSBdTPxR72DJP5ANWP4gu+Q7WVUsumDDImPKdvonlTwlZ6IQe8uxraVrsCkjCm0xMMcGmI
MIME-Version: 1.0
X-Received: by 10.107.169.97 with SMTP id s94mr29688849ioe.189.1445939031109;
 Tue, 27 Oct 2015 02:43:51 -0700 (PDT)
Date: Tue, 27 Oct 2015 15:13:51 +0530
Message-ID: <CAMWaY3MRZRanbO8a_=i4uerEEEspryKnQDC9qiSus+2VMtgWrA@mail.gmail.com>
From: Dis close <disclose@cybersecurityworks.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1142e0c65120c8052312ea5a
Subject: [oss-security] CVE Request: Cross Site Scripting (XSS) & Cross Site Request Forgery
 (CSRF) in Crony Cronjob Manager Version 0.4.4

--001a1142e0c65120c8052312ea5a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Details
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
# Title : Cross Site Scripting (XSS) & Cross Site Request Forgery (CSRF) in
Crony Cronjob Manager Version 0.4.4
# Affected Product :  Crony Cronjob Manager Wordpress plugin Version 0.4.4
# Vendor Homepage : https://wordpress.org/plugins/crony/developers/
# Vulnerability Type :  Cross Site Scripting (XSS) & Cross Site Request
Forgery (CSRF)
# Risk :  High
# POC URL               :
https://github.com/cybersecurityworks/Disclosed/issues/9
# Video URL : https://www.youtube.com/watch?v=3DMY5l91pX-tY
# Status : Fixed

Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
By exploiting a Cross-site scripting vulnerability along with Cross Site
Request forgery will gives an easy access to an attacker for hijacking a
logged in user=E2=80=99s session by stealing cookies. This means that the m=
alicious
hacker can change the logged in user=E2=80=99s password and invalidate the =
session
of the victim while the hacker maintains access.

Technical Details
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

   1. Logon into any wordpress application (attacker)
   2. Click to =E2=80=9CAdd new cronjob=E2=80=9D in Crony Cronjob Manager V=
ersion 0.4.4
   Plugin and capture the request in intercepting proxy.
   3. Now, Generate a CSRF Request with attacker logged in account.
   4. Modify the request with the code you required to get executed in
   victim=E2=80=99s browser.
   5. Enter the value for the name variable with *=E2=80=9CXSS&CSRF=E2=80=
=9D *and add any
   scripts, malicious code or payload.
   6. Here, its *<script>alert(=E2=80=98Vulnerable2CSRF&XSS=E2=80=99)</scri=
pt> *which an
   attacker wants to get executed in victim=E2=80=99s browser and sends the=
 link to
   victim.
   7. Now, once the victim opens the link in the user logged in browser.
   Then, immediately the added XSS payload will be executed whenever we rev=
iew
   it.


Advisory Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2015-08-28 =E2=80=93 Discovered in Crony Cronjob Manager Version 0.4.4.
2015-08-28 =E2=80=93 Reported to plugins@wordpress.org & lol@scottkclark.com
2015-08-28 =E2=80=93 lol@scottkclark.com replied, "I'll check it out, thank=
s for
the heads up."
2015-08-28 =E2=80=93 Requested for Advance CVE
2015-09-08 =E2=80=93 Another response from developer, "I'll be back into th=
ings
tomorrow morning, will let you know once it's up."
2015-09-27 =E2=80=93 Issues fixed in version 0.4.6, developer responded.

Fix
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
https://www.owasp.org/index.php/Cross-Site_Request_Forgery_(CSRF)
https://www.owasp.org/index.php/Cross-site_Scripting_(XSS)

Credits & Authors
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
sathish@cybersecurityworks.com from cybersecurityworks Pvt Ltd

About Cybersecurityworks
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Cybersecurity Works is basically an auditing company passionate working on
findings & reporting security flaws & vulnerabilities on web application
and network. As professionals, we handle each client differently based on
their unique requirements. Visit our website
http://www.cybersecurityworks.com/ for more information.

Please assign CVE as appropriate. Thanks for your valuable time & effort
taken.

--

Cheers !!!

Team CSW

--001a1142e0c65120c8052312ea5a--
