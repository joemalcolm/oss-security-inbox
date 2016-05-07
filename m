X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["894" "Saturday" "7" "May" "2016" "05:33:13" "+0000" "Craig Small" "csmall@enc.com.au" "<CALy8Cw7nYh_p5qR3anmUM+t5g5zV-2HuZD4E6SFiWckCMfhNMA@mail.gmail.com>" "27" "[oss-security] CVE Request: wordpress and mediaelement" nil nil nil "5" "2016050705:33:13" "[oss-security] CVE Request: wordpress and mediaelement" (number mark "U       csmall@enc.c May  7   27/894   " thread-indent "\"[oss-security] CVE Request: wordpress and mediaelement\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11380 invoked by uid 550); 7 May 2016 07:21:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6064 invoked from network); 7 May 2016 05:33:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=enc-com-au.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=N6rMCeGe4Zh2HDb+uuUcnRw7mHS/HsZ2wC9DfdvXkDU=;
        b=uq4mRVME+bdPRfcHZZwrYrV9/WPjloYbSYQOdhoRiA1GOBb+Iey0eRlmRBmJwcAXOr
         EDQ+DddbDfUDN4ykmJEm2v+qO0OG8TUq1E7DMuh2qq6O8S/repKHlRBzCf/cn5VcgRKv
         rDKedvu7qqvaBjIBqMqKU+Ni5Gw02slo09GAjjApLFsf4y9xg8uvbr31+mBRWQGirT4v
         K5IVGQqIctuN/AfnIH+Y5q5pLa8KackFgF8njyHCehP2rVPyle7Ghbb4LGnO9VLpxPaI
         Rku+gHJezn2gqlWkrQniD0Mpm5WvjUOFC9vDx3zlkhUdquuH5pr4P7EjINEq7h4mt8wn
         mqRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=N6rMCeGe4Zh2HDb+uuUcnRw7mHS/HsZ2wC9DfdvXkDU=;
        b=IwUU4p4b03Vft7hCBnSYu+NY8R1wJcmy6WAdXuPpJFBVnVFFU3LNpYtbpDch3A/72A
         zpFcoHdvjN4gwAGfU0ldfRzY45QPDN9fcEQdH/s/VcWosq7Zq+ZBE5WUpEoi8ivBrfBI
         tuCyFCBvAUHDDDlg6LCCtiXv03V/7ZXIj9JCSJr80DsFZkcJRhPMD9uct8KaGWrla1SU
         TfEht8qC4Y7drSm0yQtnicgTmf/3BZ032UcA6foJPhkA60Vvvw5JvqyBoSGNsnHPo0ox
         ExBx8kxc992CDwvE0vfLHH+GfmFKsHFUuWHr4mU7wgQwJ4eEcLjuraR/3nZoens5I0+c
         m1Cg==
X-Gm-Message-State: AOPr4FUiH1b5dYIFHg/RnDCSR4rKfme6xiwVg++o7Vmd+356+Sv9c7h4SLWP84Vd/bZ8IpXF/ZpaNbIl5dezmg==
X-Received: by 10.98.7.24 with SMTP id b24mr33650400pfd.125.1462599203479;
 Fri, 06 May 2016 22:33:23 -0700 (PDT)
MIME-Version: 1.0
From: Craig Small <csmall@enc.com.au>
Date: Sat, 07 May 2016 05:33:13 +0000
Message-ID: <CALy8Cw7nYh_p5qR3anmUM+t5g5zV-2HuZD4E6SFiWckCMfhNMA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1143ddb0f8fe03053239e9b8
Subject: [oss-security] CVE Request: wordpress and mediaelement

--001a1143ddb0f8fe03053239e9b8
Content-Type: text/plain; charset=UTF-8

Hi,
  wordpress 4.5.1 has two security issues[1], both XSS, both fixed in 4.5.2

One is around the plupload embedded code[2] which I'm unsure if it affects
plupload proper or just wordpress.
The second is around mediaelement[3] and this does affect the upstream
program but is already fixed[4].


1: https://wordpress.org/news/2016/05/wordpress-4-5-2/
2: https://core.trac.wordpress.org/changeset/37382/
3: https://core.trac.wordpress.org/changeset/37371
4:
https://github.com/johndyer/mediaelement/commit/34834eef8ac830b9145df169ec22016a4350f06e


 - Craig

-- 
Craig Small (@smallsees)   http://enc.com.au/       csmall at : enc.com.au
Debian GNU/Linux           http://www.debian.org/   csmall at : debian.org
GPG fingerprint:        5D2F B320 B825 D939 04D2  0519 3938 F96B DF50 FEA5

--001a1143ddb0f8fe03053239e9b8--
