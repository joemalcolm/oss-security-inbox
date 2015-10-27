X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2735" "Tuesday" "27" "October" "2015" "12:55:22" "+0530" "Dis close" "disclose@cybersecurityworks.com" "<CAMWaY3PAtAuQw+E3BvzaTo0mKLE4mXoUdk9NSLZrv9_nZEZtQg@mail.gmail.com>" "76" "[oss-security] CVE Request: XSS in Fast Secure Contact Form version 4.0.37" nil nil nil "10" "2015102707:25:22" "[oss-security] CVE Request: XSS in Fast Secure Contact Form version 4.0.37" (number mark "U       disclose@cyb Oct 27   76/2735  " thread-indent "\"[oss-security] CVE Request: XSS in Fast Secure Contact Form version 4.0.37\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17648 invoked by uid 550); 27 Oct 2015 07:27:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15737 invoked from network); 27 Oct 2015 07:25:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cybersecurityworks_com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:date:message-id:subject:from:to:cc:content-type;
        bh=8ieT1Okx9Y5PXLRU70wv1onYt2l+aGLS5SLjc1nVCj4=;
        b=RT3tPe7BzvNQXAH9o8uPoSCn+B1V0fK9IIjFDDnCkU2vMImLo08hBBTXxFz5Yz8Lol
         Dof35iC+J+xPhTzAAuR8pElXxho60BAdQtN7xU5CTLYPsUyQCFp3vRCIoZVJE/Hno6qh
         ft6fKJ2PVwzXjxolOJ7c+qN46xzMSIzGftUMYoTVc6QoB3dnB6YieJHrGgTG9nBXtz8M
         +bYbygUNt6+1XspXeU86cYpvF3Wks0LXCPsa1ER7r+tgDZp+wWvWqbe13E8oQ73DHztr
         IrHjDVh7oWutQ8Ql1XLwVRhIr+2BXSIG4sWnQQOUiemYp4oJ1isxOFk1aaW7RLFKwFaq
         2jwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
         :content-type;
        bh=8ieT1Okx9Y5PXLRU70wv1onYt2l+aGLS5SLjc1nVCj4=;
        b=aek3GSyDcgTfpIfplkMF+8M9jkh5B6dQRFS58g/j1GrS+cibRn/vYLbyeLdgesI8qz
         n9IXma7ZkHOTgF9JFLUTXVR92pMcViWIP2PY0l/AEbZrlBXcNiuNldSWqXLv6q+9s/jI
         9hF2g/clSwGx1xShdEPp8qw9W/iSWGDFuERCflPfCjmquh7EvrKgK7fgS3477B101sDk
         2f4JuYBF3lNdNWl92mTl38/ptcsS8IE46O/DaHWHQ2ULLAlXFmLp4MaKwUjHQR9cUnh9
         k/n7miL8s3vzKErtpquZFiOcog8SLVqRG+cuBSExh3wDgZhheQxiigIQs82K+oTJCbgK
         R8Vg==
X-Gm-Message-State: ALoCoQkkvqugITkx37M1HS8iLFKnOiO6JRcHxheKl/iqL9tYj3DG5LPgCeyCwEnL40UzjVOVu8Sj
MIME-Version: 1.0
X-Received: by 10.107.138.84 with SMTP id m81mr21066129iod.40.1445930722847;
 Tue, 27 Oct 2015 00:25:22 -0700 (PDT)
Date: Tue, 27 Oct 2015 12:55:22 +0530
Message-ID: <CAMWaY3PAtAuQw+E3BvzaTo0mKLE4mXoUdk9NSLZrv9_nZEZtQg@mail.gmail.com>
From: Dis close <disclose@cybersecurityworks.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a113fe7641b2c51052310fba8
Subject: [oss-security] CVE Request: XSS in Fast Secure Contact Form version 4.0.37

--001a113fe7641b2c51052310fba8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Details
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
# Title : XSS in Fast Secure Contact Form version 4.0.37
# Affected Product : Fast Secure Contact Form version 4.0.37
# Vendor Homepage :  *https://wordpress.org/plugins/si-contact-form/
<https://wordpress.org/plugins/si-contact-form/>*
# Vulnerability Type : Cross Site Scripting
# Risk :  High
# POC URL               :
https://github.com/cybersecurityworks/Disclosed/issues/4
# Video URL: https://www.youtube.com/watch?v=3DeDpqIFTE7t8&feature=3Dyoutu.=
be
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

   1. Visit the following page on a site with this plugin installed.
   http://wordpresssite.com/wordpress/wp-admin/plugins.php?page=3Dsi-contac=
t-form%2Fsi-contact-form.php&fscf_form=3D1&fscf_tab=3D1

   2. Modify the value of *fs_contact_form1[welcome]* variable with
   *<script>alert(document.cookie);</script> *the server.
   3. Now, the added XSS payload will be echoed back from the server
   without payload and send the request to validating the input whenever we
   visit the script stored page.


Advisory Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
2015-09-05 =E2=80=93 Discovered in Fast Secure Contact Form version 4.0.37
2015-09-07 =E2=80=93 Reported to plugins@wordpress.org
2015-09-07 =E2=80=93 Vendor Responded
2015-09-08 =E2=80=93 Fixed in Fast Secure Contact Form version 4.0.38

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

Please assign CVE as appropriate. Thanks for your valuable time & effort
taken.

--

Cheers !!!

Team CSW

--001a113fe7641b2c51052310fba8--
