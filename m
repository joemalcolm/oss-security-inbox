X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1045" "Saturday" "29" "June" "2019" "16:36:29" "+0200" "Ailin Nemui" "ailin.nemui@gmail.com" "<23fd3ff9bc2b6faabbf2cbe55e0763d444e951d6.camel@gmail.com>" "57" "[oss-security] Irssi 1.2.1/1.1.3/1.0.8: CVE-2019-13045" nil nil nil "6" "2019062914:36:29" "[oss-security] Irssi 1.2.1/1.1.3/1.0.8: CVE-2019-13045" (number mark "U       ailin.nemui@ Jun 29   57/1045  " thread-indent "\"[oss-security] Irssi 1.2.1/1.1.3/1.0.8: CVE-2019-13045\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Irssi 1.2.1/1.1.3/1.0.8: CVE-2019-13045" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15432 invoked by uid 550); 29 Jun 2019 15:09:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15724 invoked from network); 29 Jun 2019 14:36:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=EJL0Tb5GHuOMddXL0hZq+FlZfuOnyCZV8/SFsjjiDd4=;
        b=bEHmS7jjXqCPJS4QR0t+LT1fcf9KfXd9Cs54JHD9LJp8UWUUmCdn6a1CDWZfl9LgVR
         rKmWVnSG0EKOTKXBFfmLJP26K6GMSqJm1Q2UR2RL0NokIZpl2UWTaJEKmaHoD6rtPWrT
         +iON3HwGt4q+B/x+BAdpkBdpcRyYOUOmcY1IDeC54gzfGFZrRDzJTf5t5b6U/aNIXeV0
         dy4e7DQPcQRwBmKyIEhPZo9cm8CsTfGjg0lOOB1TWxLvhkUKAbcXYBjewrUREmc3LVik
         yLX7vAk/x6XxE6DII2JmJVCGZRQwi4HelSlmEGsNLhAeSUbHgrZ4PF+k8UM6LDsscRNY
         7i2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=EJL0Tb5GHuOMddXL0hZq+FlZfuOnyCZV8/SFsjjiDd4=;
        b=ezloMIbmoOYEZPUFUYWGZoyYywVSRPz0Oi8cmPj9UQv885I5zv5yoxjyDHQyiBI9Cs
         1czoAnNwbWnm/o713zhjdrqyegLUSc7M6O4raFdt4pmY2EeWbgnrmX8vSobvGlBhFE+C
         0vMp++GMNIT1/JmPnErAlPV/8UQGjqAa7bovo5P6pQBvtJP4+Akxyb+dIVUMrHcY8AQZ
         uq5bICzYm5+JzWeggmrYqcB8FXERYKCZS8ne6UDZWmW1GxaY9oY3mvImx7IhJDcylqYN
         1DCxhZgr1pQJF9PAYIcJKGunTk+NHkBPjxkLtkvChDMrfhwxnP0cSo+NOtj09yKnzv3q
         N09w==
X-Gm-Message-State: APjAAAWqx3ILr2PfI0B1CD3HcvrZ46Dgc5JLo52vRrwJoxDVAjwVoOrf
	hXKKJST5FfF9eiNbr8hsSaKcw2r4
X-Google-Smtp-Source: APXvYqxrIEbO168lpxmmSlkg/nuM99ZmvZor1EUFUm2OUvHdQF5eQLBYESidfiUok2v2ynawHRX4wQ==
X-Received: by 2002:adf:f98a:: with SMTP id f10mr2708365wrr.250.1561818985737;
        Sat, 29 Jun 2019 07:36:25 -0700 (PDT)
Message-ID: <23fd3ff9bc2b6faabbf2cbe55e0763d444e951d6.camel@gmail.com>
From: Ailin Nemui <ailin.nemui@gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Date: Sat, 29 Jun 2019 16:36:29 +0200
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Irssi 1.2.1/1.1.3/1.0.8: CVE-2019-13045

IRSSI-SA-2019-06 Irssi Security Advisory [1]
============================================
CVE-2019-13045

Description
-----------

(a) Use after free when sending SASL login to the server found by
    ilbelkyr. (CWE-416, CWE-825)

    CVE-2019-13045 [2] was assigned to this issue.


Impact
------

May affect the stability of Irssi. SASL logins may fail, especially
during (manual and automated) reconnect.


Affected versions
-----------------

(a) Irssi 0.8.18 and later


Fixed in
--------

Irssi 1.0.8, 1.1.3, 1.2.1


Recommended action
------------------

Upgrade to the latest Irssi. We've published maintenance releases,
without any new features.

After installing the updated packages, one can issue the /upgrade
command to load the new binary. TLS connections will require
/reconnect.


Mitigating facts
----------------

Users who have not configured SASL, are not affected by this issue.



References
----------

[1] https://irssi.org/security/irssi_sa_2019_06.txt
[2] http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-13045


