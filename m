X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["625" "Wednesday" "6" "April" "2016" "14:58:48" "+0200" "Hector Marco-Gisbert" "hecmargi@upv.es" "<57050808.7000401@upv.es>" "23" "[oss-security] CVE-2016-3672 - Unlimiting the stack not longer disables ASLR" nil nil nil "4" "2016040612:58:48" "[oss-security] CVE-2016-3672 - Unlimiting the stack not longer disables ASLR" (number mark "U       hecmargi@upv Apr  6   23/625   " thread-indent "\"[oss-security] CVE-2016-3672 - Unlimiting the stack not longer disables ASLR\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18395 invoked by uid 550); 6 Apr 2016 13:00:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18374 invoked from network); 6 Apr 2016 13:00:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=upv.es; s=default;
	t=1459947574; bh=wME9Fd1WnLXDW07MnVKwIiizNnYjCe/7ivcOZliQZkQ=;
	h=To:From:Subject:Date;
	b=iUQNqEh1rrrQs7PSyCzPeTIFQLCrDyDA9Lb2uf/d2jlqJnfRXWcrV8CEn9qCCM7Bc
	 hPsN/HriQUxa06KsCNyG/Tz2C2meSs+JcsSgJHKnR0o8oPC7GTko5lSSNmugW9RsJn
	 Dyw0wDOxmX6ohFjfnB11ddDl804zZTR1AZTCD1H13OR3fY5g5guhe6T4KTadwbrqhQ
	 Ch+av+7watVmKKqwhZHqKKdbB+62DYB3M4jTERY+HrMytZZ7cD+zmGJtnY4+UKPink
	 dovwLwRjq0iXV9r6FTGezkrBMzRZik96bPCtQVGaEOAjX1JM6iYvrQYaEIsnESdv4o
	 i02XaoYyPg+iA==
To: fulldisclosure@seclists.org, full-disclosure@lists.grok.org.uk,
        bugs@securitytracker.com, bugtraq@securityfocus.com,
        oss-security@lists.openwall.com
From: Hector Marco-Gisbert <hecmargi@upv.es>
Message-ID: <57050808.7000401@upv.es>
Date: Wed, 6 Apr 2016 14:58:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2016-3672 - Unlimiting the stack not longer disables ASLR

Hi everyone,

We have fixed an old and very known weakness in the Linux ASLR implementation.

The weakness allowed any user able to running 32-bit applications in a x86
machine disable the ASLR by setting the RLIMIT_STACK resource to unlimited.

This is a very old trick to disable ASLR, but unfortunately it was still present
in current Linux systems.

Details at:
http://hmarco.org/bugs/CVE-2016-3672-Unlimiting-the-stack-not-longer-disables-ASLR.html


Best,
Hector.



-- 
Dr. Hector Marco-Gisbert @ http://hmarco.org/
Cyber Security Researcher @ http://cybersecurity.upv.es
Universitat Politècnica de València (Spain)
