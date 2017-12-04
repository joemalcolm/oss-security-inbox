X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["918" "Monday" "4" "December" "2017" "08:32:55" "+0530" "Himanshu Mehta" "mehta.himanshu21@gmail.com" "<CAAYZd=nAiDbUuRuxz1tbeE6pnx7Tow7uedDxYJNDMgh2UE2c2g@mail.gmail.com>" "35" "[oss-security] ZKTime Web Software 2.0.1.12280 CVE-2017-17057 Cross Site Scripting" nil nil nil "12" "2017120403:02:55" "[oss-security] ZKTime Web Software 2.0.1.12280 CVE-2017-17057 Cross Site Scripting" (number mark "U       mehta.himans Dec  4   35/918   " thread-indent "\"[oss-security] ZKTime Web Software 2.0.1.12280 CVE-2017-17057 Cross Site Scripting\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3610 invoked by uid 550); 4 Dec 2017 05:44:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3185 invoked from network); 4 Dec 2017 03:03:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=rKoKWsy2nataqEmNTc4wFUqBFdHpTelt1x0J6gtdHOQ=;
        b=QymwjjFdKKHPyOwcRshlFjSIP9gM/pkvHGy5Wsvq1uqGNI+T5unbvQa89C68Ji72AO
         u2Yrr4MK22h66sg/7S5eoEKmIAe6dznSPHm0BcYOaAfrUAhFJlkC0d0A5gHWZ3d2161q
         PE+PIffl4QpEbGO7xplYxtxRZiQPHSunaEx53iq1xFY1i8XzZ7G+9oO0/VHtNacpB26d
         lb269FXCtNJBkvh/kP1HhMDJGOkhoxc+FRbWzAP0U6ozFvs5nRcLzxX0StVC1W0TT1sQ
         DIjDcRVXGesRzoOtrDp4ErWFBikEUVXNJNgvjzevAwYBzTUPM3GNoQK2rJPWMYMeRoJP
         iqJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=rKoKWsy2nataqEmNTc4wFUqBFdHpTelt1x0J6gtdHOQ=;
        b=KYA4BkbW0cbaxua29sxNf68PziVrEO+KPnl8UgTW+v2WMXI9plWnFGvZIrqwzC7BO+
         cc+g5mVIGDCDXcNLRESEfjuJM/Kjvjo7H+LSbENiApaC0hepPlCsHhUizjine8GLOZgS
         btfzTrWUjsWsyA4ItDwFHwaG1mXys8AbV3RF2aABBgOPUkDIzH5QPH5bZh727VuMAUJa
         mq2bCnwosLoHAW8GWGqof4CuBV1U/8FR3olCLElvjL6Lj2Vs/C5gRZ/+HDItEN2UsBwV
         zMuBJQOMQVePXEHuJpjNy8Odj/R11GqRcmb/ZcMts1LUWJzMHF1EG/ndRV2bbW8uYqD0
         Xqzw==
X-Gm-Message-State: AJaThX4/zMg06y3W5m442geDxYaBge91hYGAm3B1aZuQ25nXCIUTqwtD
	4SKQCv3IbntzCKWoghKma6q8q7oBrOwuJQtv9WcYCLK8
X-Google-Smtp-Source: AGs4zMaOUcQnl7XjQE+DphDZW7Av/c+2BivvybDGdRkNXDpUDou3sLbLLU1aULdcFMUEFklfggp6iSfeIlJs6xqSji0=
X-Received: by 10.107.132.150 with SMTP id o22mr24259536ioi.106.1512356595520;
 Sun, 03 Dec 2017 19:03:15 -0800 (PST)
MIME-Version: 1.0
From: Himanshu Mehta <mehta.himanshu21@gmail.com>
Date: Mon, 4 Dec 2017 08:32:55 +0530
Message-ID: <CAAYZd=nAiDbUuRuxz1tbeE6pnx7Tow7uedDxYJNDMgh2UE2c2g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="001a113f2888a65915055f7af5e8"
Subject: [oss-security] ZKTime Web Software 2.0.1.12280 CVE-2017-17057 Cross Site Scripting

--001a113f2888a65915055f7af5e8
Content-Type: text/plain; charset="UTF-8"

*1. Introduction*

Vendor:                ZKTeco
Affected Product:      ZKTime Web - 2.0.1.12280
Fixed in:
Vendor Website:        https://www.zkteco.com/product/ZKTime_Web_2.0_435.html
Vulnerability Type:    Reflected XSS
Remote Exploitable:    Yes
CVE:                   CVE-2017-17057
*2. Overview*

There is a reflected XSS vulnerability in ZKTime Web. The
vulnerability exists due to insufficient filtration of user-supplied data.
A remote attacker can execute arbitrary HTML and script code in browser in
context of the vulnerable application.

*3. Affected Modules*

Go to
Personnel -> Personnel -> Advanced Query ->

Select Search Field as 'Department' and in 'Range' field mention
'<script>alert('XSS')</script>

*4. Payload*
<script>alert('XSS')</script>


*5. Credit*
Himanshu Mehta (@LionHeartRoxx)

--001a113f2888a65915055f7af5e8--
