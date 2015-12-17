X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["544" "Thursday" "17" "December" "2015" "03:38:04" "+0000" "CSW Research Lab" "disclose@cybersecurityworks.com" "<CAMWaY3PThcg=yKHWYDJ7hQW15rqRX=C9yK6MS7mNCWhUT016Ag@mail.gmail.com>" "26" "[oss-security] Cross site scripting vulnerability (XSS) in SilverStripe CMS & Framework v3.2.0" "^Date:" nil nil "12" "2015121703:38:04" "[oss-security] Cross site scripting vulnerability (XSS) in SilverStripe CMS & Framework v3.2.0" (number mark "        disclose@cyb Dec 17   26/544   " thread-indent "\"[oss-security] Cross site scripting vulnerability (XSS) in SilverStripe CMS & Framework v3.2.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24555 invoked by uid 550); 17 Dec 2015 03:40:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23605 invoked from network); 17 Dec 2015 03:38:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cybersecurityworks-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=Fa6Y3hE04HraKJGUts0S/ZWoyCfHjgXrWZL+ztMmp8A=;
        b=LpkA5nFfAlHpABm7F+ki4UypvO7ximgijrIZ8wynXZykcR0XPOiRUP06klZc4F8n5J
         611HdrCWarhvk+VOgt7FxCe70L2KxlbKsmLHqGP2oMZamdXaSQRnCV249lXcmQgZKQ58
         BAKP8dZrU7yCJx2csVb2ilitS2sMUME+mlhoa/fUsjyvMMC7LWopJdKK4UFmDUJrv02d
         cx5KxqoCmaSnNhFB8vtvFpe17lLEJjxWlqFzs/Ngu02d5wP+LEwd+ETe/+9h+fq/pCCF
         5O81PNCo0xZ5BdpPAvWvzreiUtWjY7VZFG6iffTnWGC80xghqrFUQSfQAGA3sQDTrKOl
         92Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=Fa6Y3hE04HraKJGUts0S/ZWoyCfHjgXrWZL+ztMmp8A=;
        b=JAd8tq0o/noH29kYtNOuOlBuCtpyDChVaKAe0IKx18s/1ZJy87Tn/oZ3fBCY1/ry57
         nFOWdcaWQaxkQqZGC9WTOGDC1y8aqUgaFerqMgeneaDmDl4+iwiTTeLZT+ShwU9QYJl8
         kA/AH6LHQWKU/ArD0RcnAwpIn/QAYczuHJIPCS9JslsZVADq2LaSBW8lllTBuIXCAiW7
         tte+3PvCaTVtwSH+FGDDdsEuFzuPWG+Tq7ymXD83wHZHH3i2eEGiUl9NgFbddFI8Bxj6
         /+BJhr4y4RNrHjy+U8np+K1go2n+B2S/6eySea5lCgea+q5os+OUmNch9446HDYTEHjU
         Cvag==
X-Gm-Message-State: ALoCoQlqH/hJBMLsFvo6OFPyXdoC5PVXfgGaJjAFEWtCbNuoRhl7OyYj5mR1f9y0zFpPxJDnVON6wQvjvBKwKdzhkitR/WNjeA==
X-Received: by 10.50.88.6 with SMTP id bc6mr1275791igb.68.1450323493647; Wed,
 16 Dec 2015 19:38:13 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAMWaY3PThcg=yKHWYDJ7hQW15rqRX=C9yK6MS7mNCWhUT016Ag@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e0111c0a4a6510c05270fc027
Date: Thu, 17 Dec 2015 03:38:04 +0000
From: CSW Research Lab <disclose@cybersecurityworks.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Cross site scripting vulnerability (XSS) in
 SilverStripe CMS & Framework v3.2.0
To: "cve-assign@mitre.org" <cve-assign@mitre.org>, 
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--089e0111c0a4a6510c05270fc027
Content-Type: text/plain; charset=UTF-8

Hi all

can you please assign cve for this issue ?

http://www.silverstripe.org/download/security-releases/ss-2015-026

Proof of Concept URL:
=================
[+]
http://localhost/Silverstripe/admin/security/EditForm/field/Members/item/new/ItemEditForm/


Parameter
==============
[+] Locale
[+] FailedLoginCount

Credits & Authors
======================
Arjun Basnet from Cyber Security Works Pvt. Ltd. (
http://cybersecurityworks.com)

--089e0111c0a4a6510c05270fc027--
