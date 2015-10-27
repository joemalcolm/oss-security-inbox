X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2471" "Tuesday" "27" "October" "2015" "13:35:40" "+0530" "Dis close" "disclose@cybersecurityworks.com" "<CAMWaY3PUvtG2gJPOKaq72JA=M=u==uPAEXRh_=hJOb0wfPkgsw@mail.gmail.com>" "73" "[oss-security] CVE Request: Multiple XSS in NextGEN Gallery by Photocrati Version 2.1.7" nil nil nil "10" "2015102708:05:40" "[oss-security] CVE Request: Multiple XSS in NextGEN Gallery by Photocrati Version 2.1.7" (number mark "U       disclose@cyb Oct 27   73/2471  " thread-indent "\"[oss-security] CVE Request: Multiple XSS in NextGEN Gallery by Photocrati Version 2.1.7\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24559 invoked by uid 550); 27 Oct 2015 08:08:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23734 invoked from network); 27 Oct 2015 08:05:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cybersecurityworks_com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:date:message-id:subject:from:to:cc:content-type;
        bh=v7kAbQWZbJ5SzaHnEcmNq5vgeWQLKVTzwcoyB5xUXOo=;
        b=mmlT8NiK1hEC/hLNES8/xkX07z3tG0VrwzH7HbzdVIX3LZNvITPjPUuI2paaRc3p4H
         DHKqV4wf9al9l8/+LwCiwvwieFHbwd6BrPl7Gjr8xaA4Afd3YzjIREMPM8nW8D7l52fk
         clm1V0llawPhDA0zW4aMywT0RWqh2xyTSKV1vB0bmPHQbGfF49SIlWm4EnVBJWVmIlxa
         iP9Zs7sS6ybeIxcmn2bjXufP0wT76K958ofs2LwF2B1RGg/94KvNvGln0aakX7v3mwAN
         wpTzSul3fORwpHVfNv7dT+58aUyD7Kgwjfry0kldqxoPXcdXRy7WS0ZEfAdQTd2V8kb4
         trEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
         :content-type;
        bh=v7kAbQWZbJ5SzaHnEcmNq5vgeWQLKVTzwcoyB5xUXOo=;
        b=Hr88HnK6uYMXWR9pgOY5taiOX/bdqz0f0TJmK+eai1zcXeJB9GPblMWjuQiVEc4FMT
         exhQyiw5+EjuFMVDCKSVB+9VX02KQxFP1SpcL7Aw+kldOqoIDB/dEX56GSNnY5Xl7IgJ
         0aLEGIhwczTvsUbFRLsq6sLLmst9pbW0dXgMCUO8tfWXR/yRyU7WFgsXYtOAGDcpyA3G
         J+OYw93M43nvsmyIb//NOeafZvIaAqnOHGf3G3CqqYEBpik7JBQml/bybIhlxRjDWMH+
         To6PLuM3wy9p08p2P99XV7xH45YdK6kHff5AAZySmgb2ylKjx45aoCvGUJSLtlNH18Pk
         bCgQ==
X-Gm-Message-State: ALoCoQkyqr4V80eyJNkrUdl9flXc3FXP3bFtNZMZ6BNXh9sttw8zjLgJa9AY0wNmSDTF3lj+MbHM
MIME-Version: 1.0
X-Received: by 10.107.138.84 with SMTP id m81mr21213177iod.40.1445933140058;
 Tue, 27 Oct 2015 01:05:40 -0700 (PDT)
Date: Tue, 27 Oct 2015 13:35:40 +0530
Message-ID: <CAMWaY3PUvtG2gJPOKaq72JA=M=u==uPAEXRh_=hJOb0wfPkgsw@mail.gmail.com>
From: Dis close <disclose@cybersecurityworks.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a113fe7642f50b50523118b12
Subject: [oss-security] CVE Request: Multiple XSS in NextGEN Gallery by Photocrati Version 2.1.7

--001a113fe7642f50b50523118b12
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Details
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
# Title : Multiple XSS in NextGEN Gallery by Photocrati Version 2.1.7
# Affected Product  : NextGEN Gallery by Photocrati Version 2.1.7
# Vendor Homepage : https://wordpress.org/plugins/nextgen-gallery/download/
# Vulnerability Type  : Cross Site Scripting (XSS)
# Risk : High
# POC URL              :
https://github.com/cybersecurityworks/Disclosed/issues/1
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
   2. Modifying the above mentioned variables in NextGEN Gallery Photocrati
   Version 2.1.7
   3. Fill all the variables with* =E2=80=9C><img src=3Dx onerror=3Dprompt(=
1)>* payload
   and save it to view further.
   4. Now, the added XSS payload will be executed whenever we review it.


Advisory Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

31-08-2015 =E2=80=93 Discovered in NextGen Gallery 2.1.7 version
31-08-2015 =E2=80=93 Reported to WP Plugin (plugins@wordpress.org)
31-08-2015 =E2=80=93 Advance CVE Requested
01-09-2015 =E2=80=93 Vendor Responded.
01-09-2015 =E2=80=93 Fixed in 2.1.10 version of NextGen Gallery

Fix
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
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

--001a113fe7642f50b50523118b12--
