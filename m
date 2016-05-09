X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["221" "Monday" "9" "May" "2016" "19:28:12" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdRcbHO_PyXNSzX3ccs-xxHhGTkMoj5Xi0O6LGZb1cTJyw@mail.gmail.com>" "10" "[oss-security] CVE-2016-2099: use-after-free in Xerces 3.1.3" nil nil nil "5" "2016050917:28:12" "[oss-security] CVE-2016-2099: use-after-free in Xerces 3.1.3" (number mark "U       gustavo.grie May  9   10/221   " thread-indent "\"[oss-security] CVE-2016-2099: use-after-free in Xerces 3.1.3\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20421 invoked by uid 550); 9 May 2016 17:28:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20403 invoked from network); 9 May 2016 17:28:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=gNvaOGRpZBMUdFQxtK7ae0D4E2PU9DbHh8JUzDx5Q7c=;
        b=pklQVl730yU16Zm+zP+UpvNX32t3g1UyNmgyMNa7f5Ae2c40Yfqfaho3n6NuadPZ73
         y9cIODJ+sbjsW3ftFgT7h0eCId6LXCkae2l7M9hC8OQy21zJcHdNAnneW6kdGVtIz6In
         wDeMqw4ZqDkbBUntpl2XVEWb755eCbqA8QK6Zu0soYx4vaWJfYu3NPVR6EqsDdHnDz68
         57co1qr98rrdDEYluIbWgwfHZca/SIVF0bqeb0Glcg3DU+sfVgQuvT5NtCpAkANTGt58
         zYJxKQsJYmLWQkdDB46PqSki6d1sxNxF8OD404lWrOzglOMT+yCYhT+R2Vg56Eh6+sn2
         aaZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=gNvaOGRpZBMUdFQxtK7ae0D4E2PU9DbHh8JUzDx5Q7c=;
        b=Pa7RQlSGPfEZRpWZKwwi7Qq/iUnbjUI4Z3yj0Dv4+/Ba3LPdPteIGYt3dCp9YN0pVo
         3r4/1wFIvltft4sw66JJcFuRcy8g0Pbu6e0ukG7ptHQdahyf5VO/2lDDyWcu9okR0a9n
         KJR1AtbIMYW1VqRu2F+9IOVHz1XZv8sm65LBJj2uQfUQWsebtZ35zTtW2z7iy55rugMF
         Zh9IZF9oPhsAckE3iDnV92Ev6K5UyagrWy9t4fTzjxh+4mzj5CWAGPgzn4zs3Gl1ypD5
         Ur7I9/bgIVlzZrQqHX60U4n1FtdEiOyavmha11O8dovt0hp+f0VprUKcYaMC+uPEgVK7
         ecCw==
X-Gm-Message-State: AOPr4FWND9AJfEybEeLKT1xxh+aYy9TYEHvsYSqFfeJnP5qXaS3iUmGUp3bqH5Bg8nL1q2gmfXYBTQYAUSZoYQ==
MIME-Version: 1.0
X-Received: by 10.112.161.41 with SMTP id xp9mr14874616lbb.133.1462814892424;
 Mon, 09 May 2016 10:28:12 -0700 (PDT)
Date: Mon, 9 May 2016 19:28:12 +0200
Message-ID: <CACn5sdRcbHO_PyXNSzX3ccs-xxHhGTkMoj5Xi0O6LGZb1cTJyw@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE-2016-2099: use-after-free in Xerces 3.1.3

Hi,

We found a use-after-free in Xerces 3.1.3 parsing an xml file (also
affecting older versions). Technical details and a patch are available
here:

https://issues.apache.org/jira/browse/XERCESC-2066

Regards,
Gustavo.
