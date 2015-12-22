X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["380" "Monday" "21" "December" "2015" "22:06:56" "-0500" "David Dworken" "david@daviddworken.com" "<CA+b2-LeWL5aAufoN-v5N=VDFyqi817UQgMrkF0tWG7aVK06nUw@mail.gmail.com>" "15" "[oss-security] CVE Request: Reflected XSS in OpenMRS Login Page" nil nil nil "12" "2015122203:06:56" "[oss-security] CVE Request: Reflected XSS in OpenMRS Login Page" (number mark "U       david@davidd Dec 21   15/380   " thread-indent "\"[oss-security] CVE Request: Reflected XSS in OpenMRS Login Page\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3975 invoked by uid 550); 22 Dec 2015 03:39:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20297 invoked from network); 22 Dec 2015 03:07:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=daviddworken-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=cpvfIa5blEke2HBu/p0JLYL8Q66t8sL7wec4qG4aJv4=;
        b=ERf68IOnLpqklsFLN+d4eddJpf8HvsG6KE9CT21VTdubgQ9aO+/cTZaKmdFOankUy3
         +SsZBroCo+8/6dI0GiPf2NAUtLoPe0Fqm1m0nCR2MhjHWOri7/wIUYHWn//6I1sDzySN
         3vSwJPvPuCkKN/P+LiwVGiAKHOVxFLvfon2X8Eh+DInjmbtt8fXg7+90V2cdUsOEDML+
         hjX69DcJexb7UhhHoZHq1x3IIZeoLhZbLvVbHNi194vYSQMIzJFN9J884fzZHogW3mno
         3Rf2j3cNyjRKkjG5ttVw5SH+TKIZEdkjmtNXKBk9cboIa/snunsws8yYD6HEIkVWckS4
         +YUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=cpvfIa5blEke2HBu/p0JLYL8Q66t8sL7wec4qG4aJv4=;
        b=hCdF95I7EnqWFMcHBMFRVX9ISZG0+dz+tshailSbfEdthJoJjeode1+jzv6hjlw4L9
         9G6X3+zhFOQhyU/chboBA9ussFv8n4CuH8/5IxFnCqRIRXQ72oG4XQt9iMfiWUT0/23d
         Ojkj9Rgk4jwp7pHKoUYi8cF1TMFtkS1Atw11sVeMOyp63ZefTNwgR7DYNz+xmTuxN+yo
         pCKoPHjh6Rn1zP4Pvy5KitOi+T9YsewMNxqWQ4/EptBQjZKzo6NSnFTpYnUQvmhh+xnV
         vbkQuHEPIrh840/dnifsqbXtEZSp2kaE6SU5/2U3v2nocWzvqyforWz49HC/8Rh8t5n4
         ys6g==
X-Gm-Message-State: ALoCoQnEdxYVvPErfdRF74f6omwm8Ls1GnGoujoe4Mu6n6f5xKFZtgtiRk+UyO3n5iViSeVqjr9Bb89o87P/6DHesIQGvkzv2Q==
MIME-Version: 1.0
X-Received: by 10.107.157.148 with SMTP id g142mr21555900ioe.151.1450753616685;
 Mon, 21 Dec 2015 19:06:56 -0800 (PST)
Date: Mon, 21 Dec 2015 22:06:56 -0500
Message-ID: <CA+b2-LeWL5aAufoN-v5N=VDFyqi817UQgMrkF0tWG7aVK06nUw@mail.gmail.com>
From: David Dworken <david@daviddworken.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a11408a60fac683052773e570
Subject: [oss-security] CVE Request: Reflected XSS in OpenMRS Login Page

--001a11408a60fac683052773e570
Content-Type: text/plain; charset=UTF-8

Hello,

OpenMRS has a reflected XSS vulnerability in the login page that is
exploitable through injection into the referer header.

Patch:
https://github.com/ddworken/openmrs-module-referenceapplication/commit/65fefcb8dfbd069ca611ab3f17084fd8dc92a048

Thanks,
David Dworken

--001a11408a60fac683052773e570--
