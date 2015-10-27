X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2773" "Tuesday" "27" "October" "2015" "12:33:02" "+0530" "Dis close" "disclose@cybersecurityworks.com" "<CAMWaY3PSivNw6HNJJmdvU3R-335+PqRf0attnTiRwnjKjUsH4A@mail.gmail.com>" "75" "[oss-security] CVE Request: XSS in Blubrry PowerPress Podcasting wordpress plugin Version 6.0.4" nil nil nil "10" "2015102707:03:02" "[oss-security] CVE Request: XSS in Blubrry PowerPress Podcasting wordpress plugin Version 6.0.4" (number mark "U       disclose@cyb Oct 27   75/2773  " thread-indent "\"[oss-security] CVE Request: XSS in Blubrry PowerPress Podcasting wordpress plugin Version 6.0.4\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24363 invoked by uid 550); 27 Oct 2015 07:15:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13558 invoked from network); 27 Oct 2015 07:03:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cybersecurityworks_com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:date:message-id:subject:from:to:cc:content-type;
        bh=iqT15BrlVjxNL3VDz+PLnL8VLBNPPrhQdVmNl6inbqQ=;
        b=dKVzNiDi2F6nMtx9fPjnTT7wKaUE4ARv9PQ3r9DCsvB6wI3NCnsQNFNN5Tg0fQcI6D
         ZjvoiBOf7aoLVH0UhwzAGjrjm5LpKrtj1YO6H+GqnhszkBiG1zXngFDVqQgmLMyQEbA1
         /EzHdboGkKkIQpvkL2ZiWJV0XF/mmqzjT94j5PDtLPiqAyATQiTqq0JvT9zXgCkB13Wd
         HxW5Z8nvzvPSzohPdRftJIYI9vrtqAtHl4nQcAvyRkw/KE1mbK6n8I+HRyZYOWVIV2pF
         M63HDbGHbgU0JQbBPkrnnLljD8bBqujX8q+NLOrWgPyOC8vKbjrdTmJcIhxGEWvWmXQa
         PuKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
         :content-type;
        bh=iqT15BrlVjxNL3VDz+PLnL8VLBNPPrhQdVmNl6inbqQ=;
        b=LNaMcPXfa31LI1yeJv3qtqPHPdwIMVK2V4dAVVvntEaO7OEIYK0xaouz8hVSibCwyX
         bG0nHXqecfsYvul7dPs+9XUryN/Lbefr42zCglxYDXD385kcdvXulD19He30vwhGKNIH
         ue1t20JU81asLsEnA5vWX5nssQIa9kfJ9MFYcN7U58BJZ8lIk27LZx5p3FrVpCsZPe9x
         lHyWv2+KQBkyGj4Te1JZymLVT82iZnl2FySx44c+hpMzoRPoHztvGVdh7hEYkr2hmiIt
         bJCRBFXKHt/w2DCfCxycOB1UGBZ70ZWCdPlj2ul2mPAhuZnkRVksqaINAJdttzZpwVhZ
         owlQ==
X-Gm-Message-State: ALoCoQne9L+2VrxSCLN/lhDVSa3r90hxcMsPJB56TLfML28s+I8WhOglTVUbr/bM4wHJk3PHODzM
MIME-Version: 1.0
X-Received: by 10.107.62.5 with SMTP id l5mr1196015ioa.45.1445929382245; Tue,
 27 Oct 2015 00:03:02 -0700 (PDT)
Message-ID: <CAMWaY3PSivNw6HNJJmdvU3R-335+PqRf0attnTiRwnjKjUsH4A@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c06b95e3315e2052310ab42
Cc: oss-security@lists.openwall.com
Date: Tue, 27 Oct 2015 12:33:02 +0530
From: Dis close <disclose@cybersecurityworks.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: XSS in Blubrry PowerPress Podcasting wordpress plugin
 Version 6.0.4
To: cve-assign@mitre.org

--94eb2c06b95e3315e2052310ab42
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Details
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
# Title                       : Cross Site Scripting (XSS) in Blubrry
PowerPress Podcasting wordpress plugin Version 6.0.4
# Affected Product  : Blubrry PowerPress Podcasting wordpress plugin
# Vendor Homepage   : https://wordpress.org/plugins/powerpress/developers/
# Vulnerability Type    : Cross Site Scripting (XSS)
# Risk                        : High
# POC URL               :
https://github.com/cybersecurityworks/Disclosed/issues/7
# Video URL               : https://www.youtube.com/watch?v=3DjWMQSJvxDNE
# Status : Fixed

Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
By exploiting a Cross-site scripting vulnerability the attacker can hijack
a logged in user=E2=80=99s session by stealing cookies. This means that the
malicious hacker can change the logged in user=E2=80=99s password and inval=
idate
the session of the victim while the hacker maintains access.

Technical Details
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

   1. Logon into any wordpress application (localhost or public host)
   2. Modifying the value of tab variable in Blubrry PowerPress Version
   6.0.4
   3. Fill all the variables with
   *"></script><script>alert(document.cookie);</script>* payload and send
   the request to the server.
   4. Now, the added XSS payload will be echoed back from the server
   without validating the input even after wp-config.php file has been
   configured with XSS filter settings.

Advisory Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
2015-09-04 =E2=80=93 Discovered in Blubrry PowerPress Podcasting plugin 6.0=
.4
version. 2015-09-04 =E2=80=93 Reported to plugins@wordpress.org 2015-09-07 =
=E2=80=93 Vendor
Responded, "Thank you for reporting this plugin. We're looking into it
right now." 2015-09-09 =E2=80=93 Fixed in Blubrry PowerPress Podcasting plu=
gin
6.0.5 version.

Fix
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
https://github.com/cybersecurityworks/Disclosed/issues/7
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

--

Cheers !!!

Team CSW

--94eb2c06b95e3315e2052310ab42--
