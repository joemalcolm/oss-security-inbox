X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["927" "Wednesday" "3" "May" "2017" "17:32:03" "-0300" "Dawid Golunski" "dawid@legalhackers.com" "<CADSYzstfctEZTo4GKGR-H2WXC3kZRSAj7sj7ZHCAu9C7Ff5BYw@mail.gmail.com>" "25" "[oss-security] [white-paper] Pwning PHP mail() function For Fun And RCE (ver 1.0)" "^Date:" nil nil "5" "2017050320:32:03" "[oss-security] [white-paper] Pwning PHP mail() function For Fun And RCE (ver 1.0)" (number mark "U       dawid@legalh May  3   25/927   " thread-indent "\"[oss-security] [white-paper] Pwning PHP mail() function For Fun And RCE (ver 1.0)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19525 invoked by uid 550); 3 May 2017 20:32:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19490 invoked from network); 3 May 2017 20:32:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=legalhackers-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=hjoJoEmw0sXAqD6bGwM8xi1G36F+b9Ya6tuADt8JWb0=;
        b=K13Q10/OMrm3/0dsXmVaZKfok9oPGkoZtckYkfDkkJVbsiwHXwETZeAyMg+WflnAKl
         qUbm1+oUqRj0LWkDu8ig0FKQP5qQ+e6PmNxfJ/Dqy0uloEqx9b5qTxp3PFc+e/aV/5IK
         gKbomW2zNW9HE2nnWQNS9Ie/acW5FfIggvok1B8hDBCaltKqp2y9Y3HG+wUh1vZx5w0R
         b4dkwRroBXdu7Ilr76Chwtsx4oTjXHVjtBRmCvO5qh8hAeCRs4YqG+ncU2xEEtNHihvX
         IzAb5G06QBvNmt8jzceIl61ai2kbN4WUwYN3T+dapRnxNDan3j8UkWqpHcO77u5ZAobX
         VX/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=hjoJoEmw0sXAqD6bGwM8xi1G36F+b9Ya6tuADt8JWb0=;
        b=dlsR1yn6n9OeS9tVjR2gUHHo3v62Gew0ywUHDoyDmLL0/NTSv7XeTx2ZEUbvvL0HRU
         PVv7jM93ChlHuXA3PdMg6o2dRFdd09eT1TEF7m8ey11DY629YIJYaHBoAyjS2LbA4598
         6Oq5Ifa7X97YC/Vrai9JbRVmBlsxr3fBK5nAEEGVDCayCalmioV2tKvLrTGYkbkDtv6I
         4OlsAa/JeZ+xtgjAo79Q6B+yQ2aPyoCCPkeoLJ8iI+Oj9u17XjlUiLbSwgjdpfzcDzLY
         pBl3qJU15tZotHw73Qir5QOBv1FYpjtV6T9eZ8EbPA4bXjZROo9QhgC5tzv+uJswSq7v
         hDRA==
X-Gm-Message-State: AN3rC/6AcrJ33WgIQKDxw7D+sx9U2MFvACNKARgABwv8+Ojqkx3ClBsd
	s7SMej2d3JjL+UFu0rkebRIi+UjlYAsC
X-Received: by 10.159.33.98 with SMTP id 89mr11181288uab.50.1493843524301;
 Wed, 03 May 2017 13:32:04 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CADSYzstfctEZTo4GKGR-H2WXC3kZRSAj7sj7ZHCAu9C7Ff5BYw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Wed, 3 May 2017 17:32:03 -0300
From: Dawid Golunski <dawid@legalhackers.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [white-paper] Pwning PHP mail() function For Fun And RCE (ver 1.0)
To: oss-security@lists.openwall.com

Here's a paper I wrote back in December.  It was originally meant to go
into Phrack but the team wanted a more general article on parameter injection
as mail() was supposedly an outdated technique.
Meanwhile, the RCE-chain continues :) So I decided to post it as it is without
changing it as mail() injection deserves a separate article imho.

https://exploitbox.io/paper/Pwning-PHP-Mail-Function-For-Fun-And-RCE.html

I reveal some exim code-execution vectors in there that should change
the whole game slightly :)

See my exploit for WordPress Core that is based on it:
https://exploitbox.io/vuln/WordPress-Exploit-4-6-RCE-CODE-EXEC-CVE-2016-10033.html


I'll attach copies of the white-paper here in the next revision as I
haven't slept for 3 nights and need to double check on everything
before it goes into the archive forever :)


Regards,
Dawid Golunski
https://legalhackers.com
https://ExploitBox.io
t: @dawid_golunski
