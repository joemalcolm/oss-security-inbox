X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["776" "Tuesday" "23" "February" "2016" "06:56:25" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20160223055624.GA29670@lorien.valinor.li>" "21" "[oss-security] CVE Request: Linux: unix: correctly track in-flight fds in sending process user_struct sockets" "^Date:" nil nil "2" "2016022305:56:25" "[oss-security] CVE Request: Linux: unix: correctly track in-flight fds in sending process user_struct sockets" (number mark "        carnil@debia Feb 23   21/776   " thread-indent "\"[oss-security] CVE Request: Linux: unix: correctly track in-flight fds in sending process user_struct sockets\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7274 invoked by uid 550); 23 Feb 2016 05:56:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7256 invoked from network); 23 Feb 2016 05:56:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ap+EUf3pCK1u3e0HiThJWaT1WUHb4HUoVrGe+rWGpFk=;
        b=Y24Ar+3AkVK7srMkVSFYlGFNO0Usea+3kWMJI2F1aiWZ7iiVwU40Q7J/Xcml8L8gkR
         b1pMrIiv1A43o7ATElPgESu8tdK7iTim5ovVTiqPTTgy5oBukx2aPa4zJFmVs/vrI1rE
         QwOpO4NBiZphToq0GtPXR56aw04HWHT5T/tNAhP47pcEn5lqO5ZcXA6MrzwYbkpUaK/Y
         1Fuw1T+HCbYBK87V8R3XORL2JSZy9t3RmwNY74hM29F9kGXBLg9zmNlOcUhw3ujt/Lng
         nLQgis9SWqR9hT0yrXyLO173aWNh9PE86kqAlh6fV9HFhtEZ0RgHto3x3KS/QWMIj/LN
         ZrMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-type:content-disposition:user-agent;
        bh=ap+EUf3pCK1u3e0HiThJWaT1WUHb4HUoVrGe+rWGpFk=;
        b=hvYNJaesDPf6/GB5Xc+DY8fYeT12opgIvB0mT9dQbl6ELwflBjbX82RRvBeMW+pkiN
         RTfXkO2zGjkI7tLtrAe5cWXgZ3V2Sm5wcftAvMlsoW3qp+HbG95iwT6sT14fEyFu7osR
         BPmMvQLy82Wwu9yttuMBbQ64+EpF2cFlQWUhOvOf7RNoJBcsiKwJJFVd6YwmeiyiBg5H
         LdN2qTwshw2Lrj9Oic5t+rOacxwj7yikUOzNY4GjuwMFYKqls0HhXHNbHCefwV2u5Za/
         FFHCYzwH4S5Fll8mPzuDn03jfwNm97CVFC+S/uBBp4zYw+JfkrRJ/2UdMGhnpraUM4eP
         wk7g==
X-Gm-Message-State: AG10YORkk7SQ6m+J1fE1qP7QmGaAC76jmGVIqqol7iYlN+wQSsdpIyQcsL7ECgLzQhTMEg==
X-Received: by 10.55.192.89 with SMTP id o86mr16391610qki.31.1456206987820;
        Mon, 22 Feb 2016 21:56:27 -0800 (PST)
Message-ID: <20160223055624.GA29670@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Tue, 23 Feb 2016 06:56:25 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: Linux: unix: correctly track in-flight fds in sending
 process user_struct sockets
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi,

A new (denial-of-service) issue was fixed in Linux introduced by the
commit 712f4aad406bb1ed67f3f98d04c044191f0ff593[1], which was part of
commits to address CVE-2013-4312.

David Herrmann reported that the original commit "incorrectly
accounted the number of in-flight fds over a unix domain socket to the
original opener of the file-descriptor. This allows another process to
arbitrary deplete the original file-openers resource limit for the
maximum of open files."

This was fixed in 415e3d3e90ce9e18727e8843ae343eda5a58fad6[2].

Can you please assign a CVE for this issue?

 [1] https://git.kernel.org/linus/712f4aad406bb1ed67f3f98d04c044191f0ff593 (v4.5-rc1)
 [2] https://git.kernel.org/linus/415e3d3e90ce9e18727e8843ae343eda5a58fad6 (v4.5-rc4)

Regards,
Salvatore
