X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["866" "Tuesday" "22" "December" "2015" "10:49:39" "+0000" "CSW Research Lab" "disclose@cybersecurityworks.com" "<CAMWaY3NgKkaktuxkBLFX0mA=+FJQPu-vzEQAckVHp2vGU-xUrg@mail.gmail.com>" "31" "[oss-security] Symphony CMS 2.6.3 - Multiple Reflected Cross-site Scripting Vulnerability" "^Date:" nil nil "12" "2015122210:49:39" "[oss-security] Symphony CMS 2.6.3 - Multiple Reflected Cross-site Scripting Vulnerability" (number mark "U       disclose@cyb Dec 22   31/866   " thread-indent "\"[oss-security] Symphony CMS 2.6.3 - Multiple Reflected Cross-site Scripting Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1644 invoked by uid 550); 22 Dec 2015 10:58:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28555 invoked from network); 22 Dec 2015 10:50:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cybersecurityworks-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=KGn3OMVwPAW138FxR5/8NCegdyokqjleRkQ9806K8t4=;
        b=ZCWlElA1DMrQj98VwQgGxE06KY0yNPQbxkncApAR8PW04yGJ0Q5g2GjkG/0Mp5RPlb
         oopGZ74HubZneeLo99oUv2t50dBd/7qq0/9IJsbI4vjOloJIF1WhejLeNlUaGp5Nc2DD
         Y4T6O8CjdshTReerzYRNmfypWMCAxqbaRfPEvLBXdbekSehFJVR41nlx/4uR0iaiNWST
         SWiAf3QOb/ktQQyu/YSg8HVVgvsVShPyZXgZrT8gN+MhQ5LQefnn01lGa2n2EHO0FdGk
         SbNSm5iAtG/5K0EfbRSeeUc/kBAj4udfnl6J5s1xd9Z9bMHmkIEMJEojIZrhPQx1qDvt
         jayQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=KGn3OMVwPAW138FxR5/8NCegdyokqjleRkQ9806K8t4=;
        b=UCTlwBSJgEkN+YRMpNCHB4D4d68U7uh3UAxQnFtAzrCXoGVPK65pJt7J8TwiBhtXWL
         Vzb+Yqku5jcQAFpFkOvRPxuRKmlX2fkLHPkGTuE3m8kf1M53+yFO5OwfkLHOjaj4VHat
         h4u53fsmt+t4tIxTn/f8hjS4CO3b6pizfAwqPBCaHH/8qzl0rQDx10MvL0H2k4byWUzs
         M0FW6e9SuCHU3yKLpDgc7wL7kwEQoR2lJYaFLxiqXU1BTOaUgpVuO4AK0P0va7FhJuLZ
         P4qLS05jsm0uXLnu2XeNEyAnNKPSB+GDwRl5RmLqpIhoRabHGFYp+NOmHM9CZhmrpZvp
         rMlg==
X-Gm-Message-State: ALoCoQnJIagFFDZaYI7V4n7rVeosf0K1X3Yt5dBFT76VGXJ7yA0p6S2ErxUsQnFOXz74uVG7zAceBL5cou9Z1sBBMmEVCbMaLw==
X-Received: by 10.107.34.133 with SMTP id i127mr13737672ioi.150.1450781388660;
 Tue, 22 Dec 2015 02:49:48 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAMWaY3NgKkaktuxkBLFX0mA=+FJQPu-vzEQAckVHp2vGU-xUrg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1140ef84516ee205277a5dc2
Date: Tue, 22 Dec 2015 10:49:39 +0000
From: CSW Research Lab <disclose@cybersecurityworks.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Symphony CMS 2.6.3 - Multiple Reflected Cross-site
 Scripting Vulnerability
To: "cve-assign@mitre.org" <cve-assign@mitre.org>, 
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--001a1140ef84516ee205277a5dc2
Content-Type: text/plain; charset=UTF-8

Hi all

can you please assign CVE for this issue ?

Description
***************
Symphony CMS 2.6.3 is prone to Cross-site scripting vulnerability because
it fails to sanitize user-supplied input in default email settings.An
attacker may leverage this issue to execute arbitrary script code in the
browser of an unsuspecting user of the affected site.


Proof of Concept URL
***************************
[+] http://192.168.56.101/symphony/symphony/system/preferences/

Vulnerable Parameter
**************************
[+] email_sendmail[from_name]
[+] email_sendmail[from_address]
[+] email_smtp[from_name]
[+] email_smtp[from_address]
[+] email_smtp[host]
[+] email_smtp[port]
[+] it_image_manipulation[trusted_external_sites]
[+] maintenance_mode[ip_whitelist]

--001a1140ef84516ee205277a5dc2--
