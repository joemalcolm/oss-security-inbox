X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1482" "Thursday" "21" "February" "2019" "15:38:06" "+0100" "Patrick Uiterwijk" "puiterwijk@redhat.com" "<20190221143806.GA12473@foreshadow.home.puiterwijk.org>" "49" "[oss-security] CVE-2018-1002161 - Koji - SQL injection in multiple remote calls" "^Date:" nil nil "2" "2019022114:38:06" "[oss-security] CVE-2018-1002161 - Koji - SQL injection in multiple remote calls" (number mark "        puiterwijk@r Feb 21   49/1482  " thread-indent "\"[oss-security] CVE-2018-1002161 - Koji - SQL injection in multiple remote calls\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15428 invoked by uid 550); 21 Feb 2019 14:38:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15410 invoked from network); 21 Feb 2019 14:38:50 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-transfer-encoding:user-agent;
        bh=t3I/9plETfEK73VaiNhEPKoRlbvP2VdIRjPMj25YeN8=;
        b=FCsx65sExqLqmBi+rH9XJeGenLqb71TgJ/zC5kzrRNHrnYjHKOXDjpu/HmuhFFB8PB
         ec5Fk2jc0XahxHdhgVTUUIwBKEgQoaXmUYRa7SN4hn3G3VLgKESyrd7BNvwZWoTX/we0
         pt1tU1UGKItrT1DaPg4zSeRg4hFn3WR8fmVOelC8Xqc7qWKuXC/NxorxAaJ2nGKzRzIm
         DFFoaUniOmurDtIrVCgoufSesWKLUS+OLsz31iKcilueYDEaWSx5cLqoHvqaMbNC87V8
         VCshPGtc3LFvp+b2FGKs4AB344+f9LFvyhGyR9hPObdo+VfVa99smAWNyGTccPJKVaxA
         P/BQ==
X-Gm-Message-State: AHQUAuYXfgU+rPUQ+jQdusaUEclFnLgMY+HIJupMdNg2I4LYvdVPKKzN
	0MjF3cWnVdUqrieTniD/JS+F8KJlLns=
X-Google-Smtp-Source: AHgI3IZPZ3XyfiEoYIjYuso8KxJaOIkGeuR66w67x8uNITKxdPLiRxyhNoQDiFYEyg/2eP0ZyzOocA==
X-Received: by 2002:ac8:2bbc:: with SMTP id m57mr31668769qtm.303.1550759918279;
        Thu, 21 Feb 2019 06:38:38 -0800 (PST)
Message-ID: <20190221143806.GA12473@foreshadow.home.puiterwijk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; x-action=pgp-signed
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Thu, 21 Feb 2019 15:38:06 +0100
From: Patrick Uiterwijk <puiterwijk@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-1002161 - Koji - SQL injection in multiple remote calls
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Description
===========

SQL injection vulnerabilities have been found in multiple call handlers in Koji’s hub code. An anonymous attacker can use these vulnerabilities to issue arbitrary database commands. 


Affected versions
=================

All versions of Koji are vulnerable.


Patched versions
================

Koji versions 1.11.1, 1.12.2, 1.13.2, 1.14.2, 1.15.2, and 1.16.2 are available on the website, and
all include patches to solve this problem.


Credits
=======

This issue was discovered by Mike McLean and Patrick Uiterwijk of Red Hat.


References
==========

https://docs.pagure.org/koji/CVE-2018-1002161/

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJcbrfOAAoJEIZXmA2atR5Qe4QP/1iLTjcM1H6i9WUFmhHKxGNY
UJKCX+LDwhkVX+mHQuogQg8iouoyMnUb0jzpwRFg5N1Y8Qo18GJltdcqrPTg5Lu9
oy8ShQENJCKwFz+LgWoggteFtcduKj1yJMUtlpW4iOeGK7sf6MXDMzX9egyJbWiZ
4xiJaeYlU585TEMQROPL+LmypRBIfYalalVO6RofufwkJ/hS/cTLJ4Fsvt+6uoq2
xUoiPGQfkMuBZfzxCDDAXb2AA614CjjOArwBzE6AUE6JMwR+6XgG6gP5LgLsLSnp
Ce7y7JV7D01z3YvbJ3sa+880LMQtPw5lesIJc1Aj6kEehSKj01/QdH+H3hNmr+3z
5zHzx1koMq5+E/SHvAxQxA7azS9KF9j35cgyIygrS0P1PnjymjN59gxol2xOZqxU
eiVc4X/vDpRf+3oNGDn/+XdHDWMR0k2w08SMBnAX7dOq0oaZ8oll2jmV1QPeXttv
s4H8HiKtqmZse5QS2Yt6+1QoKcwD3qLVcRlsBNYoIzA4nTCVc78QDxsUVqoFe6Al
8EXd1rac7kIJjM5kauVy+DBbUrgFYH3O77VwnVB/qwYjStWRV60vfkecBpJVYN/A
9JgGpXR3zR5LBLRQIsHxQEJfgtOKccBJrrJGq7nLCV/G7hYql2iTyiqPEF+Lr0bF
4HxEdKZcQJ6KHgePsL9q
=rS+E
-----END PGP SIGNATURE-----
