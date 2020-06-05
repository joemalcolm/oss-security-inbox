X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1670" "Friday" "5" "June" "2020" "10:37:20" "+0200" "Serge Huber" "shuber@apache.org" "<CACR6SAWNFaOtF9CqkHF+G5_ep1cTExtA70J61EmU-zAhH2X_FA@mail.gmail.com>" "50" "[oss-security] [SECURITY][ANNOUNCEMENT] Fix for CVE-2020-11975 in Apache Unomi 1.5.1" nil nil nil "6" "2020060508:37:20" "[oss-security] [SECURITY][ANNOUNCEMENT] Fix for CVE-2020-11975 in Apache Unomi 1.5.1" (number mark "U       shuber@apach Jun  5   50/1670  " thread-indent "\"[oss-security] [SECURITY][ANNOUNCEMENT] Fix for CVE-2020-11975 in Apache Unomi 1.5.1\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY][ANNOUNCEMENT] Fix for CVE-2020-11975 in Apache Unomi 1.5.1" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5943 invoked by uid 550); 5 Jun 2020 12:45:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22091 invoked from network); 5 Jun 2020 08:37:45 -0000
X-Gm-Message-State: AOAM532xPUxTqf5ghzFhzY4UGZLTCWWHAuTy2KyS7ryW4uTVTj6RWZL+
	pSDAWAgXC7zAWFR50plcI4vaj4r8JPHPY8t9RALcnw==
X-Google-Smtp-Source: ABdhPJwKFOJmSXlM+i6rnTQG/ayDGvl38Rug70R2ISKAVszE18zrsf3P3o6zB2HQTkGuKlsnVetBQP44JldWbp5/3To=
X-Received: by 2002:a9d:928:: with SMTP id 37mr7059338otp.267.1591346251496;
 Fri, 05 Jun 2020 01:37:31 -0700 (PDT)
MIME-Version: 1.0
From: Serge Huber <shuber@apache.org>
Date: Fri, 5 Jun 2020 10:37:20 +0200
X-Gmail-Original-Message-ID: <CACR6SAWNFaOtF9CqkHF+G5_ep1cTExtA70J61EmU-zAhH2X_FA@mail.gmail.com>
Message-ID: <CACR6SAWNFaOtF9CqkHF+G5_ep1cTExtA70J61EmU-zAhH2X_FA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000009076f05a7522ce7"
Subject: [oss-security] [SECURITY][ANNOUNCEMENT] Fix for CVE-2020-11975 in Apache Unomi 1.5.1

--00000000000009076f05a7522ce7
Content-Type: text/plain; charset="UTF-8"

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

CVE-2020-11975: Remote Code Execution in Apache Unomi

Severity: Critical

Vendor: The Apache Software Foundation

Versions Affected:

This vulnerability affects all versions of Apache Unomi prior to 1.5.1

Description:

Apache Unomi allows conditions to use OGNL scripting which offers the
possibility
to call static Java classes from the JDK that could execute code with the
permission level of the running Java process.

This has been fixed in revision:

https://git-wip-us.apache.org/repos/asf?p=unomi.git;h=789ae8e820c507866b9c91590feebffa4e996f5e

Migration:

Apache Unomi users should upgrade to 1.5.1 or later.

Credit: This issue was reported by Yiming Xiang of NSFOCUS.
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEFt9+Vnc4Fy+UXwQCfBnR+70asd8FAl7XwXcACgkQfBnR+70a
sd9XYRAAjHv3p4IZd/Uy+JRS3+i2fgYEDJGVjLpewDeoLp1pCRc8hUTTeKQXgq+E
j3YOAbji9rV0fFYyOCQzmMraIDoHzQFt49Oit2gglXnB9fSer5Rk9lOQf1DgaTJz
Op1Hf/pTwMrrhUQqe4vNRg9NRp7DYyZkObpeXbZaLRarv/NuYsDEXl9A6xDyRabe
5wLGLep85+OalIhAUAXlI6uLqfzfDbU2jlJgcSpvCstOj9vDpkB+jpZOxi7GsN+X
An69bWE+otpE9KlIlhu9GD/lRzzNY8r9DkZXE5Mp24smNm8UYr8GutnYEmAQO09u
Mc9H/hRcnTfiJUeG+pXSNQSRJ+FfgK5Lvp9P4cppo481AGwCTLP01uJu8nsJb/46
AlDF4xA+d7D8TlbN6NXm4FUrP1/QhKyvPHfvGjrPjEs0TbirMU9ypwsO4ESh0O8B
6CVDxSKqmBfWjwQ4AYo+Izddsuf9ABSscNRJmfNxMBQZ0MXvGULcboXipVASWjBF
HS936RtYJY04SQ0aJuTpuN2c8J6S/P+OGzry2ETWuaE5e3nQXWsUry98GQ/qFrK9
3Jm1QZiP9dv8epZ6my0k+845+F2W1P8vkzy2QpGbnYsjcf3/f5T6U+Nz/k0skMHZ
iFNa6aoDShfbziW3pYqLiAwJ+zEQFvU0B9nSXIeiwZwg9ZqWCxk=
=AjB8
-----END PGP SIGNATURE-----

--00000000000009076f05a7522ce7--
