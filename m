X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1492" "Monday" "24" "August" "2015" "15:14:24" "+0530" "Arjun Basnet" "arjun@cybersecurityworks.com" "<00ae01d0de51$78dd4a30$6a97de90$@cybersecurityworks.com>" "76" "[oss-security] SEH Local buffer overflow vulnerability " nil nil nil "8" "2015082409:44:24" "[oss-security] SEH Local buffer overflow vulnerability" (number mark "        arjun@cybers Aug 24   76/1492  " thread-indent "\"[oss-security] SEH Local buffer overflow vulnerability \"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9391 invoked by uid 550); 24 Aug 2015 09:53:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30366 invoked from network); 24 Aug 2015 09:44:37 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-type:thread-index:content-language;
        bh=Sju9R157e0oS0+K+wuA+oNUYbnBjRqUauV4WYB0VpAk=;
        b=i113aKFttA0DwPUh2JD1+PbSBl7k/MRqCIXH3vY+6zrXYoLrb1i6Lw54dLiOsyITbL
         PpobrYMX7N3NZj6ZIy6Jffwtxe6vVjLLwGgbE+uSVIKuBzxGXUS/vj0pHR89AHASwX4q
         RXDbb4D0mJ4D0xydac8ml3vWITi7xCqFy1WLChdp9KYzNvNFHa31DUJUo6Nbyr1lrlm+
         RdUfSMgdi/9f9q1wemqY8uxLGcyu8ND1H5RKiPWqlYFkuOsoS3S4qpqxwt73Y06RART2
         qa8+m7XrWm8Sdxluq0/7XP5fJIaJheCgS5NTMEoYkF03S4gf0xRCDV5GUqHQ7kp1NypF
         c2bg==
X-Gm-Message-State: ALoCoQkefmZAOBG3Jf+RB7zDDeCHYwB2Ke29/kvDgHAxQVx3I2D/9irT4T5oiilGko5d+gggSFOy
X-Received: by 10.66.140.8 with SMTP id rc8mr43941877pab.34.1440409465499;
        Mon, 24 Aug 2015 02:44:25 -0700 (PDT)
Message-ID: <00ae01d0de51$78dd4a30$6a97de90$@cybersecurityworks.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_00AF_01D0DE7F.929956C0"
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdDeUWm+IqCiSvQRTdqrgiapxtfYnw==
Content-Language: en-in
Cc: <s3curityshastragar@gmail.com>
Date: Mon, 24 Aug 2015 15:14:24 +0530
From: "Arjun Basnet" <arjun@cybersecurityworks.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] SEH Local buffer overflow vulnerability 
To: <oss-security@lists.openwall.com>,
	<cve-assign@mitre.org>

------=_NextPart_000_00AF_01D0DE7F.929956C0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello List,

 

Could you please tell if this issue is applicable for CVE?

 

I tried contacting vendor for reporting the issue but due to unavailability
of contact details was unable to do so. Hence I am sending this mail to with
the issue and request for CVE

 

Description:

A very common and awarded serenity audio player(Latest Version) and Malx
media player(Older Version) (
http://malx-media-player.software.informer.com/awards/)  is vulnerable to
buffer overflow vulnerability, An attacker can create a malicious m3u and
running the malicious file through the media player crashes the media player
through an structure exception handling (SEH)  and allows code execution on
that system. This can help the attacker to gain access of the machine. 

 

Affected Versions:

The vulnerabilities was tested on Windows 7 and XP SP2 and other could work
on other version of Windows( not checked). Following version of media player
are vulnerable:

 

Serenity audio Player 3.2.3 

Malx media player 3.2.2 and lower version may also be affected(Not checked)

 

http://malsmith.kyabram.biz/serenity/

 

Discovered by:

 

Arjun Basnet from Cyber Security Works Pvt. Ltd.

 

 

Please feel free to contact me for any additional information.

 

Have a nice day !

=================

Thanks & Regard's

 

Arjun Basnet


------=_NextPart_000_00AF_01D0DE7F.929956C0--

