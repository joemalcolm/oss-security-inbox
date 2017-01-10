X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["329" "Tuesday" "10" "January" "2017" "08:29:39" "+0100" "=?utf-8?B?U8OpYmFzdGllbg==?= Delafond" "seb@debian.org" "<20170110072939.GC18447@centurion.befour.org>" "13" "[oss-security] CVE request: python-pysaml2 XML external entity attack" nil nil nil "1" "2017011007:29:39" "[oss-security] CVE request: python-pysaml2 XML external entity attack" (number mark "U       seb@debian.o Jan 10   13/329   " thread-indent "\"[oss-security] CVE request: python-pysaml2 XML external entity attack\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27851 invoked by uid 550); 10 Jan 2017 11:52:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19946 invoked from network); 10 Jan 2017 07:29:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nH3biRE4Fdn++XDtbMs+xd5VMCGt//4Hjm66/DE1Ql0=;
        b=SDSlhl2XDrtIKxL0J2JSU9CT7UrIPSWgbvkfMWgpPGiiXjH1aL/ENLKNi5eLYWVXLr
         ZQAUlmJ7hUOEYwlivOECweT3tjSuEyXCBvmh/9iOoZianErbqXs23yXMlF67CVM2rkFN
         6XslDF3fspHxqt2odXMElwXPmTnxtdO/Oelfl3cPllhHDHWVMnW4TF/mHuOt5hplew2n
         Az1IPKVkOuvCuV+C4/HPK2ESKmrW0AZHM/R6Y/d8+pe6B/Oc+ru9vcGbdnHLeNu/a5VJ
         89XJZIOJa/eWbxhWIk0UXZBORuBLgCTJ4bm7ZJqf+xU3Kshj4SE56MxT3EGCInx8PXV7
         JwhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=nH3biRE4Fdn++XDtbMs+xd5VMCGt//4Hjm66/DE1Ql0=;
        b=HHdwJYW2kjJSB87rRbmdzVq/5sG22+k15G1gSqfMlPfG9sydfmcRJWhGA2ki8Djyqt
         VZX3hFWTacD9yNinbAmBVYVIg+OVmptBDI3I9FjzstnGd7KydlG2vFkhRbZ2kww+oLwe
         CyJVy4Yr39TLvJstx1n3zPKjm5CYo2um/3FF5SBux+7OL116mUKdnXnA2G0kWffVSEPA
         HA/ywZ3OkcJ6OYiyz1nriqGC5ONZ7aeSaPLdNLckfLSHzyHiS7tID6tnTifyDC6jcf6P
         5J66yYgAMnhmrRtULr/U0EmkK6+r+X8KNPRpg6ZI0eSuE7IKJXgtg/Xx71iUvN52fZDg
         tXKA==
X-Gm-Message-State: AIkVDXLTejZRi3FNzB17SDi+223bVyiLiIC/7s2sNuX0g3u3U0B98bpqJ+0FjSji85gmjQ==
X-Received: by 10.223.135.242 with SMTP id c47mr1029423wrc.197.1484033381950;
        Mon, 09 Jan 2017 23:29:41 -0800 (PST)
Sender: =?UTF-8?Q?S=C3=A9bastien_Delafond?= <sdelafond@gmail.com>
Date: Tue, 10 Jan 2017 08:29:39 +0100
From: =?utf-8?Q?S=C3=A9bastien?= Delafond <seb@debian.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20170110072939.GC18447@centurion.befour.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: [oss-security] CVE request: python-pysaml2 XML external entity attack

Hello,

the Debian security team would like to request a CVE for an XML XEE
discovered in python-pysaml2 by Matias P. Brutti; python-pysaml2 does
not sanitize SAML XML requests or responses:

  https://github.com/rohe/pysaml2/issues/366
  https://github.com/rohe/pysaml2/pull/379
  https://bugs.debian.org/850716

Cheers,

--Seb
