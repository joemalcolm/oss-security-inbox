X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1077" "Friday" "11" "November" "2016" "20:45:22" "+0200" "Angelos Tzotsos" "gcpp.kalxas@gmail.com" "<22f74020-dc61-9920-fb9c-e059c0567585@gmail.com>" "31" "[oss-security] CVE-2016-8640 pycsw SQL injection issue" nil nil nil "11" "2016111118:45:22" "[oss-security] CVE-2016-8640 pycsw SQL injection issue" (number mark "U       gcpp.kalxas@ Nov 11   31/1077  " thread-indent "\"[oss-security] CVE-2016-8640 pycsw SQL injection issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5440 invoked by uid 550); 11 Nov 2016 18:50:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24453 invoked from network); 11 Nov 2016 18:45:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=mvmPRD80OTF7WXT0bMIB9BUQ2oYfGUTloZ6tBgQ2cVA=;
        b=Ec4YWcp13R0nd8FHRA8BJvR1q/Zq+2rt2JAo9OQ4YvhJVp/GnXTcEXG9u5jjFS5v1t
         DtVPQzAJpK4CUVlZhTT/efPXq5yf4x77G9XamNohyO7x/jsRG0il28iWnspFpdO2xfl8
         em3XSt62EaIpAQqKUzagsTB3QdjMS2tU18exCA9A9H9gyrWUvRJirdNkzX39zmux4tfk
         YbD4WhiMFd5fPFOohbEdkGxVkVz+1eeNP81YqZUIirW0fVnPc93dup18QWUuxjwl5rdg
         iLYdC4j9PgFnWoTy24zdAcMKGGulXOaO1oTdNgL6jRF+JD5Ml4yr1b4dQxj2148E8kc7
         FjuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=mvmPRD80OTF7WXT0bMIB9BUQ2oYfGUTloZ6tBgQ2cVA=;
        b=bV2XQG+4o92kwFl4A8589C3u25eI6cbVkDGhiEFAKBrsd5DIBwdbIEx62Gc74FKzH3
         dOYUhKWhDzm6fA8VNPxjzxx0pKWNdkUaDM53dQWTC7vao59XRqJaxtaNNrB5GiBESySY
         30gL/E/obrtj143lubBUT8M50qsIJB8I8omPos4/Yj5mF30agLWUQScgx9MySXmoZ5Ex
         szip7KVjbWUOw4wCgxyVK3hOLrrW73UwVT3pBH2oV6rOeIdLTWU5Qcly6GA+BjfGdWoS
         SEIgxhPXlsR6g20AIMBdKgiVr9NQHLYudzPEKdujdxI2bPV8LVWJEihJE4I4ECGWwWXB
         JcOg==
X-Gm-Message-State: ABUngvfU0JQN8Cru/wd1bzYfIfWT5dhERTCmAoisJ9FmZ5ZVB8zim3Gm09dwLl5nsYNUyQ==
X-Received: by 10.194.71.228 with SMTP id y4mr11878431wju.136.1478889924938;
        Fri, 11 Nov 2016 10:45:24 -0800 (PST)
To: oss-security@lists.openwall.com
From: Angelos Tzotsos <gcpp.kalxas@gmail.com>
Message-ID: <22f74020-dc61-9920-fb9c-e059c0567585@gmail.com>
Date: Fri, 11 Nov 2016 20:45:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2016-8640 pycsw SQL injection issue

Hi,

Some days ago, the pycsw team received a security notice from the 
company Koordinates (thank you) regarding an SQL injection vulnerability 
in pycsw. An exploit of this vulnerability was demonstrated, which is 
able to read and extract any data from any table in the pycsw database 
that the database user has access to. On PostgreSQL (at least) it is 
possible to perform updates/inserts/deletes, and database modifications 
to any table the database user has access to.

The vulnerability affects all previously released pycsw versions except 
2.0.2, 1.10.5 and 1.8.6 (those have been released after fixing this 
security issue).

The security patch can be seen in this git commit:
https://github.com/geopython/pycsw/pull/474/files
https://patch-diff.githubusercontent.com/raw/geopython/pycsw/pull/474.patch

The CVE ID assigned is CVE-2016-8640. Many thanks to the Koordinates 
team for picking this issue up and to RedHat security team for their 
help with the CVE.

Best regards,
Angelos


-- 
Angelos Tzotsos, PhD
OSGeo Charter Member
http://users.ntua.gr/tzotsos

