X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["358" "Monday" "1" "March" "2021" "22:59:39" "+0100" "Szabolcs Beki" "szabolcs.beki@gmail.com" nil "15" "[oss-security] CVE-2020-1936: Stored XSS in Apache Ambari" nil nil nil "3" nil nil (number mark "U       szabolcs.bek Mar  1   15/358   " thread-indent "\"[oss-security] CVE-2020-1936: Stored XSS in Apache Ambari\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-1936: Stored XSS in Apache Ambari" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19866 invoked by uid 550); 2 Mar 2021 10:32:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22169 invoked from network); 1 Mar 2021 22:00:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=YeBPKyqNDYVJRX0YYMMRqO+don5NOxpjc9s52XLZXYE=;
        b=oMLMNxAppgaz4alTGmrJXto0pJ+LIh4/IUUB2MrUqCPiFJGhbEv/LsWXsWo9tttsXo
         6/wf/lfe/WIf3oDfnJlU5+SByal0iMQUjlLqVpbelYgJW9pG95AJ7NyE9tSp5wQcLro8
         YPgmRWN8yhF4idV7xIzd+OjcQKLa1zhg2Ja7ORPUQ1to5meHTw9E3luHkw2dbaLlZw2A
         0vWdXRjrgM1yagBGC3Lx4RqCz758SB1okrZ+vlC7XbIt5CkSYy7B8ZFhTUHz5KAarunG
         klhYLJiYehcry4NIPm1TYbzYLvmJg3NsRESrmNuYgOiZMn1toTJCckkfa175SQqjDNqU
         nWQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=YeBPKyqNDYVJRX0YYMMRqO+don5NOxpjc9s52XLZXYE=;
        b=dL1edvsgriyfHmQtL/eh6mDu2PB8zs0e/+PxeyHfLndGxRPPBHJRilX7cs2mmjvuOK
         l/aAl6Q6dpgT2BCjcws5napxNgp1ArTFAKSclQ/ieSmD3NQ60cAgUycL8c+oVJXPOJ58
         aau38P0RyD6M5dbIbPwXmuAEri83dDgCXYgMR+vvW9KbksPfqL37iNokdUzagV+o4OZL
         LMWbbuMyDrN4cIQxsmo5HMPnODme0Jlnpyy1MsKc9CYIkcGjwPz5lrvkVmOHByK5KRh/
         vdqttKS6DyPncEZiEHA3EhFBOwR27o8RbdvoE/ORK5knnUYqByiWeK0IZvMXlLi0KC3t
         6wag==
X-Gm-Message-State: AOAM5338uKJyO8aJEHk7Lg1Myw6tYzFSYotvnb0+qma9/nWQEXY3BQ9g
	7O2TD5TTAAm02GddO/X9YMGD2apHYFm13Jc4CNMCtVD+XpwvjA==
X-Google-Smtp-Source: ABdhPJxY2rD7/Q3+k8HIYbZd1kOvpqffEV23Vj3oX88bBWOBAX98bxv3qL/5nRYrEn/5Zpy8aFsQ1YXh7GG210hKCdY=
X-Received: by 2002:a2e:1558:: with SMTP id 24mr1430711ljv.502.1614635990700;
 Mon, 01 Mar 2021 13:59:50 -0800 (PST)
MIME-Version: 1.0
From: Szabolcs Beki <szabolcs.beki@gmail.com>
Date: Mon, 1 Mar 2021 22:59:39 +0100
Message-ID: <CAEJYuxHXFazta-hDx1223XR23pfkY8ahg6s00nDev7aaO7h52w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000aad53d05bc80bc05"
Subject: [oss-security] CVE-2020-1936: Stored XSS in Apache Ambari

--000000000000aad53d05bc80bc05
Content-Type: text/plain; charset="UTF-8"

Description:

A cross-site scripting issue was found in Apache Ambari Views.  This
was addressed in Apache Ambari 2.7.4.

This issue is being tracked as AMBARI-25329

Credit:

Apache Ambari would like to thank Krzysztof Przybylski from STM Solutions

--000000000000aad53d05bc80bc05--
